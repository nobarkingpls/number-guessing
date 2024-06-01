#!/bin/bash

psql="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo -e "\nEnter your username:"

read username

# get username data

username_result=$($psql "select username from users where username='$username'")

user_id_result=$($psql "select user_id from users where username='$username'")

if [[ -z $username_result ]]

  then

    echo -e "\nWelcome, $username! It looks like this is your first time here.\n"
    
    insert_username_result=$($psql "insert into users(username) values ('$username')")
    
  else
    
    games_played=$($psql "select count(game_id) from games left join users using(user_id) where username='$username'")
  
    best_game=$($psql "select min(number_of_guesses) from games left join users using(user_id) where username='$username'")

    echo "Welcome back, $username! You have played $games_played games, and your best game took $best_game guesses."
fi

# generate random number between 1 and 1000

secret_number=$(( RANDOM % 1000 + 1 ))

# variable to store number of guesses/tries

guess_count=0

echo "Guess the secret number between 1 and 1000:"

read user_guess


# loop to prompt user to guess until correct

until [[ $user_guess == $secret_number ]]

do
  
  # check guess is valid/an integer

  if [[ ! $user_guess =~ ^[0-9]+$ ]]

    then

      echo -e "\nThat is not an integer, guess again:"

      read user_guess
      
      ((guess_count++))
    
    else
      
      if [[ $user_guess < $secret_number ]]

        then

          echo "It's higher than that, guess again:"

          read user_guess

         
          ((guess_count++))

        else 

          echo "It's lower than that, guess again:"

          read user_guess

          ((guess_count++))
      fi  
  fi

done

((guess_count++))

# get user id

user_id_result=$($psql "select user_id from users where username='$username'")

# add result to database

insert_game_result=$($psql "insert into games(user_id, secret_number, number_of_guesses) values ($user_id_result, $secret_number, $guess_count)")

echo "You guessed it in $guess_count tries. The secret number was $secret_number. Nice job!"
--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer,
    number_of_guesses integer,
    secret_number integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22)
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: username_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.username_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.username_user_id_seq OWNER TO freecodecamp;

--
-- Name: username_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.username_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.username_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 54, 504, 503);
INSERT INTO public.games VALUES (2, 55, 815, 814);
INSERT INTO public.games VALUES (3, 54, 229, 226);
INSERT INTO public.games VALUES (4, 54, 617, 615);
INSERT INTO public.games VALUES (5, 54, 550, 549);
INSERT INTO public.games VALUES (6, 56, 271, 270);
INSERT INTO public.games VALUES (7, 57, 378, 377);
INSERT INTO public.games VALUES (8, 56, 816, 813);
INSERT INTO public.games VALUES (9, 56, 606, 604);
INSERT INTO public.games VALUES (10, 56, 527, 526);
INSERT INTO public.games VALUES (11, 36, 11, 694);
INSERT INTO public.games VALUES (12, 58, 230, 229);
INSERT INTO public.games VALUES (13, 59, 885, 884);
INSERT INTO public.games VALUES (14, 58, 605, 602);
INSERT INTO public.games VALUES (15, 58, 125, 123);
INSERT INTO public.games VALUES (16, 58, 922, 921);
INSERT INTO public.games VALUES (17, 60, 379, 378);
INSERT INTO public.games VALUES (18, 61, 114, 113);
INSERT INTO public.games VALUES (19, 60, 144, 141);
INSERT INTO public.games VALUES (20, 60, 333, 331);
INSERT INTO public.games VALUES (21, 60, 585, 584);
INSERT INTO public.games VALUES (22, 62, 508, 507);
INSERT INTO public.games VALUES (23, 63, 693, 692);
INSERT INTO public.games VALUES (24, 62, 819, 816);
INSERT INTO public.games VALUES (25, 62, 356, 354);
INSERT INTO public.games VALUES (26, 62, 990, 989);
INSERT INTO public.games VALUES (27, 64, 361, 360);
INSERT INTO public.games VALUES (28, 65, 860, 859);
INSERT INTO public.games VALUES (29, 64, 349, 346);
INSERT INTO public.games VALUES (30, 64, 636, 634);
INSERT INTO public.games VALUES (31, 64, 650, 649);
INSERT INTO public.games VALUES (32, 66, 819, 818);
INSERT INTO public.games VALUES (33, 67, 602, 601);
INSERT INTO public.games VALUES (34, 66, 92, 89);
INSERT INTO public.games VALUES (35, 66, 586, 584);
INSERT INTO public.games VALUES (36, 66, 388, 387);
INSERT INTO public.games VALUES (37, 68, 654, 653);
INSERT INTO public.games VALUES (38, 68, 65, 64);
INSERT INTO public.games VALUES (39, 69, 646, 645);
INSERT INTO public.games VALUES (40, 69, 989, 988);
INSERT INTO public.games VALUES (41, 68, 228, 225);
INSERT INTO public.games VALUES (42, 68, 672, 670);
INSERT INTO public.games VALUES (43, 68, 148, 147);
INSERT INTO public.games VALUES (44, 70, 2, 1);
INSERT INTO public.games VALUES (45, 70, 2, 1);
INSERT INTO public.games VALUES (46, 71, 2, 1);
INSERT INTO public.games VALUES (47, 71, 2, 1);
INSERT INTO public.games VALUES (48, 70, 1, 1);
INSERT INTO public.games VALUES (49, 70, 3, 1);
INSERT INTO public.games VALUES (50, 70, 2, 1);
INSERT INTO public.games VALUES (51, 72, 514, 513);
INSERT INTO public.games VALUES (52, 72, 237, 236);
INSERT INTO public.games VALUES (53, 73, 604, 603);
INSERT INTO public.games VALUES (54, 73, 547, 546);
INSERT INTO public.games VALUES (55, 72, 666, 663);
INSERT INTO public.games VALUES (56, 72, 691, 689);
INSERT INTO public.games VALUES (57, 72, 578, 577);
INSERT INTO public.games VALUES (58, 74, 523, 522);
INSERT INTO public.games VALUES (59, 74, 988, 987);
INSERT INTO public.games VALUES (60, 75, 521, 520);
INSERT INTO public.games VALUES (61, 75, 681, 680);
INSERT INTO public.games VALUES (62, 74, 804, 801);
INSERT INTO public.games VALUES (63, 74, 351, 349);
INSERT INTO public.games VALUES (64, 74, 580, 579);
INSERT INTO public.games VALUES (65, 76, 186, 185);
INSERT INTO public.games VALUES (66, 76, 665, 664);
INSERT INTO public.games VALUES (67, 77, 553, 552);
INSERT INTO public.games VALUES (68, 77, 865, 864);
INSERT INTO public.games VALUES (69, 76, 728, 725);
INSERT INTO public.games VALUES (70, 76, 111, 109);
INSERT INTO public.games VALUES (71, 76, 387, 386);
INSERT INTO public.games VALUES (72, 78, 765, 764);
INSERT INTO public.games VALUES (73, 78, 498, 497);
INSERT INTO public.games VALUES (74, 79, 736, 735);
INSERT INTO public.games VALUES (75, 79, 220, 219);
INSERT INTO public.games VALUES (76, 78, 12, 9);
INSERT INTO public.games VALUES (77, 78, 120, 118);
INSERT INTO public.games VALUES (78, 78, 581, 580);
INSERT INTO public.games VALUES (79, 80, 246, 245);
INSERT INTO public.games VALUES (80, 80, 922, 921);
INSERT INTO public.games VALUES (81, 81, 480, 479);
INSERT INTO public.games VALUES (82, 81, 287, 286);
INSERT INTO public.games VALUES (83, 80, 303, 300);
INSERT INTO public.games VALUES (84, 80, 154, 152);
INSERT INTO public.games VALUES (85, 80, 134, 133);
INSERT INTO public.games VALUES (86, 82, 211, 210);
INSERT INTO public.games VALUES (87, 82, 382, 381);
INSERT INTO public.games VALUES (88, 83, 869, 868);
INSERT INTO public.games VALUES (89, 83, 339, 338);
INSERT INTO public.games VALUES (90, 82, 55, 52);
INSERT INTO public.games VALUES (91, 82, 650, 648);
INSERT INTO public.games VALUES (92, 82, 991, 990);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, NULL);
INSERT INTO public.users VALUES (3, NULL);
INSERT INTO public.users VALUES (8, NULL);
INSERT INTO public.users VALUES (10, NULL);
INSERT INTO public.users VALUES (15, NULL);
INSERT INTO public.users VALUES (17, NULL);
INSERT INTO public.users VALUES (22, NULL);
INSERT INTO public.users VALUES (24, NULL);
INSERT INTO public.users VALUES (29, NULL);
INSERT INTO public.users VALUES (31, NULL);
INSERT INTO public.users VALUES (36, NULL);
INSERT INTO public.users VALUES (37, NULL);
INSERT INTO public.users VALUES (38, NULL);
INSERT INTO public.users VALUES (39, NULL);
INSERT INTO public.users VALUES (41, NULL);
INSERT INTO public.users VALUES (46, NULL);
INSERT INTO public.users VALUES (48, NULL);
INSERT INTO public.users VALUES (54, NULL);
INSERT INTO public.users VALUES (55, NULL);
INSERT INTO public.users VALUES (56, NULL);
INSERT INTO public.users VALUES (57, NULL);
INSERT INTO public.users VALUES (58, NULL);
INSERT INTO public.users VALUES (59, NULL);
INSERT INTO public.users VALUES (60, NULL);
INSERT INTO public.users VALUES (61, NULL);
INSERT INTO public.users VALUES (62, NULL);
INSERT INTO public.users VALUES (63, NULL);
INSERT INTO public.users VALUES (64, NULL);
INSERT INTO public.users VALUES (65, NULL);
INSERT INTO public.users VALUES (66, NULL);
INSERT INTO public.users VALUES (67, NULL);
INSERT INTO public.users VALUES (68, 'user_1717266784509');
INSERT INTO public.users VALUES (69, 'user_1717266784508');
INSERT INTO public.users VALUES (70, 'user_1717267136794');
INSERT INTO public.users VALUES (71, 'user_1717267136793');
INSERT INTO public.users VALUES (72, 'user_1717267157890');
INSERT INTO public.users VALUES (73, 'user_1717267157889');
INSERT INTO public.users VALUES (74, 'user_1717267180825');
INSERT INTO public.users VALUES (75, 'user_1717267180824');
INSERT INTO public.users VALUES (76, 'user_1717267245819');
INSERT INTO public.users VALUES (77, 'user_1717267245818');
INSERT INTO public.users VALUES (78, 'user_1717267261813');
INSERT INTO public.users VALUES (79, 'user_1717267261812');
INSERT INTO public.users VALUES (80, 'user_1717267312524');
INSERT INTO public.users VALUES (81, 'user_1717267312523');
INSERT INTO public.users VALUES (82, 'user_1717267344525');
INSERT INTO public.users VALUES (83, 'user_1717267344524');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 92, true);


--
-- Name: username_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.username_user_id_seq', 83, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users username_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT username_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--


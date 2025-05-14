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
    user_id integer NOT NULL,
    guesses integer NOT NULL
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
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 622);
INSERT INTO public.games VALUES (2, 1, 663);
INSERT INTO public.games VALUES (3, 2, 329);
INSERT INTO public.games VALUES (4, 2, 703);
INSERT INTO public.games VALUES (5, 1, 161);
INSERT INTO public.games VALUES (6, 1, 851);
INSERT INTO public.games VALUES (7, 1, 166);
INSERT INTO public.games VALUES (8, 3, 663);
INSERT INTO public.games VALUES (9, 3, 703);
INSERT INTO public.games VALUES (10, 4, 920);
INSERT INTO public.games VALUES (11, 4, 177);
INSERT INTO public.games VALUES (12, 3, 411);
INSERT INTO public.games VALUES (13, 3, 98);
INSERT INTO public.games VALUES (14, 3, 333);
INSERT INTO public.games VALUES (15, 5, 201);
INSERT INTO public.games VALUES (16, 5, 489);
INSERT INTO public.games VALUES (17, 6, 272);
INSERT INTO public.games VALUES (18, 6, 849);
INSERT INTO public.games VALUES (19, 5, 804);
INSERT INTO public.games VALUES (20, 5, 680);
INSERT INTO public.games VALUES (21, 5, 376);
INSERT INTO public.games VALUES (22, 7, 653);
INSERT INTO public.games VALUES (23, 7, 162);
INSERT INTO public.games VALUES (24, 8, 200);
INSERT INTO public.games VALUES (25, 8, 213);
INSERT INTO public.games VALUES (26, 7, 142);
INSERT INTO public.games VALUES (27, 7, 713);
INSERT INTO public.games VALUES (28, 7, 369);
INSERT INTO public.games VALUES (29, 9, 600);
INSERT INTO public.games VALUES (30, 9, 413);
INSERT INTO public.games VALUES (31, 10, 250);
INSERT INTO public.games VALUES (32, 10, 348);
INSERT INTO public.games VALUES (33, 9, 26);
INSERT INTO public.games VALUES (34, 9, 597);
INSERT INTO public.games VALUES (35, 9, 881);
INSERT INTO public.games VALUES (36, 11, 118);
INSERT INTO public.games VALUES (37, 11, 173);
INSERT INTO public.games VALUES (38, 12, 996);
INSERT INTO public.games VALUES (39, 12, 97);
INSERT INTO public.games VALUES (40, 11, 451);
INSERT INTO public.games VALUES (41, 11, 983);
INSERT INTO public.games VALUES (42, 11, 836);
INSERT INTO public.games VALUES (43, 13, 879);
INSERT INTO public.games VALUES (44, 13, 637);
INSERT INTO public.games VALUES (45, 14, 627);
INSERT INTO public.games VALUES (46, 14, 706);
INSERT INTO public.games VALUES (47, 13, 891);
INSERT INTO public.games VALUES (48, 13, 194);
INSERT INTO public.games VALUES (49, 13, 756);
INSERT INTO public.games VALUES (50, 15, 459);
INSERT INTO public.games VALUES (51, 15, 556);
INSERT INTO public.games VALUES (52, 16, 176);
INSERT INTO public.games VALUES (53, 16, 938);
INSERT INTO public.games VALUES (54, 15, 622);
INSERT INTO public.games VALUES (55, 15, 956);
INSERT INTO public.games VALUES (56, 15, 678);
INSERT INTO public.games VALUES (57, 17, 384);
INSERT INTO public.games VALUES (58, 17, 427);
INSERT INTO public.games VALUES (59, 18, 132);
INSERT INTO public.games VALUES (60, 18, 833);
INSERT INTO public.games VALUES (61, 17, 862);
INSERT INTO public.games VALUES (62, 17, 108);
INSERT INTO public.games VALUES (63, 17, 785);
INSERT INTO public.games VALUES (64, 19, 500);
INSERT INTO public.games VALUES (65, 19, 209);
INSERT INTO public.games VALUES (66, 20, 837);
INSERT INTO public.games VALUES (67, 20, 666);
INSERT INTO public.games VALUES (68, 19, 421);
INSERT INTO public.games VALUES (69, 19, 587);
INSERT INTO public.games VALUES (70, 19, 522);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1747236583122');
INSERT INTO public.users VALUES (2, 'user_1747236583121');
INSERT INTO public.users VALUES (3, 'user_1747236901009');
INSERT INTO public.users VALUES (4, 'user_1747236901008');
INSERT INTO public.users VALUES (5, 'user_1747237110696');
INSERT INTO public.users VALUES (6, 'user_1747237110695');
INSERT INTO public.users VALUES (7, 'user_1747237542042');
INSERT INTO public.users VALUES (8, 'user_1747237542041');
INSERT INTO public.users VALUES (9, 'user_1747237714295');
INSERT INTO public.users VALUES (10, 'user_1747237714294');
INSERT INTO public.users VALUES (11, 'user_1747237929055');
INSERT INTO public.users VALUES (12, 'user_1747237929054');
INSERT INTO public.users VALUES (13, 'user_1747238321511');
INSERT INTO public.users VALUES (14, 'user_1747238321510');
INSERT INTO public.users VALUES (15, 'user_1747239209575');
INSERT INTO public.users VALUES (16, 'user_1747239209574');
INSERT INTO public.users VALUES (17, 'user_1747239312270');
INSERT INTO public.users VALUES (18, 'user_1747239312269');
INSERT INTO public.users VALUES (19, 'user_1747239457108');
INSERT INTO public.users VALUES (20, 'user_1747239457107');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 70, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 20, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--


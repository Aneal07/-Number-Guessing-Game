--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    guesses integer DEFAULT 0 NOT NULL,
    number_guesses integer DEFAULT 0 NOT NULL
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

INSERT INTO public.games VALUES (35, 87, 857, 0);
INSERT INTO public.games VALUES (36, 88, 896, 0);
INSERT INTO public.games VALUES (37, 88, 993, 0);
INSERT INTO public.games VALUES (38, 87, 783, 0);
INSERT INTO public.games VALUES (39, 87, 266, 0);
INSERT INTO public.games VALUES (40, 87, 915, 0);
INSERT INTO public.games VALUES (41, 102, 179, 0);
INSERT INTO public.games VALUES (42, 103, 355, 0);
INSERT INTO public.games VALUES (43, 103, 754, 0);
INSERT INTO public.games VALUES (44, 102, 759, 0);
INSERT INTO public.games VALUES (45, 102, 972, 0);
INSERT INTO public.games VALUES (46, 102, 103, 0);
INSERT INTO public.games VALUES (47, 89, 0, 8);
INSERT INTO public.games VALUES (48, 121, 0, 1);
INSERT INTO public.games VALUES (49, 121, 0, 660);
INSERT INTO public.games VALUES (50, 122, 0, 183);
INSERT INTO public.games VALUES (51, 122, 0, 474);
INSERT INTO public.games VALUES (52, 121, 0, 383);
INSERT INTO public.games VALUES (53, 121, 0, 627);
INSERT INTO public.games VALUES (54, 121, 0, 219);
INSERT INTO public.games VALUES (55, 123, 0, 1);
INSERT INTO public.games VALUES (56, 123, 0, 8);
INSERT INTO public.games VALUES (57, 124, 0, 345);
INSERT INTO public.games VALUES (58, 124, 0, 225);
INSERT INTO public.games VALUES (59, 123, 0, 901);
INSERT INTO public.games VALUES (60, 123, 0, 289);
INSERT INTO public.games VALUES (61, 123, 0, 159);
INSERT INTO public.games VALUES (62, 126, 0, 814);
INSERT INTO public.games VALUES (63, 126, 0, 560);
INSERT INTO public.games VALUES (64, 127, 0, 1);
INSERT INTO public.games VALUES (65, 127, 0, 578);
INSERT INTO public.games VALUES (66, 126, 0, 361);
INSERT INTO public.games VALUES (67, 126, 0, 824);
INSERT INTO public.games VALUES (68, 126, 0, 272);
INSERT INTO public.games VALUES (69, 128, 0, 1);
INSERT INTO public.games VALUES (70, 128, 0, 883);
INSERT INTO public.games VALUES (71, 129, 0, 648);
INSERT INTO public.games VALUES (72, 129, 0, 775);
INSERT INTO public.games VALUES (73, 128, 0, 987);
INSERT INTO public.games VALUES (74, 128, 0, 832);
INSERT INTO public.games VALUES (75, 128, 0, 953);
INSERT INTO public.games VALUES (76, 130, 0, 574);
INSERT INTO public.games VALUES (77, 130, 0, 921);
INSERT INTO public.games VALUES (78, 131, 0, 571);
INSERT INTO public.games VALUES (79, 131, 0, 192);
INSERT INTO public.games VALUES (80, 130, 0, 981);
INSERT INTO public.games VALUES (81, 130, 0, 124);
INSERT INTO public.games VALUES (82, 130, 0, 805);
INSERT INTO public.games VALUES (83, 125, 0, 9);
INSERT INTO public.games VALUES (84, 89, 0, 5);
INSERT INTO public.games VALUES (85, 132, 0, 198);
INSERT INTO public.games VALUES (86, 132, 0, 742);
INSERT INTO public.games VALUES (87, 133, 0, 102);
INSERT INTO public.games VALUES (88, 133, 0, 431);
INSERT INTO public.games VALUES (89, 132, 0, 842);
INSERT INTO public.games VALUES (90, 132, 0, 401);
INSERT INTO public.games VALUES (91, 132, 0, 521);
INSERT INTO public.games VALUES (92, 134, 0, 1);
INSERT INTO public.games VALUES (93, 134, 0, 770);
INSERT INTO public.games VALUES (94, 135, 0, 967);
INSERT INTO public.games VALUES (95, 135, 0, 438);
INSERT INTO public.games VALUES (96, 134, 0, 270);
INSERT INTO public.games VALUES (97, 134, 0, 825);
INSERT INTO public.games VALUES (98, 134, 0, 296);
INSERT INTO public.games VALUES (99, 136, 0, 1);
INSERT INTO public.games VALUES (100, 136, 0, 853);
INSERT INTO public.games VALUES (101, 137, 0, 142);
INSERT INTO public.games VALUES (102, 137, 0, 744);
INSERT INTO public.games VALUES (103, 136, 0, 722);
INSERT INTO public.games VALUES (104, 136, 0, 396);
INSERT INTO public.games VALUES (105, 136, 0, 395);
INSERT INTO public.games VALUES (106, 138, 0, 143);
INSERT INTO public.games VALUES (107, 138, 0, 848);
INSERT INTO public.games VALUES (108, 139, 0, 986);
INSERT INTO public.games VALUES (109, 139, 0, 174);
INSERT INTO public.games VALUES (110, 138, 0, 390);
INSERT INTO public.games VALUES (111, 138, 0, 477);
INSERT INTO public.games VALUES (112, 138, 0, 835);
INSERT INTO public.games VALUES (113, 140, 0, 1);
INSERT INTO public.games VALUES (114, 140, 0, 1);
INSERT INTO public.games VALUES (115, 142, 0, 915);
INSERT INTO public.games VALUES (116, 142, 0, 235);
INSERT INTO public.games VALUES (117, 140, 0, 87);
INSERT INTO public.games VALUES (118, 140, 0, 942);
INSERT INTO public.games VALUES (119, 140, 0, 878);
INSERT INTO public.games VALUES (120, 143, 0, 657);
INSERT INTO public.games VALUES (121, 143, 0, 149);
INSERT INTO public.games VALUES (122, 144, 0, 681);
INSERT INTO public.games VALUES (123, 144, 0, 281);
INSERT INTO public.games VALUES (124, 143, 0, 246);
INSERT INTO public.games VALUES (125, 143, 0, 112);
INSERT INTO public.games VALUES (126, 143, 0, 938);
INSERT INTO public.games VALUES (127, 145, 0, 866);
INSERT INTO public.games VALUES (128, 145, 0, 782);
INSERT INTO public.games VALUES (129, 146, 0, 573);
INSERT INTO public.games VALUES (130, 146, 0, 108);
INSERT INTO public.games VALUES (131, 145, 0, 339);
INSERT INTO public.games VALUES (132, 145, 0, 24);
INSERT INTO public.games VALUES (133, 145, 0, 444);
INSERT INTO public.games VALUES (134, 147, 0, 430);
INSERT INTO public.games VALUES (135, 147, 0, 680);
INSERT INTO public.games VALUES (136, 148, 0, 154);
INSERT INTO public.games VALUES (137, 148, 0, 891);
INSERT INTO public.games VALUES (138, 147, 0, 131);
INSERT INTO public.games VALUES (139, 147, 0, 565);
INSERT INTO public.games VALUES (140, 147, 0, 596);
INSERT INTO public.games VALUES (141, 149, 0, 1);
INSERT INTO public.games VALUES (142, 149, 0, 983);
INSERT INTO public.games VALUES (143, 150, 0, 314);
INSERT INTO public.games VALUES (144, 150, 0, 83);
INSERT INTO public.games VALUES (145, 149, 0, 594);
INSERT INTO public.games VALUES (146, 149, 0, 734);
INSERT INTO public.games VALUES (147, 149, 0, 744);
INSERT INTO public.games VALUES (148, 151, 0, 54);
INSERT INTO public.games VALUES (149, 151, 0, 808);
INSERT INTO public.games VALUES (150, 152, 0, 963);
INSERT INTO public.games VALUES (151, 152, 0, 241);
INSERT INTO public.games VALUES (152, 151, 0, 924);
INSERT INTO public.games VALUES (153, 151, 0, 584);
INSERT INTO public.games VALUES (154, 151, 0, 342);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (87, 'user_1690367414186');
INSERT INTO public.users VALUES (88, 'user_1690367414185');
INSERT INTO public.users VALUES (89, 'lisa');
INSERT INTO public.users VALUES (90, 'user_1690367467991');
INSERT INTO public.users VALUES (91, 'user_1690367467990');
INSERT INTO public.users VALUES (92, 'user_1690367482877');
INSERT INTO public.users VALUES (93, 'user_1690367482876');
INSERT INTO public.users VALUES (94, 'user_1690367521092');
INSERT INTO public.users VALUES (95, 'user_1690367521091');
INSERT INTO public.users VALUES (96, 'user_1690367542681');
INSERT INTO public.users VALUES (97, 'user_1690367542680');
INSERT INTO public.users VALUES (98, 'user_1690367598437');
INSERT INTO public.users VALUES (99, 'user_1690367598436');
INSERT INTO public.users VALUES (100, 'user_1690367606982');
INSERT INTO public.users VALUES (101, 'user_1690367606981');
INSERT INTO public.users VALUES (102, 'user_1690367647828');
INSERT INTO public.users VALUES (103, 'user_1690367647827');
INSERT INTO public.users VALUES (104, 'user_1690367665254');
INSERT INTO public.users VALUES (105, 'user_1690367665253');
INSERT INTO public.users VALUES (106, '');
INSERT INTO public.users VALUES (113, 'user_1690375035094');
INSERT INTO public.users VALUES (114, 'user_1690375035093');
INSERT INTO public.users VALUES (115, 'user_1690375418918');
INSERT INTO public.users VALUES (116, 'user_1690375418917');
INSERT INTO public.users VALUES (117, 'user_1690375465308');
INSERT INTO public.users VALUES (118, 'user_1690375465307');
INSERT INTO public.users VALUES (119, 'user_1690376264734');
INSERT INTO public.users VALUES (120, 'user_1690376264733');
INSERT INTO public.users VALUES (121, 'user_1690376656394');
INSERT INTO public.users VALUES (122, 'user_1690376656393');
INSERT INTO public.users VALUES (123, 'user_1690376787061');
INSERT INTO public.users VALUES (124, 'user_1690376787060');
INSERT INTO public.users VALUES (125, 'mighty');
INSERT INTO public.users VALUES (126, 'user_1690376826573');
INSERT INTO public.users VALUES (127, 'user_1690376826572');
INSERT INTO public.users VALUES (128, 'user_1690376886601');
INSERT INTO public.users VALUES (129, 'user_1690376886600');
INSERT INTO public.users VALUES (130, 'user_1690376918620');
INSERT INTO public.users VALUES (131, 'user_1690376918619');
INSERT INTO public.users VALUES (132, 'user_1690376996566');
INSERT INTO public.users VALUES (133, 'user_1690376996565');
INSERT INTO public.users VALUES (134, 'user_1690377047355');
INSERT INTO public.users VALUES (135, 'user_1690377047354');
INSERT INTO public.users VALUES (136, 'user_1690377064766');
INSERT INTO public.users VALUES (137, 'user_1690377064765');
INSERT INTO public.users VALUES (138, 'user_1690377075790');
INSERT INTO public.users VALUES (139, 'user_1690377075789');
INSERT INTO public.users VALUES (140, 'user_1690377093459');
INSERT INTO public.users VALUES (142, 'user_1690377093458');
INSERT INTO public.users VALUES (143, 'user_1690377116404');
INSERT INTO public.users VALUES (144, 'user_1690377116403');
INSERT INTO public.users VALUES (145, 'user_1690377127001');
INSERT INTO public.users VALUES (146, 'user_1690377127000');
INSERT INTO public.users VALUES (147, 'user_1690377187444');
INSERT INTO public.users VALUES (148, 'user_1690377187443');
INSERT INTO public.users VALUES (149, 'user_1690377194417');
INSERT INTO public.users VALUES (150, 'user_1690377194416');
INSERT INTO public.users VALUES (151, 'user_1690377207394');
INSERT INTO public.users VALUES (152, 'user_1690377207393');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 154, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 152, true);


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
-- Name: games fk_user_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_user_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--


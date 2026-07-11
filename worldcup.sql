--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (40, 2018, 'Final', 4, 2, 47, 48);
INSERT INTO public.games VALUES (41, 2018, 'Third Place', 2, 0, 49, 50);
INSERT INTO public.games VALUES (42, 2018, 'Semi-Final', 2, 1, 48, 50);
INSERT INTO public.games VALUES (43, 2018, 'Semi-Final', 1, 0, 47, 49);
INSERT INTO public.games VALUES (44, 2018, 'Quarter-Final', 3, 2, 48, 51);
INSERT INTO public.games VALUES (45, 2018, 'Quarter-Final', 2, 0, 50, 52);
INSERT INTO public.games VALUES (46, 2018, 'Quarter-Final', 2, 1, 49, 53);
INSERT INTO public.games VALUES (47, 2018, 'Quarter-Final', 2, 0, 47, 54);
INSERT INTO public.games VALUES (48, 2018, 'Eighth-Final', 2, 1, 50, 55);
INSERT INTO public.games VALUES (49, 2018, 'Eighth-Final', 1, 0, 52, 56);
INSERT INTO public.games VALUES (50, 2018, 'Eighth-Final', 3, 2, 49, 57);
INSERT INTO public.games VALUES (51, 2018, 'Eighth-Final', 2, 0, 53, 58);
INSERT INTO public.games VALUES (52, 2018, 'Eighth-Final', 2, 1, 48, 59);
INSERT INTO public.games VALUES (53, 2018, 'Eighth-Final', 2, 1, 51, 60);
INSERT INTO public.games VALUES (54, 2018, 'Eighth-Final', 2, 1, 54, 61);
INSERT INTO public.games VALUES (55, 2018, 'Eighth-Final', 4, 3, 47, 62);
INSERT INTO public.games VALUES (56, 2014, 'Final', 1, 0, 63, 62);
INSERT INTO public.games VALUES (57, 2014, 'Third Place', 3, 0, 64, 53);
INSERT INTO public.games VALUES (58, 2014, 'Semi-Final', 1, 0, 62, 64);
INSERT INTO public.games VALUES (59, 2014, 'Semi-Final', 7, 1, 63, 53);
INSERT INTO public.games VALUES (60, 2014, 'Quarter-Final', 1, 0, 64, 65);
INSERT INTO public.games VALUES (61, 2014, 'Quarter-Final', 1, 0, 62, 49);
INSERT INTO public.games VALUES (62, 2014, 'Quarter-Final', 2, 1, 53, 55);
INSERT INTO public.games VALUES (63, 2014, 'Quarter-Final', 1, 0, 63, 47);
INSERT INTO public.games VALUES (64, 2014, 'Eighth-Final', 2, 1, 53, 66);
INSERT INTO public.games VALUES (65, 2014, 'Eighth-Final', 2, 0, 55, 54);
INSERT INTO public.games VALUES (66, 2014, 'Eighth-Final', 2, 0, 47, 67);
INSERT INTO public.games VALUES (67, 2014, 'Eighth-Final', 2, 1, 63, 68);
INSERT INTO public.games VALUES (68, 2014, 'Eighth-Final', 2, 1, 64, 58);
INSERT INTO public.games VALUES (69, 2014, 'Eighth-Final', 2, 1, 65, 69);
INSERT INTO public.games VALUES (70, 2014, 'Eighth-Final', 1, 0, 62, 56);
INSERT INTO public.games VALUES (71, 2014, 'Eighth-Final', 2, 1, 49, 70);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (47, 'France');
INSERT INTO public.teams VALUES (48, 'Croatia');
INSERT INTO public.teams VALUES (49, 'Belgium');
INSERT INTO public.teams VALUES (50, 'England');
INSERT INTO public.teams VALUES (51, 'Russia');
INSERT INTO public.teams VALUES (52, 'Sweden');
INSERT INTO public.teams VALUES (53, 'Brazil');
INSERT INTO public.teams VALUES (54, 'Uruguay');
INSERT INTO public.teams VALUES (55, 'Colombia');
INSERT INTO public.teams VALUES (56, 'Switzerland');
INSERT INTO public.teams VALUES (57, 'Japan');
INSERT INTO public.teams VALUES (58, 'Mexico');
INSERT INTO public.teams VALUES (59, 'Denmark');
INSERT INTO public.teams VALUES (60, 'Spain');
INSERT INTO public.teams VALUES (61, 'Portugal');
INSERT INTO public.teams VALUES (62, 'Argentina');
INSERT INTO public.teams VALUES (63, 'Germany');
INSERT INTO public.teams VALUES (64, 'Netherlands');
INSERT INTO public.teams VALUES (65, 'Costa Rica');
INSERT INTO public.teams VALUES (66, 'Chile');
INSERT INTO public.teams VALUES (67, 'Nigeria');
INSERT INTO public.teams VALUES (68, 'Algeria');
INSERT INTO public.teams VALUES (69, 'Greece');
INSERT INTO public.teams VALUES (70, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 71, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 70, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--


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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    description text,
    age integer NOT NULL,
    wikeke integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    distance_earth integer,
    width integer NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    star_id integer NOT NULL,
    weight integer,
    has_life boolean,
    age numeric(4,1)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_detail; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_detail (
    planet_id integer NOT NULL,
    des character varying(30),
    number_moon integer,
    age integer NOT NULL,
    name character varying(30),
    planet_detail_id integer NOT NULL
);


ALTER TABLE public.planet_detail OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    galaxy_id integer NOT NULL,
    has_life boolean,
    age integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (3, 'sao1', 'hoang', 34, 22);
INSERT INTO public.galaxy VALUES (4, 'sao1', 'hoang', 1, 34);
INSERT INTO public.galaxy VALUES (5, 'sao1', 'hoang', 2, 34);
INSERT INTO public.galaxy VALUES (6, 'sao1', 'hoang', 4, 34);
INSERT INTO public.galaxy VALUES (7, 'sao1', 'hoang', 5, 34);
INSERT INTO public.galaxy VALUES (8, 'sao1', 'hoang', 6, 34);
INSERT INTO public.galaxy VALUES (9, 'sao1', 'hoang', 7, 34);
INSERT INTO public.galaxy VALUES (10, 'sao1', 'hoang', 8, 34);
INSERT INTO public.galaxy VALUES (11, 'sao1', 'hoang', 9, 34);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, '1', 22, 23, 1);
INSERT INTO public.moon VALUES (2, '1', 22, 24, 3);
INSERT INTO public.moon VALUES (3, '1', 22, 25, 4);
INSERT INTO public.moon VALUES (4, '1', 22, 26, 4);
INSERT INTO public.moon VALUES (5, '1', 22, 27, 5);
INSERT INTO public.moon VALUES (6, '1', 22, 28, 6);
INSERT INTO public.moon VALUES (7, '1', 22, 29, 7);
INSERT INTO public.moon VALUES (8, '1', 22, 30, 8);
INSERT INTO public.moon VALUES (9, '1', 22, 31, 9);
INSERT INTO public.moon VALUES (10, '1', 22, 32, 10);
INSERT INTO public.moon VALUES (11, '1', 22, 33, 9);
INSERT INTO public.moon VALUES (12, '1', 22, 233, 8);
INSERT INTO public.moon VALUES (13, '1', 22, 272, 5);
INSERT INTO public.moon VALUES (14, '1', 22, 273, 5);
INSERT INTO public.moon VALUES (15, '1', 22, 274, 5);
INSERT INTO public.moon VALUES (16, '1', 22, 275, 5);
INSERT INTO public.moon VALUES (17, '1', 22, 276, 5);
INSERT INTO public.moon VALUES (18, '1', 22, 277, 5);
INSERT INTO public.moon VALUES (19, '1', 22, 278, 5);
INSERT INTO public.moon VALUES (20, '1', 22, 279, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, '1', 1, 22, true, 23.0);
INSERT INTO public.planet VALUES (2, '1', 3, 22, true, 24.0);
INSERT INTO public.planet VALUES (3, '1', 4, 22, true, 25.0);
INSERT INTO public.planet VALUES (4, '1', 4, 22, true, 26.0);
INSERT INTO public.planet VALUES (5, '1', 5, 22, true, 27.0);
INSERT INTO public.planet VALUES (6, '1', 6, 22, true, 28.0);
INSERT INTO public.planet VALUES (7, '1', 7, 22, true, 29.0);
INSERT INTO public.planet VALUES (8, '1', 8, 22, true, 30.0);
INSERT INTO public.planet VALUES (9, '1', 9, 22, true, 31.0);
INSERT INTO public.planet VALUES (10, '1', 10, 22, true, 32.0);
INSERT INTO public.planet VALUES (11, '1', 9, 22, true, 33.0);
INSERT INTO public.planet VALUES (12, '1', 8, 22, true, 233.0);


--
-- Data for Name: planet_detail; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_detail VALUES (1, '33', 333234, 22233, 'hoang444', 1);
INSERT INTO public.planet_detail VALUES (2, '334', 3333, 3523, 'hoan44g', 2);
INSERT INTO public.planet_detail VALUES (3, '3332', 133, 24333, 'ho44ang', 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'hoang', 3, true, 44);
INSERT INTO public.star VALUES (3, 'hoang', 4, true, 45);
INSERT INTO public.star VALUES (4, 'hoang', 5, true, 46);
INSERT INTO public.star VALUES (5, 'hoang', 6, true, 47);
INSERT INTO public.star VALUES (6, 'hoang', 7, true, 48);
INSERT INTO public.star VALUES (7, 'hoang', 8, true, 49);
INSERT INTO public.star VALUES (8, 'hoang', 9, true, 50);
INSERT INTO public.star VALUES (9, 'hoang', 10, true, 51);
INSERT INTO public.star VALUES (10, 'hoang', 11, true, 52);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 11, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: galaxy galaxy_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_age_key UNIQUE (age);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_width_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_width_key UNIQUE (width);


--
-- Name: planet planet_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_age_key UNIQUE (age);


--
-- Name: planet_detail planet_detail_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_detail
    ADD CONSTRAINT planet_detail_age_key UNIQUE (age);


--
-- Name: planet_detail planet_detail_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_detail
    ADD CONSTRAINT planet_detail_pkey PRIMARY KEY (planet_detail_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_age_key UNIQUE (age);


--
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet_detail planet_detail_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_detail
    ADD CONSTRAINT planet_detail_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


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
-- Name: air; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.air (
    air_id integer NOT NULL,
    name character varying(30) NOT NULL,
    toxic boolean DEFAULT true
);


ALTER TABLE public.air OWNER TO freecodecamp;

--
-- Name: air_air_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.air_air_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.air_air_id_seq OWNER TO freecodecamp;

--
-- Name: air_air_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.air_air_id_seq OWNED BY public.air.air_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    diameter integer NOT NULL,
    distance integer NOT NULL,
    description text NOT NULL,
    visited boolean DEFAULT false NOT NULL
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
    name character varying(30) NOT NULL,
    diameter integer,
    distance integer NOT NULL,
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
    name character varying(30) NOT NULL,
    diameter integer,
    scale_comparison numeric(4,1),
    distance integer,
    star_id integer NOT NULL,
    inhabited boolean NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

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
    name character varying(30) NOT NULL,
    diameter integer NOT NULL,
    has_solar_system boolean NOT NULL,
    distance integer NOT NULL,
    galaxy_id integer NOT NULL
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
-- Name: air air_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.air ALTER COLUMN air_id SET DEFAULT nextval('public.air_air_id_seq'::regclass);


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
-- Data for Name: air; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.air VALUES (1, 'oxygen', true);
INSERT INTO public.air VALUES (2, 'hydrogen', true);
INSERT INTO public.air VALUES (3, 'helium', true);
INSERT INTO public.air VALUES (4, 'carbon monoxide', true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100000, 0, 'we are here', false);
INSERT INTO public.galaxy VALUES (2, 'LMC', 14000, 158000, 'satellite galaxy', false);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 220000, 2500000, 'this is andromeda', false);
INSERT INTO public.galaxy VALUES (4, 'Cigar Galaxy', 37000, 11500000, 'this is cigar galaxy', false);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel Galaxy', 170000, 20870000, 'looks like pin', false);
INSERT INTO public.galaxy VALUES (6, 'Sombrero Galaxy', 50000, 29350000, 'not a hat', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', NULL, 1223, 1);
INSERT INTO public.moon VALUES (2, 'Moo', NULL, 1223, 2);
INSERT INTO public.moon VALUES (3, 'Mo', NULL, 1223, 2);
INSERT INTO public.moon VALUES (4, 'Mow', NULL, 1223, 3);
INSERT INTO public.moon VALUES (5, 'Mov', NULL, 1223, 3);
INSERT INTO public.moon VALUES (6, 'Move', NULL, 1223, 3);
INSERT INTO public.moon VALUES (7, 'Mover', NULL, 1223, 3);
INSERT INTO public.moon VALUES (8, 'Gover', NULL, 1223, 3);
INSERT INTO public.moon VALUES (9, 'Grover', NULL, 1223, 4);
INSERT INTO public.moon VALUES (10, 'Govern', NULL, 1223, 7);
INSERT INTO public.moon VALUES (11, 'Beovern', NULL, 1223, 8);
INSERT INTO public.moon VALUES (12, 'Ben', NULL, 1223, 9);
INSERT INTO public.moon VALUES (13, 'Bent', NULL, 1223, 9);
INSERT INTO public.moon VALUES (14, 'Bento', NULL, 1223, 9);
INSERT INTO public.moon VALUES (15, 'Beo', NULL, 1223, 10);
INSERT INTO public.moon VALUES (16, 'Beeo', NULL, 1223, 11);
INSERT INTO public.moon VALUES (17, 'Beep', NULL, 1223, 11);
INSERT INTO public.moon VALUES (18, 'Jeep', NULL, 1223, 12);
INSERT INTO public.moon VALUES (19, 'JM 123', NULL, 1223, 12);
INSERT INTO public.moon VALUES (20, 'Brow 123', NULL, 1223, 14);
INSERT INTO public.moon VALUES (21, 'JM 13', NULL, 1223, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 7938, NULL, NULL, 1, true);
INSERT INTO public.planet VALUES (2, 'Mercury', 3000, NULL, NULL, 1, false);
INSERT INTO public.planet VALUES (3, 'Venus', 7500, NULL, NULL, 1, false);
INSERT INTO public.planet VALUES (4, 'Mars', 4200, NULL, NULL, 1, false);
INSERT INTO public.planet VALUES (5, 'Jupiter', 89000, NULL, NULL, 1, false);
INSERT INTO public.planet VALUES (6, 'Saturn', 74900, NULL, NULL, 1, false);
INSERT INTO public.planet VALUES (7, 'Uranus', 32000, NULL, NULL, 1, false);
INSERT INTO public.planet VALUES (8, 'Neptune', 31000, NULL, NULL, 1, false);
INSERT INTO public.planet VALUES (9, 'Meury', 3000, NULL, NULL, 3, false);
INSERT INTO public.planet VALUES (10, 'Vens', 7500, NULL, NULL, 2, false);
INSERT INTO public.planet VALUES (11, 'Mas', 4200, NULL, NULL, 6, false);
INSERT INTO public.planet VALUES (12, 'Juter', 89000, NULL, NULL, 5, false);
INSERT INTO public.planet VALUES (13, 'Sa', 74900, NULL, NULL, 4, false);
INSERT INTO public.planet VALUES (14, 'Ura', 32000, NULL, NULL, 3, false);
INSERT INTO public.planet VALUES (15, 'Nept', 31000, NULL, NULL, 2, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 695700, true, 1829200, 1);
INSERT INTO public.star VALUES (2, 'Helios', 2334444, false, 2023750, 2);
INSERT INTO public.star VALUES (3, 'Star 1', 10000, true, 129000, 2);
INSERT INTO public.star VALUES (4, 'Optimus Prime', 50000, false, 10000000, 3);
INSERT INTO public.star VALUES (5, 'Rigel', 86000, false, 863, 1);
INSERT INTO public.star VALUES (6, 'Pollux', 233350, true, 994000000, 4);


--
-- Name: air_air_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.air_air_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: air air_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.air
    ADD CONSTRAINT air_name_key UNIQUE (name);


--
-- Name: air air_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.air
    ADD CONSTRAINT air_pkey PRIMARY KEY (air_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon foreign_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT foreign_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet foreign_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT foreign_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


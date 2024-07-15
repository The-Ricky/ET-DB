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
    name character varying(20),
    description text,
    distance_m_ly numeric,
    is_expanding boolean NOT NULL
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
    name character varying(20),
    size integer NOT NULL,
    terraformable boolean,
    description text,
    has_life boolean,
    planet_id integer NOT NULL,
    rovers integer
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
-- Name: nordic_swamp_planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.nordic_swamp_planet (
    nordic_swamp_planet_id integer NOT NULL,
    name character varying(20),
    terraformable boolean,
    description text,
    glctc_fed_member boolean,
    population integer NOT NULL,
    nord_pop integer,
    star_id integer
);


ALTER TABLE public.nordic_swamp_planet OWNER TO freecodecamp;

--
-- Name: nordic_swamp_planet_nsplanet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.nordic_swamp_planet_nsplanet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nordic_swamp_planet_nsplanet_id_seq OWNER TO freecodecamp;

--
-- Name: nordic_swamp_planet_nsplanet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.nordic_swamp_planet_nsplanet_id_seq OWNED BY public.nordic_swamp_planet.nordic_swamp_planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20),
    size integer NOT NULL,
    terraformable boolean,
    description text,
    glctc_fed_member boolean,
    mantid_contact boolean,
    star_id integer NOT NULL,
    et_no integer
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
    name character varying(20),
    size integer NOT NULL,
    terraformable boolean,
    description text,
    artificially_gen boolean,
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: nordic_swamp_planet nordic_swamp_planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nordic_swamp_planet ALTER COLUMN nordic_swamp_planet_id SET DEFAULT nextval('public.nordic_swamp_planet_nsplanet_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'c-138 Dimension', 'Where the Originals live - R&M', 800000, true);
INSERT INTO public.galaxy VALUES (2, 'Bird Dimension', 'Self-explanatory really.', 200000, true);
INSERT INTO public.galaxy VALUES (3, 'Milking-way', 'Like the milky way but milkier', 12005000, true);
INSERT INTO public.galaxy VALUES (4, 'Andromeda', NULL, NULL, true);
INSERT INTO public.galaxy VALUES (5, 'Bear Claw', NULL, NULL, true);
INSERT INTO public.galaxy VALUES (6, 'Galactic Federation', 'Located somewhere in the Galaxy we rule all', 0, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, NULL, 500, NULL, NULL, NULL, 88, NULL);
INSERT INTO public.moon VALUES (2, NULL, 500, NULL, NULL, NULL, 88, NULL);
INSERT INTO public.moon VALUES (3, NULL, 500, NULL, NULL, NULL, 88, NULL);
INSERT INTO public.moon VALUES (4, NULL, 500, NULL, NULL, NULL, 88, NULL);
INSERT INTO public.moon VALUES (5, NULL, 582, NULL, NULL, NULL, 93, NULL);
INSERT INTO public.moon VALUES (6, NULL, 582, NULL, NULL, NULL, 93, NULL);
INSERT INTO public.moon VALUES (7, NULL, 582, NULL, NULL, NULL, 93, NULL);
INSERT INTO public.moon VALUES (8, NULL, 582, NULL, NULL, NULL, 93, NULL);
INSERT INTO public.moon VALUES (9, 'Moon Glacier', 582, NULL, NULL, NULL, 95, 1);
INSERT INTO public.moon VALUES (10, 'Moon Glacier', 582, NULL, NULL, NULL, 95, 42);
INSERT INTO public.moon VALUES (11, 'Moon Glacier', 582, NULL, NULL, NULL, 95, 5);
INSERT INTO public.moon VALUES (12, 'Moon Glacier', 582, NULL, NULL, NULL, 95, 0);
INSERT INTO public.moon VALUES (13, 'Moon Iceberg', 595, NULL, NULL, NULL, 97, NULL);
INSERT INTO public.moon VALUES (14, 'Moon Iceberg', 595, NULL, NULL, NULL, 97, NULL);
INSERT INTO public.moon VALUES (15, 'Moon Iceberg', 595, NULL, NULL, NULL, 97, NULL);
INSERT INTO public.moon VALUES (16, 'Moon Mantid Deaths', 595, NULL, NULL, NULL, 99, 8290);
INSERT INTO public.moon VALUES (17, 'Moon Mantid Murder', 600, NULL, NULL, NULL, 100, 61);
INSERT INTO public.moon VALUES (18, 'Moon', 500, true, 'Gloss over the beaks of the night', true, 11, NULL);
INSERT INTO public.moon VALUES (19, 'Moon', 500, true, 'Part 2 of the three horned bird', true, 12, NULL);
INSERT INTO public.moon VALUES (20, 'Moon', 500, true, 'Part 3 of the three horned bird', true, 13, NULL);


--
-- Data for Name: nordic_swamp_planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.nordic_swamp_planet VALUES (1, 'Hidden blue sky', true, 'Near but unseen, advanced Nordic lifeforms here.', true, 200, 200, NULL);
INSERT INTO public.nordic_swamp_planet VALUES (2, 'Protection blue', true, 'No humanoids', true, 5000, 600, 6);
INSERT INTO public.nordic_swamp_planet VALUES (3, 'Nordic Wolf', true, 'Origina Nordic', true, 80, 80, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, NULL, 1, NULL, NULL, NULL, NULL, 6, NULL);
INSERT INTO public.planet VALUES (2, NULL, 1, NULL, NULL, NULL, NULL, 6, NULL);
INSERT INTO public.planet VALUES (3, NULL, 10, NULL, NULL, NULL, NULL, 6, NULL);
INSERT INTO public.planet VALUES (4, NULL, 987, NULL, NULL, NULL, NULL, 6, NULL);
INSERT INTO public.planet VALUES (5, NULL, 7, NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (6, NULL, 13, NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (7, NULL, 77, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO public.planet VALUES (8, NULL, 971, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO public.planet VALUES (9, NULL, 1, NULL, NULL, NULL, NULL, 3, NULL);
INSERT INTO public.planet VALUES (10, NULL, 480, NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.planet VALUES (11, NULL, 73, NULL, NULL, NULL, NULL, 6, NULL);
INSERT INTO public.planet VALUES (12, NULL, 824, NULL, NULL, NULL, NULL, 6, NULL);
INSERT INTO public.planet VALUES (13, NULL, 1008, NULL, NULL, NULL, NULL, 6, NULL);
INSERT INTO public.planet VALUES (14, NULL, 51, NULL, NULL, NULL, NULL, 3, NULL);
INSERT INTO public.planet VALUES (15, NULL, 15, NULL, NULL, NULL, NULL, 6, NULL);
INSERT INTO public.planet VALUES (88, NULL, 988, true, NULL, true, true, 99, 300);
INSERT INTO public.planet VALUES (93, NULL, 1082, true, NULL, true, true, 99, 364);
INSERT INTO public.planet VALUES (95, NULL, 1102, true, NULL, true, true, 99, 801);
INSERT INTO public.planet VALUES (97, NULL, 1102, true, NULL, true, true, 99, 857);
INSERT INTO public.planet VALUES (99, NULL, 1102, false, NULL, true, false, 99, 0);
INSERT INTO public.planet VALUES (100, NULL, 481, true, NULL, true, false, 102, -1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpha', 0, false, 'Flare star, currently being used by other planets', false, 3);
INSERT INTO public.star VALUES (2, 'Barnet', 0, NULL, NULL, NULL, 3);
INSERT INTO public.star VALUES (3, 'Lugermans', 0, NULL, NULL, NULL, 3);
INSERT INTO public.star VALUES (4, 'Star of Wisdom', 0, NULL, NULL, NULL, 3);
INSERT INTO public.star VALUES (6, 'Burning falcon', 0, false, 'Illuminating the feathered friends', NULL, 2);
INSERT INTO public.star VALUES (99, 'Omega', 9800, true, 'Artifically made, authentically powered', true, 6);
INSERT INTO public.star VALUES (102, 'Omega-6', 16002, true, 'Demo star created solely for use by GF.', NULL, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: nordic_swamp_planet_nsplanet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.nordic_swamp_planet_nsplanet_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy distance_m_ly; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT distance_m_ly UNIQUE (distance_m_ly);


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
-- Name: moon moon_rovers_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_rovers_key UNIQUE (rovers);


--
-- Name: nordic_swamp_planet nordic_swamp_planet_nord_pop_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nordic_swamp_planet
    ADD CONSTRAINT nordic_swamp_planet_nord_pop_key UNIQUE (nord_pop);


--
-- Name: nordic_swamp_planet nordic_swamp_planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nordic_swamp_planet
    ADD CONSTRAINT nordic_swamp_planet_pkey PRIMARY KEY (nordic_swamp_planet_id);


--
-- Name: planet p_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT p_name UNIQUE (name);


--
-- Name: planet planet_et_no_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_et_no_key UNIQUE (et_no);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star s_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT s_name UNIQUE (name);


--
-- Name: star star_artificially_gen_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_artificially_gen_key UNIQUE (artificially_gen);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: nordic_swamp_planet nordic_swamp_planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nordic_swamp_planet
    ADD CONSTRAINT nordic_swamp_planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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


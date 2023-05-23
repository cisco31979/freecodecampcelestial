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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    classification text,
    size integer,
    mass numeric(4,2),
    dark_matter boolean
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
    name character varying(50) NOT NULL,
    size integer,
    planet_id integer,
    mass numeric(4,2),
    scientist_id text
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
    name character varying(50) NOT NULL,
    size integer,
    star_id integer,
    mass numeric(4,2),
    distance numeric(4,2)
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
-- Name: scientist; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.scientist (
    scientist_id integer NOT NULL,
    name character varying(50) NOT NULL,
    year_born integer
);


ALTER TABLE public.scientist OWNER TO freecodecamp;

--
-- Name: scientists_scientist_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.scientists_scientist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.scientists_scientist_id_seq OWNER TO freecodecamp;

--
-- Name: scientists_scientist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.scientists_scientist_id_seq OWNED BY public.scientist.scientist_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    size integer,
    galaxy_id integer,
    mass numeric(4,2),
    dead boolean
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
-- Name: scientist scientist_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.scientist ALTER COLUMN scientist_id SET DEFAULT nextval('public.scientists_scientist_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'S', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Large Magellanic Cloud', 'S', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Andromeda Galaxy', 'SA(s)b', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Triangulum', 'S', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Centaurus A', 'SO', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Bodes', 'S', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', NULL, 3, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', NULL, 4, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', NULL, 4, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Ganymede', NULL, 5, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'lo', NULL, 5, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Europa', NULL, 5, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Enceladus', NULL, 6, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Dione', NULL, 6, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Titan', NULL, 6, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Mimas', NULL, 6, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'lapetus', NULL, 6, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Hyperion', NULL, 6, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Calisto', NULL, 5, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Epimetheus', NULL, 6, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Daphnis', NULL, 6, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Tethys', NULL, 5, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Albiorix', NULL, 6, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Hati', NULL, 6, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Erriapus', NULL, 6, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Anthe', NULL, 6, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'Fornjot', NULL, 6, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Mondas', NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Asteris', NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Charon', NULL, 1, NULL, NULL);


--
-- Data for Name: scientist; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.scientist VALUES (1, 'Galileo Galilei', NULL);
INSERT INTO public.scientist VALUES (2, 'Charles Messier', NULL);
INSERT INTO public.scientist VALUES (3, 'Edwin Hubble', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', NULL, 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Rigel', NULL, 1, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Bellatrix', NULL, 1, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Betelgeuse', NULL, 1, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Saiph', NULL, 1, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Ori', NULL, 1, NULL, NULL);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: scientists_scientist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.scientists_scientist_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: scientist scientists_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.scientist
    ADD CONSTRAINT scientists_name_key UNIQUE (name);


--
-- Name: scientist scientists_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.scientist
    ADD CONSTRAINT scientists_pkey PRIMARY KEY (scientist_id);


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


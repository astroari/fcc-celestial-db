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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    size numeric(4,2) NOT NULL,
    name character varying(30),
    discovery_year integer
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_holes_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_holes_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_holes_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_holes_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_holes_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(15) NOT NULL,
    age_in_millions_of_years numeric(8,2),
    description text,
    location character varying(100)
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
    name character varying(15),
    is_spherical boolean,
    planet_id integer NOT NULL,
    crater_count integer
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
    name character varying(15),
    number_of_satellites integer,
    number_of_rings integer,
    has_life boolean,
    star_id integer NOT NULL,
    discovery_year integer
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
    name character varying(30),
    galaxy_id integer NOT NULL,
    spectral_type character varying(10),
    luminosity character varying(20)
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_holes_black_hole_id_seq'::regclass);


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
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 4.30, 'Sagittarius A*', NULL);
INSERT INTO public.black_hole VALUES (2, 6.50, 'Messier 87*', NULL);
INSERT INTO public.black_hole VALUES (3, 15.65, 'Cygnus X-1', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13000.50, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10000.25, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 9000.75, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 13000.00, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 12000.50, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 11000.25, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', true, 3, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', true, 4, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', true, 4, NULL);
INSERT INTO public.moon VALUES (4, 'Io', true, 5, NULL);
INSERT INTO public.moon VALUES (5, 'Europa', true, 5, NULL);
INSERT INTO public.moon VALUES (6, 'Ganymede', true, 5, NULL);
INSERT INTO public.moon VALUES (7, 'Callisto', true, 5, NULL);
INSERT INTO public.moon VALUES (8, 'Mimas', true, 6, NULL);
INSERT INTO public.moon VALUES (9, 'Enceladus', true, 6, NULL);
INSERT INTO public.moon VALUES (10, 'Titan', true, 6, NULL);
INSERT INTO public.moon VALUES (11, 'Iapetus', true, 6, NULL);
INSERT INTO public.moon VALUES (12, 'Miranda', true, 7, NULL);
INSERT INTO public.moon VALUES (13, 'Titania', true, 7, NULL);
INSERT INTO public.moon VALUES (14, 'Oberon', true, 7, NULL);
INSERT INTO public.moon VALUES (15, 'Triton', true, 8, NULL);
INSERT INTO public.moon VALUES (16, 'Nereid', true, 8, NULL);
INSERT INTO public.moon VALUES (17, 'Proteus', true, 8, NULL);
INSERT INTO public.moon VALUES (18, 'Kepler-22b-1', true, 9, NULL);
INSERT INTO public.moon VALUES (19, 'HD 209458 b-1', true, 10, NULL);
INSERT INTO public.moon VALUES (20, 'Gliese 581g-1', true, 12, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 0, 0, false, 1, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', 0, 0, false, 1, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 0, true, 1, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 2, 0, false, 1, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 79, 4, false, 2, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', 82, 7, false, 2, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', 27, 13, false, 2, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', 14, 6, false, 2, NULL);
INSERT INTO public.planet VALUES (9, 'Kepler-22b', 0, 0, true, 3, NULL);
INSERT INTO public.planet VALUES (10, 'HD 209458 b', 0, 0, false, 3, NULL);
INSERT INTO public.planet VALUES (11, 'WASP-12b', 0, 0, false, 3, NULL);
INSERT INTO public.planet VALUES (12, 'Gliese 581g', 0, 0, true, 3, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Sirius', 1, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 1, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Alpha Centauri B', 1, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 1, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Betelgeuse', 2, NULL, NULL);


--
-- Name: black_holes_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_holes_black_hole_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: black_hole black_hole_discovery_year_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_discovery_year_key UNIQUE (discovery_year);


--
-- Name: black_hole black_holes_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_holes_pkey PRIMARY KEY (black_hole_id);


--
-- Name: galaxy galaxy_location_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_location_key UNIQUE (location);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_crater_count_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_crater_count_key UNIQUE (crater_count);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_discovery_year_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_discovery_year_key UNIQUE (discovery_year);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_luminosity_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_luminosity_key UNIQUE (luminosity);


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


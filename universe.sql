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
-- Name: astronomer; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astronomer (
    name character varying(30) NOT NULL,
    astronomer_id integer NOT NULL,
    description text,
    number_of_discoveries integer
);


ALTER TABLE public.astronomer OWNER TO freecodecamp;

--
-- Name: astronomer_astronomer_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astronomer_astronomer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astronomer_astronomer_id_seq OWNER TO freecodecamp;

--
-- Name: astronomer_astronomer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astronomer_astronomer_id_seq OWNED BY public.astronomer.astronomer_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    disatance_from_earth_in_million_years numeric(4,1),
    other_name character varying(30),
    constellation_it_belongs character varying(30)
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
    diameter_in_km integer,
    is_spherical boolean,
    planet_id integer
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
    has_life boolean,
    no_of_moons integer,
    description text,
    star_id integer
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
    class character varying(10),
    description text,
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
-- Name: astronomer astronomer_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer ALTER COLUMN astronomer_id SET DEFAULT nextval('public.astronomer_astronomer_id_seq'::regclass);


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
-- Data for Name: astronomer; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astronomer VALUES ('Claudius Ptolemy', 1, 'Gave a geocentric solar system model.', 7);
INSERT INTO public.astronomer VALUES ('Christian Huygens', 2, 'Discovered titan.', 1);
INSERT INTO public.astronomer VALUES ('William Herschel', 3, 'Discovered Uranus.', 1);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 0.0, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', 2.5, 'M31', 'Andromeda');
INSERT INTO public.galaxy VALUES (3, 'Triangulum Galaxy', 2.7, 'M33', 'Triangulum');
INSERT INTO public.galaxy VALUES (4, 'Whirlpool Galaxy', 23.0, 'M51', NULL);
INSERT INTO public.galaxy VALUES (5, 'M87 Galaxy', 54.0, 'Vigro A', 'Vigro');
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic Cloud', 160.0, 'LMC', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 3474, true, 3);
INSERT INTO public.moon VALUES (2, 'Io', 3643, true, 6);
INSERT INTO public.moon VALUES (3, 'Europa', 3122, true, 6);
INSERT INTO public.moon VALUES (4, 'Ganymede', 5268, true, 6);
INSERT INTO public.moon VALUES (6, 'Callisto', 4821, true, 6);
INSERT INTO public.moon VALUES (5, 'Titan', 5149, true, 7);
INSERT INTO public.moon VALUES (8, 'Triton', 2707, true, 8);
INSERT INTO public.moon VALUES (7, 'Enceladus', 504, true, 7);
INSERT INTO public.moon VALUES (9, 'Rhea', 1527, true, 7);
INSERT INTO public.moon VALUES (10, 'Miranda', 471, false, 9);
INSERT INTO public.moon VALUES (11, 'Ariel', 1157, false, 9);
INSERT INTO public.moon VALUES (12, 'Dione', 1123, true, 7);
INSERT INTO public.moon VALUES (13, 'Tethys', 1062, true, 7);
INSERT INTO public.moon VALUES (14, 'Oberon', 1522, true, 9);
INSERT INTO public.moon VALUES (15, 'Lapetus', 1470, true, 7);
INSERT INTO public.moon VALUES (16, 'Umbriel', 1170, true, 9);
INSERT INTO public.moon VALUES (17, 'Phobos', 22, true, 4);
INSERT INTO public.moon VALUES (18, 'Deimos', 12, false, 4);
INSERT INTO public.moon VALUES (19, 'Hyperion', 270, false, 7);
INSERT INTO public.moon VALUES (20, 'Mimas', 396, true, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (4, 'Mars', false, 2, 'the red planet', 1);
INSERT INTO public.planet VALUES (3, 'Earth', true, 1, 'Third planet from the sun', 1);
INSERT INTO public.planet VALUES (5, 'venus', false, 0, 'Hot, dense, inhospitable', 1);
INSERT INTO public.planet VALUES (6, 'Jupiter', false, 53, 'A gas giant', 1);
INSERT INTO public.planet VALUES (7, 'Saturn', false, 83, 'Beautiful rings', 1);
INSERT INTO public.planet VALUES (8, 'Neptune', false, 14, 'An Ice Giant', 1);
INSERT INTO public.planet VALUES (9, 'Uranus', false, 27, 'Rotating on it''s side', 1);
INSERT INTO public.planet VALUES (10, 'Mercury', false, 0, 'Hot rocky planet', 1);
INSERT INTO public.planet VALUES (11, 'Proxima Centuri b', false, 0, 'Earth size exoplanet', 2);
INSERT INTO public.planet VALUES (12, 'Kepler-186f', false, 0, 'Falls into habitable zone', 7);
INSERT INTO public.planet VALUES (13, 'TOI 700d', false, 0, 'Found in a TESS mission', 8);
INSERT INTO public.planet VALUES (15, 'WASP-39b', false, 0, 'It is called a Hot Jupiter', 9);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'G2V', 'This is the primary star of our solar system', 1);
INSERT INTO public.star VALUES (2, 'Proxima Centuri', 'M5V', 'It is a cool red dwarf', 1);
INSERT INTO public.star VALUES (3, 'Alpha Centuri A', 'G2V', 'This start has 1.1 times mass of sun', 1);
INSERT INTO public.star VALUES (4, 'Alpha Andromedae', 'B8', 'Also knows as Alpheratz', 2);
INSERT INTO public.star VALUES (5, 'Upsilon Andromedae', 'F8', 'It is 44 light years away from earth', 2);
INSERT INTO public.star VALUES (6, '51 Andromedae', 'K3-III', 'It is also called Nembus', 2);
INSERT INTO public.star VALUES (7, 'Kepler-186', 'M1V', 'Also known as Kepler-186a', 1);
INSERT INTO public.star VALUES (8, 'TOI 700', 'M2V', 'It is a red dwarf', 1);
INSERT INTO public.star VALUES (9, 'WASP-39', 'G8V', 'It is a main sequence star', 1);


--
-- Name: astronomer_astronomer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astronomer_astronomer_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


--
-- Name: astronomer astronomer_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer
    ADD CONSTRAINT astronomer_name_key UNIQUE (name);


--
-- Name: astronomer astronomer_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer
    ADD CONSTRAINT astronomer_pkey PRIMARY KEY (astronomer_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unq UNIQUE (name);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unq UNIQUE (name);


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


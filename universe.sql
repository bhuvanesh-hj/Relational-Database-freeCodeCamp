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
-- Name: extra; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.extra (
    extra_id integer NOT NULL,
    name character varying(200),
    description text,
    distance_from_earth integer NOT NULL
);


ALTER TABLE public.extra OWNER TO freecodecamp;

--
-- Name: extra_extra_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.extra_extra_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extra_extra_id_seq OWNER TO freecodecamp;

--
-- Name: extra_extra_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.extra_extra_id_seq OWNED BY public.extra.extra_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(200),
    description text,
    haslife boolean,
    age_in_millions_of_years numeric,
    planet_types integer NOT NULL,
    exist boolean NOT NULL,
    distance_from_earth integer NOT NULL
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
    name character varying(200) NOT NULL,
    description text,
    distance_from_earth integer NOT NULL,
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
    name character varying(200) NOT NULL,
    description text NOT NULL,
    distance_from_earth integer NOT NULL,
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
    name character varying(200),
    description text NOT NULL,
    distance_from_earth integer NOT NULL,
    galaxy_id integer
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
-- Name: extra extra_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra ALTER COLUMN extra_id SET DEFAULT nextval('public.extra_extra_id_seq'::regclass);


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
-- Data for Name: extra; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.extra VALUES (1, 'my one', 'the my one', 100);
INSERT INTO public.extra VALUES (2, 'my two', 'the my two', 200);
INSERT INTO public.extra VALUES (3, 'my three', 'the my three', 300);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'The Milky Way is the galaxy that contains our Solar System.', false, 13000, 8, true, 0);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'The Andromeda Galaxy, also known as Messier 31, M31, or NGC 224, is a barred spiral galaxy approximately 2.537 million light-years from Earth.', false, 10000, 6, true, 2540000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'The Triangulum Galaxy is a spiral galaxy approximately 3 million light-years from Earth in the constellation Triangulum.', false, 5000, 4, true, 3000000);
INSERT INTO public.galaxy VALUES (4, 'Pinwheel', 'The Pinwheel Galaxy is a face-on spiral galaxy distanced 21 million light-years away from Earth in the constellation Ursa Major.', false, 25000, 5, true, 21000000);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 'The Whirlpool Galaxy is an interacting grand-design spiral galaxy with a Seyfert 2 active galactic nucleus.', false, 23000, 7, true, 31000000);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 'The Sombrero Galaxy is an unbarred spiral galaxy in the constellation Virgo located 28 million light-years from Earth.', false, 28000, 4, true, 28000000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (21, 'Luna', 'The only natural satellite of Earth.', 384400, 28);
INSERT INTO public.moon VALUES (22, 'Ganymede', 'The largest moon of Jupiter and the largest moon in the Solar System.', 1070400, 30);
INSERT INTO public.moon VALUES (23, 'Titan', 'The largest moon of Saturn and the second-largest natural satellite in the Solar System.', 1250600, 31);
INSERT INTO public.moon VALUES (24, 'Europa', 'The smallest of the four Galilean moons orbiting Jupiter.', 671034, 27);
INSERT INTO public.moon VALUES (25, 'Io', 'The innermost of the four Galilean moons of Jupiter.', 421800, 28);
INSERT INTO public.moon VALUES (26, 'Callisto', 'The second-largest moon of Jupiter, after Ganymede.', 1882700, 28);
INSERT INTO public.moon VALUES (27, 'Thebe', 'A small, irregular-shaped moon of Jupiter.', 221900, 33);
INSERT INTO public.moon VALUES (28, 'Enceladus', 'A small, icy moon orbiting Saturn.', 238020, 32);
INSERT INTO public.moon VALUES (29, 'Triton', 'The largest moon of Neptune and the only large moon in the Solar System with a retrograde orbit.', 354800, 31);
INSERT INTO public.moon VALUES (30, 'Rhea', 'The second-largest moon of Saturn and the ninth-largest moon in the Solar System.', 527040, 30);
INSERT INTO public.moon VALUES (31, 'Charon', 'The largest of the five known moons of Pluto.', 19571, 29);
INSERT INTO public.moon VALUES (32, 'Tethys', 'A mid-sized moon of Saturn about 1,060 kilometers in diameter.', 294660, 29);
INSERT INTO public.moon VALUES (33, 'Dione', 'The fifteenth-largest moon in the Solar System and the fourth-largest moon of Saturn.', 377400, 31);
INSERT INTO public.moon VALUES (34, 'Oberon', 'The outermost of the five major moons of Uranus.', 583520, 30);
INSERT INTO public.moon VALUES (35, 'Iapetus', 'A moon of Saturn discovered by Giovanni Domenico Cassini in 1671.', 3560820, 28);
INSERT INTO public.moon VALUES (36, 'Ariel', 'The fourth-largest of the 27 known moons of Uranus.', 190900, 29);
INSERT INTO public.moon VALUES (37, 'Umbriel', 'The third-largest and second most-massive of the moons of Uranus.', 266300, 27);
INSERT INTO public.moon VALUES (38, 'Miranda', 'The smallest and innermost of Uranus'' five round satellites.', 129390, 27);
INSERT INTO public.moon VALUES (39, 'Proteus', 'The second-largest moon of Neptune.', 117647, 28);
INSERT INTO public.moon VALUES (40, 'Mimas', 'A moon of Saturn, discovered in 1789 by William Herschel.', 185520, 26);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (25, 'Earth', 'The third planet from the Sun and the only astronomical object known to harbor life.', 0, 7);
INSERT INTO public.planet VALUES (26, 'Jupiter', 'A gas giant, the fifth planet from the Sun.', 365, 8);
INSERT INTO public.planet VALUES (27, 'Alpha Centauri A b', 'A rocky exoplanet orbiting the star Alpha Centauri A.', 4437, 7);
INSERT INTO public.planet VALUES (28, 'Alpha Centauri B b', 'A rocky exoplanet orbiting the star Alpha Centauri B.', 49637, 8);
INSERT INTO public.planet VALUES (29, 'Proxima Centauri b', 'An exoplanet orbiting the star Proxima Centauri, within the habitable zone.', 46524, 4);
INSERT INTO public.planet VALUES (30, 'Sirius B', 'A terrestrial exoplanet orbiting the star Sirius.', 8686, 5);
INSERT INTO public.planet VALUES (31, 'Venus', 'The second planet from the Sun, and the second brightest object in the night sky after the Moon.', 25, 7);
INSERT INTO public.planet VALUES (32, 'Triangulum Prime', 'A planet in the Triangulum Galaxy, orbiting a star similar to the Sun.', 3000000, 8);
INSERT INTO public.planet VALUES (33, 'Whirlpoolia', 'A rocky exoplanet with a thin atmosphere, orbiting a star in the Whirlpool Galaxy.', 31000000, 6);
INSERT INTO public.planet VALUES (34, 'Mercury', 'A small rocky planet orbiting the Sun.', 48, 5);
INSERT INTO public.planet VALUES (35, 'Saturn', 'A gas giant with a distinctive system of rings.', 746, 6);
INSERT INTO public.planet VALUES (36, 'Sirius C', 'An exoplanet in a binary star system, orbiting one of the stars in the Sirius system.', 9, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (4, 'Sun', 'The Sun is the star at the center of the Solar System.', 0, 1);
INSERT INTO public.star VALUES (5, 'Alpha Centauri A', 'Alpha Centauri A is the primary component of the Alpha Centauri star system.', 447, 1);
INSERT INTO public.star VALUES (6, 'Alpha Centauri B', 'Alpha Centauri B is a star in the Alpha Centauri star system.', 437, 1);
INSERT INTO public.star VALUES (7, 'Proxima Centauri', 'Proxima Centauri is a small, low-mass star located approximately 4.24 light-years away from Earth in the constellation of Centaurus.', 424, 1);
INSERT INTO public.star VALUES (8, 'Sirius', 'Sirius is the brightest star in the night sky.', 8, 1);
INSERT INTO public.star VALUES (9, 'Betelgeuse', 'Betelgeuse is one of the largest known stars and also one of the most luminous.', 640, 1);


--
-- Name: extra_extra_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.extra_extra_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 40, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 36, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


--
-- Name: extra extra_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: extra extra_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_pkey PRIMARY KEY (extra_id);


--
-- Name: galaxy galaxy_distanc_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_distanc_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--


--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: alumnos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE alumnos (
    id integer NOT NULL,
    rut character varying,
    nombre character varying,
    apellido_paterno character varying,
    apellido_materno character varying,
    correo character varying,
    usuario_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.alumnos OWNER TO postgres;

--
-- Name: alumnos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE alumnos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumnos_id_seq OWNER TO postgres;

--
-- Name: alumnos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE alumnos_id_seq OWNED BY alumnos.id;


--
-- Name: curso_alumnos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE curso_alumnos (
    id integer NOT NULL,
    curso_id integer,
    alumno_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.curso_alumnos OWNER TO postgres;

--
-- Name: curso_alumnos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE curso_alumnos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.curso_alumnos_id_seq OWNER TO postgres;

--
-- Name: curso_alumnos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE curso_alumnos_id_seq OWNED BY curso_alumnos.id;


--
-- Name: cursos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE cursos (
    id integer NOT NULL,
    profesor_id integer,
    nombre character varying,
    semestre integer,
    "año" integer,
    descripcion text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.cursos OWNER TO postgres;

--
-- Name: cursos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE cursos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cursos_id_seq OWNER TO postgres;

--
-- Name: cursos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE cursos_id_seq OWNED BY cursos.id;


--
-- Name: encuesta; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE encuesta (
    id integer NOT NULL,
    estado boolean,
    nombre character varying,
    descripcion text,
    tipo_encuesta_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.encuesta OWNER TO postgres;

--
-- Name: encuesta_alumnos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE encuesta_alumnos (
    id integer NOT NULL,
    estado boolean,
    alumno_id integer,
    encuesta_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.encuesta_alumnos OWNER TO postgres;

--
-- Name: encuesta_alumnos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE encuesta_alumnos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.encuesta_alumnos_id_seq OWNER TO postgres;

--
-- Name: encuesta_alumnos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE encuesta_alumnos_id_seq OWNED BY encuesta_alumnos.id;


--
-- Name: encuesta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE encuesta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.encuesta_id_seq OWNER TO postgres;

--
-- Name: encuesta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE encuesta_id_seq OWNED BY encuesta.id;


--
-- Name: encuesta_pregunta; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE encuesta_pregunta (
    id integer NOT NULL,
    encuesta_id integer,
    pregunta_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.encuesta_pregunta OWNER TO postgres;

--
-- Name: encuesta_pregunta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE encuesta_pregunta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.encuesta_pregunta_id_seq OWNER TO postgres;

--
-- Name: encuesta_pregunta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE encuesta_pregunta_id_seq OWNED BY encuesta_pregunta.id;


--
-- Name: evaluaciones; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE evaluaciones (
    id integer NOT NULL,
    contestada integer,
    curso_id integer,
    encuesta_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.evaluaciones OWNER TO postgres;

--
-- Name: evaluaciones_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE evaluaciones_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.evaluaciones_id_seq OWNER TO postgres;

--
-- Name: evaluaciones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE evaluaciones_id_seq OWNED BY evaluaciones.id;


--
-- Name: grupo_alumnos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE grupo_alumnos (
    id integer NOT NULL,
    alumno_id integer,
    grupo_id integer,
    jefe boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.grupo_alumnos OWNER TO postgres;

--
-- Name: grupo_alumnos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE grupo_alumnos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.grupo_alumnos_id_seq OWNER TO postgres;

--
-- Name: grupo_alumnos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE grupo_alumnos_id_seq OWNED BY grupo_alumnos.id;


--
-- Name: grupos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE grupos (
    id integer NOT NULL,
    nombre character varying,
    curso_id integer,
    descripcion text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.grupos OWNER TO postgres;

--
-- Name: grupos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE grupos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.grupos_id_seq OWNER TO postgres;

--
-- Name: grupos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE grupos_id_seq OWNED BY grupos.id;


--
-- Name: opciones; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE opciones (
    id integer NOT NULL,
    valor integer,
    opcion_text character varying,
    pregunta_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.opciones OWNER TO postgres;

--
-- Name: opciones_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE opciones_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.opciones_id_seq OWNER TO postgres;

--
-- Name: opciones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE opciones_id_seq OWNED BY opciones.id;


--
-- Name: pregunta; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE pregunta (
    id integer NOT NULL,
    enunciado character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.pregunta OWNER TO postgres;

--
-- Name: pregunta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE pregunta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pregunta_id_seq OWNER TO postgres;

--
-- Name: pregunta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE pregunta_id_seq OWNED BY pregunta.id;


--
-- Name: profesores; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE profesores (
    id integer NOT NULL,
    rut character varying,
    nombre character varying,
    apellido_paterno character varying,
    apellido_materno character varying,
    correo character varying,
    descripcion text,
    usuario_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.profesores OWNER TO postgres;

--
-- Name: profesores_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE profesores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profesores_id_seq OWNER TO postgres;

--
-- Name: profesores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE profesores_id_seq OWNED BY profesores.id;


--
-- Name: respuesta; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE respuesta (
    id integer NOT NULL,
    modulo integer,
    encuestado_id integer,
    encuestador_id integer,
    evaluacion_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.respuesta OWNER TO postgres;

--
-- Name: respuesta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE respuesta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.respuesta_id_seq OWNER TO postgres;

--
-- Name: respuesta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE respuesta_id_seq OWNED BY respuesta.id;


--
-- Name: respuestum_pregunta; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE respuestum_pregunta (
    id integer NOT NULL,
    respuesta_id integer,
    pregunta_id integer,
    valor_opcion integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.respuestum_pregunta OWNER TO postgres;

--
-- Name: respuestum_pregunta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE respuestum_pregunta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.respuestum_pregunta_id_seq OWNER TO postgres;

--
-- Name: respuestum_pregunta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE respuestum_pregunta_id_seq OWNED BY respuestum_pregunta.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- Name: tipos_encuesta; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tipos_encuesta (
    id integer NOT NULL,
    nombre character varying,
    descripcion text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.tipos_encuesta OWNER TO postgres;

--
-- Name: tipos_encuesta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tipos_encuesta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipos_encuesta_id_seq OWNER TO postgres;

--
-- Name: tipos_encuesta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tipos_encuesta_id_seq OWNED BY tipos_encuesta.id;


--
-- Name: usuarios; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE usuarios (
    id integer NOT NULL,
    rut character varying,
    nombre character varying,
    apellido_paterno character varying,
    apellido_materno character varying,
    correo character varying,
    rol integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.usuarios OWNER TO postgres;

--
-- Name: usuarios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE usuarios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuarios_id_seq OWNER TO postgres;

--
-- Name: usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE usuarios_id_seq OWNED BY usuarios.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY alumnos ALTER COLUMN id SET DEFAULT nextval('alumnos_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY curso_alumnos ALTER COLUMN id SET DEFAULT nextval('curso_alumnos_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cursos ALTER COLUMN id SET DEFAULT nextval('cursos_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY encuesta ALTER COLUMN id SET DEFAULT nextval('encuesta_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY encuesta_alumnos ALTER COLUMN id SET DEFAULT nextval('encuesta_alumnos_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY encuesta_pregunta ALTER COLUMN id SET DEFAULT nextval('encuesta_pregunta_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY evaluaciones ALTER COLUMN id SET DEFAULT nextval('evaluaciones_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY grupo_alumnos ALTER COLUMN id SET DEFAULT nextval('grupo_alumnos_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY grupos ALTER COLUMN id SET DEFAULT nextval('grupos_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY opciones ALTER COLUMN id SET DEFAULT nextval('opciones_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pregunta ALTER COLUMN id SET DEFAULT nextval('pregunta_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY profesores ALTER COLUMN id SET DEFAULT nextval('profesores_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY respuesta ALTER COLUMN id SET DEFAULT nextval('respuesta_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY respuestum_pregunta ALTER COLUMN id SET DEFAULT nextval('respuestum_pregunta_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipos_encuesta ALTER COLUMN id SET DEFAULT nextval('tipos_encuesta_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuarios ALTER COLUMN id SET DEFAULT nextval('usuarios_id_seq'::regclass);


--
-- Data for Name: alumnos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY alumnos (id, rut, nombre, apellido_paterno, apellido_materno, correo, usuario_id, created_at, updated_at) FROM stdin;
1	181895683	Francisco	Avello	Barrera	francisco.avello@usach.cl	1	2015-12-23 02:21:00.691826	2015-12-23 02:21:00.691826
2	222333445	Juan	Perez	Cabral	sdsd.sd@usach.cl	2	2015-12-23 02:21:00.695399	2015-12-23 02:21:00.695399
3	551122887	Ricardo	Paredes	Rodriguez	asdaxcx.xzv@usach.cl	3	2015-12-23 02:21:00.69853	2015-12-23 02:21:00.69853
4	524777888	Sandra	Bascur	Tirado	ew.zxv@usach.cl	4	2015-12-23 02:21:00.701761	2015-12-23 02:21:00.701761
5	177087866	Claudia	Guzmán	Silva	claudia.guzmans@usach.cl	5	2015-12-23 02:21:00.704857	2015-12-23 02:21:00.704857
\.


--
-- Name: alumnos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('alumnos_id_seq', 5, true);


--
-- Data for Name: curso_alumnos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY curso_alumnos (id, curso_id, alumno_id, created_at, updated_at) FROM stdin;
1	1	1	2015-12-23 02:21:00.836856	2015-12-23 02:21:00.836856
2	1	2	2015-12-23 02:21:00.844661	2015-12-23 02:21:00.844661
3	1	3	2015-12-23 02:21:00.848424	2015-12-23 02:21:00.848424
4	2	2	2015-12-23 02:21:00.851955	2015-12-23 02:21:00.851955
5	2	1	2015-12-23 02:21:00.854895	2015-12-23 02:21:00.854895
6	2	4	2015-12-23 02:21:00.858499	2015-12-23 02:21:00.858499
7	2	3	2015-12-23 02:21:00.862093	2015-12-23 02:21:00.862093
8	3	1	2015-12-23 02:21:00.866157	2015-12-23 02:21:00.866157
9	3	4	2015-12-23 02:21:00.869733	2015-12-23 02:21:00.869733
\.


--
-- Name: curso_alumnos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('curso_alumnos_id_seq', 10, true);


--
-- Data for Name: cursos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cursos (id, profesor_id, nombre, semestre, "año", descripcion, created_at, updated_at) FROM stdin;
1	1	IHC	2	2015	Curso IHC Edmundo Leiva	2015-12-23 02:21:00.785232	2015-12-23 02:21:00.785232
2	2	Pingeso	2	2015	Curso PINGESO 2/2015	2015-12-23 02:21:00.792455	2015-12-23 02:21:00.792455
3	1	CYS	2	2015	Curso CyS	2015-12-23 02:21:00.798158	2015-12-23 02:21:00.798158
\.


--
-- Name: cursos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('cursos_id_seq', 3, true);


--
-- Data for Name: encuesta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY encuesta (id, estado, nombre, descripcion, tipo_encuesta_id, created_at, updated_at) FROM stdin;
1	t	Encuesta IHC 360 semestre 2	Contesten la encuesta	1	2015-12-23 02:21:01.037457	2015-12-23 02:21:01.037457
2	t	Encuesta IHC Liderazgo semestre 2	sada la encuesta	2	2015-12-23 02:21:01.041264	2015-12-23 02:21:01.041264
3	t	Encuesta 360 Pingeso	Hola la encuesta	1	2015-12-23 02:21:01.04395	2015-12-23 02:21:01.04395
4	t	Encuesta Liderazgo CYS	sdsdqw la d	2	2015-12-23 02:21:01.046926	2015-12-23 02:21:01.046926
\.


--
-- Data for Name: encuesta_alumnos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY encuesta_alumnos (id, estado, alumno_id, encuesta_id, created_at, updated_at) FROM stdin;
1	t	1	1	2015-12-23 02:21:01.288432	2015-12-23 02:21:01.288432
2	t	2	3	2015-12-23 02:21:01.291677	2015-12-23 02:21:01.291677
3	f	3	2	2015-12-23 02:21:01.294612	2015-12-23 02:21:01.294612
4	f	4	1	2015-12-23 02:21:01.297931	2015-12-23 02:21:01.297931
5	t	1	2	2015-12-23 02:21:01.301027	2015-12-23 02:21:01.301027
6	f	1	3	2015-12-23 02:21:01.304097	2015-12-23 02:21:01.304097
7	f	1	4	2015-12-23 02:21:01.306645	2015-12-23 02:21:01.306645
8	f	3	1	2015-12-23 02:21:01.30876	2015-12-23 02:21:01.30876
\.


--
-- Name: encuesta_alumnos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('encuesta_alumnos_id_seq', 8, true);


--
-- Name: encuesta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('encuesta_id_seq', 4, true);


--
-- Data for Name: encuesta_pregunta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY encuesta_pregunta (id, encuesta_id, pregunta_id, created_at, updated_at) FROM stdin;
1	1	1	2015-12-23 02:21:01.090237	2015-12-23 02:21:01.090237
2	1	2	2015-12-23 02:21:01.093226	2015-12-23 02:21:01.093226
3	1	3	2015-12-23 02:21:01.09622	2015-12-23 02:21:01.09622
4	2	1	2015-12-23 02:21:01.098706	2015-12-23 02:21:01.098706
5	2	3	2015-12-23 02:21:01.100924	2015-12-23 02:21:01.100924
6	3	2	2015-12-23 02:21:01.103254	2015-12-23 02:21:01.103254
7	3	3	2015-12-23 02:21:01.106672	2015-12-23 02:21:01.106672
8	4	2	2015-12-23 02:21:01.110022	2015-12-23 02:21:01.110022
9	4	3	2015-12-23 02:21:01.113509	2015-12-23 02:21:01.113509
10	4	4	2015-12-23 02:21:01.116302	2015-12-23 02:21:01.116302
\.


--
-- Name: encuesta_pregunta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('encuesta_pregunta_id_seq', 10, true);


--
-- Data for Name: evaluaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY evaluaciones (id, contestada, curso_id, encuesta_id, created_at, updated_at) FROM stdin;
1	1	1	1	2015-12-23 02:21:01.135596	2015-12-23 02:21:01.135596
2	0	1	2	2015-12-23 02:21:01.138765	2015-12-23 02:21:01.138765
3	0	2	3	2015-12-23 02:21:01.141521	2015-12-23 02:21:01.141521
4	0	3	4	2015-12-23 02:21:01.14437	2015-12-23 02:21:01.14437
\.


--
-- Name: evaluaciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('evaluaciones_id_seq', 4, true);


--
-- Data for Name: grupo_alumnos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY grupo_alumnos (id, alumno_id, grupo_id, jefe, created_at, updated_at) FROM stdin;
1	1	1	\N	2015-12-23 02:21:00.952278	2015-12-23 02:21:00.952278
2	2	1	\N	2015-12-23 02:21:00.960446	2015-12-23 02:21:00.960446
3	3	2	\N	2015-12-23 02:21:00.966247	2015-12-23 02:21:00.966247
4	4	3	\N	2015-12-23 02:21:00.970953	2015-12-23 02:21:00.970953
5	1	4	\N	2015-12-23 02:21:00.974707	2015-12-23 02:21:00.974707
6	2	4	\N	2015-12-23 02:21:00.978616	2015-12-23 02:21:00.978616
7	3	4	\N	2015-12-23 02:21:00.983058	2015-12-23 02:21:00.983058
8	4	4	\N	2015-12-23 02:21:00.987501	2015-12-23 02:21:00.987501
9	1	5	\N	2015-12-23 02:21:00.991358	2015-12-23 02:21:00.991358
10	3	5	\N	2015-12-23 02:21:00.994877	2015-12-23 02:21:00.994877
12	1	2	t	2015-12-23 05:42:26.786386	2015-12-23 05:42:26.786386
\.


--
-- Name: grupo_alumnos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('grupo_alumnos_id_seq', 12, true);


--
-- Data for Name: grupos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY grupos (id, nombre, curso_id, descripcion, created_at, updated_at) FROM stdin;
1	Grupo 1	1	Eso po	2015-12-23 02:21:00.900286	2015-12-23 02:21:00.900286
2	Grupo 2	1	dsfd po	2015-12-23 02:21:00.904771	2015-12-23 02:21:00.904771
3	Grupo 3	1	Efsso sdf	2015-12-23 02:21:00.908509	2015-12-23 02:21:00.908509
4	Grupo 1	2	sdfsfd	2015-12-23 02:21:00.912265	2015-12-23 02:21:00.912265
5	Grupo 1	3	dsfsg	2015-12-23 02:21:00.916062	2015-12-23 02:21:00.916062
6	Grupo 2	3	gsdgsg	2015-12-23 02:21:00.919533	2015-12-23 02:21:00.919533
\.


--
-- Name: grupos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('grupos_id_seq', 7, true);


--
-- Data for Name: opciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY opciones (id, valor, opcion_text, pregunta_id, created_at, updated_at) FROM stdin;
1	0	sdfs	1	2015-12-23 02:21:01.230271	2015-12-23 02:21:01.230271
2	1	dfsfsa	1	2015-12-23 02:21:01.24089	2015-12-23 02:21:01.24089
3	2	34rr	1	2015-12-23 02:21:01.243779	2015-12-23 02:21:01.243779
4	3	nvcc	1	2015-12-23 02:21:01.24708	2015-12-23 02:21:01.24708
5	0	Eso	2	2015-12-23 02:21:01.249797	2015-12-23 02:21:01.249797
6	1	Copenhagen	2	2015-12-23 02:21:01.252408	2015-12-23 02:21:01.252408
7	2	Copsdsdagen	2	2015-12-23 02:21:01.254857	2015-12-23 02:21:01.254857
8	3	SWdqwgen	2	2015-12-23 02:21:01.257694	2015-12-23 02:21:01.257694
9	0	dfdsfs	3	2015-12-23 02:21:01.260421	2015-12-23 02:21:01.260421
10	1	nbvr	3	2015-12-23 02:21:01.263793	2015-12-23 02:21:01.263793
11	2	ytgh	3	2015-12-23 02:21:01.266422	2015-12-23 02:21:01.266422
12	3	sadwqqn	3	2015-12-23 02:21:01.268743	2015-12-23 02:21:01.268743
\.


--
-- Name: opciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('opciones_id_seq', 12, true);


--
-- Data for Name: pregunta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pregunta (id, enunciado, created_at, updated_at) FROM stdin;
1	¿Como se llama?	2015-12-23 02:21:01.066698	2015-12-23 02:21:01.066698
2	¿Como me llamo?	2015-12-23 02:21:01.069494	2015-12-23 02:21:01.069494
3	¿Como se llaman?	2015-12-23 02:21:01.072195	2015-12-23 02:21:01.072195
\.


--
-- Name: pregunta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pregunta_id_seq', 3, true);


--
-- Data for Name: profesores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY profesores (id, rut, nombre, apellido_paterno, apellido_materno, correo, descripcion, usuario_id, created_at, updated_at) FROM stdin;
1	458786422	Carolina	Diaz	Aguilera	fsdfsfd.vzvwd@usach.cl	eso	5	2015-12-23 02:21:00.732148	2015-12-23 02:21:00.732148
2	25545877	Esteban	Bello	Montenegro	ewre.ghgf@usach.cl	eso22	6	2015-12-23 02:21:00.736187	2015-12-23 02:21:00.736187
3	182044695	Alexis	Casanueva	Ojeda	alexis.casanueva@usach.cl	\N	9	2015-12-23 18:04:23.30398	2015-12-23 18:04:23.30398
4	182044695	Alexis	Casanueva	Ojeda	alexis.casanueva@usach.cl	\N	10	2015-12-23 18:04:23.540998	2015-12-23 18:04:23.540998
5	182044695	Alexis	Casanueva	Ojeda	alexis.casanueva@usach.cl	\N	11	2015-12-23 18:04:23.760139	2015-12-23 18:04:23.760139
6	182044695	Alexis	Casanueva	Ojeda	alexis.casanueva@usach.cl	\N	12	2015-12-23 18:04:23.939874	2015-12-23 18:04:23.939874
7	182044695	Alexis	Casanueva	Ojeda	alexis.casanueva@usach.cl	\N	13	2015-12-23 18:04:24.114024	2015-12-23 18:04:24.114024
\.


--
-- Name: profesores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('profesores_id_seq', 7, true);


--
-- Data for Name: respuesta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY respuesta (id, modulo, encuestado_id, encuestador_id, evaluacion_id, created_at, updated_at) FROM stdin;
1	0	1	2	1	2015-12-23 02:21:01.164073	2015-12-23 02:21:01.164073
2	2	3	2	1	2015-12-23 02:21:01.167616	2015-12-23 02:21:01.167616
3	3	4	2	1	2015-12-23 02:21:01.17017	2015-12-23 02:21:01.17017
4	1	1	4	1	2015-12-23 15:06:58.778411	2015-12-23 15:06:58.778411
5	1	1	4	1	2015-12-23 15:10:48.630566	2015-12-23 15:10:48.630566
6	1	1	4	1	2015-12-23 15:12:45.263522	2015-12-23 15:12:45.263522
7	1	1	4	1	2015-12-23 15:15:08.272766	2015-12-23 15:15:08.272766
8	1	1	4	1	2015-12-23 15:16:54.57003	2015-12-23 15:16:54.57003
9	1	1	4	1	2015-12-23 15:19:25.042673	2015-12-23 15:19:25.042673
10	1	1	4	1	2015-12-23 15:22:00.086241	2015-12-23 15:22:00.086241
11	1	1	4	3	2015-12-23 15:22:41.569066	2015-12-23 15:22:41.569066
12	1	1	4	3	2015-12-23 15:30:59.110658	2015-12-23 15:30:59.110658
\.


--
-- Name: respuesta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('respuesta_id_seq', 12, true);


--
-- Data for Name: respuestum_pregunta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY respuestum_pregunta (id, respuesta_id, pregunta_id, valor_opcion, created_at, updated_at) FROM stdin;
1	1	1	2	2015-12-23 02:21:01.187317	2015-12-23 02:21:01.187317
2	1	2	3	2015-12-23 02:21:01.190322	2015-12-23 02:21:01.190322
3	1	3	0	2015-12-23 02:21:01.193459	2015-12-23 02:21:01.193459
4	2	1	3	2015-12-23 02:21:01.196515	2015-12-23 02:21:01.196515
5	2	2	0	2015-12-23 02:21:01.199278	2015-12-23 02:21:01.199278
6	2	3	2	2015-12-23 02:21:01.202891	2015-12-23 02:21:01.202891
7	3	1	2	2015-12-23 02:21:01.205675	2015-12-23 02:21:01.205675
8	3	2	1	2015-12-23 02:21:01.208984	2015-12-23 02:21:01.208984
9	3	3	3	2015-12-23 02:21:01.21176	2015-12-23 02:21:01.21176
\.


--
-- Name: respuestum_pregunta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('respuestum_pregunta_id_seq', 9, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY schema_migrations (version) FROM stdin;
20151218211345
20151218211535
20151218211641
20151218211855
20151218212029
20151218212335
20151218212421
20151218212652
20151218212808
20151218212911
20151218213203
20151219172032
20151219181005
20151220180001
20151221022248
20151222163906
\.


--
-- Data for Name: tipos_encuesta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tipos_encuesta (id, nombre, descripcion, created_at, updated_at) FROM stdin;
1	Encuesta 360	Descripcion de la encuesta 360	2015-12-23 02:21:01.016383	2015-12-23 02:21:01.016383
2	Encuesta Liderazgo	Descripcion de la encuesta de Liderazgo	2015-12-23 02:21:01.019141	2015-12-23 02:21:01.019141
\.


--
-- Name: tipos_encuesta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tipos_encuesta_id_seq', 5, true);


--
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY usuarios (id, rut, nombre, apellido_paterno, apellido_materno, correo, rol, created_at, updated_at) FROM stdin;
1	181895683	Francisco	Avello	Barrera	francisco.avello@usach.cl	2	2015-12-23 02:21:00.614247	2015-12-23 02:21:00.614247
2	222333445	Juan	Perez	Cabral	sdsd.sd@usach.cl	2	2015-12-23 02:21:00.636696	2015-12-23 02:21:00.636696
3	551122887	Ricardo	Paredes	Rodriguez	asdaxcx.xzv@usach.cl	2	2015-12-23 02:21:00.642606	2015-12-23 02:21:00.642606
4	524777888	Sandra	Bascur	Tirado	ew.zxv@usach.cl	2	2015-12-23 02:21:00.649004	2015-12-23 02:21:00.649004
5	458786422	Carolina	Diaz	Aguilera	fsdfsfd.vzvwd@usach.cl	1	2015-12-23 02:21:00.654599	2015-12-23 02:21:00.654599
6	25545877	Esteban	Bello	Montenegro	ewre.ghgf@usach.cl	1	2015-12-23 02:21:00.660072	2015-12-23 02:21:00.660072
7	180729348	Camila	Marín	González	camila.marin@usach.cl	0	2015-12-23 02:21:00.664889	2015-12-23 02:21:00.664889
8	177087866	Claudia	Guzmán	Silva	claudia.guzmans@usach.cl	2	2015-12-23 02:21:00.667893	2015-12-23 02:21:00.667893
9	182044695	Alexis	Casanueva	Ojeda	alexis.casanueva@usach.cl	1	2015-12-23 18:04:23.245104	2015-12-23 18:04:23.245104
10	182044695	Alexis	Casanueva	Ojeda	alexis.casanueva@usach.cl	1	2015-12-23 18:04:23.532859	2015-12-23 18:04:23.532859
11	182044695	Alexis	Casanueva	Ojeda	alexis.casanueva@usach.cl	1	2015-12-23 18:04:23.755227	2015-12-23 18:04:23.755227
12	182044695	Alexis	Casanueva	Ojeda	alexis.casanueva@usach.cl	1	2015-12-23 18:04:23.934147	2015-12-23 18:04:23.934147
13	182044695	Alexis	Casanueva	Ojeda	alexis.casanueva@usach.cl	1	2015-12-23 18:04:24.109982	2015-12-23 18:04:24.109982
\.


--
-- Name: usuarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('usuarios_id_seq', 13, true);


--
-- Name: alumnos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY alumnos
    ADD CONSTRAINT alumnos_pkey PRIMARY KEY (id);


--
-- Name: curso_alumnos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY curso_alumnos
    ADD CONSTRAINT curso_alumnos_pkey PRIMARY KEY (id);


--
-- Name: cursos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cursos
    ADD CONSTRAINT cursos_pkey PRIMARY KEY (id);


--
-- Name: encuesta_alumnos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY encuesta_alumnos
    ADD CONSTRAINT encuesta_alumnos_pkey PRIMARY KEY (id);


--
-- Name: encuesta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY encuesta
    ADD CONSTRAINT encuesta_pkey PRIMARY KEY (id);


--
-- Name: encuesta_pregunta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY encuesta_pregunta
    ADD CONSTRAINT encuesta_pregunta_pkey PRIMARY KEY (id);


--
-- Name: evaluaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY evaluaciones
    ADD CONSTRAINT evaluaciones_pkey PRIMARY KEY (id);


--
-- Name: grupo_alumnos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY grupo_alumnos
    ADD CONSTRAINT grupo_alumnos_pkey PRIMARY KEY (id);


--
-- Name: grupos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY grupos
    ADD CONSTRAINT grupos_pkey PRIMARY KEY (id);


--
-- Name: opciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY opciones
    ADD CONSTRAINT opciones_pkey PRIMARY KEY (id);


--
-- Name: pregunta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY pregunta
    ADD CONSTRAINT pregunta_pkey PRIMARY KEY (id);


--
-- Name: profesores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY profesores
    ADD CONSTRAINT profesores_pkey PRIMARY KEY (id);


--
-- Name: respuesta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY respuesta
    ADD CONSTRAINT respuesta_pkey PRIMARY KEY (id);


--
-- Name: respuestum_pregunta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY respuestum_pregunta
    ADD CONSTRAINT respuestum_pregunta_pkey PRIMARY KEY (id);


--
-- Name: tipos_encuesta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tipos_encuesta
    ADD CONSTRAINT tipos_encuesta_pkey PRIMARY KEY (id);


--
-- Name: usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--


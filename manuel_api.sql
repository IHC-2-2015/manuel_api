--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.1
-- Dumped by pg_dump version 9.4.1
-- Started on 2016-01-05 14:28:14

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 209 (class 3079 OID 11855)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2206 (class 0 OID 0)
-- Dependencies: 209
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 172 (class 1259 OID 40961)
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


ALTER TABLE alumnos OWNER TO postgres;

--
-- TOC entry 173 (class 1259 OID 40967)
-- Name: alumnos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE alumnos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE alumnos_id_seq OWNER TO postgres;

--
-- TOC entry 2207 (class 0 OID 0)
-- Dependencies: 173
-- Name: alumnos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE alumnos_id_seq OWNED BY alumnos.id;


--
-- TOC entry 174 (class 1259 OID 40969)
-- Name: curso_alumnos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE curso_alumnos (
    id integer NOT NULL,
    curso_id integer,
    alumno_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    ayudante boolean
);


ALTER TABLE curso_alumnos OWNER TO postgres;

--
-- TOC entry 175 (class 1259 OID 40972)
-- Name: curso_alumnos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE curso_alumnos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE curso_alumnos_id_seq OWNER TO postgres;

--
-- TOC entry 2208 (class 0 OID 0)
-- Dependencies: 175
-- Name: curso_alumnos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE curso_alumnos_id_seq OWNED BY curso_alumnos.id;


--
-- TOC entry 176 (class 1259 OID 40974)
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


ALTER TABLE cursos OWNER TO postgres;

--
-- TOC entry 177 (class 1259 OID 40980)
-- Name: cursos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE cursos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cursos_id_seq OWNER TO postgres;

--
-- TOC entry 2209 (class 0 OID 0)
-- Dependencies: 177
-- Name: cursos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE cursos_id_seq OWNED BY cursos.id;


--
-- TOC entry 178 (class 1259 OID 40982)
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


ALTER TABLE encuesta OWNER TO postgres;

--
-- TOC entry 179 (class 1259 OID 40988)
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


ALTER TABLE encuesta_alumnos OWNER TO postgres;

--
-- TOC entry 180 (class 1259 OID 40991)
-- Name: encuesta_alumnos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE encuesta_alumnos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE encuesta_alumnos_id_seq OWNER TO postgres;

--
-- TOC entry 2210 (class 0 OID 0)
-- Dependencies: 180
-- Name: encuesta_alumnos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE encuesta_alumnos_id_seq OWNED BY encuesta_alumnos.id;


--
-- TOC entry 181 (class 1259 OID 40993)
-- Name: encuesta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE encuesta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE encuesta_id_seq OWNER TO postgres;

--
-- TOC entry 2211 (class 0 OID 0)
-- Dependencies: 181
-- Name: encuesta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE encuesta_id_seq OWNED BY encuesta.id;


--
-- TOC entry 182 (class 1259 OID 40995)
-- Name: encuesta_pregunta; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE encuesta_pregunta (
    id integer NOT NULL,
    encuesta_id integer,
    pregunta_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE encuesta_pregunta OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 40998)
-- Name: encuesta_pregunta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE encuesta_pregunta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE encuesta_pregunta_id_seq OWNER TO postgres;

--
-- TOC entry 2212 (class 0 OID 0)
-- Dependencies: 183
-- Name: encuesta_pregunta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE encuesta_pregunta_id_seq OWNED BY encuesta_pregunta.id;


--
-- TOC entry 184 (class 1259 OID 41000)
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


ALTER TABLE evaluaciones OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 41003)
-- Name: evaluaciones_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE evaluaciones_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE evaluaciones_id_seq OWNER TO postgres;

--
-- TOC entry 2213 (class 0 OID 0)
-- Dependencies: 185
-- Name: evaluaciones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE evaluaciones_id_seq OWNED BY evaluaciones.id;


--
-- TOC entry 208 (class 1259 OID 41160)
-- Name: funcionalidad_ayudante_cursos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE funcionalidad_ayudante_cursos (
    id integer NOT NULL,
    curso_alumno_id integer,
    funcionalidad_id integer
);


ALTER TABLE funcionalidad_ayudante_cursos OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 41158)
-- Name: funcionalidad_ayudante_cursos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE funcionalidad_ayudante_cursos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE funcionalidad_ayudante_cursos_id_seq OWNER TO postgres;

--
-- TOC entry 2214 (class 0 OID 0)
-- Dependencies: 207
-- Name: funcionalidad_ayudante_cursos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE funcionalidad_ayudante_cursos_id_seq OWNED BY funcionalidad_ayudante_cursos.id;


--
-- TOC entry 206 (class 1259 OID 41141)
-- Name: funcionalidads; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE funcionalidads (
    id integer NOT NULL,
    descripcion text
);


ALTER TABLE funcionalidads OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 41139)
-- Name: funcionalidads_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE funcionalidads_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE funcionalidads_id_seq OWNER TO postgres;

--
-- TOC entry 2215 (class 0 OID 0)
-- Dependencies: 205
-- Name: funcionalidads_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE funcionalidads_id_seq OWNED BY funcionalidads.id;


--
-- TOC entry 186 (class 1259 OID 41005)
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


ALTER TABLE grupo_alumnos OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 41008)
-- Name: grupo_alumnos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE grupo_alumnos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE grupo_alumnos_id_seq OWNER TO postgres;

--
-- TOC entry 2216 (class 0 OID 0)
-- Dependencies: 187
-- Name: grupo_alumnos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE grupo_alumnos_id_seq OWNED BY grupo_alumnos.id;


--
-- TOC entry 188 (class 1259 OID 41010)
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


ALTER TABLE grupos OWNER TO postgres;

--
-- TOC entry 189 (class 1259 OID 41016)
-- Name: grupos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE grupos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE grupos_id_seq OWNER TO postgres;

--
-- TOC entry 2217 (class 0 OID 0)
-- Dependencies: 189
-- Name: grupos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE grupos_id_seq OWNED BY grupos.id;


--
-- TOC entry 190 (class 1259 OID 41018)
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


ALTER TABLE opciones OWNER TO postgres;

--
-- TOC entry 191 (class 1259 OID 41024)
-- Name: opciones_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE opciones_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE opciones_id_seq OWNER TO postgres;

--
-- TOC entry 2218 (class 0 OID 0)
-- Dependencies: 191
-- Name: opciones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE opciones_id_seq OWNED BY opciones.id;


--
-- TOC entry 192 (class 1259 OID 41026)
-- Name: pregunta; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE pregunta (
    id integer NOT NULL,
    enunciado character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE pregunta OWNER TO postgres;

--
-- TOC entry 193 (class 1259 OID 41032)
-- Name: pregunta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE pregunta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pregunta_id_seq OWNER TO postgres;

--
-- TOC entry 2219 (class 0 OID 0)
-- Dependencies: 193
-- Name: pregunta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE pregunta_id_seq OWNED BY pregunta.id;


--
-- TOC entry 194 (class 1259 OID 41034)
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


ALTER TABLE profesores OWNER TO postgres;

--
-- TOC entry 195 (class 1259 OID 41040)
-- Name: profesores_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE profesores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE profesores_id_seq OWNER TO postgres;

--
-- TOC entry 2220 (class 0 OID 0)
-- Dependencies: 195
-- Name: profesores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE profesores_id_seq OWNED BY profesores.id;


--
-- TOC entry 196 (class 1259 OID 41042)
-- Name: respuesta; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE respuesta (
    id integer NOT NULL,
    encuestado_id integer,
    encuestador_id integer,
    evaluacion_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE respuesta OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 41045)
-- Name: respuesta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE respuesta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE respuesta_id_seq OWNER TO postgres;

--
-- TOC entry 2221 (class 0 OID 0)
-- Dependencies: 197
-- Name: respuesta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE respuesta_id_seq OWNED BY respuesta.id;


--
-- TOC entry 198 (class 1259 OID 41047)
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


ALTER TABLE respuestum_pregunta OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 41050)
-- Name: respuestum_pregunta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE respuestum_pregunta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE respuestum_pregunta_id_seq OWNER TO postgres;

--
-- TOC entry 2222 (class 0 OID 0)
-- Dependencies: 199
-- Name: respuestum_pregunta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE respuestum_pregunta_id_seq OWNED BY respuestum_pregunta.id;


--
-- TOC entry 200 (class 1259 OID 41052)
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 41058)
-- Name: tipos_encuesta; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tipos_encuesta (
    id integer NOT NULL,
    nombre character varying,
    descripcion text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE tipos_encuesta OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 41064)
-- Name: tipos_encuesta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tipos_encuesta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tipos_encuesta_id_seq OWNER TO postgres;

--
-- TOC entry 2223 (class 0 OID 0)
-- Dependencies: 202
-- Name: tipos_encuesta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tipos_encuesta_id_seq OWNED BY tipos_encuesta.id;


--
-- TOC entry 203 (class 1259 OID 41066)
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


ALTER TABLE usuarios OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 41072)
-- Name: usuarios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE usuarios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE usuarios_id_seq OWNER TO postgres;

--
-- TOC entry 2224 (class 0 OID 0)
-- Dependencies: 204
-- Name: usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE usuarios_id_seq OWNED BY usuarios.id;


--
-- TOC entry 1998 (class 2604 OID 41074)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY alumnos ALTER COLUMN id SET DEFAULT nextval('alumnos_id_seq'::regclass);


--
-- TOC entry 1999 (class 2604 OID 41075)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY curso_alumnos ALTER COLUMN id SET DEFAULT nextval('curso_alumnos_id_seq'::regclass);


--
-- TOC entry 2000 (class 2604 OID 41076)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cursos ALTER COLUMN id SET DEFAULT nextval('cursos_id_seq'::regclass);


--
-- TOC entry 2001 (class 2604 OID 41077)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY encuesta ALTER COLUMN id SET DEFAULT nextval('encuesta_id_seq'::regclass);


--
-- TOC entry 2002 (class 2604 OID 41078)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY encuesta_alumnos ALTER COLUMN id SET DEFAULT nextval('encuesta_alumnos_id_seq'::regclass);


--
-- TOC entry 2003 (class 2604 OID 41079)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY encuesta_pregunta ALTER COLUMN id SET DEFAULT nextval('encuesta_pregunta_id_seq'::regclass);


--
-- TOC entry 2004 (class 2604 OID 41080)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY evaluaciones ALTER COLUMN id SET DEFAULT nextval('evaluaciones_id_seq'::regclass);


--
-- TOC entry 2015 (class 2604 OID 41163)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY funcionalidad_ayudante_cursos ALTER COLUMN id SET DEFAULT nextval('funcionalidad_ayudante_cursos_id_seq'::regclass);


--
-- TOC entry 2014 (class 2604 OID 41144)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY funcionalidads ALTER COLUMN id SET DEFAULT nextval('funcionalidads_id_seq'::regclass);


--
-- TOC entry 2005 (class 2604 OID 41081)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY grupo_alumnos ALTER COLUMN id SET DEFAULT nextval('grupo_alumnos_id_seq'::regclass);


--
-- TOC entry 2006 (class 2604 OID 41082)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY grupos ALTER COLUMN id SET DEFAULT nextval('grupos_id_seq'::regclass);


--
-- TOC entry 2007 (class 2604 OID 41083)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY opciones ALTER COLUMN id SET DEFAULT nextval('opciones_id_seq'::regclass);


--
-- TOC entry 2008 (class 2604 OID 41084)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pregunta ALTER COLUMN id SET DEFAULT nextval('pregunta_id_seq'::regclass);


--
-- TOC entry 2009 (class 2604 OID 41085)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY profesores ALTER COLUMN id SET DEFAULT nextval('profesores_id_seq'::regclass);


--
-- TOC entry 2010 (class 2604 OID 41086)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY respuesta ALTER COLUMN id SET DEFAULT nextval('respuesta_id_seq'::regclass);


--
-- TOC entry 2011 (class 2604 OID 41087)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY respuestum_pregunta ALTER COLUMN id SET DEFAULT nextval('respuestum_pregunta_id_seq'::regclass);


--
-- TOC entry 2012 (class 2604 OID 41088)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipos_encuesta ALTER COLUMN id SET DEFAULT nextval('tipos_encuesta_id_seq'::regclass);


--
-- TOC entry 2013 (class 2604 OID 41089)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuarios ALTER COLUMN id SET DEFAULT nextval('usuarios_id_seq'::regclass);


--
-- TOC entry 2162 (class 0 OID 40961)
-- Dependencies: 172
-- Data for Name: alumnos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY alumnos (id, rut, nombre, apellido_paterno, apellido_materno, correo, usuario_id, created_at, updated_at) FROM stdin;
1	181895683	Francisco	Avello	Barrera	francisco.avello@usach.cl	1	2015-12-23 02:21:00.691826	2015-12-23 02:21:00.691826
2	222333445	Juan	Perez	Cabral	sdsd.sd@usach.cl	2	2015-12-23 02:21:00.695399	2015-12-23 02:21:00.695399
3	551122887	Ricardo	Paredes	Rodriguez	asdaxcx.xzv@usach.cl	3	2015-12-23 02:21:00.69853	2015-12-23 02:21:00.69853
4	524777888	Sandra	Bascur	Tirado	ew.zxv@usach.cl	4	2015-12-23 02:21:00.701761	2015-12-23 02:21:00.701761
5	177087866	Claudia	Guzmán	Silva	claudia.guzmans@usach.cl	5	2015-12-23 02:21:00.704857	2015-12-23 02:21:00.704857
6	182105384	Vasco	Vergara	Arellano	vasco.vergara@usach.cl	14	2016-01-02 04:56:52.848777	2016-01-02 04:56:52.848777
7	17294586-4	Alberto	Toro	Figueroa	alberto.toro@usach.cl	16	2016-01-02 23:42:16.735964	2016-01-02 23:42:16.735964
8	2132131	Francisco	Avello	Barrera (Gmail)	avellobarrera@gmail.com	19	2016-01-04 19:23:43.277164	2016-01-04 19:23:43.277164
9		Rol	Alumno	1	alumnomanuelapp@gmail.com	22	2016-01-04 23:32:05.995657	2016-01-04 23:32:05.995657
10		Rol	Alumno	2	alumno2manuelapp@gmail.com	23	2016-01-04 23:32:42.93432	2016-01-04 23:32:42.93432
11		Rol	Alumno	3	 alumno3manuelapp@gmail.com	24	2016-01-04 23:33:16.126691	2016-01-04 23:33:16.126691
22	\N	\N	\N	\N	\N	37	2016-01-05 05:08:19.510252	2016-01-05 05:08:19.510252
\.


--
-- TOC entry 2225 (class 0 OID 0)
-- Dependencies: 173
-- Name: alumnos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('alumnos_id_seq', 22, true);


--
-- TOC entry 2164 (class 0 OID 40969)
-- Dependencies: 174
-- Data for Name: curso_alumnos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY curso_alumnos (id, curso_id, alumno_id, created_at, updated_at, ayudante) FROM stdin;
1	1	1	2015-12-23 02:21:00.836856	2015-12-23 02:21:00.836856	\N
2	1	2	2015-12-23 02:21:00.844661	2015-12-23 02:21:00.844661	\N
4	2	2	2015-12-23 02:21:00.851955	2015-12-23 02:21:00.851955	\N
5	2	1	2015-12-23 02:21:00.854895	2015-12-23 02:21:00.854895	\N
6	2	4	2015-12-23 02:21:00.858499	2015-12-23 02:21:00.858499	\N
7	2	3	2015-12-23 02:21:00.862093	2015-12-23 02:21:00.862093	\N
8	3	1	2015-12-23 02:21:00.866157	2015-12-23 02:21:00.866157	\N
9	3	4	2015-12-23 02:21:00.869733	2015-12-23 02:21:00.869733	\N
11	1	3	2016-01-03 04:49:39.595271	2016-01-03 04:49:39.595271	\N
13	10	1	2016-01-05 03:48:28.837467	2016-01-05 03:48:28.837467	\N
14	10	2	2016-01-05 03:51:18.938949	2016-01-05 03:51:18.938949	\N
\.


--
-- TOC entry 2226 (class 0 OID 0)
-- Dependencies: 175
-- Name: curso_alumnos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('curso_alumnos_id_seq', 14, true);


--
-- TOC entry 2166 (class 0 OID 40974)
-- Dependencies: 176
-- Data for Name: cursos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cursos (id, profesor_id, nombre, semestre, "año", descripcion, created_at, updated_at) FROM stdin;
1	17	IHC	2	2015	Curso IHC Edmundo Leiva	2015-12-23 02:21:00.785232	2016-01-03 03:48:55.393677
3	17	CYS	2	2015	Curso CyS	2015-12-23 02:21:00.798158	2016-01-03 03:49:05.56462
2	17	Pingeso	2	2015	Curso PINGESO 2/2015	2015-12-23 02:21:00.792455	2016-01-03 03:49:23.332997
4	20	SD	2	2015	SD	2016-01-04 20:50:10.478338	2016-01-04 20:50:10.478338
10	19	CYS	2	2013	sjohasof	2016-01-05 03:43:35.638444	2016-01-05 03:46:26.356313
11	1	Sistema Operativo	1	2016	Sistema Operativo.	2016-01-05 05:54:34.903379	2016-01-05 05:54:34.903379
\.


--
-- TOC entry 2227 (class 0 OID 0)
-- Dependencies: 177
-- Name: cursos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('cursos_id_seq', 11, true);


--
-- TOC entry 2168 (class 0 OID 40982)
-- Dependencies: 178
-- Data for Name: encuesta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY encuesta (id, estado, nombre, descripcion, tipo_encuesta_id, created_at, updated_at) FROM stdin;
1	t	Encuesta IHC 360 semestre 2	Contesten la encuesta	1	2015-12-23 02:21:01.037457	2015-12-23 02:21:01.037457
2	t	Encuesta IHC Liderazgo semestre 2	sada la encuesta	2	2015-12-23 02:21:01.041264	2015-12-23 02:21:01.041264
3	t	Encuesta 360 Pingeso	Hola la encuesta	1	2015-12-23 02:21:01.04395	2015-12-23 02:21:01.04395
4	t	Encuesta Liderazgo CYS	sdsdqw la d	2	2015-12-23 02:21:01.046926	2015-12-23 02:21:01.046926
\.


--
-- TOC entry 2169 (class 0 OID 40988)
-- Dependencies: 179
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
12	t	7	2	2016-01-03 00:49:05.77976	2016-01-03 00:55:04.710459
15	f	7	4	2016-01-03 00:50:28.135416	2016-01-03 00:55:12.118578
14	f	7	3	2016-01-03 00:50:16.091355	2016-01-03 00:55:19.672086
13	t	7	1	2016-01-03 00:49:27.868899	2016-01-03 00:55:26.730382
9	t	6	4	2016-01-02 17:31:04.908648	2016-01-03 20:25:32.961803
10	f	6	3	2016-01-02 17:31:26.755946	2016-01-03 20:25:50.211906
11	t	6	1	2016-01-02 22:20:38.787281	2016-01-03 20:26:12.553455
17	t	5	1	2016-01-04 00:50:06.960075	2016-01-05 04:37:42.662022
16	f	5	3	2016-01-04 00:49:47.026561	2016-01-05 04:37:53.329523
\.


--
-- TOC entry 2228 (class 0 OID 0)
-- Dependencies: 180
-- Name: encuesta_alumnos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('encuesta_alumnos_id_seq', 17, true);


--
-- TOC entry 2229 (class 0 OID 0)
-- Dependencies: 181
-- Name: encuesta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('encuesta_id_seq', 4, true);


--
-- TOC entry 2172 (class 0 OID 40995)
-- Dependencies: 182
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
-- TOC entry 2230 (class 0 OID 0)
-- Dependencies: 183
-- Name: encuesta_pregunta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('encuesta_pregunta_id_seq', 10, true);


--
-- TOC entry 2174 (class 0 OID 41000)
-- Dependencies: 184
-- Data for Name: evaluaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY evaluaciones (id, contestada, curso_id, encuesta_id, created_at, updated_at) FROM stdin;
1	1	1	1	2015-12-23 02:21:01.135596	2015-12-23 02:21:01.135596
2	0	1	2	2015-12-23 02:21:01.138765	2015-12-23 02:21:01.138765
3	0	2	3	2015-12-23 02:21:01.141521	2015-12-23 02:21:01.141521
4	0	3	4	2015-12-23 02:21:01.14437	2015-12-23 02:21:01.14437
5	0	10	4	2016-01-05 04:09:53.785097	2016-01-05 04:09:53.785097
\.


--
-- TOC entry 2231 (class 0 OID 0)
-- Dependencies: 185
-- Name: evaluaciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('evaluaciones_id_seq', 5, true);


--
-- TOC entry 2198 (class 0 OID 41160)
-- Dependencies: 208
-- Data for Name: funcionalidad_ayudante_cursos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY funcionalidad_ayudante_cursos (id, curso_alumno_id, funcionalidad_id) FROM stdin;
\.


--
-- TOC entry 2232 (class 0 OID 0)
-- Dependencies: 207
-- Name: funcionalidad_ayudante_cursos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('funcionalidad_ayudante_cursos_id_seq', 1, false);


--
-- TOC entry 2196 (class 0 OID 41141)
-- Dependencies: 206
-- Data for Name: funcionalidads; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY funcionalidads (id, descripcion) FROM stdin;
1	Agregar alumnos al curso
2	Ver las encuestas asociadas a un curso
3	Modificar enunciados de las encuestas
4	Asignar al curso una instancia de encuesta
5	Crear un grupo
6	Editar perfil de un curso
7	Eliminar un alumno de un grupo
8	Eliminar un grupo
9	Asignar alumnos a un grupo
10	Ver encuestas que he modificado
11	Crear nuevos alumnos en el curso
12	Revisar alumnos que han respondido una encuesta
13	Revisar alumnos que no han respondido una encuesta
14	Asignar jefe de grupo
15	Revisar resultados de las encuestas contestadas por el curso
\.


--
-- TOC entry 2233 (class 0 OID 0)
-- Dependencies: 205
-- Name: funcionalidads_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('funcionalidads_id_seq', 15, true);


--
-- TOC entry 2176 (class 0 OID 41005)
-- Dependencies: 186
-- Data for Name: grupo_alumnos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY grupo_alumnos (id, alumno_id, grupo_id, jefe, created_at, updated_at) FROM stdin;
2	2	1	\N	2015-12-23 02:21:00.960446	2015-12-23 02:21:00.960446
4	4	3	\N	2015-12-23 02:21:00.970953	2015-12-23 02:21:00.970953
5	1	4	\N	2015-12-23 02:21:00.974707	2015-12-23 02:21:00.974707
6	2	4	\N	2015-12-23 02:21:00.978616	2015-12-23 02:21:00.978616
7	3	4	\N	2015-12-23 02:21:00.983058	2015-12-23 02:21:00.983058
8	4	4	\N	2015-12-23 02:21:00.987501	2015-12-23 02:21:00.987501
9	1	5	\N	2015-12-23 02:21:00.991358	2015-12-23 02:21:00.991358
10	3	5	\N	2015-12-23 02:21:00.994877	2015-12-23 02:21:00.994877
15	3	1	f	2016-01-03 04:57:17.718262	2016-01-03 04:57:17.718262
16	4	2	f	2016-01-03 04:58:03.290631	2016-01-03 04:58:03.290631
17	5	4	f	2016-01-03 04:58:28.871773	2016-01-03 04:58:28.871773
18	14	6	f	2016-01-03 04:59:24.547031	2016-01-03 04:59:24.547031
19	15	6	f	2016-01-03 04:59:33.789272	2016-01-03 04:59:33.789272
20	6	2	f	2016-01-04 23:47:25.781667	2016-01-04 23:47:25.781667
1	1	1	t	2015-12-23 02:21:00.952278	2016-01-04 23:56:42.043965
21	1	-1	f	2016-01-05 03:47:53.317563	2016-01-05 03:47:53.317563
22	1	-1	f	2016-01-05 03:48:29.871919	2016-01-05 03:48:29.871919
23	2	-1	f	2016-01-05 03:51:20.567506	2016-01-05 03:51:20.567506
24	\N	-1	f	2016-01-05 03:59:01.856988	2016-01-05 03:59:01.856988
\.


--
-- TOC entry 2234 (class 0 OID 0)
-- Dependencies: 187
-- Name: grupo_alumnos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('grupo_alumnos_id_seq', 24, true);


--
-- TOC entry 2178 (class 0 OID 41010)
-- Dependencies: 188
-- Data for Name: grupos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY grupos (id, nombre, curso_id, descripcion, created_at, updated_at) FROM stdin;
2	Grupo 2	1	dsfd po	2015-12-23 02:21:00.904771	2015-12-23 02:21:00.904771
3	Grupo 3	1	Efsso sdf	2015-12-23 02:21:00.908509	2015-12-23 02:21:00.908509
4	Grupo 1	2	sdfsfd	2015-12-23 02:21:00.912265	2015-12-23 02:21:00.912265
5	Grupo 1	3	dsfsg	2015-12-23 02:21:00.916062	2015-12-23 02:21:00.916062
6	Grupo 2	3	gsdgsg	2015-12-23 02:21:00.919533	2015-12-23 02:21:00.919533
8	Grupo 1	1	sfoidajfoia	2016-01-03 04:14:05.065433	2016-01-03 04:14:15.459819
10	Grupo 3	2	hyrerw	2016-01-03 04:53:20.35705	2016-01-03 04:53:20.35705
11	Grupo 3	3	hohoho	2016-01-03 04:54:14.223359	2016-01-03 04:54:14.223359
12	Grupo 1	10	Hola	2016-01-05 04:05:32.708912	2016-01-05 04:05:32.708912
13	Grupo 3	10	Holanda	2016-01-05 04:05:44.4427	2016-01-05 04:05:44.4427
\.


--
-- TOC entry 2235 (class 0 OID 0)
-- Dependencies: 189
-- Name: grupos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('grupos_id_seq', 13, true);


--
-- TOC entry 2180 (class 0 OID 41018)
-- Dependencies: 190
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
-- TOC entry 2236 (class 0 OID 0)
-- Dependencies: 191
-- Name: opciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('opciones_id_seq', 12, true);


--
-- TOC entry 2182 (class 0 OID 41026)
-- Dependencies: 192
-- Data for Name: pregunta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pregunta (id, enunciado, created_at, updated_at) FROM stdin;
1	¿Como se llama?	2015-12-23 02:21:01.066698	2015-12-23 02:21:01.066698
2	¿Como me llamo?	2015-12-23 02:21:01.069494	2015-12-23 02:21:01.069494
3	¿Como se llaman?	2015-12-23 02:21:01.072195	2015-12-23 02:21:01.072195
\.


--
-- TOC entry 2237 (class 0 OID 0)
-- Dependencies: 193
-- Name: pregunta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pregunta_id_seq', 3, true);


--
-- TOC entry 2184 (class 0 OID 41034)
-- Dependencies: 194
-- Data for Name: profesores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY profesores (id, rut, nombre, apellido_paterno, apellido_materno, correo, descripcion, usuario_id, created_at, updated_at) FROM stdin;
1	458786422	Carolina	Diaz	Aguilera	fsdfsfd.vzvwd@usach.cl	eso	5	2015-12-23 02:21:00.732148	2015-12-23 02:21:00.732148
2	25545877	Esteban	Bello	Montenegro	ewre.ghgf@usach.cl	eso22	6	2015-12-23 02:21:00.736187	2015-12-23 02:21:00.736187
3	182044695	Alexis	Casanueva	Ojeda	alexis.casanueva@usach.cl	\N	9	2015-12-23 18:04:23.30398	2015-12-23 18:04:23.30398
8	184553740	Pablo	Salinas	Cabanas	pablo.salinasc@usach.cl	\N	17	2016-01-03 03:45:57.748705	2016-01-03 03:45:57.748705
9	46546546	Vasco	Vergara	Arellano (hotmail)	vasco_esteban@hotmail.com	\N	20	2016-01-04 20:43:49.097324	2016-01-04 20:43:49.097324
10		Rol	Profesor		 profesormanuelapp@gmail.com	\N	21	2016-01-04 23:30:32.521434	2016-01-04 23:30:32.521434
11		Francisco	Avello		avellobarrera@gmail.com		19	2016-01-05 03:45:24.678197	2016-01-05 03:46:35.159306
\.


--
-- TOC entry 2238 (class 0 OID 0)
-- Dependencies: 195
-- Name: profesores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('profesores_id_seq', 11, true);


--
-- TOC entry 2186 (class 0 OID 41042)
-- Dependencies: 196
-- Data for Name: respuesta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY respuesta (id, encuestado_id, encuestador_id, evaluacion_id, created_at, updated_at) FROM stdin;
1	1	2	1	2015-12-23 02:21:01.164073	2015-12-23 02:21:01.164073
2	3	2	1	2015-12-23 02:21:01.167616	2015-12-23 02:21:01.167616
3	4	2	1	2015-12-23 02:21:01.17017	2015-12-23 02:21:01.17017
4	1	4	1	2015-12-23 15:06:58.778411	2015-12-23 15:06:58.778411
5	1	4	1	2015-12-23 15:10:48.630566	2015-12-23 15:10:48.630566
6	1	4	1	2015-12-23 15:12:45.263522	2015-12-23 15:12:45.263522
7	1	4	1	2015-12-23 15:15:08.272766	2015-12-23 15:15:08.272766
8	1	4	1	2015-12-23 15:16:54.57003	2015-12-23 15:16:54.57003
9	1	4	1	2015-12-23 15:19:25.042673	2015-12-23 15:19:25.042673
10	1	4	1	2015-12-23 15:22:00.086241	2015-12-23 15:22:00.086241
11	1	4	3	2015-12-23 15:22:41.569066	2015-12-23 15:22:41.569066
12	1	4	3	2015-12-23 15:30:59.110658	2015-12-23 15:30:59.110658
\.


--
-- TOC entry 2239 (class 0 OID 0)
-- Dependencies: 197
-- Name: respuesta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('respuesta_id_seq', 12, true);


--
-- TOC entry 2188 (class 0 OID 41047)
-- Dependencies: 198
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
10	9	3	0	2016-01-03 21:39:54.556907	2016-01-03 21:39:54.556907
11	5	2	0	2016-01-03 21:39:54.586142	2016-01-03 21:39:54.586142
12	5	2	0	2016-01-03 21:40:05.649037	2016-01-03 21:40:05.649037
13	10	3	1	2016-01-03 21:40:05.671499	2016-01-03 21:40:05.671499
14	7	2	2	2016-01-03 21:40:44.520165	2016-01-03 21:40:44.520165
15	10	3	1	2016-01-03 21:40:44.567497	2016-01-03 21:40:44.567497
16	7	2	2	2016-01-03 21:40:50.448487	2016-01-03 21:40:50.448487
17	10	3	1	2016-01-03 21:40:50.493576	2016-01-03 21:40:50.493576
18	6	2	1	2016-01-03 21:41:29.293012	2016-01-03 21:41:29.293012
19	9	3	0	2016-01-03 21:41:29.353121	2016-01-03 21:41:29.353121
20	5	2	0	2016-01-03 21:42:24.601253	2016-01-03 21:42:24.601253
21	9	3	0	2016-01-03 21:42:24.627298	2016-01-03 21:42:24.627298
22	6	2	1	2016-01-03 21:48:15.869081	2016-01-03 21:48:15.869081
23	10	3	1	2016-01-03 21:48:16.082224	2016-01-03 21:48:16.082224
24	5	2	0	2016-01-03 21:49:35.626254	2016-01-03 21:49:35.626254
25	9	3	0	2016-01-03 21:49:35.775488	2016-01-03 21:49:35.775488
26	5	2	0	2016-01-03 21:49:41.7681	2016-01-03 21:49:41.7681
27	9	3	0	2016-01-03 21:49:41.856848	2016-01-03 21:49:41.856848
28	7	2	2	2016-01-04 13:18:13.396872	2016-01-04 13:18:13.396872
29	9	3	0	2016-01-04 13:18:13.509287	2016-01-04 13:18:13.509287
\.


--
-- TOC entry 2240 (class 0 OID 0)
-- Dependencies: 199
-- Name: respuestum_pregunta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('respuestum_pregunta_id_seq', 29, true);


--
-- TOC entry 2190 (class 0 OID 41052)
-- Dependencies: 200
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
-- TOC entry 2191 (class 0 OID 41058)
-- Dependencies: 201
-- Data for Name: tipos_encuesta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tipos_encuesta (id, nombre, descripcion, created_at, updated_at) FROM stdin;
1	Encuesta 360	Descripcion de la encuesta 360	2015-12-23 02:21:01.016383	2015-12-23 02:21:01.016383
2	Encuesta Liderazgo	Descripcion de la encuesta de Liderazgo	2015-12-23 02:21:01.019141	2015-12-23 02:21:01.019141
6	Encuesta de Satisfacción	Conozca sus opiniones y mejore el rendimiento del curso con una encuesta en línea sobre la satisfacción.	2016-01-05 05:48:18.545445	2016-01-05 05:48:18.545445
\.


--
-- TOC entry 2241 (class 0 OID 0)
-- Dependencies: 202
-- Name: tipos_encuesta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tipos_encuesta_id_seq', 6, true);


--
-- TOC entry 2193 (class 0 OID 41066)
-- Dependencies: 203
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
14	182105384	Vasco	Vergara	Arellano	vasco.vergara@usach.cl	2	2016-01-02 04:56:52.834126	2016-01-02 04:56:52.834126
15	17832733-k	Ian	Mejias	Conejeros	ian.mejias@usach.cl	0	2016-01-02 19:49:12.023792	2016-01-02 19:49:12.023792
16	17294586-4	Alberto	Toro	Figueroa	alberto.toro@usach.cl	2	2016-01-02 23:42:16.554959	2016-01-02 23:42:16.554959
17	184553740	Pablo	Salinas	Cabanas	pablo.salinasc@usach.cl	1	2016-01-03 03:45:57.717282	2016-01-03 03:45:57.717282
18	47456352578	Sergio	Medina		sergio.medina@usach.cl	0	2016-01-04 13:23:38.349268	2016-01-04 13:23:38.349268
20	46546546	Vasco	Vergara	Arellano (hotmail)	vasco_esteban@hotmail.com	1	2016-01-04 20:43:49.065086	2016-01-04 20:43:49.065086
21		Rol	Profesor		 profesormanuelapp@gmail.com	1	2016-01-04 23:30:32.505249	2016-01-04 23:30:32.505249
22		Rol	Alumno	1	alumnomanuelapp@gmail.com	2	2016-01-04 23:32:05.979763	2016-01-04 23:32:05.979763
23		Rol	Alumno	2	alumno2manuelapp@gmail.com	2	2016-01-04 23:32:42.930066	2016-01-04 23:32:42.930066
24		Rol	Alumno	3	 alumno3manuelapp@gmail.com	2	2016-01-04 23:33:16.122381	2016-01-04 23:33:16.122381
25		Rol	Administrador		directormanuelapp@gmail.com	0	2016-01-04 23:33:51.593771	2016-01-04 23:33:51.593771
26		Carolina	Vasquez		carolina.vasquez@usach.cl	0	2016-01-05 02:18:54.758859	2016-01-05 02:18:54.758859
19	2132131	Francisco	Avello	Barrera (Gmail)	avellobarrera@gmail.com	1	2016-01-04 19:23:42.906956	2016-01-05 03:41:13.619543
37	\N	\N	\N	\N	\N	2	2016-01-05 05:08:19.49613	2016-01-05 05:08:19.49613
\.


--
-- TOC entry 2242 (class 0 OID 0)
-- Dependencies: 204
-- Name: usuarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('usuarios_id_seq', 37, true);


--
-- TOC entry 2017 (class 2606 OID 41091)
-- Name: alumnos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY alumnos
    ADD CONSTRAINT alumnos_pkey PRIMARY KEY (id);


--
-- TOC entry 2019 (class 2606 OID 41093)
-- Name: curso_alumnos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY curso_alumnos
    ADD CONSTRAINT curso_alumnos_pkey PRIMARY KEY (id);


--
-- TOC entry 2021 (class 2606 OID 41095)
-- Name: cursos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cursos
    ADD CONSTRAINT cursos_pkey PRIMARY KEY (id);


--
-- TOC entry 2025 (class 2606 OID 41097)
-- Name: encuesta_alumnos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY encuesta_alumnos
    ADD CONSTRAINT encuesta_alumnos_pkey PRIMARY KEY (id);


--
-- TOC entry 2023 (class 2606 OID 41099)
-- Name: encuesta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY encuesta
    ADD CONSTRAINT encuesta_pkey PRIMARY KEY (id);


--
-- TOC entry 2027 (class 2606 OID 41101)
-- Name: encuesta_pregunta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY encuesta_pregunta
    ADD CONSTRAINT encuesta_pregunta_pkey PRIMARY KEY (id);


--
-- TOC entry 2029 (class 2606 OID 41103)
-- Name: evaluaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY evaluaciones
    ADD CONSTRAINT evaluaciones_pkey PRIMARY KEY (id);


--
-- TOC entry 2052 (class 2606 OID 41165)
-- Name: funcionalidad_ayudante_cursos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY funcionalidad_ayudante_cursos
    ADD CONSTRAINT funcionalidad_ayudante_cursos_pkey PRIMARY KEY (id);


--
-- TOC entry 2050 (class 2606 OID 41149)
-- Name: funcionalidads_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY funcionalidads
    ADD CONSTRAINT funcionalidads_pkey PRIMARY KEY (id);


--
-- TOC entry 2031 (class 2606 OID 41105)
-- Name: grupo_alumnos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY grupo_alumnos
    ADD CONSTRAINT grupo_alumnos_pkey PRIMARY KEY (id);


--
-- TOC entry 2033 (class 2606 OID 41107)
-- Name: grupos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY grupos
    ADD CONSTRAINT grupos_pkey PRIMARY KEY (id);


--
-- TOC entry 2035 (class 2606 OID 41109)
-- Name: opciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY opciones
    ADD CONSTRAINT opciones_pkey PRIMARY KEY (id);


--
-- TOC entry 2037 (class 2606 OID 41111)
-- Name: pregunta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY pregunta
    ADD CONSTRAINT pregunta_pkey PRIMARY KEY (id);


--
-- TOC entry 2039 (class 2606 OID 41113)
-- Name: profesores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY profesores
    ADD CONSTRAINT profesores_pkey PRIMARY KEY (id);


--
-- TOC entry 2041 (class 2606 OID 41115)
-- Name: respuesta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY respuesta
    ADD CONSTRAINT respuesta_pkey PRIMARY KEY (id);


--
-- TOC entry 2043 (class 2606 OID 41117)
-- Name: respuestum_pregunta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY respuestum_pregunta
    ADD CONSTRAINT respuestum_pregunta_pkey PRIMARY KEY (id);


--
-- TOC entry 2046 (class 2606 OID 41119)
-- Name: tipos_encuesta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tipos_encuesta
    ADD CONSTRAINT tipos_encuesta_pkey PRIMARY KEY (id);


--
-- TOC entry 2048 (class 2606 OID 41121)
-- Name: usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);


--
-- TOC entry 2044 (class 1259 OID 41122)
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- TOC entry 2205 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2016-01-05 14:28:14

--
-- PostgreSQL database dump complete
--


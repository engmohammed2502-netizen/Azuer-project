--
-- PostgreSQL database dump
--

\restrict SswKgbuFOE5UcNEUDNS1Vt7v4geijc1I83PfSJiuYijiv9yC5u6JswJPGOO3zBR

-- Dumped from database version 13.23 (Debian 13.23-1.pgdg13+1)
-- Dumped by pg_dump version 13.23 (Debian 13.23-1.pgdg13+1)

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

ALTER TABLE ONLY public.library_user_user_permissions DROP CONSTRAINT library_user_user_pe_user_id_d9d78974_fk_library_u;
ALTER TABLE ONLY public.library_user_user_permissions DROP CONSTRAINT library_user_user_pe_permission_id_6a5167f4_fk_auth_perm;
ALTER TABLE ONLY public.library_user_groups DROP CONSTRAINT library_user_groups_user_id_797ccc7b_fk_library_user_id;
ALTER TABLE ONLY public.library_user_groups DROP CONSTRAINT library_user_groups_group_id_a225a4a9_fk_auth_group_id;
ALTER TABLE ONLY public.library_forumpost DROP CONSTRAINT library_forumpost_user_id_e9634c74_fk_library_user_id;
ALTER TABLE ONLY public.library_forumpost DROP CONSTRAINT library_forumpost_parent_id_335182c6_fk_library_forumpost_id;
ALTER TABLE ONLY public.library_forumpost DROP CONSTRAINT library_forumpost_course_id_0467bf63_fk_library_course_id;
ALTER TABLE ONLY public.library_coursevideo DROP CONSTRAINT library_coursevideo_uploaded_by_id_73e1cc2b_fk_library_user_id;
ALTER TABLE ONLY public.library_coursevideo DROP CONSTRAINT library_coursevideo_course_id_37e8eb9e_fk_library_course_id;
ALTER TABLE ONLY public.library_coursefile DROP CONSTRAINT library_coursefile_uploaded_by_id_89b01651_fk_library_user_id;
ALTER TABLE ONLY public.library_coursefile DROP CONSTRAINT library_coursefile_course_id_4d73107c_fk_library_course_id;
ALTER TABLE ONLY public.library_course DROP CONSTRAINT library_course_professor_id_cc959414_fk_library_user_id;
ALTER TABLE ONLY public.library_activitylog DROP CONSTRAINT library_activitylog_user_id_86830a20_fk_library_user_id;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_library_user_id;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
DROP INDEX public.library_user_username_f59462bc_like;
DROP INDEX public.library_user_user_permissions_user_id_d9d78974;
DROP INDEX public.library_user_user_permissions_permission_id_6a5167f4;
DROP INDEX public.library_user_student_id_1397906c_like;
DROP INDEX public.library_user_groups_user_id_797ccc7b;
DROP INDEX public.library_user_groups_group_id_a225a4a9;
DROP INDEX public.library_forumpost_user_id_e9634c74;
DROP INDEX public.library_forumpost_parent_id_335182c6;
DROP INDEX public.library_forumpost_course_id_0467bf63;
DROP INDEX public.library_coursevideo_uploaded_by_id_73e1cc2b;
DROP INDEX public.library_coursevideo_course_id_37e8eb9e;
DROP INDEX public.library_coursefile_uploaded_by_id_89b01651;
DROP INDEX public.library_coursefile_course_id_4d73107c;
DROP INDEX public.library_course_professor_id_cc959414;
DROP INDEX public.library_activitylog_user_id_86830a20;
DROP INDEX public.django_session_session_key_c0390e0f_like;
DROP INDEX public.django_session_expire_date_a5c62663;
DROP INDEX public.django_admin_log_user_id_c564eba6;
DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
DROP INDEX public.auth_permission_content_type_id_2f476e4b;
DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
DROP INDEX public.auth_group_name_a6ea08ec_like;
ALTER TABLE ONLY public.library_user DROP CONSTRAINT library_user_username_key;
ALTER TABLE ONLY public.library_user_user_permissions DROP CONSTRAINT library_user_user_permissions_pkey;
ALTER TABLE ONLY public.library_user_user_permissions DROP CONSTRAINT library_user_user_permis_user_id_permission_id_aed1df16_uniq;
ALTER TABLE ONLY public.library_user DROP CONSTRAINT library_user_student_id_key;
ALTER TABLE ONLY public.library_user DROP CONSTRAINT library_user_pkey;
ALTER TABLE ONLY public.library_user_groups DROP CONSTRAINT library_user_groups_user_id_group_id_89ea2476_uniq;
ALTER TABLE ONLY public.library_user_groups DROP CONSTRAINT library_user_groups_pkey;
ALTER TABLE ONLY public.library_sitesettings DROP CONSTRAINT library_sitesettings_pkey;
ALTER TABLE ONLY public.library_guestlog DROP CONSTRAINT library_guestlog_pkey;
ALTER TABLE ONLY public.library_forumpost DROP CONSTRAINT library_forumpost_pkey;
ALTER TABLE ONLY public.library_coursevideo DROP CONSTRAINT library_coursevideo_pkey;
ALTER TABLE ONLY public.library_coursefile DROP CONSTRAINT library_coursefile_pkey;
ALTER TABLE ONLY public.library_course DROP CONSTRAINT library_course_pkey;
ALTER TABLE ONLY public.library_activitylog DROP CONSTRAINT library_activitylog_pkey;
ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
DROP TABLE public.library_user_user_permissions;
DROP TABLE public.library_user_groups;
DROP TABLE public.library_user;
DROP TABLE public.library_sitesettings;
DROP TABLE public.library_guestlog;
DROP TABLE public.library_forumpost;
DROP TABLE public.library_coursevideo;
DROP TABLE public.library_coursefile;
DROP TABLE public.library_course;
DROP TABLE public.library_activitylog;
DROP TABLE public.django_session;
DROP TABLE public.django_migrations;
DROP TABLE public.django_content_type;
DROP TABLE public.django_admin_log;
DROP TABLE public.auth_permission;
DROP TABLE public.auth_group_permissions;
DROP TABLE public.auth_group;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: rsu_user
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO rsu_user;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: rsu_user
--

ALTER TABLE public.auth_group ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: rsu_user
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO rsu_user;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: rsu_user
--

ALTER TABLE public.auth_group_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: rsu_user
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO rsu_user;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: rsu_user
--

ALTER TABLE public.auth_permission ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: rsu_user
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id bigint NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO rsu_user;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: rsu_user
--

ALTER TABLE public.django_admin_log ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: rsu_user
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO rsu_user;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: rsu_user
--

ALTER TABLE public.django_content_type ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: rsu_user
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO rsu_user;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: rsu_user
--

ALTER TABLE public.django_migrations ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: rsu_user
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO rsu_user;

--
-- Name: library_activitylog; Type: TABLE; Schema: public; Owner: rsu_user
--

CREATE TABLE public.library_activitylog (
    id bigint NOT NULL,
    action character varying(255) NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    ip_address inet,
    user_id bigint
);


ALTER TABLE public.library_activitylog OWNER TO rsu_user;

--
-- Name: library_activitylog_id_seq; Type: SEQUENCE; Schema: public; Owner: rsu_user
--

ALTER TABLE public.library_activitylog ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.library_activitylog_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: library_course; Type: TABLE; Schema: public; Owner: rsu_user
--

CREATE TABLE public.library_course (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    code character varying(20) NOT NULL,
    department character varying(10) NOT NULL,
    semester integer NOT NULL,
    description text NOT NULL,
    last_update timestamp with time zone NOT NULL,
    professor_id bigint
);


ALTER TABLE public.library_course OWNER TO rsu_user;

--
-- Name: library_course_id_seq; Type: SEQUENCE; Schema: public; Owner: rsu_user
--

ALTER TABLE public.library_course ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.library_course_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: library_coursefile; Type: TABLE; Schema: public; Owner: rsu_user
--

CREATE TABLE public.library_coursefile (
    id bigint NOT NULL,
    title character varying(100) NOT NULL,
    file_type character varying(20) NOT NULL,
    file character varying(100) NOT NULL,
    upload_date timestamp with time zone NOT NULL,
    course_id bigint NOT NULL,
    uploaded_by_id bigint
);


ALTER TABLE public.library_coursefile OWNER TO rsu_user;

--
-- Name: library_coursefile_id_seq; Type: SEQUENCE; Schema: public; Owner: rsu_user
--

ALTER TABLE public.library_coursefile ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.library_coursefile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: library_coursevideo; Type: TABLE; Schema: public; Owner: rsu_user
--

CREATE TABLE public.library_coursevideo (
    id bigint NOT NULL,
    title character varying(100) NOT NULL,
    url character varying(200) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    course_id bigint NOT NULL,
    uploaded_by_id bigint
);


ALTER TABLE public.library_coursevideo OWNER TO rsu_user;

--
-- Name: library_coursevideo_id_seq; Type: SEQUENCE; Schema: public; Owner: rsu_user
--

ALTER TABLE public.library_coursevideo ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.library_coursevideo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: library_forumpost; Type: TABLE; Schema: public; Owner: rsu_user
--

CREATE TABLE public.library_forumpost (
    id bigint NOT NULL,
    guest_name character varying(255),
    content text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    course_id bigint NOT NULL,
    parent_id bigint,
    user_id bigint
);


ALTER TABLE public.library_forumpost OWNER TO rsu_user;

--
-- Name: library_forumpost_id_seq; Type: SEQUENCE; Schema: public; Owner: rsu_user
--

ALTER TABLE public.library_forumpost ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.library_forumpost_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: library_guestlog; Type: TABLE; Schema: public; Owner: rsu_user
--

CREATE TABLE public.library_guestlog (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    entry_time timestamp with time zone NOT NULL
);


ALTER TABLE public.library_guestlog OWNER TO rsu_user;

--
-- Name: library_guestlog_id_seq; Type: SEQUENCE; Schema: public; Owner: rsu_user
--

ALTER TABLE public.library_guestlog ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.library_guestlog_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: library_sitesettings; Type: TABLE; Schema: public; Owner: rsu_user
--

CREATE TABLE public.library_sitesettings (
    id bigint NOT NULL,
    college_logo character varying(100) NOT NULL,
    university_logo character varying(100) NOT NULL
);


ALTER TABLE public.library_sitesettings OWNER TO rsu_user;

--
-- Name: library_sitesettings_id_seq; Type: SEQUENCE; Schema: public; Owner: rsu_user
--

ALTER TABLE public.library_sitesettings ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.library_sitesettings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: library_user; Type: TABLE; Schema: public; Owner: rsu_user
--

CREATE TABLE public.library_user (
    id bigint NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    user_type character varying(10) NOT NULL,
    student_id character varying(12),
    full_name character varying(100) NOT NULL,
    is_frozen boolean NOT NULL,
    failed_login_attempts integer NOT NULL,
    frozen_until timestamp with time zone
);


ALTER TABLE public.library_user OWNER TO rsu_user;

--
-- Name: library_user_groups; Type: TABLE; Schema: public; Owner: rsu_user
--

CREATE TABLE public.library_user_groups (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.library_user_groups OWNER TO rsu_user;

--
-- Name: library_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: rsu_user
--

ALTER TABLE public.library_user_groups ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.library_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: library_user_id_seq; Type: SEQUENCE; Schema: public; Owner: rsu_user
--

ALTER TABLE public.library_user ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.library_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: library_user_user_permissions; Type: TABLE; Schema: public; Owner: rsu_user
--

CREATE TABLE public.library_user_user_permissions (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.library_user_user_permissions OWNER TO rsu_user;

--
-- Name: library_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: rsu_user
--

ALTER TABLE public.library_user_user_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.library_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: rsu_user
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: rsu_user
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: rsu_user
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add user	6	add_user
22	Can change user	6	change_user
23	Can delete user	6	delete_user
24	Can view user	6	view_user
25	Can add course	7	add_course
26	Can change course	7	change_course
27	Can delete course	7	delete_course
28	Can view course	7	view_course
29	Can add guest log	8	add_guestlog
30	Can change guest log	8	change_guestlog
31	Can delete guest log	8	delete_guestlog
32	Can view guest log	8	view_guestlog
33	Can add site settings	9	add_sitesettings
34	Can change site settings	9	change_sitesettings
35	Can delete site settings	9	delete_sitesettings
36	Can view site settings	9	view_sitesettings
37	Can add forum post	10	add_forumpost
38	Can change forum post	10	change_forumpost
39	Can delete forum post	10	delete_forumpost
40	Can view forum post	10	view_forumpost
41	Can add course video	11	add_coursevideo
42	Can change course video	11	change_coursevideo
43	Can delete course video	11	delete_coursevideo
44	Can view course video	11	view_coursevideo
45	Can add course file	12	add_coursefile
46	Can change course file	12	change_coursefile
47	Can delete course file	12	delete_coursefile
48	Can view course file	12	view_coursefile
49	Can add activity log	13	add_activitylog
50	Can change activity log	13	change_activitylog
51	Can delete activity log	13	delete_activitylog
52	Can view activity log	13	view_activitylog
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: rsu_user
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2026-01-25 23:18:35.997106+00	1	control - الهندسة الكهربائية	1	[{"added": {}}]	7	1
2	2026-01-25 23:47:39.670722+00	2	amir	2	[{"changed": {"fields": ["Superuser status"]}}]	6	1
3	2026-01-25 23:49:29.536654+00	2	amir	2	[{"changed": {"fields": ["\\u062a\\u062c\\u0645\\u064a\\u062f \\u0627\\u0644\\u062d\\u0633\\u0627\\u0628"]}}]	6	1
4	2026-01-25 23:51:07.299353+00	2	amir	2	[]	6	1
5	2026-01-25 23:57:55.170973+00	2	amir	2	[{"changed": {"fields": ["\\u062a\\u062c\\u0645\\u064a\\u062f \\u0627\\u0644\\u062d\\u0633\\u0627\\u0628"]}}]	6	1
6	2026-01-26 03:37:17.566626+00	5	ميسر	2	[{"changed": {"fields": ["Superuser status"]}}]	6	1
7	2026-01-27 02:07:18.199751+00	2	Operating Sestem - الهندسة الكهربائية	1	[{"added": {}}]	7	1
8	2026-01-27 02:08:18.514961+00	6	basher	1	[{"added": {}}]	6	1
9	2026-01-27 02:09:41.314912+00	7	abdalsamed	1	[{"added": {}}]	6	1
10	2026-01-27 02:11:58.631598+00	8	fisal	1	[{"added": {}}]	6	1
11	2026-01-27 02:13:19.373336+00	3	Antenna & Waves Propagation - الهندسة الكهربائية	1	[{"added": {}}]	7	1
12	2026-01-27 02:14:27.542575+00	4	Optical Fiber Communication - الهندسة الكهربائية	1	[{"added": {}}]	7	1
13	2026-01-27 03:01:38.899565+00	9	omer	2	[{"changed": {"fields": ["Superuser status", "\\u0627\\u0644\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0643\\u0627\\u0645\\u0644"]}}]	6	1
14	2026-01-27 03:03:52.214746+00	9	omer	2	[{"changed": {"fields": ["Password"]}}]	6	1
15	2026-01-27 03:05:58.221293+00	10	Omer	1	[{"added": {}}]	6	1
16	2026-01-27 03:09:22.495491+00	10	Omer	2	[{"changed": {"fields": ["User permissions"]}}]	6	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: rsu_user
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	library	user
7	library	course
8	library	guestlog
9	library	sitesettings
10	library	forumpost
11	library	coursevideo
12	library	coursefile
13	library	activitylog
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: rsu_user
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-01-25 23:11:50.229745+00
2	contenttypes	0002_remove_content_type_name	2026-01-25 23:11:50.236212+00
3	auth	0001_initial	2026-01-25 23:11:50.269907+00
4	auth	0002_alter_permission_name_max_length	2026-01-25 23:11:50.274966+00
5	auth	0003_alter_user_email_max_length	2026-01-25 23:11:50.280393+00
6	auth	0004_alter_user_username_opts	2026-01-25 23:11:50.287519+00
7	auth	0005_alter_user_last_login_null	2026-01-25 23:11:50.293044+00
8	auth	0006_require_contenttypes_0002	2026-01-25 23:11:50.295142+00
9	auth	0007_alter_validators_add_error_messages	2026-01-25 23:11:50.300794+00
10	auth	0008_alter_user_username_max_length	2026-01-25 23:11:50.306209+00
11	auth	0009_alter_user_last_name_max_length	2026-01-25 23:11:50.31199+00
12	auth	0010_alter_group_name_max_length	2026-01-25 23:11:50.319725+00
13	auth	0011_update_proxy_permissions	2026-01-25 23:11:50.325793+00
14	auth	0012_alter_user_first_name_max_length	2026-01-25 23:11:50.330704+00
15	library	0001_initial	2026-01-25 23:11:50.43115+00
16	admin	0001_initial	2026-01-25 23:11:50.45023+00
17	admin	0002_logentry_remove_auto_add	2026-01-25 23:11:50.459335+00
18	admin	0003_logentry_add_action_flag_choices	2026-01-25 23:11:50.46964+00
19	sessions	0001_initial	2026-01-25 23:11:50.480118+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: rsu_user
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
pc4mqb1y3r8gzp8b0vn110sl5o7u22xy	.eJxVjMsOwiAQRf-FtSFAh0dduu83kBkGpWogKe3K-O_apAvd3nPOfYmI21ri1vMSZxZnocXpdyNMj1x3wHestyZTq-syk9wVedAup8b5eTncv4OCvXxrl7MnTQxwVSZo57LlpM1gWCvAoJjRW0L2AA4gBYvkcPR6QBwHSijeH-U-OBg:1vk9Ks:wJWjbGaJfe1aH49lvEA3uDk-dwjB4MRfzxfy6mSCn7M	2026-01-25 23:46:02.807249+00
o1cdaneity2ro7u4mwydxsek23qe5zeb	.eJxVjMsOwiAUBf-FtSFCy6W4dN9vINxHpWogKe3K-O_apAvdnpk5LxXTtua4NVnizOqirDr9bpjoIWUHfE_lVjXVsi4z6l3RB216rCzP6-H-HeTU8rdOMAgx2PMEImLEcADsHHbWMIRAYoLzIgNOlLwPBp0HS2gc9s72wav3BwA6OBo:1vk9cz:rr18XcKgPGcHO5N44Ppi5ooaZieUjMfQeeIAs4rRNlE	2026-01-26 00:04:45.921027+00
cjes940lkenp7vsspc6i6pyysin57j5w	.eJxVjDsOAiEUAO9CbQh_0NLeM5D34CGrBpJltzLe3ZBsoe3MZN4swr7VuA9a45LZhRl2-mUI6UltivyAdu889batC_KZ8MMOfuuZXtej_RtUGHVuSQQB52AAraMM2cqQdClBaGmVdUGhM0r4LMAHD7Ik5xFkQkqmOO3Z5wvaZDfO:1vk9kL:LMd1_p3BjDEpZLx76-xfQ5GkoV1yLEicV-SSROdkghY	2026-01-26 00:12:21.698083+00
llom93dk0gnl4ucpjgfqo65xjainsmul	.eJxVjMsOwiAQRf-FtSFAh0dduu83kBkGpWogKe3K-O_apAvd3nPOfYmI21ri1vMSZxZnocXpdyNMj1x3wHestyZTq-syk9wVedAup8b5eTncv4OCvXxrl7MnTQxwVSZo57LlpM1gWCvAoJjRW0L2AA4gBYvkcPR6QBwHSijeH-U-OBg:1vk9xs:oOJQhoIdMLNSw_HQ2sBHIGCX-7MOcKPkFnTCvtbjU6A	2026-01-26 00:26:20.479362+00
sg9h3hyhbhejem7kg6ngsd533e4gl3zi	.eJxVjMsOwiAQRf-FtSFAh0dduu83kBkGpWogKe3K-O_apAvd3nPOfYmI21ri1vMSZxZnocXpdyNMj1x3wHestyZTq-syk9wVedAup8b5eTncv4OCvXxrl7MnTQxwVSZo57LlpM1gWCvAoJjRW0L2AA4gBYvkcPR6QBwHSijeH-U-OBg:1vkCU2:IM9fiNgFac0KLevyhYR5H7xBAImvxIXdaKHhb1xGjg4	2026-01-26 03:07:42.848747+00
wqu01ubaju8udkj9f0ffzkgklxn4e9jv	.eJxVj80KwjAQhN9lz1KamJ-mR---gRA2ydrGn1SaBhTx3W2LIL0ss9_MDuwbYrZdoTxBO42FdrAuNuGdoIVTqRXXyxRi1X7V-CcCYQc2U85xSJaejzi-oGVNXc8Yy9Tbkmm0McxtHDbMob9SWoxwwdQNlR_SNEZXLZHq5-bqOAS6HX7ZTUGPuZ-vUTXkg-L1WRERIxaMcnvp9pwFZYwnZqQmatzZo9aGOannRxyTTkgujIbPF8jCVRU:1vkCao:LIQ3-66UHyWwsYcLSMIH01388M3bV8_qzXGX3_uZBuI	2026-01-26 03:14:42.552035+00
uoq9bpctb2s11fdl6lxmciwggze3bfzn	.eJxVjMsOwiAQRf-FtSFAh0dduu83kBkGpWogKe3K-O_apAvd3nPOfYmI21ri1vMSZxZnocXpdyNMj1x3wHestyZTq-syk9wVedAup8b5eTncv4OCvXxrl7MnTQxwVSZo57LlpM1gWCvAoJjRW0L2AA4gBYvkcPR6QBwHSijeH-U-OBg:1vkDPM:l_h2Ey8whuGBH2RKzDVt-hA3GRy6OgEweR_3LGrklw8	2026-01-26 04:06:56.986586+00
vjpvj47vperklvp2kigbbdv5gkycgcpi	.eJxVjDsOwjAQBe_iGln2xl9Kes5grb0bHECOFCcV4u4QKQW0b2beSyTc1pq2zkuaSJyFFaffLWN5cNsB3bHdZlnmti5TlrsiD9rldSZ-Xg7376Bir986ejBsiN0wsh2RCS1mrwBgKNaooMCTQ9IhFqdCRl-cDlY7RoaoFYr3B-y5N8o:1vkDRQ:kjpSWeqRAzIBA5etGtJGMPC0ffElwIFjNvUDacnnz7g	2026-01-26 04:09:04.486781+00
sj6nlmdojhjvbpo3j8prwqv8tzy8k7mb	.eJxVjMsOwiAQRf-FtSFAh0dduu83kBkGpWogKe3K-O_apAvd3nPOfYmI21ri1vMSZxZnocXpdyNMj1x3wHestyZTq-syk9wVedAup8b5eTncv4OCvXxrl7MnTQxwVSZo57LlpM1gWCvAoJjRW0L2AA4gBYvkcPR6QBwHSijeH-U-OBg:1vkDaw:ZPTf5GWfK0berBPwzilSfZjgwC5VQxa1OQN_bZ3Ctks	2026-01-26 04:18:54.159269+00
cah02l33hsza5tbryupinowd24j3fhh7	.eJxVjMsOwiAQRf-FtSFAh0dduu83kBkGpWogKe3K-O_apAvd3nPOfYmI21ri1vMSZxZnocXpdyNMj1x3wHestyZTq-syk9wVedAup8b5eTncv4OCvXxrl7MnTQxwVSZo57LlpM1gWCvAoJjRW0L2AA4gBYvkcPR6QBwHSijeH-U-OBg:1vkV5n:uHuZ3eLu-PdAdAGuMn_QJV-jm2mBql2WGxNtkkKkDls	2026-01-26 22:59:55.340723+00
l1mxucqpmsvxqr3u0mbwt86v6osol9hn	.eJxVjMsOwiAQRf-FtSFAh0dduu83kBkGpWogKe3K-O_apAvd3nPOfYmI21ri1vMSZxZnocXpdyNMj1x3wHestyZTq-syk9wVedAup8b5eTncv4OCvXxrl7MnTQxwVSZo57LlpM1gWCvAoJjRW0L2AA4gBYvkcPR6QBwHSijeH-U-OBg:1vkYPJ:zDuuWZjQs05tN_HMQPxzwQjdtZCwYsYEF8Bg11dYktQ	2026-01-27 02:32:17.258572+00
b5359ix5hxwkwdcayqj31cfz55b4byoz	.eJxVjMsOwiAUBf-FtSFCy6W4dN9vINxHpWogKe3K-O_apAvdnpk5LxXTtua4NVnizOqirDr9bpjoIWUHfE_lVjXVsi4z6l3RB216rCzP6-H-HeTU8rdOMAgx2PMEImLEcADsHHbWMIRAYoLzIgNOlLwPBp0HS2gc9s72wav3BwA6OBo:1vkZSe:MJrzOjfElialXOLPVJxjaTz0EvKI68JPrLbM2eLDePk	2026-01-27 03:39:48.051252+00
w2qwsculb0m3ogrx0lauhk4lsnirunjy	.eJxVjMsOwiAQRf-FtSFAh0dduu83kBkGpWogKe3K-O_apAvd3nPOfYmI21ri1vMSZxZnocXpdyNMj1x3wHestyZTq-syk9wVedAup8b5eTncv4OCvXxrl7MnTQxwVSZo57LlpM1gWCvAoJjRW0L2AA4gBYvkcPR6QBwHSijeH-U-OBg:1vkZw2:C1Z0x5ypocaAWhzq5Vn5_zZF99z4cRV9ZqOOn2R2r2c	2026-01-27 04:10:10.309976+00
48uxi5iml6fmekvda1dg8ygwhgip2xaa	.eJxVjMsOwiAQRf-FtSFAh0dduu83kBkGpWogKe3K-O_apAvd3nPOfYmI21ri1vMSZxZnocXpdyNMj1x3wHestyZTq-syk9wVedAup8b5eTncv4OCvXxrl7MnTQxwVSZo57LlpM1gWCvAoJjRW0L2AA4gBYvkcPR6QBwHSijeH-U-OBg:1vkayh:VohN8csc7Inl0Ydg9pi__WqWdF8Ny_9fOauCbhMoFBo	2026-01-27 05:16:59.418188+00
1whvcn8q76rh359kuyv9jk1dx47fi2vr	.eJxVjMsOwiAQRf-FtSFAh0dduu83kBkGpWogKe3K-O_apAvd3nPOfYmI21ri1vMSZxZnocXpdyNMj1x3wHestyZTq-syk9wVedAup8b5eTncv4OCvXxrl7MnTQxwVSZo57LlpM1gWCvAoJjRW0L2AA4gBYvkcPR6QBwHSijeH-U-OBg:1vkbYL:NTlv60Y9k0EzrtdHcDOvzRNaSfhHgyrTD8W2hZB518Y	2026-01-27 05:53:49.241711+00
9yukxqzj2o5hehf3qfw3zq6h5bt6c58d	.eJxVjDsOwjAQBe_iGlnrb9aU9JzBWsdrHECxFCcV4u4QKQW0b2beS0Ta1hq3zkucsjgLI06_W6LxwfMO8p3mW5Njm9dlSnJX5EG7vLbMz8vh_h1U6vVbow-akA0EHMqolYIBoWAx1kMKoIJF1uyBss0UjAWTHTt0rI23RSfx_gCzSDbA:1vkbZy:ileJaoaJfCMuJ1yG5yCXkSNAAHv1jrpc6b88AepUiWI	2026-01-27 05:55:30.398419+00
6mllbkq9iw6ld6h2axjpjonim43awi8f	.eJxVjDsOwjAQBe_iGllZ__BS0ucM1tpe4wBypDipEHeHSCmgfTPzXiLQttawdV7ClMVFAIjT7xgpPbjtJN-p3WaZ5rYuU5S7Ig_a5Thnfl4P9--gUq_fmixqZ2xCikNEcMWclU0ak_PJG3YIRNka1uhi8SYDo1besfFcsoJBvD_4HTe_:1vkbhS:bNiSpoi9pSx3-OCSW0Jl8L5bhN9BP3R9K3IMeQcqrKo	2026-01-27 06:03:14.602308+00
n9deld50oawv0xcsh51koyvl96ah4ku5	.eJxVjMsOwiAQRf-FtSFAh0dduu83kBkGpWogKe3K-O_apAvd3nPOfYmI21ri1vMSZxZnocXpdyNMj1x3wHestyZTq-syk9wVedAup8b5eTncv4OCvXxrl7MnTQxwVSZo57LlpM1gWCvAoJjRW0L2AA4gBYvkcPR6QBwHSijeH-U-OBg:1vkcDf:OrBeuNxuvflsH46zpydFiRX-GxyVcImItOoIJspSwvI	2026-01-27 06:36:31.893057+00
nam8bjrcudqs5v2ktvvuyopix6nomb0k	.eJxVjMsOwiAUBf-FtSFCy6W4dN9vINxHpWogKe3K-O_apAvdnpk5LxXTtua4NVnizOqirDr9bpjoIWUHfE_lVjXVsi4z6l3RB216rCzP6-H-HeTU8rdOMAgx2PMEImLEcADsHHbWMIRAYoLzIgNOlLwPBp0HS2gc9s72wav3BwA6OBo:1vkcH0:6tNJOsV787OxbMIidqVDEWKt4gNDMqaw1_b0_NOLHus	2026-01-27 06:39:58.798152+00
rui8k9m3ewcevmh0swasyzqucc98nmxy	.eJxVjDsOAiEUAO9CbQh_0NLeM5D34CGrBpJltzLe3ZBsoe3MZN4swr7VuA9a45LZhRl2-mUI6UltivyAdu889batC_KZ8MMOfuuZXtej_RtUGHVuSQQB52AAraMM2cqQdClBaGmVdUGhM0r4LMAHD7Ik5xFkQkqmOO3Z5wvaZDfO:1vkcSd:VPqJQCVpRcuMC_VoyFtrTRp0F-fmEffF0mW4rRp3cxI	2026-01-27 06:51:59.313594+00
zwwonocaxpy69rhvptt6s5broggmcv45	.eJxVjMsOwiAQRf-FtSFAh0dduu83kBkGpWogKe3K-O_apAvd3nPOfYmI21ri1vMSZxZnocXpdyNMj1x3wHestyZTq-syk9wVedAup8b5eTncv4OCvXxrl7MnTQxwVSZo57LlpM1gWCvAoJjRW0L2AA4gBYvkcPR6QBwHSijeH-U-OBg:1vwmQk:2Y7YiaxMbHYfBdCvFf3YQkbCX2VgikFg9aMatsft5RQ	2026-03-01 19:56:18.076486+00
hokvtrd1flcne0hgibk25vpaeav6l9ts	.eJxVjMsOwiAQRf-FtSFAh0dduu83kBkGpWogKe3K-O_apAvd3nPOfYmI21ri1vMSZxZnocXpdyNMj1x3wHestyZTq-syk9wVedAup8b5eTncv4OCvXxrl7MnTQxwVSZo57LlpM1gWCvAoJjRW0L2AA4gBYvkcPR6QBwHSijeH-U-OBg:1vwvdN:6opGmcRnGxW0J5U7ugfgDdD-ZaKJo-hBFKRaLWfCiI8	2026-03-02 05:45:57.03187+00
\.


--
-- Data for Name: library_activitylog; Type: TABLE DATA; Schema: public; Owner: rsu_user
--

COPY public.library_activitylog (id, action, "timestamp", ip_address, user_id) FROM stdin;
1	تسجيل دخول	2026-01-25 23:16:02.805765+00	192.168.111.1	1
2	تسجيل دخول	2026-01-25 23:34:45.911925+00	172.18.0.1	2
3	تسجيل دخول	2026-01-25 23:42:21.696809+00	172.18.0.1	4
4	تسجيل خروج	2026-01-25 23:51:11.847719+00	192.168.111.1	1
5	تسجيل دخول	2026-01-25 23:51:48.54088+00	192.168.111.1	3
6	تسجيل خروج	2026-01-25 23:56:16.32893+00	192.168.111.1	3
7	تسجيل دخول	2026-01-25 23:56:20.477796+00	192.168.111.1	1
8	تسجيل دخول	2026-01-26 02:44:42.549562+00	172.18.0.1	2
9	تسجيل دخول	2026-01-26 03:36:56.984181+00	192.168.111.1	1
10	تسجيل دخول	2026-01-26 03:39:04.484649+00	172.18.0.1	5
11	تسجيل دخول	2026-01-26 03:48:54.149813+00	172.18.0.1	1
12	تسجيل دخول	2026-01-26 22:29:55.339074+00	192.168.111.1	1
13	تسجيل دخول	2026-01-27 02:02:17.250586+00	172.18.0.1	1
14	تسجيل دخول	2026-01-27 02:59:42.897624+00	192.168.111.1	1
15	تسجيل خروج	2026-01-27 03:07:17.966851+00	192.168.111.1	1
16	تسجيل دخول	2026-01-27 03:08:12.509311+00	192.168.111.1	1
17	تسجيل خروج	2026-01-27 03:09:27.435029+00	192.168.111.1	1
18	تسجيل دخول	2026-01-27 03:09:48.049541+00	192.168.111.1	2
19	تسجيل دخول	2026-01-27 03:40:10.307953+00	172.18.0.1	1
20	تسجيل دخول	2026-01-27 04:46:59.416525+00	172.18.0.1	1
21	تسجيل دخول	2026-01-27 05:23:49.239222+00	172.18.0.1	1
22	تسجيل دخول	2026-01-27 05:25:30.397121+00	172.18.0.1	3
23	تسجيل دخول	2026-01-27 05:27:50.965129+00	192.168.111.1	11
24	تسجيل خروج	2026-01-27 05:29:23.821142+00	192.168.111.1	11
25	تسجيل دخول	2026-01-27 05:33:14.600959+00	172.18.0.1	11
26	تسجيل دخول	2026-01-27 06:06:31.891633+00	172.18.0.1	1
27	تسجيل دخول	2026-01-27 06:09:58.796704+00	172.18.0.1	2
28	تسجيل دخول	2026-01-27 06:16:40.623311+00	172.18.0.1	1
29	تسجيل خروج	2026-01-27 06:20:51.888359+00	172.18.0.1	1
30	تسجيل دخول	2026-01-27 06:21:59.312009+00	172.18.0.1	4
31	تسجيل دخول	2026-03-01 19:26:18.069538+00	192.168.111.1	1
32	تسجيل دخول	2026-03-02 05:15:57.030005+00	192.168.111.1	1
\.


--
-- Data for Name: library_course; Type: TABLE DATA; Schema: public; Owner: rsu_user
--

COPY public.library_course (id, name, code, department, semester, description, last_update, professor_id) FROM stdin;
1	control	1	ELEC	10		2026-01-25 23:18:35.995364+00	2
2	Operating Sestem	2	ELEC	10		2026-01-27 02:07:18.195303+00	4
3	Antenna & Waves Propagation	3	ELEC	10		2026-01-27 02:13:19.370098+00	6
4	Optical Fiber Communication	5	ELEC	10		2026-01-27 02:14:27.538128+00	7
\.


--
-- Data for Name: library_coursefile; Type: TABLE DATA; Schema: public; Owner: rsu_user
--

COPY public.library_coursefile (id, title, file_type, file, upload_date, course_id, uploaded_by_id) FROM stdin;
2	control 1	LECTURE	course_materials/A_Eng_Bachelor_jaz4twD.pdf	2026-01-25 23:22:30.701935+00	1	1
3	test	EXAM	course_materials/ICDL.pdf	2026-01-25 23:22:56.312373+00	1	1
\.


--
-- Data for Name: library_coursevideo; Type: TABLE DATA; Schema: public; Owner: rsu_user
--

COPY public.library_coursevideo (id, title, url, created_at, course_id, uploaded_by_id) FROM stdin;
\.


--
-- Data for Name: library_forumpost; Type: TABLE DATA; Schema: public; Owner: rsu_user
--

COPY public.library_forumpost (id, guest_name, content, created_at, course_id, parent_id, user_id) FROM stdin;
1	\N	zero عبر من هنا	2026-01-25 23:21:55.492803+00	1	\N	1
2	\N	ماف كلام يا باشمهندس	2026-01-26 02:47:57.065834+00	1	1	2
3	\N	☠️	2026-01-26 03:41:49.086211+00	1	1	5
4	\N	صباح النور	2026-01-27 05:28:54.698766+00	1	\N	11
5	\N	السؤال الخامس	2026-01-27 05:36:36.54932+00	1	\N	11
\.


--
-- Data for Name: library_guestlog; Type: TABLE DATA; Schema: public; Owner: rsu_user
--

COPY public.library_guestlog (id, name, entry_time) FROM stdin;
1	الجيلي	2026-01-26 02:42:10.237883+00
\.


--
-- Data for Name: library_sitesettings; Type: TABLE DATA; Schema: public; Owner: rsu_user
--

COPY public.library_sitesettings (id, college_logo, university_logo) FROM stdin;
\.


--
-- Data for Name: library_user; Type: TABLE DATA; Schema: public; Owner: rsu_user
--

COPY public.library_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, user_type, student_id, full_name, is_frozen, failed_login_attempts, frozen_until) FROM stdin;
2	pbkdf2_sha256$600000$vq9LZaHv1aSS4z19FdcMTo$mOfQaCLuOQzTA4HZjlAKkTuR+YjYBNzHQc2NJP+GFpk=	2026-01-27 06:09:58.795415+00	t	amir				f	t	2026-01-25 23:17:08+00	ADMIN	\N	amir	f	0	\N
12	pbkdf2_sha256$600000$LWPnQDehKodxIhspMsOmZC$iiNFDxVY9mVSw87AMJFEiEtsTbQw8xpYTD2Zl8AIpLI=	\N	f	omar				f	t	2026-01-27 06:17:12.607336+00	ADMIN	\N	omar	f	0	\N
4	pbkdf2_sha256$600000$LkMqetCaEyh7GBYUjp6fIz$9DeLboYtuZTEDvxjs6fH9bV0yBKInVh+WDV4eD7WKFA=	2026-01-27 06:21:59.310535+00	f	علي				f	t	2026-01-25 23:27:16.269483+00	ADMIN	\N	علي	f	0	\N
1	pbkdf2_sha256$600000$yWo6RlK3KGWS49qw1fUIQG$t3l4en48MNgQrIb4cPJSyRvf9NwumwQPv8xRm2nK51I=	2026-03-02 05:15:57.028141+00	t	zero				t	t	2026-01-25 23:15:35.261538+00	ROOT	\N	Root (Zero)	f	0	\N
5	pbkdf2_sha256$600000$88sKfGxiGgA4Onpv9I7QWt$J6FUvYIa5EkR4mzxYO8PljuEroYtfGekNHdkQp4JNf4=	2026-01-26 03:39:04.481516+00	t	ميسر				f	t	2026-01-25 23:27:48+00	STUDENT	\N	ميسر	f	0	\N
6	1234	\N	t	basher				f	t	2026-01-27 02:07:37+00	ADMIN	\N	basher	f	0	\N
7	1234	\N	t	abdalsamed				f	t	2026-01-27 02:08:27+00	ADMIN	\N	abdalsamed	f	0	\N
8	1234	\N	t	fisal				f	t	2026-01-27 02:09:46+00	ADMIN	\N	fisal	f	0	\N
9	0569730123qz	\N	t	omer				f	t	2026-01-27 03:00:46+00	ADMIN	\N	omer	f	0	\N
10	1234	\N	t	Omer				f	t	2026-01-27 03:05:03+00	ADMIN	\N	Omer	f	0	\N
3	pbkdf2_sha256$600000$mO6Q6bXNikjQM6gGmxzvBX$3Xoe7tBlUA8qq6qdxDxSvsvvKQFsYshPIi/g/lphDfQ=	2026-01-27 05:25:30.395855+00	f	abod				f	t	2026-01-25 23:24:26.601644+00	ADMIN	\N	abod	f	0	\N
11	pbkdf2_sha256$600000$UoDytmwH1wBfnGM6HLNJJB$JyGKPOca08L0JgLFk/LLGsDhkYJEzDg9DBj9FNmqKUc=	2026-01-27 05:33:14.599686+00	f	mom				f	t	2026-01-27 05:27:34.04508+00	ADMIN	\N	mom	f	0	\N
\.


--
-- Data for Name: library_user_groups; Type: TABLE DATA; Schema: public; Owner: rsu_user
--

COPY public.library_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: library_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: rsu_user
--

COPY public.library_user_user_permissions (id, user_id, permission_id) FROM stdin;
1	10	7
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rsu_user
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rsu_user
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rsu_user
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 52, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rsu_user
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 16, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rsu_user
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rsu_user
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 19, true);


--
-- Name: library_activitylog_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rsu_user
--

SELECT pg_catalog.setval('public.library_activitylog_id_seq', 32, true);


--
-- Name: library_course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rsu_user
--

SELECT pg_catalog.setval('public.library_course_id_seq', 4, true);


--
-- Name: library_coursefile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rsu_user
--

SELECT pg_catalog.setval('public.library_coursefile_id_seq', 3, true);


--
-- Name: library_coursevideo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rsu_user
--

SELECT pg_catalog.setval('public.library_coursevideo_id_seq', 1, false);


--
-- Name: library_forumpost_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rsu_user
--

SELECT pg_catalog.setval('public.library_forumpost_id_seq', 5, true);


--
-- Name: library_guestlog_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rsu_user
--

SELECT pg_catalog.setval('public.library_guestlog_id_seq', 1, true);


--
-- Name: library_sitesettings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rsu_user
--

SELECT pg_catalog.setval('public.library_sitesettings_id_seq', 1, false);


--
-- Name: library_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rsu_user
--

SELECT pg_catalog.setval('public.library_user_groups_id_seq', 1, false);


--
-- Name: library_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rsu_user
--

SELECT pg_catalog.setval('public.library_user_id_seq', 12, true);


--
-- Name: library_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rsu_user
--

SELECT pg_catalog.setval('public.library_user_user_permissions_id_seq', 1, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: rsu_user
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: rsu_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: rsu_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: rsu_user
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: rsu_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: rsu_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: rsu_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: rsu_user
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: rsu_user
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: rsu_user
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: rsu_user
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: library_activitylog library_activitylog_pkey; Type: CONSTRAINT; Schema: public; Owner: rsu_user
--

ALTER TABLE ONLY public.library_activitylog
    ADD CONSTRAINT library_activitylog_pkey PRIMARY KEY (id);


--
-- Name: library_course library_course_pkey; Type: CONSTRAINT; Schema: public; Owner: rsu_user
--

ALTER TABLE ONLY public.library_course
    ADD CONSTRAINT library_course_pkey PRIMARY KEY (id);


--
-- Name: library_coursefile library_coursefile_pkey; Type: CONSTRAINT; Schema: public; Owner: rsu_user
--

ALTER TABLE ONLY public.library_coursefile
    ADD CONSTRAINT library_coursefile_pkey PRIMARY KEY (id);


--
-- Name: library_coursevideo library_coursevideo_pkey; Type: CONSTRAINT; Schema: public; Owner: rsu_user
--

ALTER TABLE ONLY public.library_coursevideo
    ADD CONSTRAINT library_coursevideo_pkey PRIMARY KEY (id);


--
-- Name: library_forumpost library_forumpost_pkey; Type: CONSTRAINT; Schema: public; Owner: rsu_user
--

ALTER TABLE ONLY public.library_forumpost
    ADD CONSTRAINT library_forumpost_pkey PRIMARY KEY (id);


--
-- Name: library_guestlog library_guestlog_pkey; Type: CONSTRAINT; Schema: public; Owner: rsu_user
--

ALTER TABLE ONLY public.library_guestlog
    ADD CONSTRAINT library_guestlog_pkey PRIMARY KEY (id);


--
-- Name: library_sitesettings library_sitesettings_pkey; Type: CONSTRAINT; Schema: public; Owner: rsu_user
--

ALTER TABLE ONLY public.library_sitesettings
    ADD CONSTRAINT library_sitesettings_pkey PRIMARY KEY (id);


--
-- Name: library_user_groups library_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: rsu_user
--

ALTER TABLE ONLY public.library_user_groups
    ADD CONSTRAINT library_user_groups_pkey PRIMARY KEY (id);


--
-- Name: library_user_groups library_user_groups_user_id_group_id_89ea2476_uniq; Type: CONSTRAINT; Schema: public; Owner: rsu_user
--

ALTER TABLE ONLY public.library_user_groups
    ADD CONSTRAINT library_user_groups_user_id_group_id_89ea2476_uniq UNIQUE (user_id, group_id);


--
-- Name: library_user library_user_pkey; Type: CONSTRAINT; Schema: public; Owner: rsu_user
--

ALTER TABLE ONLY public.library_user
    ADD CONSTRAINT library_user_pkey PRIMARY KEY (id);


--
-- Name: library_user library_user_student_id_key; Type: CONSTRAINT; Schema: public; Owner: rsu_user
--

ALTER TABLE ONLY public.library_user
    ADD CONSTRAINT library_user_student_id_key UNIQUE (student_id);


--
-- Name: library_user_user_permissions library_user_user_permis_user_id_permission_id_aed1df16_uniq; Type: CONSTRAINT; Schema: public; Owner: rsu_user
--

ALTER TABLE ONLY public.library_user_user_permissions
    ADD CONSTRAINT library_user_user_permis_user_id_permission_id_aed1df16_uniq UNIQUE (user_id, permission_id);


--
-- Name: library_user_user_permissions library_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: rsu_user
--

ALTER TABLE ONLY public.library_user_user_permissions
    ADD CONSTRAINT library_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: library_user library_user_username_key; Type: CONSTRAINT; Schema: public; Owner: rsu_user
--

ALTER TABLE ONLY public.library_user
    ADD CONSTRAINT library_user_username_key UNIQUE (username);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: rsu_user
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: rsu_user
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: rsu_user
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: rsu_user
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: rsu_user
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: rsu_user
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: rsu_user
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: rsu_user
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: library_activitylog_user_id_86830a20; Type: INDEX; Schema: public; Owner: rsu_user
--

CREATE INDEX library_activitylog_user_id_86830a20 ON public.library_activitylog USING btree (user_id);


--
-- Name: library_course_professor_id_cc959414; Type: INDEX; Schema: public; Owner: rsu_user
--

CREATE INDEX library_course_professor_id_cc959414 ON public.library_course USING btree (professor_id);


--
-- Name: library_coursefile_course_id_4d73107c; Type: INDEX; Schema: public; Owner: rsu_user
--

CREATE INDEX library_coursefile_course_id_4d73107c ON public.library_coursefile USING btree (course_id);


--
-- Name: library_coursefile_uploaded_by_id_89b01651; Type: INDEX; Schema: public; Owner: rsu_user
--

CREATE INDEX library_coursefile_uploaded_by_id_89b01651 ON public.library_coursefile USING btree (uploaded_by_id);


--
-- Name: library_coursevideo_course_id_37e8eb9e; Type: INDEX; Schema: public; Owner: rsu_user
--

CREATE INDEX library_coursevideo_course_id_37e8eb9e ON public.library_coursevideo USING btree (course_id);


--
-- Name: library_coursevideo_uploaded_by_id_73e1cc2b; Type: INDEX; Schema: public; Owner: rsu_user
--

CREATE INDEX library_coursevideo_uploaded_by_id_73e1cc2b ON public.library_coursevideo USING btree (uploaded_by_id);


--
-- Name: library_forumpost_course_id_0467bf63; Type: INDEX; Schema: public; Owner: rsu_user
--

CREATE INDEX library_forumpost_course_id_0467bf63 ON public.library_forumpost USING btree (course_id);


--
-- Name: library_forumpost_parent_id_335182c6; Type: INDEX; Schema: public; Owner: rsu_user
--

CREATE INDEX library_forumpost_parent_id_335182c6 ON public.library_forumpost USING btree (parent_id);


--
-- Name: library_forumpost_user_id_e9634c74; Type: INDEX; Schema: public; Owner: rsu_user
--

CREATE INDEX library_forumpost_user_id_e9634c74 ON public.library_forumpost USING btree (user_id);


--
-- Name: library_user_groups_group_id_a225a4a9; Type: INDEX; Schema: public; Owner: rsu_user
--

CREATE INDEX library_user_groups_group_id_a225a4a9 ON public.library_user_groups USING btree (group_id);


--
-- Name: library_user_groups_user_id_797ccc7b; Type: INDEX; Schema: public; Owner: rsu_user
--

CREATE INDEX library_user_groups_user_id_797ccc7b ON public.library_user_groups USING btree (user_id);


--
-- Name: library_user_student_id_1397906c_like; Type: INDEX; Schema: public; Owner: rsu_user
--

CREATE INDEX library_user_student_id_1397906c_like ON public.library_user USING btree (student_id varchar_pattern_ops);


--
-- Name: library_user_user_permissions_permission_id_6a5167f4; Type: INDEX; Schema: public; Owner: rsu_user
--

CREATE INDEX library_user_user_permissions_permission_id_6a5167f4 ON public.library_user_user_permissions USING btree (permission_id);


--
-- Name: library_user_user_permissions_user_id_d9d78974; Type: INDEX; Schema: public; Owner: rsu_user
--

CREATE INDEX library_user_user_permissions_user_id_d9d78974 ON public.library_user_user_permissions USING btree (user_id);


--
-- Name: library_user_username_f59462bc_like; Type: INDEX; Schema: public; Owner: rsu_user
--

CREATE INDEX library_user_username_f59462bc_like ON public.library_user USING btree (username varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: rsu_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: rsu_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: rsu_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: rsu_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_library_user_id; Type: FK CONSTRAINT; Schema: public; Owner: rsu_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_library_user_id FOREIGN KEY (user_id) REFERENCES public.library_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: library_activitylog library_activitylog_user_id_86830a20_fk_library_user_id; Type: FK CONSTRAINT; Schema: public; Owner: rsu_user
--

ALTER TABLE ONLY public.library_activitylog
    ADD CONSTRAINT library_activitylog_user_id_86830a20_fk_library_user_id FOREIGN KEY (user_id) REFERENCES public.library_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: library_course library_course_professor_id_cc959414_fk_library_user_id; Type: FK CONSTRAINT; Schema: public; Owner: rsu_user
--

ALTER TABLE ONLY public.library_course
    ADD CONSTRAINT library_course_professor_id_cc959414_fk_library_user_id FOREIGN KEY (professor_id) REFERENCES public.library_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: library_coursefile library_coursefile_course_id_4d73107c_fk_library_course_id; Type: FK CONSTRAINT; Schema: public; Owner: rsu_user
--

ALTER TABLE ONLY public.library_coursefile
    ADD CONSTRAINT library_coursefile_course_id_4d73107c_fk_library_course_id FOREIGN KEY (course_id) REFERENCES public.library_course(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: library_coursefile library_coursefile_uploaded_by_id_89b01651_fk_library_user_id; Type: FK CONSTRAINT; Schema: public; Owner: rsu_user
--

ALTER TABLE ONLY public.library_coursefile
    ADD CONSTRAINT library_coursefile_uploaded_by_id_89b01651_fk_library_user_id FOREIGN KEY (uploaded_by_id) REFERENCES public.library_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: library_coursevideo library_coursevideo_course_id_37e8eb9e_fk_library_course_id; Type: FK CONSTRAINT; Schema: public; Owner: rsu_user
--

ALTER TABLE ONLY public.library_coursevideo
    ADD CONSTRAINT library_coursevideo_course_id_37e8eb9e_fk_library_course_id FOREIGN KEY (course_id) REFERENCES public.library_course(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: library_coursevideo library_coursevideo_uploaded_by_id_73e1cc2b_fk_library_user_id; Type: FK CONSTRAINT; Schema: public; Owner: rsu_user
--

ALTER TABLE ONLY public.library_coursevideo
    ADD CONSTRAINT library_coursevideo_uploaded_by_id_73e1cc2b_fk_library_user_id FOREIGN KEY (uploaded_by_id) REFERENCES public.library_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: library_forumpost library_forumpost_course_id_0467bf63_fk_library_course_id; Type: FK CONSTRAINT; Schema: public; Owner: rsu_user
--

ALTER TABLE ONLY public.library_forumpost
    ADD CONSTRAINT library_forumpost_course_id_0467bf63_fk_library_course_id FOREIGN KEY (course_id) REFERENCES public.library_course(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: library_forumpost library_forumpost_parent_id_335182c6_fk_library_forumpost_id; Type: FK CONSTRAINT; Schema: public; Owner: rsu_user
--

ALTER TABLE ONLY public.library_forumpost
    ADD CONSTRAINT library_forumpost_parent_id_335182c6_fk_library_forumpost_id FOREIGN KEY (parent_id) REFERENCES public.library_forumpost(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: library_forumpost library_forumpost_user_id_e9634c74_fk_library_user_id; Type: FK CONSTRAINT; Schema: public; Owner: rsu_user
--

ALTER TABLE ONLY public.library_forumpost
    ADD CONSTRAINT library_forumpost_user_id_e9634c74_fk_library_user_id FOREIGN KEY (user_id) REFERENCES public.library_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: library_user_groups library_user_groups_group_id_a225a4a9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: rsu_user
--

ALTER TABLE ONLY public.library_user_groups
    ADD CONSTRAINT library_user_groups_group_id_a225a4a9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: library_user_groups library_user_groups_user_id_797ccc7b_fk_library_user_id; Type: FK CONSTRAINT; Schema: public; Owner: rsu_user
--

ALTER TABLE ONLY public.library_user_groups
    ADD CONSTRAINT library_user_groups_user_id_797ccc7b_fk_library_user_id FOREIGN KEY (user_id) REFERENCES public.library_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: library_user_user_permissions library_user_user_pe_permission_id_6a5167f4_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: rsu_user
--

ALTER TABLE ONLY public.library_user_user_permissions
    ADD CONSTRAINT library_user_user_pe_permission_id_6a5167f4_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: library_user_user_permissions library_user_user_pe_user_id_d9d78974_fk_library_u; Type: FK CONSTRAINT; Schema: public; Owner: rsu_user
--

ALTER TABLE ONLY public.library_user_user_permissions
    ADD CONSTRAINT library_user_user_pe_user_id_d9d78974_fk_library_u FOREIGN KEY (user_id) REFERENCES public.library_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

\unrestrict SswKgbuFOE5UcNEUDNS1Vt7v4geijc1I83PfSJiuYijiv9yC5u6JswJPGOO3zBR


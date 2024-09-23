SET check_function_bodies = false;
CREATE SCHEMA expt;
CREATE SCHEMA private;
CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;
COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';
CREATE TYPE expt.gd_rule AS ENUM (
    'none_action_type',
    'Allowed',
    'Blocked',
    'Redacted'
);
CREATE TYPE expt.gdtest AS ENUM (
    'none_action_type',
    'Allowed',
    'Blocked',
    'Redacted'
);
CREATE TYPE public.guardrail_rule_action_type AS ENUM (
    'none_action_type',
    'Allowed',
    'Blocked',
    'Redacted'
);
CREATE TABLE expt.kyle_table (
    kyle_id integer NOT NULL,
    kyle_note text NOT NULL
);
CREATE SEQUENCE expt.kyle_table_kyle_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE expt.kyle_table_kyle_id_seq OWNED BY expt.kyle_table.kyle_id;
CREATE TABLE expt.test (
    test_id integer NOT NULL,
    type text NOT NULL
);
CREATE SEQUENCE expt.test_test_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE expt.test_test_id_seq OWNED BY expt.test.test_id;
CREATE TABLE private.enum_test (
    enum_id integer NOT NULL,
    enum_name public.guardrail_rule_action_type NOT NULL
);
CREATE SEQUENCE private.enum_test_enum_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE private.enum_test_enum_id_seq OWNED BY private.enum_test.enum_id;
CREATE TABLE public."Chetan_one" (
    chetan_id integer NOT NULL,
    "Chetan_text" text NOT NULL
);
CREATE SEQUENCE public."Chetan_one_chetan_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public."Chetan_one_chetan_id_seq" OWNED BY public."Chetan_one".chetan_id;
CREATE TABLE public."TUV_Workflow_Session" (
    workflow_id integer NOT NULL,
    workflow_name text NOT NULL
);
CREATE SEQUENCE public."TUV_Workflow_Session_workflow_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public."TUV_Workflow_Session_workflow_id_seq" OWNED BY public."TUV_Workflow_Session".workflow_id;
CREATE TABLE public.apple_soft_delete_test (
    record_id integer NOT NULL,
    record_value text NOT NULL,
    record_status boolean NOT NULL
);
CREATE SEQUENCE public.apple_soft_delete_test_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.apple_soft_delete_test_record_id_seq OWNED BY public.apple_soft_delete_test.record_id;
CREATE TABLE public.comments (
    id integer NOT NULL,
    post_id integer,
    user_id integer,
    content text NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE SEQUENCE public.comments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;
CREATE TABLE public.demo_table (
    demo_id integer NOT NULL,
    demo_name text NOT NULL
);
CREATE SEQUENCE public.demo_table_demo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.demo_table_demo_id_seq OWNED BY public.demo_table.demo_id;
CREATE TABLE public.enum_test (
    enum_id integer NOT NULL,
    enum_name public.guardrail_rule_action_type NOT NULL
);
CREATE SEQUENCE public.enum_test_enum_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.enum_test_enum_id_seq OWNED BY public.enum_test.enum_id;
CREATE TABLE public.enum_test_from_expt (
    tab_id integer,
    tab_type expt.gd_rule
);
CREATE TABLE public.evt_trigger_test (
    evt_id integer NOT NULL,
    evt_owner text NOT NULL,
    evt_status boolean NOT NULL
);
CREATE SEQUENCE public.evt_trigger_test_evt_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.evt_trigger_test_evt_id_seq OWNED BY public.evt_trigger_test.evt_id;
CREATE TABLE public.girish_test (
    girish_id integer NOT NULL,
    girish_data text NOT NULL
);
CREATE SEQUENCE public.girish_test_girish_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.girish_test_girish_id_seq OWNED BY public.girish_test.girish_id;
CREATE TABLE public.posts (
    id integer NOT NULL,
    user_id integer,
    title character varying(255) NOT NULL,
    content text NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;
CREATE TABLE public.raju_test (
    raju_id integer NOT NULL,
    raju_data text NOT NULL
);
CREATE SEQUENCE public.raju_test_raju_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.raju_test_raju_id_seq OWNED BY public.raju_test.raju_id;
CREATE TABLE public.sbg_demo (
    sbg_id integer NOT NULL,
    sbg_name text NOT NULL
);
CREATE TABLE public.sbg_demo_one (
    demo_one_id integer NOT NULL,
    demo_name text NOT NULL
);
CREATE SEQUENCE public.sbg_demo_one_demo_one_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.sbg_demo_one_demo_one_id_seq OWNED BY public.sbg_demo_one.demo_one_id;
CREATE SEQUENCE public.sbg_demo_sbg_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.sbg_demo_sbg_id_seq OWNED BY public.sbg_demo.sbg_id;
CREATE TABLE public.supriya_demo (
    supriya_id integer NOT NULL,
    supriya_data text NOT NULL
);
CREATE SEQUENCE public.supriya_demo_supriya_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.supriya_demo_supriya_id_seq OWNED BY public.supriya_demo.supriya_id;
CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(50) NOT NULL,
    email character varying(100) NOT NULL,
    password character varying(100) NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
CREATE TABLE public.verra_demo (
    verra_id integer NOT NULL,
    verra_employee text NOT NULL
);
CREATE SEQUENCE public.verra_demo_verra_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.verra_demo_verra_id_seq OWNED BY public.verra_demo.verra_id;
ALTER TABLE ONLY expt.kyle_table ALTER COLUMN kyle_id SET DEFAULT nextval('expt.kyle_table_kyle_id_seq'::regclass);
ALTER TABLE ONLY expt.test ALTER COLUMN test_id SET DEFAULT nextval('expt.test_test_id_seq'::regclass);
ALTER TABLE ONLY private.enum_test ALTER COLUMN enum_id SET DEFAULT nextval('private.enum_test_enum_id_seq'::regclass);
ALTER TABLE ONLY public."Chetan_one" ALTER COLUMN chetan_id SET DEFAULT nextval('public."Chetan_one_chetan_id_seq"'::regclass);
ALTER TABLE ONLY public."TUV_Workflow_Session" ALTER COLUMN workflow_id SET DEFAULT nextval('public."TUV_Workflow_Session_workflow_id_seq"'::regclass);
ALTER TABLE ONLY public.apple_soft_delete_test ALTER COLUMN record_id SET DEFAULT nextval('public.apple_soft_delete_test_record_id_seq'::regclass);
ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);
ALTER TABLE ONLY public.demo_table ALTER COLUMN demo_id SET DEFAULT nextval('public.demo_table_demo_id_seq'::regclass);
ALTER TABLE ONLY public.enum_test ALTER COLUMN enum_id SET DEFAULT nextval('public.enum_test_enum_id_seq'::regclass);
ALTER TABLE ONLY public.evt_trigger_test ALTER COLUMN evt_id SET DEFAULT nextval('public.evt_trigger_test_evt_id_seq'::regclass);
ALTER TABLE ONLY public.girish_test ALTER COLUMN girish_id SET DEFAULT nextval('public.girish_test_girish_id_seq'::regclass);
ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);
ALTER TABLE ONLY public.raju_test ALTER COLUMN raju_id SET DEFAULT nextval('public.raju_test_raju_id_seq'::regclass);
ALTER TABLE ONLY public.sbg_demo ALTER COLUMN sbg_id SET DEFAULT nextval('public.sbg_demo_sbg_id_seq'::regclass);
ALTER TABLE ONLY public.sbg_demo_one ALTER COLUMN demo_one_id SET DEFAULT nextval('public.sbg_demo_one_demo_one_id_seq'::regclass);
ALTER TABLE ONLY public.supriya_demo ALTER COLUMN supriya_id SET DEFAULT nextval('public.supriya_demo_supriya_id_seq'::regclass);
ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
ALTER TABLE ONLY public.verra_demo ALTER COLUMN verra_id SET DEFAULT nextval('public.verra_demo_verra_id_seq'::regclass);
ALTER TABLE ONLY expt.kyle_table
    ADD CONSTRAINT kyle_table_pkey PRIMARY KEY (kyle_id);
ALTER TABLE ONLY expt.test
    ADD CONSTRAINT test_pkey PRIMARY KEY (test_id);
ALTER TABLE ONLY private.enum_test
    ADD CONSTRAINT enum_test_pkey PRIMARY KEY (enum_id);
ALTER TABLE ONLY public."Chetan_one"
    ADD CONSTRAINT "Chetan_one_pkey" PRIMARY KEY (chetan_id);
ALTER TABLE ONLY public."TUV_Workflow_Session"
    ADD CONSTRAINT "TUV_Workflow_Session_pkey" PRIMARY KEY (workflow_id);
ALTER TABLE ONLY public.apple_soft_delete_test
    ADD CONSTRAINT apple_soft_delete_test_pkey PRIMARY KEY (record_id);
ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.demo_table
    ADD CONSTRAINT demo_table_pkey PRIMARY KEY (demo_id);
ALTER TABLE ONLY public.enum_test
    ADD CONSTRAINT enum_test_pkey PRIMARY KEY (enum_id);
ALTER TABLE ONLY public.evt_trigger_test
    ADD CONSTRAINT evt_trigger_test_pkey PRIMARY KEY (evt_id);
ALTER TABLE ONLY public.girish_test
    ADD CONSTRAINT girish_test_pkey PRIMARY KEY (girish_id);
ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.raju_test
    ADD CONSTRAINT raju_test_pkey PRIMARY KEY (raju_id);
ALTER TABLE ONLY public.sbg_demo_one
    ADD CONSTRAINT sbg_demo_one_pkey PRIMARY KEY (demo_one_id);
ALTER TABLE ONLY public.sbg_demo
    ADD CONSTRAINT sbg_demo_pkey PRIMARY KEY (sbg_id);
ALTER TABLE ONLY public.supriya_demo
    ADD CONSTRAINT supriya_demo_pkey PRIMARY KEY (supriya_id);
ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);
ALTER TABLE ONLY public.verra_demo
    ADD CONSTRAINT verra_demo_pkey PRIMARY KEY (verra_id);
CREATE INDEX idx_comments_post_id ON public.comments USING btree (post_id);
CREATE INDEX idx_posts_user_id ON public.posts USING btree (user_id);
CREATE INDEX idx_users_username ON public.users USING btree (username);
ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_post_id_fkey FOREIGN KEY (post_id) REFERENCES public.posts(id) ON DELETE CASCADE;
ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;

--
-- PostgreSQL database dump
--

-- Dumped from database version 10.16
-- Dumped by pg_dump version 10.16

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'SQL_ASCII';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: AO_187CCC_SIDEBAR_LINK; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public."AO_187CCC_SIDEBAR_LINK" (
    "CATEGORY" character varying(255),
    "CUSTOM_ICON_CLASS" character varying(255),
    "CUSTOM_TITLE" character varying(255),
    "DEST_PAGE_ID" bigint DEFAULT 0,
    "HARDCODED_URL" character varying(255),
    "HIDDEN" boolean,
    "ID" integer NOT NULL,
    "POSITION" integer DEFAULT 0,
    "SPACE_KEY" character varying(255),
    "TYPE" character varying(255),
    "WEB_ITEM_KEY" character varying(255)
);


ALTER TABLE public."AO_187CCC_SIDEBAR_LINK" OWNER TO confluence;

--
-- Name: AO_187CCC_SIDEBAR_LINK_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE public."AO_187CCC_SIDEBAR_LINK_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_187CCC_SIDEBAR_LINK_ID_seq" OWNER TO confluence;

--
-- Name: AO_187CCC_SIDEBAR_LINK_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE public."AO_187CCC_SIDEBAR_LINK_ID_seq" OWNED BY public."AO_187CCC_SIDEBAR_LINK"."ID";


--
-- Name: AO_21D670_WHITELIST_RULES; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public."AO_21D670_WHITELIST_RULES" (
    "ALLOWINBOUND" boolean,
    "EXPRESSION" text NOT NULL,
    "ID" integer NOT NULL,
    "TYPE" character varying(255) NOT NULL
);


ALTER TABLE public."AO_21D670_WHITELIST_RULES" OWNER TO confluence;

--
-- Name: AO_21D670_WHITELIST_RULES_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE public."AO_21D670_WHITELIST_RULES_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_21D670_WHITELIST_RULES_ID_seq" OWNER TO confluence;

--
-- Name: AO_21D670_WHITELIST_RULES_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE public."AO_21D670_WHITELIST_RULES_ID_seq" OWNED BY public."AO_21D670_WHITELIST_RULES"."ID";


--
-- Name: AO_26DB7F_ENTITIES_TO_ROOMS; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public."AO_26DB7F_ENTITIES_TO_ROOMS" (
    "ENTITY_KEY" character varying(255),
    "ID" integer NOT NULL,
    "MESSAGE_TYPE_KEY" character varying(255),
    "ROOM_ID" character varying(255)
);


ALTER TABLE public."AO_26DB7F_ENTITIES_TO_ROOMS" OWNER TO confluence;

--
-- Name: AO_26DB7F_ENTITIES_TO_ROOMS_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE public."AO_26DB7F_ENTITIES_TO_ROOMS_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_26DB7F_ENTITIES_TO_ROOMS_ID_seq" OWNER TO confluence;

--
-- Name: AO_26DB7F_ENTITIES_TO_ROOMS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE public."AO_26DB7F_ENTITIES_TO_ROOMS_ID_seq" OWNED BY public."AO_26DB7F_ENTITIES_TO_ROOMS"."ID";


--
-- Name: AO_26DB7F_ENTITIES_TO_ROOM_CFG; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public."AO_26DB7F_ENTITIES_TO_ROOM_CFG" (
    "ENTITY_KEY" character varying(255),
    "ID" integer NOT NULL,
    "NOTIFY_CLIENT" boolean,
    "ROOM_ID" character varying(255)
);


ALTER TABLE public."AO_26DB7F_ENTITIES_TO_ROOM_CFG" OWNER TO confluence;

--
-- Name: AO_26DB7F_ENTITIES_TO_ROOM_CFG_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE public."AO_26DB7F_ENTITIES_TO_ROOM_CFG_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_26DB7F_ENTITIES_TO_ROOM_CFG_ID_seq" OWNER TO confluence;

--
-- Name: AO_26DB7F_ENTITIES_TO_ROOM_CFG_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE public."AO_26DB7F_ENTITIES_TO_ROOM_CFG_ID_seq" OWNED BY public."AO_26DB7F_ENTITIES_TO_ROOM_CFG"."ID";


--
-- Name: AO_38321B_CUSTOM_CONTENT_LINK; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public."AO_38321B_CUSTOM_CONTENT_LINK" (
    "CONTENT_KEY" character varying(255),
    "ID" integer NOT NULL,
    "LINK_LABEL" character varying(255),
    "LINK_URL" character varying(255),
    "SEQUENCE" integer DEFAULT 0
);


ALTER TABLE public."AO_38321B_CUSTOM_CONTENT_LINK" OWNER TO confluence;

--
-- Name: AO_38321B_CUSTOM_CONTENT_LINK_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE public."AO_38321B_CUSTOM_CONTENT_LINK_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_38321B_CUSTOM_CONTENT_LINK_ID_seq" OWNER TO confluence;

--
-- Name: AO_38321B_CUSTOM_CONTENT_LINK_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE public."AO_38321B_CUSTOM_CONTENT_LINK_ID_seq" OWNED BY public."AO_38321B_CUSTOM_CONTENT_LINK"."ID";


--
-- Name: AO_42E351_HEALTH_CHECK_ENTITY; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public."AO_42E351_HEALTH_CHECK_ENTITY" (
    "ID" integer NOT NULL
);


ALTER TABLE public."AO_42E351_HEALTH_CHECK_ENTITY" OWNER TO confluence;

--
-- Name: AO_42E351_HEALTH_CHECK_ENTITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE public."AO_42E351_HEALTH_CHECK_ENTITY_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_42E351_HEALTH_CHECK_ENTITY_ID_seq" OWNER TO confluence;

--
-- Name: AO_42E351_HEALTH_CHECK_ENTITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE public."AO_42E351_HEALTH_CHECK_ENTITY_ID_seq" OWNED BY public."AO_42E351_HEALTH_CHECK_ENTITY"."ID";


--
-- Name: AO_54C900_CONTENT_BLUEPRINT_AO; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public."AO_54C900_CONTENT_BLUEPRINT_AO" (
    "CREATE_RESULT" character varying(255),
    "HOW_TO_USE_TEMPLATE" character varying(255),
    "ID" integer NOT NULL,
    "INDEX_DISABLED" boolean,
    "INDEX_KEY" character varying(255),
    "INDEX_TITLE_I18N_KEY" character varying(255),
    "NAME" character varying(255),
    "PLUGIN_CLONE" boolean,
    "PLUGIN_MODULE_KEY" character varying(255),
    "SPACE_KEY" character varying(255),
    "UUID" character varying(255)
);


ALTER TABLE public."AO_54C900_CONTENT_BLUEPRINT_AO" OWNER TO confluence;

--
-- Name: AO_54C900_CONTENT_BLUEPRINT_AO_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE public."AO_54C900_CONTENT_BLUEPRINT_AO_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_54C900_CONTENT_BLUEPRINT_AO_ID_seq" OWNER TO confluence;

--
-- Name: AO_54C900_CONTENT_BLUEPRINT_AO_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE public."AO_54C900_CONTENT_BLUEPRINT_AO_ID_seq" OWNED BY public."AO_54C900_CONTENT_BLUEPRINT_AO"."ID";


--
-- Name: AO_54C900_C_TEMPLATE_REF; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public."AO_54C900_C_TEMPLATE_REF" (
    "CB_INDEX_PARENTID" integer,
    "CB_PARENTID" integer,
    "ID" integer NOT NULL,
    "NAME" character varying(255),
    "PARENT_ID" integer,
    "PLUGIN_CLONE" boolean,
    "PLUGIN_MODULE_KEY" character varying(255),
    "TEMPLATE_ID" bigint DEFAULT 0,
    "UUID" character varying(255)
);


ALTER TABLE public."AO_54C900_C_TEMPLATE_REF" OWNER TO confluence;

--
-- Name: AO_54C900_C_TEMPLATE_REF_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE public."AO_54C900_C_TEMPLATE_REF_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_54C900_C_TEMPLATE_REF_ID_seq" OWNER TO confluence;

--
-- Name: AO_54C900_C_TEMPLATE_REF_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE public."AO_54C900_C_TEMPLATE_REF_ID_seq" OWNED BY public."AO_54C900_C_TEMPLATE_REF"."ID";


--
-- Name: AO_54C900_SPACE_BLUEPRINT_AO; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public."AO_54C900_SPACE_BLUEPRINT_AO" (
    "CATEGORY" character varying(255),
    "HOME_PAGE_ID" integer,
    "ID" integer NOT NULL,
    "NAME" character varying(255),
    "PLUGIN_CLONE" boolean,
    "PLUGIN_MODULE_KEY" character varying(255),
    "PROMOTED_BPS" text,
    "UUID" character varying(255)
);


ALTER TABLE public."AO_54C900_SPACE_BLUEPRINT_AO" OWNER TO confluence;

--
-- Name: AO_54C900_SPACE_BLUEPRINT_AO_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE public."AO_54C900_SPACE_BLUEPRINT_AO_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_54C900_SPACE_BLUEPRINT_AO_ID_seq" OWNER TO confluence;

--
-- Name: AO_54C900_SPACE_BLUEPRINT_AO_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE public."AO_54C900_SPACE_BLUEPRINT_AO_ID_seq" OWNED BY public."AO_54C900_SPACE_BLUEPRINT_AO"."ID";


--
-- Name: AO_563AEE_ACTIVITY_ENTITY; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public."AO_563AEE_ACTIVITY_ENTITY" (
    "ACTIVITY_ID" bigint NOT NULL,
    "ACTOR_ID" integer,
    "CONTENT" text,
    "GENERATOR_DISPLAY_NAME" character varying(255),
    "GENERATOR_ID" character varying(450),
    "ICON_ID" integer,
    "ID" character varying(450),
    "ISSUE_KEY" character varying(255),
    "OBJECT_ID" integer,
    "POSTER" character varying(255),
    "PROJECT_KEY" character varying(255),
    "PUBLISHED" timestamp without time zone,
    "TARGET_ID" integer,
    "TITLE" character varying(255),
    "URL" character varying(450),
    "USERNAME" character varying(255),
    "VERB" character varying(450)
);


ALTER TABLE public."AO_563AEE_ACTIVITY_ENTITY" OWNER TO confluence;

--
-- Name: AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE public."AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq" OWNER TO confluence;

--
-- Name: AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE public."AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq" OWNED BY public."AO_563AEE_ACTIVITY_ENTITY"."ACTIVITY_ID";


--
-- Name: AO_563AEE_ACTOR_ENTITY; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public."AO_563AEE_ACTOR_ENTITY" (
    "FULL_NAME" character varying(255),
    "ID" integer NOT NULL,
    "PROFILE_PAGE_URI" character varying(450),
    "PROFILE_PICTURE_URI" character varying(450),
    "USERNAME" character varying(255)
);


ALTER TABLE public."AO_563AEE_ACTOR_ENTITY" OWNER TO confluence;

--
-- Name: AO_563AEE_ACTOR_ENTITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE public."AO_563AEE_ACTOR_ENTITY_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_563AEE_ACTOR_ENTITY_ID_seq" OWNER TO confluence;

--
-- Name: AO_563AEE_ACTOR_ENTITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE public."AO_563AEE_ACTOR_ENTITY_ID_seq" OWNED BY public."AO_563AEE_ACTOR_ENTITY"."ID";


--
-- Name: AO_563AEE_MEDIA_LINK_ENTITY; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public."AO_563AEE_MEDIA_LINK_ENTITY" (
    "DURATION" integer,
    "HEIGHT" integer,
    "ID" integer NOT NULL,
    "URL" character varying(450),
    "WIDTH" integer
);


ALTER TABLE public."AO_563AEE_MEDIA_LINK_ENTITY" OWNER TO confluence;

--
-- Name: AO_563AEE_MEDIA_LINK_ENTITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE public."AO_563AEE_MEDIA_LINK_ENTITY_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_563AEE_MEDIA_LINK_ENTITY_ID_seq" OWNER TO confluence;

--
-- Name: AO_563AEE_MEDIA_LINK_ENTITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE public."AO_563AEE_MEDIA_LINK_ENTITY_ID_seq" OWNED BY public."AO_563AEE_MEDIA_LINK_ENTITY"."ID";


--
-- Name: AO_563AEE_OBJECT_ENTITY; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public."AO_563AEE_OBJECT_ENTITY" (
    "CONTENT" character varying(255),
    "DISPLAY_NAME" character varying(255),
    "ID" integer NOT NULL,
    "IMAGE_ID" integer,
    "OBJECT_ID" character varying(450),
    "OBJECT_TYPE" character varying(450),
    "SUMMARY" character varying(255),
    "URL" character varying(450)
);


ALTER TABLE public."AO_563AEE_OBJECT_ENTITY" OWNER TO confluence;

--
-- Name: AO_563AEE_OBJECT_ENTITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE public."AO_563AEE_OBJECT_ENTITY_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_563AEE_OBJECT_ENTITY_ID_seq" OWNER TO confluence;

--
-- Name: AO_563AEE_OBJECT_ENTITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE public."AO_563AEE_OBJECT_ENTITY_ID_seq" OWNED BY public."AO_563AEE_OBJECT_ENTITY"."ID";


--
-- Name: AO_563AEE_TARGET_ENTITY; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public."AO_563AEE_TARGET_ENTITY" (
    "CONTENT" character varying(255),
    "DISPLAY_NAME" character varying(255),
    "ID" integer NOT NULL,
    "IMAGE_ID" integer,
    "OBJECT_ID" character varying(450),
    "OBJECT_TYPE" character varying(450),
    "SUMMARY" character varying(255),
    "URL" character varying(450)
);


ALTER TABLE public."AO_563AEE_TARGET_ENTITY" OWNER TO confluence;

--
-- Name: AO_563AEE_TARGET_ENTITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE public."AO_563AEE_TARGET_ENTITY_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_563AEE_TARGET_ENTITY_ID_seq" OWNER TO confluence;

--
-- Name: AO_563AEE_TARGET_ENTITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE public."AO_563AEE_TARGET_ENTITY_ID_seq" OWNED BY public."AO_563AEE_TARGET_ENTITY"."ID";


--
-- Name: AO_5F3884_FEATURE_DISCOVERY; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public."AO_5F3884_FEATURE_DISCOVERY" (
    "DISCOVERED" boolean,
    "ID" integer NOT NULL,
    "USER_KEY" character varying(255)
);


ALTER TABLE public."AO_5F3884_FEATURE_DISCOVERY" OWNER TO confluence;

--
-- Name: AO_5F3884_FEATURE_DISCOVERY_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE public."AO_5F3884_FEATURE_DISCOVERY_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_5F3884_FEATURE_DISCOVERY_ID_seq" OWNER TO confluence;

--
-- Name: AO_5F3884_FEATURE_DISCOVERY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE public."AO_5F3884_FEATURE_DISCOVERY_ID_seq" OWNED BY public."AO_5F3884_FEATURE_DISCOVERY"."ID";


--
-- Name: AO_5FB9D7_AOHIP_CHAT_LINK; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public."AO_5FB9D7_AOHIP_CHAT_LINK" (
    "ADDON_TOKEN_EXPIRY" timestamp without time zone,
    "API_URL" character varying(255),
    "CONNECT_DESCRIPTOR" text,
    "GROUP_ID" integer DEFAULT 0,
    "GROUP_NAME" character varying(255),
    "ID" integer NOT NULL,
    "OAUTH_ID" character varying(255),
    "SECRET_KEY" character varying(255),
    "SYSTEM_PASSWORD" character varying(255),
    "SYSTEM_TOKEN_EXPIRY" timestamp without time zone,
    "SYSTEM_USER" character varying(255),
    "SYSTEM_USER_TOKEN" character varying(255),
    "TOKEN" character varying(255)
);


ALTER TABLE public."AO_5FB9D7_AOHIP_CHAT_LINK" OWNER TO confluence;

--
-- Name: AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE public."AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq" OWNER TO confluence;

--
-- Name: AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE public."AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq" OWNED BY public."AO_5FB9D7_AOHIP_CHAT_LINK"."ID";


--
-- Name: AO_5FB9D7_AOHIP_CHAT_USER; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public."AO_5FB9D7_AOHIP_CHAT_USER" (
    "HIP_CHAT_LINK_ID" integer,
    "HIP_CHAT_USER_ID" character varying(255),
    "HIP_CHAT_USER_NAME" character varying(255),
    "ID" integer NOT NULL,
    "REFRESH_CODE" character varying(255),
    "USER_KEY" character varying(255),
    "USER_SCOPES" character varying(255),
    "USER_TOKEN" character varying(255),
    "USER_TOKEN_EXPIRY" timestamp without time zone
);


ALTER TABLE public."AO_5FB9D7_AOHIP_CHAT_USER" OWNER TO confluence;

--
-- Name: AO_5FB9D7_AOHIP_CHAT_USER_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE public."AO_5FB9D7_AOHIP_CHAT_USER_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_5FB9D7_AOHIP_CHAT_USER_ID_seq" OWNER TO confluence;

--
-- Name: AO_5FB9D7_AOHIP_CHAT_USER_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE public."AO_5FB9D7_AOHIP_CHAT_USER_ID_seq" OWNED BY public."AO_5FB9D7_AOHIP_CHAT_USER"."ID";


--
-- Name: AO_6384AB_DISCOVERED; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public."AO_6384AB_DISCOVERED" (
    "DATE" timestamp without time zone,
    "ID" integer NOT NULL,
    "KEY" character varying(255),
    "PLUGIN_KEY" character varying(255),
    "USER_KEY" character varying(255)
);


ALTER TABLE public."AO_6384AB_DISCOVERED" OWNER TO confluence;

--
-- Name: AO_6384AB_DISCOVERED_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE public."AO_6384AB_DISCOVERED_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_6384AB_DISCOVERED_ID_seq" OWNER TO confluence;

--
-- Name: AO_6384AB_DISCOVERED_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE public."AO_6384AB_DISCOVERED_ID_seq" OWNED BY public."AO_6384AB_DISCOVERED"."ID";


--
-- Name: AO_6384AB_FEATURE_METADATA_AO; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public."AO_6384AB_FEATURE_METADATA_AO" (
    "CONTEXT" character varying(255),
    "ID" integer NOT NULL,
    "INSTALLATION_DATE" timestamp without time zone,
    "KEY" character varying(255)
);


ALTER TABLE public."AO_6384AB_FEATURE_METADATA_AO" OWNER TO confluence;

--
-- Name: AO_6384AB_FEATURE_METADATA_AO_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE public."AO_6384AB_FEATURE_METADATA_AO_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_6384AB_FEATURE_METADATA_AO_ID_seq" OWNER TO confluence;

--
-- Name: AO_6384AB_FEATURE_METADATA_AO_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE public."AO_6384AB_FEATURE_METADATA_AO_ID_seq" OWNED BY public."AO_6384AB_FEATURE_METADATA_AO"."ID";


--
-- Name: AO_7CDE43_EVENT; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public."AO_7CDE43_EVENT" (
    "EVENT_KEY" character varying(255),
    "ID" integer NOT NULL,
    "NOTIFICATION_ID" integer
);


ALTER TABLE public."AO_7CDE43_EVENT" OWNER TO confluence;

--
-- Name: AO_7CDE43_EVENT_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE public."AO_7CDE43_EVENT_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_7CDE43_EVENT_ID_seq" OWNER TO confluence;

--
-- Name: AO_7CDE43_EVENT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE public."AO_7CDE43_EVENT_ID_seq" OWNED BY public."AO_7CDE43_EVENT"."ID";


--
-- Name: AO_7CDE43_FILTER_PARAM; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public."AO_7CDE43_FILTER_PARAM" (
    "ID" integer NOT NULL,
    "NOTIFICATION_ID" integer,
    "PARAM_KEY" character varying(255),
    "PARAM_VALUE" text
);


ALTER TABLE public."AO_7CDE43_FILTER_PARAM" OWNER TO confluence;

--
-- Name: AO_7CDE43_FILTER_PARAM_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE public."AO_7CDE43_FILTER_PARAM_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_7CDE43_FILTER_PARAM_ID_seq" OWNER TO confluence;

--
-- Name: AO_7CDE43_FILTER_PARAM_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE public."AO_7CDE43_FILTER_PARAM_ID_seq" OWNED BY public."AO_7CDE43_FILTER_PARAM"."ID";


--
-- Name: AO_7CDE43_NOTIFICATION; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public."AO_7CDE43_NOTIFICATION" (
    "ID" integer NOT NULL,
    "NOTIFICATION_SCHEME_ID" integer
);


ALTER TABLE public."AO_7CDE43_NOTIFICATION" OWNER TO confluence;

--
-- Name: AO_7CDE43_NOTIFICATION_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE public."AO_7CDE43_NOTIFICATION_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_7CDE43_NOTIFICATION_ID_seq" OWNER TO confluence;

--
-- Name: AO_7CDE43_NOTIFICATION_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE public."AO_7CDE43_NOTIFICATION_ID_seq" OWNED BY public."AO_7CDE43_NOTIFICATION"."ID";


--
-- Name: AO_7CDE43_NOTIFICATION_SCHEME; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public."AO_7CDE43_NOTIFICATION_SCHEME" (
    "DESCRIPTION" text,
    "ID" integer NOT NULL,
    "SCHEME_NAME" character varying(255)
);


ALTER TABLE public."AO_7CDE43_NOTIFICATION_SCHEME" OWNER TO confluence;

--
-- Name: AO_7CDE43_NOTIFICATION_SCHEME_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE public."AO_7CDE43_NOTIFICATION_SCHEME_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_7CDE43_NOTIFICATION_SCHEME_ID_seq" OWNER TO confluence;

--
-- Name: AO_7CDE43_NOTIFICATION_SCHEME_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE public."AO_7CDE43_NOTIFICATION_SCHEME_ID_seq" OWNED BY public."AO_7CDE43_NOTIFICATION_SCHEME"."ID";


--
-- Name: AO_7CDE43_RECIPIENT; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public."AO_7CDE43_RECIPIENT" (
    "ID" integer NOT NULL,
    "INDIVIDUAL" boolean,
    "NOTIFICATION_ID" integer,
    "PARAM_DISPLAY" text,
    "PARAM_VALUE" text,
    "SERVER_ID" integer DEFAULT 0,
    "TYPE" character varying(255)
);


ALTER TABLE public."AO_7CDE43_RECIPIENT" OWNER TO confluence;

--
-- Name: AO_7CDE43_RECIPIENT_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE public."AO_7CDE43_RECIPIENT_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_7CDE43_RECIPIENT_ID_seq" OWNER TO confluence;

--
-- Name: AO_7CDE43_RECIPIENT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE public."AO_7CDE43_RECIPIENT_ID_seq" OWNED BY public."AO_7CDE43_RECIPIENT"."ID";


--
-- Name: AO_7CDE43_SERVER_CONFIG; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public."AO_7CDE43_SERVER_CONFIG" (
    "CUSTOM_TEMPLATE_PATH" text,
    "DEFAULT_USER_ID_TEMPLATE" character varying(255),
    "ENABLED_FOR_ALL_USERS" boolean,
    "GROUPS_WITH_ACCESS" text,
    "ID" integer NOT NULL,
    "NOTIFICATION_MEDIUM_KEY" character varying(255),
    "SERVER_NAME" character varying(255)
);


ALTER TABLE public."AO_7CDE43_SERVER_CONFIG" OWNER TO confluence;

--
-- Name: AO_7CDE43_SERVER_CONFIG_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE public."AO_7CDE43_SERVER_CONFIG_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_7CDE43_SERVER_CONFIG_ID_seq" OWNER TO confluence;

--
-- Name: AO_7CDE43_SERVER_CONFIG_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE public."AO_7CDE43_SERVER_CONFIG_ID_seq" OWNED BY public."AO_7CDE43_SERVER_CONFIG"."ID";


--
-- Name: AO_7CDE43_SERVER_PARAM; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public."AO_7CDE43_SERVER_PARAM" (
    "ID" integer NOT NULL,
    "PARAM_KEY" character varying(255),
    "PARAM_VALUE" text,
    "SERVER_CONFIG_ID" integer
);


ALTER TABLE public."AO_7CDE43_SERVER_PARAM" OWNER TO confluence;

--
-- Name: AO_7CDE43_SERVER_PARAM_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE public."AO_7CDE43_SERVER_PARAM_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_7CDE43_SERVER_PARAM_ID_seq" OWNER TO confluence;

--
-- Name: AO_7CDE43_SERVER_PARAM_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE public."AO_7CDE43_SERVER_PARAM_ID_seq" OWNED BY public."AO_7CDE43_SERVER_PARAM"."ID";


--
-- Name: AO_88263F_HEALTH_CHECK_STATUS; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public."AO_88263F_HEALTH_CHECK_STATUS" (
    "APPLICATION_NAME" character varying(255),
    "COMPLETE_KEY" character varying(255),
    "DESCRIPTION" character varying(255),
    "FAILED_DATE" timestamp without time zone,
    "FAILURE_REASON" character varying(450),
    "ID" integer NOT NULL,
    "IS_HEALTHY" boolean,
    "IS_RESOLVED" boolean,
    "RESOLVED_DATE" timestamp without time zone,
    "SEVERITY" character varying(255),
    "STATUS_NAME" character varying(255) NOT NULL
);


ALTER TABLE public."AO_88263F_HEALTH_CHECK_STATUS" OWNER TO confluence;

--
-- Name: AO_88263F_HEALTH_CHECK_STATUS_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE public."AO_88263F_HEALTH_CHECK_STATUS_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_88263F_HEALTH_CHECK_STATUS_ID_seq" OWNER TO confluence;

--
-- Name: AO_88263F_HEALTH_CHECK_STATUS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE public."AO_88263F_HEALTH_CHECK_STATUS_ID_seq" OWNED BY public."AO_88263F_HEALTH_CHECK_STATUS"."ID";


--
-- Name: AO_88263F_PROPERTIES; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public."AO_88263F_PROPERTIES" (
    "ID" integer NOT NULL,
    "PROPERTY_NAME" character varying(255) NOT NULL,
    "PROPERTY_VALUE" character varying(255) NOT NULL
);


ALTER TABLE public."AO_88263F_PROPERTIES" OWNER TO confluence;

--
-- Name: AO_88263F_PROPERTIES_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE public."AO_88263F_PROPERTIES_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_88263F_PROPERTIES_ID_seq" OWNER TO confluence;

--
-- Name: AO_88263F_PROPERTIES_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE public."AO_88263F_PROPERTIES_ID_seq" OWNED BY public."AO_88263F_PROPERTIES"."ID";


--
-- Name: AO_88263F_READ_NOTIFICATIONS; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public."AO_88263F_READ_NOTIFICATIONS" (
    "ID" integer NOT NULL,
    "IS_SNOOZED" boolean,
    "NOTIFICATION_ID" integer NOT NULL,
    "SNOOZE_COUNT" integer,
    "SNOOZE_DATE" timestamp without time zone,
    "USER_KEY" character varying(255) NOT NULL
);


ALTER TABLE public."AO_88263F_READ_NOTIFICATIONS" OWNER TO confluence;

--
-- Name: AO_88263F_READ_NOTIFICATIONS_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE public."AO_88263F_READ_NOTIFICATIONS_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_88263F_READ_NOTIFICATIONS_ID_seq" OWNER TO confluence;

--
-- Name: AO_88263F_READ_NOTIFICATIONS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE public."AO_88263F_READ_NOTIFICATIONS_ID_seq" OWNED BY public."AO_88263F_READ_NOTIFICATIONS"."ID";


--
-- Name: AO_88BB94_BATCH_NOTIFICATION; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public."AO_88BB94_BATCH_NOTIFICATION" (
    "BATCHING_COLUMN" character varying(255) NOT NULL,
    "CONTENT_TYPE" character varying(255) NOT NULL,
    "ID" integer NOT NULL,
    "NOTIFICATION_KEY" character varying(255) NOT NULL,
    "PAYLOAD" text NOT NULL
);


ALTER TABLE public."AO_88BB94_BATCH_NOTIFICATION" OWNER TO confluence;

--
-- Name: AO_88BB94_BATCH_NOTIFICATION_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE public."AO_88BB94_BATCH_NOTIFICATION_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_88BB94_BATCH_NOTIFICATION_ID_seq" OWNER TO confluence;

--
-- Name: AO_88BB94_BATCH_NOTIFICATION_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE public."AO_88BB94_BATCH_NOTIFICATION_ID_seq" OWNED BY public."AO_88BB94_BATCH_NOTIFICATION"."ID";


--
-- Name: AO_92296B_AORECENTLY_VIEWED; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public."AO_92296B_AORECENTLY_VIEWED" (
    "CONTENT_ID" bigint,
    "CONTENT_TYPE" character varying(255),
    "ID" bigint NOT NULL,
    "LAST_VIEW_DATE" timestamp without time zone,
    "SPACE_KEY" character varying(255),
    "USER_KEY" character varying(255)
);


ALTER TABLE public."AO_92296B_AORECENTLY_VIEWED" OWNER TO confluence;

--
-- Name: AO_92296B_AORECENTLY_VIEWED_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE public."AO_92296B_AORECENTLY_VIEWED_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_92296B_AORECENTLY_VIEWED_ID_seq" OWNER TO confluence;

--
-- Name: AO_92296B_AORECENTLY_VIEWED_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE public."AO_92296B_AORECENTLY_VIEWED_ID_seq" OWNED BY public."AO_92296B_AORECENTLY_VIEWED"."ID";


--
-- Name: AO_9412A1_AONOTIFICATION; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public."AO_9412A1_AONOTIFICATION" (
    "ACTION" character varying(255),
    "ACTION_ICON_URL" text,
    "APPLICATION" character varying(255),
    "APPLICATION_LINK_ID" character varying(255),
    "CREATED" timestamp without time zone,
    "DESCRIPTION" text,
    "ENTITY" character varying(255),
    "GLOBAL_ID" character varying(255),
    "GROUPING_ID" character varying(255),
    "ICON_URL" text,
    "ID" bigint NOT NULL,
    "ITEM_ICON_URL" text,
    "ITEM_TITLE" text,
    "ITEM_URL" text,
    "METADATA" text,
    "PINNED" boolean DEFAULT false,
    "READ" boolean DEFAULT false,
    "STATUS" character varying(255),
    "TITLE" text,
    "UPDATED" timestamp without time zone,
    "URL" text,
    "USER" character varying(255)
);


ALTER TABLE public."AO_9412A1_AONOTIFICATION" OWNER TO confluence;

--
-- Name: AO_9412A1_AONOTIFICATION_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE public."AO_9412A1_AONOTIFICATION_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_9412A1_AONOTIFICATION_ID_seq" OWNER TO confluence;

--
-- Name: AO_9412A1_AONOTIFICATION_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE public."AO_9412A1_AONOTIFICATION_ID_seq" OWNED BY public."AO_9412A1_AONOTIFICATION"."ID";


--
-- Name: AO_9412A1_AOREGISTRATION; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public."AO_9412A1_AOREGISTRATION" (
    "DATA" text,
    "ID" character varying(255) NOT NULL,
    "UPDATED" timestamp without time zone
);


ALTER TABLE public."AO_9412A1_AOREGISTRATION" OWNER TO confluence;

--
-- Name: AO_9412A1_AOTASK; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public."AO_9412A1_AOTASK" (
    "APPLICATION" character varying(255),
    "APPLICATION_LINK_ID" character varying(255),
    "CREATED" timestamp without time zone,
    "DESCRIPTION" text,
    "ENTITY" character varying(255),
    "GLOBAL_ID" character varying(255),
    "ID" bigint NOT NULL,
    "ITEM_ICON_URL" text,
    "ITEM_TITLE" text,
    "METADATA" text,
    "STATUS" character varying(255),
    "TITLE" text,
    "UPDATED" timestamp without time zone,
    "URL" text,
    "USER" character varying(255)
);


ALTER TABLE public."AO_9412A1_AOTASK" OWNER TO confluence;

--
-- Name: AO_9412A1_AOTASK_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE public."AO_9412A1_AOTASK_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_9412A1_AOTASK_ID_seq" OWNER TO confluence;

--
-- Name: AO_9412A1_AOTASK_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE public."AO_9412A1_AOTASK_ID_seq" OWNED BY public."AO_9412A1_AOTASK"."ID";


--
-- Name: AO_9412A1_AOUSER; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public."AO_9412A1_AOUSER" (
    "CREATED" timestamp without time zone,
    "ID" bigint NOT NULL,
    "LAST_READ_NOTIFICATION_ID" bigint DEFAULT 0,
    "TASK_ORDERING" text,
    "UPDATED" timestamp without time zone,
    "USERNAME" character varying(255) NOT NULL
);


ALTER TABLE public."AO_9412A1_AOUSER" OWNER TO confluence;

--
-- Name: AO_9412A1_AOUSER_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE public."AO_9412A1_AOUSER_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_9412A1_AOUSER_ID_seq" OWNER TO confluence;

--
-- Name: AO_9412A1_AOUSER_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE public."AO_9412A1_AOUSER_ID_seq" OWNED BY public."AO_9412A1_AOUSER"."ID";


--
-- Name: AO_9412A1_USER_APP_LINK; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public."AO_9412A1_USER_APP_LINK" (
    "APPLICATION_LINK_ID" character varying(255),
    "AUTH_VERIFIED" boolean,
    "CREATED" timestamp without time zone,
    "ID" bigint NOT NULL,
    "UPDATED" timestamp without time zone,
    "USER_ID" bigint
);


ALTER TABLE public."AO_9412A1_USER_APP_LINK" OWNER TO confluence;

--
-- Name: AO_9412A1_USER_APP_LINK_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE public."AO_9412A1_USER_APP_LINK_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_9412A1_USER_APP_LINK_ID_seq" OWNER TO confluence;

--
-- Name: AO_9412A1_USER_APP_LINK_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE public."AO_9412A1_USER_APP_LINK_ID_seq" OWNED BY public."AO_9412A1_USER_APP_LINK"."ID";


--
-- Name: AO_A0B856_WEB_HOOK_LISTENER_AO; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public."AO_A0B856_WEB_HOOK_LISTENER_AO" (
    "DESCRIPTION" text,
    "ENABLED" boolean,
    "EVENTS" text,
    "EXCLUDE_BODY" boolean,
    "FILTERS" text,
    "ID" integer NOT NULL,
    "LAST_UPDATED" timestamp without time zone NOT NULL,
    "LAST_UPDATED_USER" character varying(255),
    "NAME" text NOT NULL,
    "PARAMETERS" text,
    "REGISTRATION_METHOD" character varying(255) NOT NULL,
    "URL" text NOT NULL
);


ALTER TABLE public."AO_A0B856_WEB_HOOK_LISTENER_AO" OWNER TO confluence;

--
-- Name: AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE public."AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq" OWNER TO confluence;

--
-- Name: AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE public."AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq" OWNED BY public."AO_A0B856_WEB_HOOK_LISTENER_AO"."ID";


--
-- Name: AO_BAF3AA_AOINLINE_TASK; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public."AO_BAF3AA_AOINLINE_TASK" (
    "ASSIGNEE_USER_KEY" character varying(255),
    "BODY" text,
    "COMPLETE_DATE" timestamp without time zone,
    "COMPLETE_USER_KEY" character varying(255),
    "CONTENT_ID" bigint DEFAULT 0,
    "CREATE_DATE" timestamp without time zone,
    "CREATOR_USER_KEY" character varying(255),
    "DUE_DATE" timestamp without time zone,
    "GLOBAL_ID" bigint NOT NULL,
    "ID" bigint DEFAULT 0,
    "TASK_STATUS" character varying(255),
    "UPDATE_DATE" timestamp without time zone
);


ALTER TABLE public."AO_BAF3AA_AOINLINE_TASK" OWNER TO confluence;

--
-- Name: AO_BAF3AA_AOINLINE_TASK_GLOBAL_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE public."AO_BAF3AA_AOINLINE_TASK_GLOBAL_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_BAF3AA_AOINLINE_TASK_GLOBAL_ID_seq" OWNER TO confluence;

--
-- Name: AO_BAF3AA_AOINLINE_TASK_GLOBAL_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE public."AO_BAF3AA_AOINLINE_TASK_GLOBAL_ID_seq" OWNED BY public."AO_BAF3AA_AOINLINE_TASK"."GLOBAL_ID";


--
-- Name: AO_DC98AE_AOHELP_TIP; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public."AO_DC98AE_AOHELP_TIP" (
    "DISMISSED_HELP_TIP" character varying(255),
    "ID" integer NOT NULL,
    "USER_KEY" character varying(255)
);


ALTER TABLE public."AO_DC98AE_AOHELP_TIP" OWNER TO confluence;

--
-- Name: AO_DC98AE_AOHELP_TIP_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE public."AO_DC98AE_AOHELP_TIP_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_DC98AE_AOHELP_TIP_ID_seq" OWNER TO confluence;

--
-- Name: AO_DC98AE_AOHELP_TIP_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE public."AO_DC98AE_AOHELP_TIP_ID_seq" OWNED BY public."AO_DC98AE_AOHELP_TIP"."ID";


--
-- Name: EVENTS; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public."EVENTS" (
    rev character varying(255) NOT NULL,
    history character varying(255) NOT NULL,
    partition integer NOT NULL,
    sequence integer NOT NULL,
    event bytea
);


ALTER TABLE public."EVENTS" OWNER TO confluence;

--
-- Name: SECRETS; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public."SECRETS" (
    key character varying(255) NOT NULL,
    value character varying(256) NOT NULL
);


ALTER TABLE public."SECRETS" OWNER TO confluence;

--
-- Name: SNAPSHOTS; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public."SNAPSHOTS" (
    key character varying(255) NOT NULL,
    value bytea NOT NULL
);


ALTER TABLE public."SNAPSHOTS" OWNER TO confluence;

--
-- Name: attachmentdata; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.attachmentdata (
    attachmentdataid bigint NOT NULL,
    hibernateversion integer DEFAULT 0 NOT NULL,
    attversion integer NOT NULL,
    data bytea,
    attachmentid bigint NOT NULL
);


ALTER TABLE public.attachmentdata OWNER TO confluence;

--
-- Name: audit_affected_object; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.audit_affected_object (
    id bigint NOT NULL,
    name character varying(255),
    type character varying(255),
    auditrecordid bigint
);


ALTER TABLE public.audit_affected_object OWNER TO confluence;

--
-- Name: audit_changed_value; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.audit_changed_value (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    oldvalue character varying(255),
    newvalue character varying(255),
    auditrecordid bigint
);


ALTER TABLE public.audit_changed_value OWNER TO confluence;

--
-- Name: auditrecord; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.auditrecord (
    auditrecordid bigint NOT NULL,
    summary character varying(255),
    description character varying(255),
    category character varying(255),
    address character varying(255),
    sysamdin boolean NOT NULL,
    authorname character varying(255),
    authorfullname character varying(255),
    authorkey character varying(255),
    objectname character varying(255),
    objecttype character varying(255),
    searchstring character varying(4000),
    creationdate bigint NOT NULL
);


ALTER TABLE public.auditrecord OWNER TO confluence;

--
-- Name: bandana; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.bandana (
    bandanaid bigint NOT NULL,
    bandanacontext character varying(255) NOT NULL,
    bandanakey character varying(100) NOT NULL,
    bandanavalue text
);


ALTER TABLE public.bandana OWNER TO confluence;

--
-- Name: bodycontent; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.bodycontent (
    bodycontentid bigint NOT NULL,
    body text,
    contentid bigint,
    bodytypeid smallint
);


ALTER TABLE public.bodycontent OWNER TO confluence;

--
-- Name: clustersafety; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.clustersafety (
    clustersafetyid bigint NOT NULL,
    safetynumber integer
);


ALTER TABLE public.clustersafety OWNER TO confluence;

--
-- Name: confancestors; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.confancestors (
    descendentid bigint NOT NULL,
    ancestorid bigint NOT NULL,
    ancestorposition integer NOT NULL
);


ALTER TABLE public.confancestors OWNER TO confluence;

--
-- Name: confversion; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.confversion (
    confversionid bigint NOT NULL,
    buildnumber integer NOT NULL,
    installdate timestamp without time zone,
    versiontag character varying(255),
    creationdate timestamp without time zone,
    lastmoddate timestamp without time zone
);


ALTER TABLE public.confversion OWNER TO confluence;

--
-- Name: content; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.content (
    contentid bigint NOT NULL,
    contenttype character varying(255) NOT NULL,
    hibernateversion integer DEFAULT 0 NOT NULL,
    title character varying(255),
    lowertitle character varying(255),
    version integer,
    creator character varying(255),
    creationdate timestamp without time zone,
    lastmodifier character varying(255),
    lastmoddate timestamp without time zone,
    versioncomment text,
    prevver bigint,
    content_status character varying(255),
    pageid bigint,
    spaceid bigint,
    child_position integer,
    parentid bigint,
    messageid character varying(255),
    pluginkey character varying(255),
    pluginver character varying(255),
    parentccid bigint,
    draftpageid character varying(255),
    draftspacekey character varying(255),
    drafttype character varying(255),
    draftpageversion integer,
    parentcommentid bigint,
    username character varying(255)
);


ALTER TABLE public.content OWNER TO confluence;

--
-- Name: content_label; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.content_label (
    id bigint NOT NULL,
    labelid bigint NOT NULL,
    contentid bigint,
    pagetemplateid bigint,
    owner character varying(255),
    creationdate timestamp without time zone,
    lastmoddate timestamp without time zone,
    labelableid bigint,
    labelabletype character varying(255)
);


ALTER TABLE public.content_label OWNER TO confluence;

--
-- Name: content_perm; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.content_perm (
    id bigint NOT NULL,
    cp_type character varying(10) NOT NULL,
    username character varying(255),
    groupname character varying(255),
    cps_id bigint NOT NULL,
    creator character varying(255),
    creationdate timestamp without time zone,
    lastmodifier character varying(255),
    lastmoddate timestamp without time zone
);


ALTER TABLE public.content_perm OWNER TO confluence;

--
-- Name: content_perm_set; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.content_perm_set (
    id bigint NOT NULL,
    cont_perm_type character varying(10) NOT NULL,
    content_id bigint NOT NULL,
    creationdate timestamp without time zone,
    lastmoddate timestamp without time zone
);


ALTER TABLE public.content_perm_set OWNER TO confluence;

--
-- Name: content_relation; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.content_relation (
    relationid bigint NOT NULL,
    targetcontentid bigint NOT NULL,
    sourcecontentid bigint NOT NULL,
    targettype character varying(255) NOT NULL,
    sourcetype character varying(255) NOT NULL,
    relationname character varying(255) NOT NULL,
    creationdate timestamp without time zone NOT NULL,
    lastmoddate timestamp without time zone NOT NULL,
    creator character varying(255) NOT NULL,
    lastmodifier character varying(255) NOT NULL
);


ALTER TABLE public.content_relation OWNER TO confluence;

--
-- Name: contentproperties; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.contentproperties (
    propertyid bigint NOT NULL,
    propertyname character varying(255) NOT NULL,
    stringval character varying(255),
    longval bigint,
    dateval timestamp without time zone,
    contentid bigint
);


ALTER TABLE public.contentproperties OWNER TO confluence;

--
-- Name: cwd_app_dir_group_mapping; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.cwd_app_dir_group_mapping (
    id bigint NOT NULL,
    app_dir_mapping_id bigint NOT NULL,
    application_id bigint NOT NULL,
    directory_id bigint NOT NULL,
    group_name character varying(255) NOT NULL
);


ALTER TABLE public.cwd_app_dir_group_mapping OWNER TO confluence;

--
-- Name: cwd_app_dir_mapping; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.cwd_app_dir_mapping (
    id bigint NOT NULL,
    application_id bigint,
    directory_id bigint NOT NULL,
    allow_all character(1) NOT NULL,
    list_index integer
);


ALTER TABLE public.cwd_app_dir_mapping OWNER TO confluence;

--
-- Name: cwd_app_dir_operation; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.cwd_app_dir_operation (
    app_dir_mapping_id bigint NOT NULL,
    operation_type character varying(32) NOT NULL
);


ALTER TABLE public.cwd_app_dir_operation OWNER TO confluence;

--
-- Name: cwd_application; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.cwd_application (
    id bigint NOT NULL,
    application_name character varying(255) NOT NULL,
    lower_application_name character varying(255) NOT NULL,
    created_date timestamp without time zone NOT NULL,
    updated_date timestamp without time zone NOT NULL,
    active character(1) NOT NULL,
    description character varying(255),
    application_type character varying(32) NOT NULL,
    credential character varying(255) NOT NULL
);


ALTER TABLE public.cwd_application OWNER TO confluence;

--
-- Name: cwd_application_address; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.cwd_application_address (
    application_id bigint NOT NULL,
    remote_address character varying(255) NOT NULL
);


ALTER TABLE public.cwd_application_address OWNER TO confluence;

--
-- Name: cwd_application_attribute; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.cwd_application_attribute (
    application_id bigint NOT NULL,
    attribute_value character varying(4000),
    attribute_name character varying(255) NOT NULL
);


ALTER TABLE public.cwd_application_attribute OWNER TO confluence;

--
-- Name: cwd_directory; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.cwd_directory (
    id bigint NOT NULL,
    directory_name character varying(255) NOT NULL,
    lower_directory_name character varying(255) NOT NULL,
    created_date timestamp without time zone NOT NULL,
    updated_date timestamp without time zone NOT NULL,
    active character(1) NOT NULL,
    description character varying(255),
    impl_class character varying(255) NOT NULL,
    lower_impl_class character varying(255) NOT NULL,
    directory_type character varying(32) NOT NULL
);


ALTER TABLE public.cwd_directory OWNER TO confluence;

--
-- Name: cwd_directory_attribute; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.cwd_directory_attribute (
    directory_id bigint NOT NULL,
    attribute_value character varying(4000),
    attribute_name character varying(255) NOT NULL
);


ALTER TABLE public.cwd_directory_attribute OWNER TO confluence;

--
-- Name: cwd_directory_operation; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.cwd_directory_operation (
    directory_id bigint NOT NULL,
    operation_type character varying(32) NOT NULL
);


ALTER TABLE public.cwd_directory_operation OWNER TO confluence;

--
-- Name: cwd_group; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.cwd_group (
    id bigint NOT NULL,
    group_name character varying(255) NOT NULL,
    lower_group_name character varying(255) NOT NULL,
    active character(1) NOT NULL,
    local character(1) NOT NULL,
    created_date timestamp without time zone NOT NULL,
    updated_date timestamp without time zone NOT NULL,
    description character varying(255),
    group_type character varying(32) NOT NULL,
    directory_id bigint NOT NULL
);


ALTER TABLE public.cwd_group OWNER TO confluence;

--
-- Name: cwd_group_attribute; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.cwd_group_attribute (
    id bigint NOT NULL,
    group_id bigint NOT NULL,
    directory_id bigint NOT NULL,
    attribute_name character varying(255) NOT NULL,
    attribute_value character varying(255),
    attribute_lower_value character varying(255)
);


ALTER TABLE public.cwd_group_attribute OWNER TO confluence;

--
-- Name: cwd_membership; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.cwd_membership (
    id bigint NOT NULL,
    parent_id bigint NOT NULL,
    child_group_id bigint,
    child_user_id bigint
);


ALTER TABLE public.cwd_membership OWNER TO confluence;

--
-- Name: cwd_user; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.cwd_user (
    id bigint NOT NULL,
    user_name character varying(255) NOT NULL,
    lower_user_name character varying(255) NOT NULL,
    active character(1) NOT NULL,
    created_date timestamp without time zone NOT NULL,
    updated_date timestamp without time zone NOT NULL,
    first_name character varying(255),
    lower_first_name character varying(255),
    last_name character varying(255),
    lower_last_name character varying(255),
    display_name character varying(255),
    lower_display_name character varying(255),
    email_address character varying(255),
    lower_email_address character varying(255),
    external_id character varying(255),
    directory_id bigint NOT NULL,
    credential character varying(255)
);


ALTER TABLE public.cwd_user OWNER TO confluence;

--
-- Name: cwd_user_attribute; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.cwd_user_attribute (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    directory_id bigint NOT NULL,
    attribute_name character varying(255) NOT NULL,
    attribute_value character varying(255),
    attribute_lower_value character varying(255)
);


ALTER TABLE public.cwd_user_attribute OWNER TO confluence;

--
-- Name: cwd_user_credential_record; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.cwd_user_credential_record (
    id bigint NOT NULL,
    user_id bigint,
    password_hash character varying(255) NOT NULL,
    list_index integer
);


ALTER TABLE public.cwd_user_credential_record OWNER TO confluence;

--
-- Name: decorator; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.decorator (
    decoratorid bigint NOT NULL,
    spacekey character varying(255),
    decoratorname character varying(255),
    body text,
    lastmoddate timestamp without time zone
);


ALTER TABLE public.decorator OWNER TO confluence;

--
-- Name: external_entities; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.external_entities (
    id bigint NOT NULL,
    name character varying(255),
    type character varying(255) NOT NULL
);


ALTER TABLE public.external_entities OWNER TO confluence;

--
-- Name: external_members; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.external_members (
    extentityid bigint NOT NULL,
    groupid bigint NOT NULL
);


ALTER TABLE public.external_members OWNER TO confluence;

--
-- Name: extrnlnks; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.extrnlnks (
    linkid bigint NOT NULL,
    contenttype character varying(255) NOT NULL,
    viewcount integer NOT NULL,
    url character varying(255) NOT NULL,
    lowerurl character varying(255) NOT NULL,
    contentid bigint NOT NULL,
    creator character varying(255),
    creationdate timestamp without time zone,
    lastmodifier character varying(255),
    lastmoddate timestamp without time zone
);


ALTER TABLE public.extrnlnks OWNER TO confluence;

--
-- Name: follow_connections; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.follow_connections (
    connectionid bigint NOT NULL,
    follower character varying(255),
    followee character varying(255)
);


ALTER TABLE public.follow_connections OWNER TO confluence;

--
-- Name: groups; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.groups (
    id bigint NOT NULL,
    groupname character varying(255) NOT NULL
);


ALTER TABLE public.groups OWNER TO confluence;

--
-- Name: hibernate_unique_key; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.hibernate_unique_key (
    next_hi integer
);


ALTER TABLE public.hibernate_unique_key OWNER TO confluence;

--
-- Name: imagedetails; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.imagedetails (
    attachmentid bigint NOT NULL,
    height integer,
    width integer,
    mimetype character varying(30)
);


ALTER TABLE public.imagedetails OWNER TO confluence;

--
-- Name: indexqueueentries; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.indexqueueentries (
    entryid bigint NOT NULL,
    creationdate timestamp without time zone,
    type integer,
    handle character varying(255)
);


ALTER TABLE public.indexqueueentries OWNER TO confluence;

--
-- Name: journalentry; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.journalentry (
    entry_id bigint NOT NULL,
    journal_name character varying(255),
    creationdate timestamp without time zone,
    type character varying(255),
    message character varying(2047)
);


ALTER TABLE public.journalentry OWNER TO confluence;

--
-- Name: keystore; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.keystore (
    keyid bigint NOT NULL,
    alias character varying(255) NOT NULL,
    type character varying(32) NOT NULL,
    algorithm character varying(32) NOT NULL,
    keyspec text NOT NULL
);


ALTER TABLE public.keystore OWNER TO confluence;

--
-- Name: label; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.label (
    labelid bigint NOT NULL,
    name character varying(255),
    owner character varying(255),
    namespace character varying(255),
    creationdate timestamp without time zone,
    lastmoddate timestamp without time zone
);


ALTER TABLE public.label OWNER TO confluence;

--
-- Name: likes; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.likes (
    id bigint NOT NULL,
    contentid bigint NOT NULL,
    username character varying(255) NOT NULL,
    creationdate timestamp without time zone NOT NULL
);


ALTER TABLE public.likes OWNER TO confluence;

--
-- Name: links; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.links (
    linkid bigint NOT NULL,
    destpagetitle character varying(255),
    lowerdestpagetitle character varying(255),
    destspacekey character varying(255) NOT NULL,
    lowerdestspacekey character varying(255),
    contentid bigint NOT NULL,
    creator character varying(255),
    creationdate timestamp without time zone,
    lastmodifier character varying(255),
    lastmoddate timestamp without time zone
);


ALTER TABLE public.links OWNER TO confluence;

--
-- Name: local_members; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.local_members (
    userid bigint NOT NULL,
    groupid bigint NOT NULL
);


ALTER TABLE public.local_members OWNER TO confluence;

--
-- Name: logininfo; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.logininfo (
    id bigint NOT NULL,
    curfailed integer,
    totalfailed integer,
    successdate timestamp without time zone,
    prevsuccessdate timestamp without time zone,
    faileddate timestamp without time zone,
    username character varying(255) NOT NULL
);


ALTER TABLE public.logininfo OWNER TO confluence;

--
-- Name: notifications; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.notifications (
    notificationid bigint NOT NULL,
    contentid bigint,
    labelid bigint,
    spaceid bigint,
    username character varying(255) NOT NULL,
    creator character varying(255),
    creationdate timestamp without time zone,
    lastmodifier character varying(255),
    lastmoddate timestamp without time zone,
    digest boolean,
    network boolean,
    contenttype character varying(255)
);


ALTER TABLE public.notifications OWNER TO confluence;

--
-- Name: os_group; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.os_group (
    id bigint NOT NULL,
    groupname character varying(255) NOT NULL
);


ALTER TABLE public.os_group OWNER TO confluence;

--
-- Name: os_propertyentry; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.os_propertyentry (
    entity_name character varying(125) NOT NULL,
    entity_id bigint NOT NULL,
    entity_key character varying(200) NOT NULL,
    key_type integer,
    boolean_val boolean,
    double_val double precision,
    string_val character varying(255),
    text_val text,
    long_val bigint,
    int_val integer,
    date_val timestamp without time zone
);


ALTER TABLE public.os_propertyentry OWNER TO confluence;

--
-- Name: os_user; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.os_user (
    id bigint NOT NULL,
    username character varying(255) NOT NULL,
    passwd character varying(255)
);


ALTER TABLE public.os_user OWNER TO confluence;

--
-- Name: os_user_group; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.os_user_group (
    group_id bigint NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.os_user_group OWNER TO confluence;

--
-- Name: pagetemplates; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.pagetemplates (
    templateid bigint NOT NULL,
    hibernateversion integer DEFAULT 0 NOT NULL,
    templatename character varying(255) NOT NULL,
    templatedesc character varying(255),
    pluginkey character varying(255),
    modulekey character varying(255),
    refpluginkey character varying(255),
    refmodulekey character varying(255),
    content text,
    spaceid bigint,
    prevver bigint,
    version integer NOT NULL,
    creator character varying(255),
    creationdate timestamp without time zone,
    lastmodifier character varying(255),
    lastmoddate timestamp without time zone,
    bodytypeid smallint
);


ALTER TABLE public.pagetemplates OWNER TO confluence;

--
-- Name: plugindata; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.plugindata (
    plugindataid bigint NOT NULL,
    pluginkey character varying(255) NOT NULL,
    filename character varying(255) NOT NULL,
    lastmoddate timestamp without time zone,
    data bytea
);


ALTER TABLE public.plugindata OWNER TO confluence;

--
-- Name: remembermetoken; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.remembermetoken (
    id bigint NOT NULL,
    username character varying(255) NOT NULL,
    created bigint NOT NULL,
    token character varying(255) NOT NULL
);


ALTER TABLE public.remembermetoken OWNER TO confluence;

--
-- Name: scheduler_clustered_jobs; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.scheduler_clustered_jobs (
    id bigint NOT NULL,
    job_id character varying(255),
    next_run_time timestamp without time zone,
    version bigint,
    job_runner_key character varying(255),
    raw_parameters bytea,
    sched_type character(1),
    cron_expression character varying(255),
    cron_time_zone character varying(60),
    interval_first_run_time timestamp without time zone,
    interval_millis bigint
);


ALTER TABLE public.scheduler_clustered_jobs OWNER TO confluence;

--
-- Name: scheduler_run_details; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.scheduler_run_details (
    id bigint NOT NULL,
    job_id character varying(255),
    start_time timestamp without time zone,
    duration bigint,
    outcome character(1),
    message character varying(255)
);


ALTER TABLE public.scheduler_run_details OWNER TO confluence;

--
-- Name: seq_journal_entry_id; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE public.seq_journal_entry_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seq_journal_entry_id OWNER TO confluence;

--
-- Name: spacepermissions; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.spacepermissions (
    permid bigint NOT NULL,
    spaceid bigint,
    permtype character varying(255) NOT NULL,
    permgroupname character varying(255),
    permusername character varying(255),
    permalluserssubject character varying(255),
    creator character varying(255),
    creationdate timestamp without time zone,
    lastmodifier character varying(255),
    lastmoddate timestamp without time zone
);


ALTER TABLE public.spacepermissions OWNER TO confluence;

--
-- Name: spaces; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.spaces (
    spaceid bigint NOT NULL,
    spacename character varying(255),
    spacekey character varying(255) NOT NULL,
    lowerspacekey character varying(255) NOT NULL,
    spacedescid bigint,
    homepage bigint,
    creator character varying(255),
    creationdate timestamp without time zone,
    lastmodifier character varying(255),
    lastmoddate timestamp without time zone,
    spacetype character varying(255),
    spacestatus character varying(255)
);


ALTER TABLE public.spaces OWNER TO confluence;

--
-- Name: trackbacklinks; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.trackbacklinks (
    linkid bigint NOT NULL,
    contenttype character varying(255) NOT NULL,
    viewcount integer NOT NULL,
    url character varying(255) NOT NULL,
    lowerurl character varying(255) NOT NULL,
    title character varying(255),
    blogname character varying(255),
    excerpt character varying(255),
    contentid bigint NOT NULL,
    creator character varying(255),
    creationdate timestamp without time zone,
    lastmodifier character varying(255),
    lastmoddate timestamp without time zone
);


ALTER TABLE public.trackbacklinks OWNER TO confluence;

--
-- Name: trustedapp; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.trustedapp (
    trustedappid bigint NOT NULL,
    name character varying(255) NOT NULL,
    timeout integer NOT NULL,
    public_key_id bigint NOT NULL
);


ALTER TABLE public.trustedapp OWNER TO confluence;

--
-- Name: trustedapprestriction; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.trustedapprestriction (
    trustedapprestrictionid bigint NOT NULL,
    type character varying(32) NOT NULL,
    restriction character varying(255),
    trustedappid bigint
);


ALTER TABLE public.trustedapprestriction OWNER TO confluence;

--
-- Name: user_mapping; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.user_mapping (
    user_key character varying(255) NOT NULL,
    username character varying(255) NOT NULL,
    lower_username character varying(255)
);


ALTER TABLE public.user_mapping OWNER TO confluence;

--
-- Name: user_relation; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.user_relation (
    relationid bigint NOT NULL,
    sourceuser character varying(255) NOT NULL,
    targetuser character varying(255) NOT NULL,
    relationname character varying(255) NOT NULL,
    creationdate timestamp without time zone NOT NULL,
    lastmoddate timestamp without time zone NOT NULL,
    creator character varying(255) NOT NULL,
    lastmodifier character varying(255) NOT NULL
);


ALTER TABLE public.user_relation OWNER TO confluence;

--
-- Name: usercontent_relation; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.usercontent_relation (
    relationid bigint NOT NULL,
    targetcontentid bigint NOT NULL,
    sourceuser character varying(255) NOT NULL,
    targettype character varying(255) NOT NULL,
    relationname character varying(255) NOT NULL,
    creationdate timestamp without time zone NOT NULL,
    lastmoddate timestamp without time zone NOT NULL,
    creator character varying(255) NOT NULL,
    lastmodifier character varying(255) NOT NULL
);


ALTER TABLE public.usercontent_relation OWNER TO confluence;

--
-- Name: users; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    password character varying(255),
    email character varying(255),
    created timestamp without time zone,
    fullname character varying(255)
);


ALTER TABLE public.users OWNER TO confluence;

--
-- Name: AO_187CCC_SIDEBAR_LINK ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_187CCC_SIDEBAR_LINK" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_187CCC_SIDEBAR_LINK_ID_seq"'::regclass);


--
-- Name: AO_21D670_WHITELIST_RULES ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_21D670_WHITELIST_RULES" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_21D670_WHITELIST_RULES_ID_seq"'::regclass);


--
-- Name: AO_26DB7F_ENTITIES_TO_ROOMS ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_26DB7F_ENTITIES_TO_ROOMS" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_26DB7F_ENTITIES_TO_ROOMS_ID_seq"'::regclass);


--
-- Name: AO_26DB7F_ENTITIES_TO_ROOM_CFG ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_26DB7F_ENTITIES_TO_ROOM_CFG" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_26DB7F_ENTITIES_TO_ROOM_CFG_ID_seq"'::regclass);


--
-- Name: AO_38321B_CUSTOM_CONTENT_LINK ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_38321B_CUSTOM_CONTENT_LINK" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_38321B_CUSTOM_CONTENT_LINK_ID_seq"'::regclass);


--
-- Name: AO_42E351_HEALTH_CHECK_ENTITY ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_42E351_HEALTH_CHECK_ENTITY" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_42E351_HEALTH_CHECK_ENTITY_ID_seq"'::regclass);


--
-- Name: AO_54C900_CONTENT_BLUEPRINT_AO ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_54C900_CONTENT_BLUEPRINT_AO" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_54C900_CONTENT_BLUEPRINT_AO_ID_seq"'::regclass);


--
-- Name: AO_54C900_C_TEMPLATE_REF ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_54C900_C_TEMPLATE_REF" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_54C900_C_TEMPLATE_REF_ID_seq"'::regclass);


--
-- Name: AO_54C900_SPACE_BLUEPRINT_AO ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_54C900_SPACE_BLUEPRINT_AO" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_54C900_SPACE_BLUEPRINT_AO_ID_seq"'::regclass);


--
-- Name: AO_563AEE_ACTIVITY_ENTITY ACTIVITY_ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_563AEE_ACTIVITY_ENTITY" ALTER COLUMN "ACTIVITY_ID" SET DEFAULT nextval('public."AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq"'::regclass);


--
-- Name: AO_563AEE_ACTOR_ENTITY ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_563AEE_ACTOR_ENTITY" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_563AEE_ACTOR_ENTITY_ID_seq"'::regclass);


--
-- Name: AO_563AEE_MEDIA_LINK_ENTITY ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_563AEE_MEDIA_LINK_ENTITY" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_563AEE_MEDIA_LINK_ENTITY_ID_seq"'::regclass);


--
-- Name: AO_563AEE_OBJECT_ENTITY ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_563AEE_OBJECT_ENTITY" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_563AEE_OBJECT_ENTITY_ID_seq"'::regclass);


--
-- Name: AO_563AEE_TARGET_ENTITY ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_563AEE_TARGET_ENTITY" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_563AEE_TARGET_ENTITY_ID_seq"'::regclass);


--
-- Name: AO_5F3884_FEATURE_DISCOVERY ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_5F3884_FEATURE_DISCOVERY" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_5F3884_FEATURE_DISCOVERY_ID_seq"'::regclass);


--
-- Name: AO_5FB9D7_AOHIP_CHAT_LINK ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_5FB9D7_AOHIP_CHAT_LINK" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq"'::regclass);


--
-- Name: AO_5FB9D7_AOHIP_CHAT_USER ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_5FB9D7_AOHIP_CHAT_USER" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_5FB9D7_AOHIP_CHAT_USER_ID_seq"'::regclass);


--
-- Name: AO_6384AB_DISCOVERED ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_6384AB_DISCOVERED" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_6384AB_DISCOVERED_ID_seq"'::regclass);


--
-- Name: AO_6384AB_FEATURE_METADATA_AO ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_6384AB_FEATURE_METADATA_AO" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_6384AB_FEATURE_METADATA_AO_ID_seq"'::regclass);


--
-- Name: AO_7CDE43_EVENT ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_7CDE43_EVENT" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_7CDE43_EVENT_ID_seq"'::regclass);


--
-- Name: AO_7CDE43_FILTER_PARAM ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_7CDE43_FILTER_PARAM" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_7CDE43_FILTER_PARAM_ID_seq"'::regclass);


--
-- Name: AO_7CDE43_NOTIFICATION ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_7CDE43_NOTIFICATION" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_7CDE43_NOTIFICATION_ID_seq"'::regclass);


--
-- Name: AO_7CDE43_NOTIFICATION_SCHEME ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_7CDE43_NOTIFICATION_SCHEME" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_7CDE43_NOTIFICATION_SCHEME_ID_seq"'::regclass);


--
-- Name: AO_7CDE43_RECIPIENT ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_7CDE43_RECIPIENT" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_7CDE43_RECIPIENT_ID_seq"'::regclass);


--
-- Name: AO_7CDE43_SERVER_CONFIG ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_7CDE43_SERVER_CONFIG" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_7CDE43_SERVER_CONFIG_ID_seq"'::regclass);


--
-- Name: AO_7CDE43_SERVER_PARAM ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_7CDE43_SERVER_PARAM" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_7CDE43_SERVER_PARAM_ID_seq"'::regclass);


--
-- Name: AO_88263F_HEALTH_CHECK_STATUS ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_88263F_HEALTH_CHECK_STATUS" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_88263F_HEALTH_CHECK_STATUS_ID_seq"'::regclass);


--
-- Name: AO_88263F_PROPERTIES ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_88263F_PROPERTIES" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_88263F_PROPERTIES_ID_seq"'::regclass);


--
-- Name: AO_88263F_READ_NOTIFICATIONS ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_88263F_READ_NOTIFICATIONS" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_88263F_READ_NOTIFICATIONS_ID_seq"'::regclass);


--
-- Name: AO_88BB94_BATCH_NOTIFICATION ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_88BB94_BATCH_NOTIFICATION" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_88BB94_BATCH_NOTIFICATION_ID_seq"'::regclass);


--
-- Name: AO_92296B_AORECENTLY_VIEWED ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_92296B_AORECENTLY_VIEWED" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_92296B_AORECENTLY_VIEWED_ID_seq"'::regclass);


--
-- Name: AO_9412A1_AONOTIFICATION ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_9412A1_AONOTIFICATION" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_9412A1_AONOTIFICATION_ID_seq"'::regclass);


--
-- Name: AO_9412A1_AOTASK ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_9412A1_AOTASK" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_9412A1_AOTASK_ID_seq"'::regclass);


--
-- Name: AO_9412A1_AOUSER ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_9412A1_AOUSER" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_9412A1_AOUSER_ID_seq"'::regclass);


--
-- Name: AO_9412A1_USER_APP_LINK ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_9412A1_USER_APP_LINK" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_9412A1_USER_APP_LINK_ID_seq"'::regclass);


--
-- Name: AO_A0B856_WEB_HOOK_LISTENER_AO ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_A0B856_WEB_HOOK_LISTENER_AO" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq"'::regclass);


--
-- Name: AO_BAF3AA_AOINLINE_TASK GLOBAL_ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_BAF3AA_AOINLINE_TASK" ALTER COLUMN "GLOBAL_ID" SET DEFAULT nextval('public."AO_BAF3AA_AOINLINE_TASK_GLOBAL_ID_seq"'::regclass);


--
-- Name: AO_DC98AE_AOHELP_TIP ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_DC98AE_AOHELP_TIP" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_DC98AE_AOHELP_TIP_ID_seq"'::regclass);


--
-- Data for Name: AO_187CCC_SIDEBAR_LINK; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public."AO_187CCC_SIDEBAR_LINK" ("CATEGORY", "CUSTOM_ICON_CLASS", "CUSTOM_TITLE", "DEST_PAGE_ID", "HARDCODED_URL", "HIDDEN", "ID", "POSITION", "SPACE_KEY", "TYPE", "WEB_ITEM_KEY") FROM stdin;
\.


--
-- Data for Name: AO_21D670_WHITELIST_RULES; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public."AO_21D670_WHITELIST_RULES" ("ALLOWINBOUND", "EXPRESSION", "ID", "TYPE") FROM stdin;
\.


--
-- Data for Name: AO_26DB7F_ENTITIES_TO_ROOMS; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public."AO_26DB7F_ENTITIES_TO_ROOMS" ("ENTITY_KEY", "ID", "MESSAGE_TYPE_KEY", "ROOM_ID") FROM stdin;
\.


--
-- Data for Name: AO_26DB7F_ENTITIES_TO_ROOM_CFG; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public."AO_26DB7F_ENTITIES_TO_ROOM_CFG" ("ENTITY_KEY", "ID", "NOTIFY_CLIENT", "ROOM_ID") FROM stdin;
\.


--
-- Data for Name: AO_38321B_CUSTOM_CONTENT_LINK; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public."AO_38321B_CUSTOM_CONTENT_LINK" ("CONTENT_KEY", "ID", "LINK_LABEL", "LINK_URL", "SEQUENCE") FROM stdin;
\.


--
-- Data for Name: AO_42E351_HEALTH_CHECK_ENTITY; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public."AO_42E351_HEALTH_CHECK_ENTITY" ("ID") FROM stdin;
\.


--
-- Data for Name: AO_54C900_CONTENT_BLUEPRINT_AO; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public."AO_54C900_CONTENT_BLUEPRINT_AO" ("CREATE_RESULT", "HOW_TO_USE_TEMPLATE", "ID", "INDEX_DISABLED", "INDEX_KEY", "INDEX_TITLE_I18N_KEY", "NAME", "PLUGIN_CLONE", "PLUGIN_MODULE_KEY", "SPACE_KEY", "UUID") FROM stdin;
\.


--
-- Data for Name: AO_54C900_C_TEMPLATE_REF; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public."AO_54C900_C_TEMPLATE_REF" ("CB_INDEX_PARENTID", "CB_PARENTID", "ID", "NAME", "PARENT_ID", "PLUGIN_CLONE", "PLUGIN_MODULE_KEY", "TEMPLATE_ID", "UUID") FROM stdin;
\.


--
-- Data for Name: AO_54C900_SPACE_BLUEPRINT_AO; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public."AO_54C900_SPACE_BLUEPRINT_AO" ("CATEGORY", "HOME_PAGE_ID", "ID", "NAME", "PLUGIN_CLONE", "PLUGIN_MODULE_KEY", "PROMOTED_BPS", "UUID") FROM stdin;
\.


--
-- Data for Name: AO_563AEE_ACTIVITY_ENTITY; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public."AO_563AEE_ACTIVITY_ENTITY" ("ACTIVITY_ID", "ACTOR_ID", "CONTENT", "GENERATOR_DISPLAY_NAME", "GENERATOR_ID", "ICON_ID", "ID", "ISSUE_KEY", "OBJECT_ID", "POSTER", "PROJECT_KEY", "PUBLISHED", "TARGET_ID", "TITLE", "URL", "USERNAME", "VERB") FROM stdin;
\.


--
-- Data for Name: AO_563AEE_ACTOR_ENTITY; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public."AO_563AEE_ACTOR_ENTITY" ("FULL_NAME", "ID", "PROFILE_PAGE_URI", "PROFILE_PICTURE_URI", "USERNAME") FROM stdin;
\.


--
-- Data for Name: AO_563AEE_MEDIA_LINK_ENTITY; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public."AO_563AEE_MEDIA_LINK_ENTITY" ("DURATION", "HEIGHT", "ID", "URL", "WIDTH") FROM stdin;
\.


--
-- Data for Name: AO_563AEE_OBJECT_ENTITY; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public."AO_563AEE_OBJECT_ENTITY" ("CONTENT", "DISPLAY_NAME", "ID", "IMAGE_ID", "OBJECT_ID", "OBJECT_TYPE", "SUMMARY", "URL") FROM stdin;
\.


--
-- Data for Name: AO_563AEE_TARGET_ENTITY; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public."AO_563AEE_TARGET_ENTITY" ("CONTENT", "DISPLAY_NAME", "ID", "IMAGE_ID", "OBJECT_ID", "OBJECT_TYPE", "SUMMARY", "URL") FROM stdin;
\.


--
-- Data for Name: AO_5F3884_FEATURE_DISCOVERY; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public."AO_5F3884_FEATURE_DISCOVERY" ("DISCOVERED", "ID", "USER_KEY") FROM stdin;
\.


--
-- Data for Name: AO_5FB9D7_AOHIP_CHAT_LINK; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public."AO_5FB9D7_AOHIP_CHAT_LINK" ("ADDON_TOKEN_EXPIRY", "API_URL", "CONNECT_DESCRIPTOR", "GROUP_ID", "GROUP_NAME", "ID", "OAUTH_ID", "SECRET_KEY", "SYSTEM_PASSWORD", "SYSTEM_TOKEN_EXPIRY", "SYSTEM_USER", "SYSTEM_USER_TOKEN", "TOKEN") FROM stdin;
\.


--
-- Data for Name: AO_5FB9D7_AOHIP_CHAT_USER; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public."AO_5FB9D7_AOHIP_CHAT_USER" ("HIP_CHAT_LINK_ID", "HIP_CHAT_USER_ID", "HIP_CHAT_USER_NAME", "ID", "REFRESH_CODE", "USER_KEY", "USER_SCOPES", "USER_TOKEN", "USER_TOKEN_EXPIRY") FROM stdin;
\.


--
-- Data for Name: AO_6384AB_DISCOVERED; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public."AO_6384AB_DISCOVERED" ("DATE", "ID", "KEY", "PLUGIN_KEY", "USER_KEY") FROM stdin;
2021-03-10 07:06:02.911	1	transition-saved-for-later	com.atlassian.confluence.plugins.confluence-dashboard	2c948084781aef2b01781af03f920000
\.


--
-- Data for Name: AO_6384AB_FEATURE_METADATA_AO; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public."AO_6384AB_FEATURE_METADATA_AO" ("CONTEXT", "ID", "INSTALLATION_DATE", "KEY") FROM stdin;
confluence.extra.userlister	1	2021-03-10 06:59:58.026	userlister
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	2	2021-03-10 06:59:58.026	luceneSupportHealthCheck
com.atlassian.confluence.plugins.confluence-paste	3	2021-03-10 06:59:58.026	autoconvert-widget-connector
confluence.listeners.core	4	2021-03-10 06:59:58.026	relatedContentRefactoringListener
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5	2021-03-10 06:59:58.026	instanceTopologyReportUpgradeTask
com.atlassian.support.healthcheck.support-healthcheck-plugin	6	2021-03-10 06:59:58.026	shc-common-modules
com.atlassian.confluence.plugins.confluence-content-property-storage	7	2021-03-10 06:59:58.026	contentPropertyFinderFactory
com.atlassian.confluence.plugins.confluence-like	8	2021-03-10 06:59:58.026	like-icon-resources
com.atlassian.confluence.editor	9	2021-03-10 06:59:58.026	xmlEventReaderFactory
confluence.sections.admin	10	2021-03-10 06:59:58.026	attachmentstoragesetup
com.atlassian.confluence.plugins.recently-viewed-plugin	11	2021-03-10 06:59:58.026	recentlyViewedManager
com.atlassian.confluence.plugins.confluence-create-content-plugin	12	2021-03-10 06:59:58.026	create-blank-page
com.atlassian.confluence.plugins.confluence-inline-comments	13	2021-03-10 06:59:58.026	new-mail-notification-transformer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	14	2021-03-10 06:59:58.026	upm-js-libraries
com.atlassian.confluence.plugins.confluence-email-resources	15	2021-03-10 06:59:58.026	content-templates-content-created-pattern-2.0.0
confluence.sections.admin	16	2021-03-10 06:59:58.026	mailservers
com.atlassian.confluence.plugins.confluence-mobile	17	2021-03-10 06:59:58.026	view-comments-resource
com.atlassian.applinks.applinks-trustedapps-plugin	18	2021-03-10 06:59:58.026	userManager
com.atlassian.streams.confluence	19	2021-03-10 06:59:58.026	date-sma-SE
com.atlassian.applinks.applinks-plugin	20	2021-03-10 06:59:58.026	applinksRest
com.atlassian.confluence.plugins.gadgets	21	2021-03-10 06:59:58.026	permissionManager
confluence.extra.layout	22	2021-03-10 06:59:58.026	xhtml-section
com.atlassian.support.stp	23	2021-03-10 06:59:58.026	servletContextProvider
com.atlassian.oauth.serviceprovider	24	2021-03-10 06:59:58.026	tokenFactory
com.atlassian.confluence.plugins.confluence-nav-links	25	2021-03-10 06:59:58.026	i18nResolver
com.atlassian.applinks.applinks-plugin	26	2021-03-10 06:59:58.026	applinks-whoami
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	27	2021-03-10 06:59:58.026	notificationQueueAdminLink
com.atlassian.support.stp	28	2021-03-10 06:59:58.026	stp-view
com.atlassian.plugins.base-hipchat-integration-plugin	29	2021-03-10 06:59:58.026	apiMessagePanel
confluence.macros.multimedia	30	2021-03-10 06:59:58.026	flash-autosize
com.atlassian.confluence.plugins.confluence-file-notifications	31	2021-03-10 06:59:58.026	datasourceFactory
com.atlassian.confluence.plugins.confluence-templates	32	2021-03-10 06:59:58.026	template-management-resources
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	33	2021-03-10 06:59:58.026	salPluginScheduler
com.atlassian.plugins.atlassian-nav-links-plugin	34	2021-03-10 06:59:58.026	custom-apps-admin-page-template
com.atlassian.applinks.applinks-plugin	35	2021-03-10 06:59:58.026	jira
confluence.sections.space.tools	36	2021-03-10 06:59:58.026	reorder
com.atlassian.confluence.plugins.confluence-create-content-plugin	37	2021-03-10 06:59:58.026	main
com.atlassian.confluence.plugins.confluence-rest-resources	38	2021-03-10 06:59:58.026	content-search-api
com.atlassian.auiplugin	39	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-params
confluence.extra.impresence2	40	2021-03-10 06:59:58.026	aim-xhtml
confluence.web.resources	41	2021-03-10 06:59:58.026	draft-changes-js
com.atlassian.confluence.plugins.dialog-wizard	42	2021-03-10 06:59:58.026	applicationProperties
com.atlassian.confluence.plugins.view-source	43	2021-03-10 06:59:58.026	view-source-menu-resources
confluence.web.resources	44	2021-03-10 06:59:58.026	page-editor
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	45	2021-03-10 06:59:58.026	settingsManager
com.atlassian.oauth.serviceprovider	46	2021-03-10 06:59:58.026	helpLinkResolverContextItem
com.atlassian.confluence.ext.newcode-macro-plugin	47	2021-03-10 06:59:58.026	syntaxhighlighter-brushes
confluence.search.mappers.lucene	48	2021-03-10 06:59:58.026	searchResultTypeSearchFilter
com.atlassian.confluence.keyboardshortcuts	49	2021-03-10 06:59:58.026	tinymce.table.copy.row
com.atlassian.auiplugin	50	2021-03-10 06:59:58.026	aui-experimental-reset
com.atlassian.streams.confluence	51	2021-03-10 06:59:58.026	userAccessor
com.atlassian.crowd.embedded.admin	52	2021-03-10 06:59:58.026	web-resources
com.atlassian.confluence.plugins.confluence-inline-comments	53	2021-03-10 06:59:58.026	inlineCommentsAnalyticsWhitelist
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	54	2021-03-10 06:59:58.026	follower-added-recipients-provider
confluence.extra.impresence2	55	2021-03-10 06:59:58.026	reporter-wildfire
com.atlassian.confluence.restplugin	56	2021-03-10 06:59:58.026	userManager
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	57	2021-03-10 06:59:58.026	service
com.atlassian.confluence.plugins.confluence-email-resources	58	2021-03-10 06:59:58.026	get-attachment-icon-function
com.atlassian.confluence.plugins.gadgets	59	2021-03-10 06:59:58.026	settingsManager
com.atlassian.streams.confluence	60	2021-03-10 06:59:58.026	date-bs-Latn-BA
confluence.listeners.core	61	2021-03-10 06:59:58.026	pageNotificationsListener
com.atlassian.confluence.plugins.confluence-create-content-plugin	62	2021-03-10 06:59:58.026	header-create-quick
com.atlassian.plugins.editor	63	2021-03-10 06:59:58.026	components
com.atlassian.plugin.jslibs	64	2021-03-10 06:59:58.026	backbone.paginator-2.0.2-factory
com.atlassian.confluence.plugins.confluence-space-ia	65	2021-03-10 06:59:58.026	server-soy-resources
com.atlassian.confluence.plugins.confluence-templates	66	2021-03-10 06:59:58.026	variable-editor-content-styles
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	67	2021-03-10 06:59:58.026	upm-purchased-addons-resources
com.atlassian.streams	68	2021-03-10 06:59:58.026	date-nl-NL
com.atlassian.mywork.mywork-common-plugin	69	2021-03-10 06:59:58.026	actionServiceSelector
com.atlassian.applinks.applinks-plugin	70	2021-03-10 06:59:58.026	fisheyeCrucible
com.atlassian.support.stp	71	2021-03-10 06:59:58.026	isDisplayableAppCondition
com.atlassian.streams	72	2021-03-10 06:59:58.026	date-bg-BG
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	73	2021-03-10 06:59:58.026	darkFeatureManager
com.atlassian.confluence.plugins.confluence-daily-summary-email	74	2021-03-10 06:59:58.026	admin-resources
com.atlassian.querylang.confluence-cql-plugin	75	2021-03-10 06:59:58.026	content-id-sort-mapper
com.atlassian.confluence.contributors	76	2021-03-10 06:59:58.026	labelContributionExtractor
com.atlassian.querylang.confluence-cql-plugin	77	2021-03-10 06:59:58.026	start-of-year-zero-arg-function
confluence.macros.profile	78	2021-03-10 06:59:58.026	network-resources-css
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	79	2021-03-10 06:59:58.026	pluginAccessor
com.atlassian.streams.confluence	80	2021-03-10 06:59:58.026	pageWatchActionHandler
confluence.content.action.menu	81	2021-03-10 06:59:58.026	link-to-page
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	82	2021-03-10 06:59:58.026	localeResolver
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	83	2021-03-10 06:59:58.026	jwtTokenGenerator
com.atlassian.plugins.rest.atlassian-rest-module	84	2021-03-10 06:59:58.026	rest-container-servlet-filter-FORWARD
com.atlassian.confluence.plugins.share-page	85	2021-03-10 06:59:58.026	share-address-recipients-provider
com.atlassian.confluence.plugins.confluence-edge-index	86	2021-03-10 06:59:58.026	popularContentQueries
com.atlassian.confluence.plugins.confluence-monitoring-console	87	2021-03-10 06:59:58.026	monitoring-console-resources
com.atlassian.applinks.applinks-plugin	88	2021-03-10 06:59:58.026	servlet-edit-application-link
com.atlassian.applinks.applinks-plugin	89	2021-03-10 06:59:58.026	entityLinkBuilderFactory
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	90	2021-03-10 06:59:58.026	page-edited-notification-template
com.atlassian.confluence.plugins.confluence-page-banner	91	2021-03-10 06:59:58.026	content-metadata-page-restrictions-edit
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	92	2021-03-10 06:59:58.026	rest-filter
com.atlassian.plugins.tinymce	93	2021-03-10 06:59:58.026	popup-resources
com.atlassian.mywork.mywork-confluence-provider-plugin	94	2021-03-10 06:59:58.026	notificationManager
confluence.search.mappers.lucene	95	2021-03-10 06:59:58.026	externallyDeletedUserSearchFilter
com.atlassian.confluence.plugins.confluence-create-content-plugin	96	2021-03-10 06:59:58.026	pluginEnabledListener
confluence.filters.core	97	2021-03-10 06:59:58.026	confluenceTimingFilter
com.atlassian.confluence.plugins.confluence-daily-summary-email	98	2021-03-10 06:59:58.026	secureTokenGenerator
confluence.renderer.components	99	2021-03-10 06:59:58.026	token
confluence.macros.advanced	100	2021-03-10 06:59:58.026	junit-report-resources
com.atlassian.plugins.atlassian-whitelist-core-plugin	101	2021-03-10 06:59:58.026	selfUrlMatcher
com.atlassian.confluence.plugins.gadgets	102	2021-03-10 06:59:58.026	gadgetWhiteListManager
com.atlassian.confluence.plugins.confluence-dashboard	103	2021-03-10 06:59:58.026	welcomeMessageService
com.atlassian.templaterenderer.atlassian-template-renderer-velocity1.6-plugin	104	2021-03-10 06:59:58.026	pluginEventManager
com.atlassian.confluence.plugins.confluence-dashboard	105	2021-03-10 06:59:58.026	dashboard-rest-filter
com.atlassian.confluence.plugins.confluence-easyuser-admin	106	2021-03-10 06:59:58.026	easyuser-rest
com.atlassian.plugins.editor	107	2021-03-10 06:59:58.026	editoractions
com.atlassian.confluence.plugins.confluence-lookandfeel	108	2021-03-10 06:59:58.026	logoInterceptor
tac.confluence.languages.es_ES	109	2021-03-10 06:59:58.026	es_ES
confluence.listeners.core	110	2021-03-10 06:59:58.026	pluginEventLogger
com.atlassian.auiplugin	111	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-unbind-text-resize
com.atlassian.confluence.ext.newcode-macro-plugin	112	2021-03-10 06:59:58.026	code-macro-editor
com.atlassian.confluence.plugins.confluence-paste	113	2021-03-10 06:59:58.026	restEndPoint-filter
com.atlassian.plugins.atlassian-nps-plugin	114	2021-03-10 06:59:58.026	licenseHandler
com.atlassian.confluence.plugins.confluence-document-conversion-library	115	2021-03-10 06:59:58.026	conversionCacheListener
com.atlassian.applinks.applinks-plugin	116	2021-03-10 06:59:58.026	applinksRest-filter
com.atlassian.confluence.plugins.confluence-knowledge-base	117	2021-03-10 06:59:58.026	knowledge-base-search
com.atlassian.auiplugin	118	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-internal-i18n-aui
com.atlassian.applinks.applinks-basicauth-plugin	119	2021-03-10 06:59:58.026	localeResolver
com.atlassian.support.stp	120	2021-03-10 06:59:58.026	licenseHandler
com.atlassian.analytics.analytics-whitelist	121	2021-03-10 06:59:58.026	globalConfluenceAnalyticsWhitelist
com.atlassian.mywork.mywork-confluence-host-plugin	122	2021-03-10 06:59:58.026	mw-mobile
com.atlassian.confluence.plugins.confluence-onboarding	123	2021-03-10 06:59:58.026	pluginSettingsFactory
com.atlassian.confluence.plugins.confluence-edge-index	124	2021-03-10 06:59:58.026	likeCountQuery
com.atlassian.streams.streams-thirdparty-plugin	125	2021-03-10 06:59:58.026	rest-filter
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	126	2021-03-10 06:59:58.026	forgot-password-notification
com.atlassian.confluence.plugins.confluence-email-resources	127	2021-03-10 06:59:58.026	content-templates-move-page-pattern-1.0.0
com.atlassian.confluence.plugins.confluence-create-content-plugin	128	2021-03-10 06:59:58.026	space-creation-step
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	129	2021-03-10 06:59:58.026	pluginUpdateRequestStore
com.atlassian.auiplugin	130	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-vendor-jquery-jquery-tablesorter
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	131	2021-03-10 06:59:58.026	blogpost-edited-notification
com.atlassian.applinks.applinks-basicauth-plugin	132	2021-03-10 06:59:58.026	i18nResolver
confluence.macros.multimedia	133	2021-03-10 06:59:58.026	windows-media
com.atlassian.auiplugin	134	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-alphanum
com.atlassian.confluence.plugins.confluence-sal-plugin	135	2021-03-10 06:59:58.026	threadLocalDelegateExecutorFactory
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	136	2021-03-10 06:59:58.026	notification-template
com.atlassian.plugin.notifications.notifications-module	137	2021-03-10 06:59:58.026	notificationQueueAdminServlet
com.atlassian.confluence.plugins.confluence-darkfeatures-rest	138	2021-03-10 06:59:58.026	dark-feature-rest
com.atlassian.confluence.plugins.recently-viewed-plugin	139	2021-03-10 06:59:58.026	recently-viewed-spaces-function
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	140	2021-03-10 06:59:58.026	lifecycleManager
confluence.web.resources	141	2021-03-10 06:59:58.026	help-content-resources
com.atlassian.confluence.plugins.soy	142	2021-03-10 06:59:58.026	soy-content-type-i18n-key-function
confluence.search.mappers.lucene	143	2021-03-10 06:59:58.026	inheritedLabel
com.atlassian.confluence.plugins.confluence-daily-summary-email	144	2021-03-10 06:59:58.026	rest
confluence.sections.space.tools	145	2021-03-10 06:59:58.026	stop-watching-blog
com.atlassian.mywork.mywork-confluence-host-plugin	146	2021-03-10 06:59:58.026	mwfullview
com.atlassian.confluence.plugins.quickedit	147	2021-03-10 06:59:58.026	quick-comment-hide-traditional
com.atlassian.analytics.analytics-client	148	2021-03-10 06:59:58.026	event-report
com.atlassian.auiplugin	149	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-sidebar
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	150	2021-03-10 06:59:58.026	defaultRoutesProvider
com.atlassian.confluence.editor	151	2021-03-10 06:59:58.026	rest-filter
com.atlassian.confluence.plugins.confluence-file-notifications	152	2021-03-10 06:59:58.026	file-content-email-css
com.atlassian.auiplugin	153	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-internal-select-template
com.atlassian.confluence.plugins.quickreload	154	2021-03-10 06:59:58.026	commentRenderService
confluence.sections.space.tools	155	2021-03-10 06:59:58.026	colorscheme
com.atlassian.confluence.plugins.confluence-user-profile	156	2021-03-10 06:59:58.026	confluence-user-profile-resources
com.atlassian.plugins.base-hipchat-integration-plugin	157	2021-03-10 06:59:58.026	integration-steps-resources
confluence.admin.user	158	2021-03-10 06:59:58.026	browsegroupmembers
confluence.macros.advanced	159	2021-03-10 06:59:58.026	children-resource
com.atlassian.oauth.serviceprovider	160	2021-03-10 06:59:58.026	oauthFilter
com.atlassian.streams.core	161	2021-03-10 06:59:58.026	moduleFactory
com.atlassian.applinks.applinks-trustedapps-plugin	162	2021-03-10 06:59:58.026	applinkPluginUtil
com.atlassian.applinks.applinks-oauth-plugin	163	2021-03-10 06:59:58.026	oauth
com.atlassian.confluence.plugins.soy	164	2021-03-10 06:59:58.026	soy-sections-for-location-soy-function
com.atlassian.confluence.ext.newcode-macro-plugin	165	2021-03-10 06:59:58.026	sh-theme-eclipse
com.atlassian.confluence.plugins.confluence-create-content-plugin	166	2021-03-10 06:59:58.026	create-content-keyboard-shortcut
com.atlassian.confluence.plugins.confluence-sal-plugin	167	2021-03-10 06:59:58.026	i18nResolver
com.atlassian.confluence.extra.widgetconnector	168	2021-03-10 06:59:58.026	velocityRenderService
com.atlassian.streams.confluence	169	2021-03-10 06:59:58.026	date-hr-HR
com.atlassian.plugins.atlassian-plugins-webresource-plugin	170	2021-03-10 06:59:58.026	loaders
confluence.renderer.components	171	2021-03-10 06:59:58.026	deleted
com.atlassian.confluence.plugins.soy	172	2021-03-10 06:59:58.026	soy-get-user-by-name-function
com.atlassian.confluence.plugins.confluence-content-property-storage	173	2021-03-10 06:59:58.026	text-field-type-query-mapper
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	174	2021-03-10 06:59:58.026	i18nResolver
com.atlassian.confluence.plugins.gadgets	175	2021-03-10 06:59:58.026	gadget-directory-resources
confluence.search.mappers.lucene	176	2021-03-10 06:59:58.026	spanNear
com.atlassian.streams	177	2021-03-10 06:59:58.026	oauthCompletionServlet
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	178	2021-03-10 06:59:58.026	formatSettingsManager
com.atlassian.confluence.plugins.confluence-lookandfeel	179	2021-03-10 06:59:58.026	sitelogoaction
com.atlassian.plugins.atlassian-nav-links-plugin	180	2021-03-10 06:59:58.026	administration-shortcuts-resources
confluence.sections.create	181	2021-03-10 06:59:58.026	add-page-with-parent-template
com.atlassian.plugins.atlassian-nav-links-plugin	182	2021-03-10 06:59:58.026	capabilities-resource
com.atlassian.confluence.plugins.confluence-sal-plugin	183	2021-03-10 06:59:58.026	licenseHandler
confluence.search.mappers.lucene	184	2021-03-10 06:59:58.026	textSearchFilter
confluence.extra.webdav	185	2021-03-10 06:59:58.026	webdavSettingsManager
com.atlassian.confluence.plugins.confluence-highlight-actions	186	2021-03-10 06:59:58.026	appendToSelectionModifier
com.atlassian.auiplugin	187	2021-03-10 06:59:58.026	jquery-autocomplete-deprecated
com.atlassian.confluence.plugins.confluence-like	188	2021-03-10 06:59:58.026	like-recipients-provider
com.atlassian.confluence.plugins.confluence-email-resources	189	2021-03-10 06:59:58.026	view-comment-email-call-to-action
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	190	2021-03-10 06:59:58.026	pluginFactory
com.atlassian.integration.jira.jira-integration-plugin	191	2021-03-10 06:59:58.026	soyTemplateRenderer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	192	2021-03-10 06:59:58.026	marketplace_confluence
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	193	2021-03-10 06:59:58.026	webResourceManager
com.atlassian.confluence.plugins.confluence-quicknav	194	2021-03-10 06:59:58.026	quicksearch
com.atlassian.auiplugin	195	2021-03-10 06:59:58.026	internal-tether-0.6.5-tether
com.atlassian.oauth.serviceprovider	196	2021-03-10 06:59:58.026	authenticationController
com.atlassian.confluence.ext.newcode-macro-plugin	197	2021-03-10 06:59:58.026	syntaxhighlighter
com.atlassian.confluence.plugins.confluence-cache-management-plugin	198	2021-03-10 06:59:58.026	cacheAdmin
com.atlassian.confluence.plugins.confluence-mobile	199	2021-03-10 06:59:58.026	viewMacroMarshallerFactory
com.atlassian.plugins.atlassian-nav-links-plugin	200	2021-03-10 06:59:58.026	application-type-service
com.atlassian.auiplugin	201	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-drop-down
com.atlassian.activeobjects.activeobjects-plugin	202	2021-03-10 06:59:58.026	dispatcher-servlet
com.atlassian.confluence.plugins.confluence-avatar-plugin	203	2021-03-10 06:59:58.026	confluenceAvatarProvider
com.atlassian.streams.confluence	204	2021-03-10 06:59:58.026	date-it-IT
confluence.web.resources	205	2021-03-10 06:59:58.026	keygen
com.atlassian.mywork.mywork-confluence-host-plugin	206	2021-03-10 06:59:58.026	servlet-renderer
com.atlassian.streams.confluence	207	2021-03-10 06:59:58.026	date-pl-PL
com.atlassian.plugins.atlassian-help-tips	208	2021-03-10 06:59:58.026	compatibilityUserManager
com.atlassian.confluence.contributors	209	2021-03-10 06:59:58.026	noResult
com.atlassian.confluence.rpc.confluence-axis-soap-plugin	210	2021-03-10 06:59:58.026	legacy-axis-endpoint
com.atlassian.auiplugin	211	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-date-picker
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	212	2021-03-10 06:59:58.026	follower-network-notification-recipients-provider
confluence.web.components	213	2021-03-10 06:59:58.026	editor-notifications
com.atlassian.confluence.plugins.confluence-daily-summary-email	214	2021-03-10 06:59:58.026	populartodayaction
com.atlassian.support.stp	215	2021-03-10 06:59:58.026	stp-rest
com.atlassian.plugins.browser.metrics.browser-metrics-plugin	216	2021-03-10 06:59:58.026	api
com.atlassian.streams	217	2021-03-10 06:59:58.026	pluginScheduler
confluence.search.mappers.lucene	218	2021-03-10 06:59:58.026	shadowedUserSearchFilter
com.atlassian.support.stp	219	2021-03-10 06:59:58.026	logScanService
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	220	2021-03-10 06:59:58.026	comment-created-notification
confluence.web.resources	221	2021-03-10 06:59:58.026	panel-styles
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	222	2021-03-10 06:59:58.026	templateRenderer
com.atlassian.confluence.plugins.confluence-email-resources	223	2021-03-10 06:59:58.026	content-templates-page-title-pattern-2.0.0
com.atlassian.confluence.plugins.confluence-inline-comments	224	2021-03-10 06:59:58.026	reply-inline-comment-batch-email-action
confluence.sections.space.tools	225	2021-03-10 06:59:58.026	export
com.atlassian.support.stp	226	2021-03-10 06:59:58.026	os-support-info
com.atlassian.prettyurls.atlassian-pretty-urls-plugin	227	2021-03-10 06:59:58.026	prettyurls-combined-filter-after-encoding
com.atlassian.confluence.plugins.confluence-email-resources	228	2021-03-10 06:59:58.026	debug-email-border-function
com.atlassian.confluence.plugins.confluence-remote-page-view-plugin	229	2021-03-10 06:59:58.026	remote-view-page-web-resource
com.atlassian.plugin.notifications.notifications-module	230	2021-03-10 06:59:58.026	userEmail
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	231	2021-03-10 06:59:58.026	comment-edited-notification-template-body
com.atlassian.confluence.plugins.confluence-inline-comments	232	2021-03-10 06:59:58.026	notification-template-resolve
com.atlassian.plugins.tinymce	233	2021-03-10 06:59:58.026	utils-resources
com.atlassian.support.stp	234	2021-03-10 06:59:58.026	i18nResolver
com.atlassian.applinks.applinks-plugin	235	2021-03-10 06:59:58.026	applinks-configure-application-links
com.atlassian.confluence.plugins.gadgets	236	2021-03-10 06:59:58.026	gadgetSpecFactory
com.atlassian.confluence.plugins.confluence-email-resources	237	2021-03-10 06:59:58.026	notification-templates-forgot-password-2.0.0
com.atlassian.plugins.rest.atlassian-rest-module	238	2021-03-10 06:59:58.026	moduleFactory
confluence.macros.advanced	239	2021-03-10 06:59:58.026	recently-updated-concise-resources
com.atlassian.confluence.plugins.confluence-email-resources	240	2021-03-10 06:59:58.026	view-changes-email-footer-item
com.atlassian.applinks.applinks-basicauth-plugin	241	2021-03-10 06:59:58.026	basic-auth-configuration
com.atlassian.plugins.atlassian-nav-links-plugin	242	2021-03-10 06:59:58.026	navigation-capability-resource
confluence.web.resources	243	2021-03-10 06:59:58.026	page-analytics
com.atlassian.streams.confluence	244	2021-03-10 06:59:58.026	date-it-CH
com.atlassian.confluence.extra.officeconnector	245	2021-03-10 06:59:58.026	wordactions
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	246	2021-03-10 06:59:58.026	confluenceLicenseDateFormatter
com.atlassian.confluence.plugins.confluence-business-blueprints	247	2021-03-10 06:59:58.026	contextProviderHelper
com.atlassian.confluence.plugins.confluence-space-blueprints	248	2021-03-10 06:59:58.026	view-space-email-item
confluence.web.resources	249	2021-03-10 06:59:58.026	url
com.atlassian.confluence.plugins.dialog-wizard	250	2021-03-10 06:59:58.026	dialog
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	251	2021-03-10 06:59:58.026	templateManager
com.atlassian.mywork.mywork-confluence-provider-plugin	252	2021-03-10 06:59:58.026	i18NBeanFactory
com.atlassian.confluence.plugins.confluence-space-blueprints	253	2021-03-10 06:59:58.026	team-space-homepage-template
com.atlassian.confluence.plugins.confluence-email-resources	254	2021-03-10 06:59:58.026	add-comment-to-content-email-footer-item
confluence.converters.core	255	2021-03-10 06:59:58.026	space-converter
com.atlassian.plugin.notifications.notifications-module	256	2021-03-10 06:59:58.026	notificationQueueManager
confluence.extra.jira	257	2021-03-10 06:59:58.026	countImagegenerator
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	258	2021-03-10 06:59:58.026	hipChatAnalyticsWhitelist
com.atlassian.confluence.keyboardshortcuts	259	2021-03-10 06:59:58.026	tinymce.link
confluence.extra.confluencerpc	260	2021-03-10 06:59:58.026	confluence-soap
confluence.user.hover.menu	261	2021-03-10 06:59:58.026	user-blog
com.atlassian.confluence.plugins.confluence-file-notifications	262	2021-03-10 06:59:58.026	mimeBodyPartRecorder
com.atlassian.oauth.serviceprovider	263	2021-03-10 06:59:58.026	compatibilityPluginScheduler
com.atlassian.confluence.plugins.confluence-email-resources	264	2021-03-10 06:59:58.026	stop-watching-page-email-footer-item
confluence.extra.attachments	265	2021-03-10 06:59:58.026	attachments.actions
com.atlassian.confluence.extra.officeconnector	266	2021-03-10 06:59:58.026	wordXMLContentExtractor
confluence.user.menu	267	2021-03-10 06:59:58.026	user-favourites
confluence.web.resources	268	2021-03-10 06:59:58.026	bigpipe-settings
confluence.aui.staging	269	2021-03-10 06:59:58.026	confluence-flags
com.atlassian.confluence.plugins.confluence-email-resources	270	2021-03-10 06:59:58.026	template-utils-source-link-1.0.0
com.atlassian.streams.confluence	271	2021-03-10 06:59:58.026	activityItemFactory
com.atlassian.applinks.applinks-basicauth-plugin	272	2021-03-10 06:59:58.026	basic-auth
com.atlassian.confluence.plugins.confluence-create-content-plugin	273	2021-03-10 06:59:58.026	pageTemplateWebItemService
com.atlassian.mywork.mywork-common-plugin	274	2021-03-10 06:59:58.026	plugin-settings-factory
com.atlassian.confluence.plugins.confluence-spaces	275	2021-03-10 06:59:58.026	perms
com.atlassian.support.stp	276	2021-03-10 06:59:58.026	stp-license-banner-data-fecru
com.atlassian.auiplugin	277	2021-03-10 06:59:58.026	dialog
com.atlassian.mywork.mywork-confluence-provider-plugin	278	2021-03-10 06:59:58.026	contentEntityManager
com.atlassian.confluence.plugins.gadgets	279	2021-03-10 06:59:58.026	gadget-search
confluence.sections.space.advanced	280	2021-03-10 06:59:58.026	startwatchingblogsonly
com.atlassian.confluence.plugins.confluence-create-content-plugin	281	2021-03-10 06:59:58.026	create-blank-space-item
com.atlassian.auiplugin	282	2021-03-10 06:59:58.026	aui-navigation
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	283	2021-03-10 06:59:58.026	blogpost-edited-notification-transformer
com.atlassian.confluence.editor	284	2021-03-10 06:59:58.026	file-types-utils-resources
com.atlassian.confluence.extra.widgetconnector	285	2021-03-10 06:59:58.026	dabbledb
com.atlassian.confluence.plugins.confluence-onboarding	286	2021-03-10 06:59:58.026	onboarding-recipients-provider
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	287	2021-03-10 06:59:58.026	hipchat-presence-resources
com.atlassian.confluence.plugins.confluence-create-content-plugin	288	2021-03-10 06:59:58.026	firstBlueprintCreationListener
com.atlassian.healthcheck.atlassian-healthcheck	289	2021-03-10 06:59:58.026	healthCheckManager
confluence.extra.impresence2	290	2021-03-10 06:59:58.026	im
confluence.web.resources	291	2021-03-10 06:59:58.026	raphael
com.atlassian.plugin.notifications.notifications-module	292	2021-03-10 06:59:58.026	configManager
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	293	2021-03-10 06:59:58.026	discovery-javascript-data
tac.confluence.languages.ko_KR	294	2021-03-10 06:59:58.026	ko_KR
com.atlassian.streams.confluence	295	2021-03-10 06:59:58.026	predefinedSearchBuilder
com.atlassian.confluence.contributors	296	2021-03-10 06:59:58.026	contributors
com.atlassian.confluence.plugins.confluence-email-resources	297	2021-03-10 06:59:58.026	view-attachments-email-footer-item
com.atlassian.confluence.plugins.confluence-email-resources	298	2021-03-10 06:59:58.026	notification-templates-invite-user-1.0.0
com.atlassian.mywork.mywork-confluence-provider-plugin	299	2021-03-10 06:59:58.026	i18nResolver
com.atlassian.confluence.ext.newcode-macro-plugin	300	2021-03-10 06:59:58.026	code-syntax
confluence.search.mappers.lucene	301	2021-03-10 06:59:58.026	term
com.atlassian.analytics.analytics-client	302	2021-03-10 06:59:58.026	eventReportPermissionManager
com.atlassian.confluence.editor	303	2021-03-10 06:59:58.026	editor-content-styles
com.atlassian.auiplugin	304	2021-03-10 06:59:58.026	jquery
com.atlassian.crowd.embedded.admin	305	2021-03-10 06:59:58.026	supportInformationService
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	306	2021-03-10 06:59:58.026	userAccessor
com.atlassian.confluence.plugins.expand-macro	307	2021-03-10 06:59:58.026	expand-migration
com.atlassian.confluence.plugins.confluence-create-content-plugin	308	2021-03-10 06:59:58.026	rest-experimental-filter
com.atlassian.plugins.editor	309	2021-03-10 06:59:58.026	atlassian-rte-resources
com.atlassian.confluence.plugins.share-page	310	2021-03-10 06:59:58.026	share-page-email-notification-template
com.atlassian.confluence.plugins.confluence-document-conversion-library	311	2021-03-10 06:59:58.026	file-conversions
confluence.sections.space.tools	312	2021-03-10 06:59:58.026	permissionedpages
com.atlassian.confluence.plugins.status-macro	313	2021-03-10 06:59:58.026	view_content_status
com.atlassian.streams	314	2021-03-10 06:59:58.026	date-nl-BE
com.atlassian.confluence.plugins.confluence-document-conversion-library	315	2021-03-10 06:59:58.026	cloudAttachmentListener
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	316	2021-03-10 06:59:58.026	upm-marketplace
com.atlassian.confluence.plugins.confluence-inline-comments	317	2021-03-10 06:59:58.026	inlinecomment.sidebar.navigate.next
com.atlassian.applinks.applinks-trustedapps-plugin	318	2021-03-10 06:59:58.026	confluence-inbound-trusted
confluence.sections.space.tools	319	2021-03-10 06:59:58.026	undefined
com.atlassian.streams	320	2021-03-10 06:59:58.026	datepicker
com.atlassian.confluence.plugins.gadgets	321	2021-03-10 06:59:58.026	static-resources
confluence.web.resources	322	2021-03-10 06:59:58.026	signup
com.atlassian.confluence.plugins.confluence-sal-plugin	323	2021-03-10 06:59:58.026	salWebSudoManager
com.atlassian.auiplugin	324	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-tabs
com.atlassian.confluence.plugins.soy	325	2021-03-10 06:59:58.026	soy-dark-feature-function
confluence.macros.multimedia	326	2021-03-10 06:59:58.026	mimeTypeTranslator
com.atlassian.auiplugin	327	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-create-element
com.atlassian.plugin.notifications.notifications-module	328	2021-03-10 06:59:58.026	threadLocalDelegateExecutorFactory
com.atlassian.querylang.confluence-cql-plugin	329	2021-03-10 06:59:58.026	favorite-field
com.atlassian.confluence.plugins.confluence-inline-comments	330	2021-03-10 06:59:58.026	library
com.atlassian.confluence.plugins.confluence-dashboard	331	2021-03-10 06:59:58.026	confluence-dashboard-web-panel
confluence.search.mappers.lucene	332	2021-03-10 06:59:58.026	macroUsage
com.atlassian.auiplugin	333	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-internal-add-id
com.atlassian.confluence.plugins.confluence-like	334	2021-03-10 06:59:58.026	rest-caching-filter
com.atlassian.applinks.applinks-oauth-plugin	335	2021-03-10 06:59:58.026	configure-outgoing-2lo-reciprocal
com.atlassian.confluence.plugins.confluence-email-resources	336	2021-03-10 06:59:58.026	template-utils-1.0.0
com.atlassian.confluence.plugins.share-page	337	2021-03-10 06:59:58.026	share-page-hipchat-notification-template
com.atlassian.analytics.analytics-client	338	2021-03-10 06:59:58.026	policy-update
confluence.sections.profile	339	2021-03-10 06:59:58.026	drafts
confluence.web.resources	340	2021-03-10 06:59:58.026	setup-cluster
com.atlassian.confluence.plugins.confluence-onboarding	341	2021-03-10 06:59:58.026	contentGenerator
confluence.extra.webdav	342	2021-03-10 06:59:58.026	webdav-config-resources
com.atlassian.confluence.plugins.confluence-create-content-plugin	343	2021-03-10 06:59:58.026	userBlueprintConfigManager
com.atlassian.confluence.contributors	344	2021-03-10 06:59:58.026	rest-filter
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	345	2021-03-10 06:59:58.026	accessControlAllowOriginServletFilter
com.atlassian.confluence.extra.officeconnector	346	2021-03-10 06:59:58.026	cacheCleanupJobDetail
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	347	2021-03-10 06:59:58.026	pluginRetriever
com.atlassian.confluence.plugins.confluence-jira-content	348	2021-03-10 06:59:58.026	confluence-jira-content-loader
com.atlassian.confluence.plugins.confluence-email-resources	349	2021-03-10 06:59:58.026	notification-templates-blogpost-edited-2.0.0
com.atlassian.support.healthcheck.support-healthcheck-plugin	350	2021-03-10 06:59:58.026	healthCheckUserSettingsService
com.atlassian.streams	351	2021-03-10 06:59:58.026	date-ja-JP
com.atlassian.confluence.plugins.confluence-license-rest	352	2021-03-10 06:59:58.026	permissionManager
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	353	2021-03-10 06:59:58.026	styles
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	354	2021-03-10 06:59:58.026	hipchat2-space-configuration-2
com.atlassian.streams.core	355	2021-03-10 06:59:58.026	activity-streams-provider
com.atlassian.confluence.plugins.confluence-lookandfeel	356	2021-03-10 06:59:58.026	autoLookAndFeelManager
com.atlassian.confluence.contributors	357	2021-03-10 06:59:58.026	commentContributionExtractor
com.atlassian.confluence.plugins.confluence-inline-comments	358	2021-03-10 06:59:58.026	util-resource
com.atlassian.confluence.plugins.confluence-user-rest	359	2021-03-10 06:59:58.026	transactionTemplate
com.atlassian.auiplugin	360	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-jquery-jquery-moveto
com.atlassian.confluence.plugins.confluence-content-property-storage	361	2021-03-10 06:59:58.026	spaceService
com.atlassian.confluence.ext.newcode-macro-plugin	362	2021-03-10 06:59:58.026	moduleFactory
confluence.web.resources	363	2021-03-10 06:59:58.026	setup-select-bundle
com.atlassian.streams	364	2021-03-10 06:59:58.026	date-sk-SK
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	365	2021-03-10 06:59:58.026	comment-created-notification-template
com.atlassian.oauth.serviceprovider	366	2021-03-10 06:59:58.026	applicationProperties
com.atlassian.streams	367	2021-03-10 06:59:58.026	date-sv-SE
com.atlassian.streams.confluence	368	2021-03-10 06:59:58.026	date-hr-BA
confluence.extractors.core	369	2021-03-10 06:59:58.026	entityDateChangeExtractor
com.atlassian.confluence.plugins.confluence-knowledge-base	370	2021-03-10 06:59:58.026	templateRendererHelper
confluence.web.resources	371	2021-03-10 06:59:58.026	edit-user-group-resources
com.atlassian.confluence.plugins.confluence-labels	372	2021-03-10 06:59:58.026	view-labels-popular-system
com.atlassian.confluence.plugins.confluence-rest-resources	373	2021-03-10 06:59:58.026	rest-api-experimental
com.atlassian.confluence.plugins.confluence-edge-index	374	2021-03-10 06:59:58.026	transactionTemplate
com.atlassian.querylang.confluence-cql-plugin	375	2021-03-10 06:59:58.026	not-query-mapper
com.atlassian.confluence.plugins.confluence-mobile	376	2021-03-10 06:59:58.026	rest
com.atlassian.confluence.plugins.confluence-request-access-plugin	377	2021-03-10 06:59:58.026	i18nResolver
com.atlassian.applinks.applinks-cors-plugin	378	2021-03-10 06:59:58.026	corsService
com.atlassian.plugins.atlassian-nav-links-plugin	379	2021-03-10 06:59:58.026	weights
confluence.search.mappers.lucene	380	2021-03-10 06:59:58.026	modified
com.atlassian.confluence.plugins.templates-framework	381	2021-03-10 06:59:58.026	none
com.atlassian.auiplugin	382	2021-03-10 06:59:58.026	internal-message-css
com.atlassian.confluence.extra.flyingpdf	383	2021-03-10 06:59:58.026	pdfExportFontsDirectoryFontDao
com.atlassian.confluence.plugins.confluence-email-resources	384	2021-03-10 06:59:58.026	notification-templates-blogpost-trashed-2.0.0
com.atlassian.confluence.keyboardshortcuts	385	2021-03-10 06:59:58.026	confluence-keyboard-shortcuts-action
com.atlassian.confluence.plugins.confluence-monitoring-console	386	2021-03-10 06:59:58.026	stats-resource-filter
confluence.search.lucene.initialisation	387	2021-03-10 06:59:58.026	contentNameSearcherInitialisation
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	388	2021-03-10 06:59:58.026	notificationManager
com.atlassian.confluence.plugins.confluence-email-resources	389	2021-03-10 06:59:58.026	notification-templates-follower-added-2.0.0
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	390	2021-03-10 06:59:58.026	upmInformationContextItem
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	391	2021-03-10 06:59:58.026	btf-config-resources
com.atlassian.mywork.mywork-common-plugin	392	2021-03-10 06:59:58.026	webSudoManager
com.atlassian.confluence.rpc.confluence-json-rpc-plugin	393	2021-03-10 06:59:58.026	json-rpc-filter
confluence.macros.advanced	394	2021-03-10 06:59:58.026	pageProvider
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	395	2021-03-10 06:59:58.026	emoticonStorageMarshaller
confluence.extra.information	396	2021-03-10 06:59:58.026	xhtml-warning
com.atlassian.confluence.plugins.confluence-space-directory	397	2021-03-10 06:59:58.026	space-directory
com.atlassian.confluence.plugins.confluence-feature-discovery-plugin	398	2021-03-10 06:59:58.026	discoveredFeatureManager
com.atlassian.auiplugin	399	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-stop-event
confluence.sections.space.advanced	400	2021-03-10 06:59:58.026	favourite
com.atlassian.mywork.mywork-confluence-host-plugin	401	2021-03-10 06:59:58.026	myworkRegistrationProvider
com.atlassian.streams.confluence	402	2021-03-10 06:59:58.026	date-uz-Latn-UZ
com.atlassian.auiplugin	403	2021-03-10 06:59:58.026	keyboardshortcuts
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	404	2021-03-10 06:59:58.026	bundleAccessor
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	405	2021-03-10 06:59:58.026	ao
com.atlassian.mywork.mywork-confluence-host-plugin	406	2021-03-10 06:59:58.026	notification-service
com.atlassian.confluence.plugins.confluence-inline-comments	407	2021-03-10 06:59:58.026	inline-notification-reply
com.atlassian.confluence.plugins.confluence-email-resources	408	2021-03-10 06:59:58.026	stop-following-user-email-footer-item
com.atlassian.streams.confluence	409	2021-03-10 06:59:58.026	date-pt-BR
confluence.macros.advanced	410	2021-03-10 06:59:58.026	excerpt
com.atlassian.oauth.serviceprovider.sal	411	2021-03-10 06:59:58.026	applicationProperties
com.atlassian.confluence.editor	412	2021-03-10 06:59:58.026	panel-components
com.atlassian.gadgets.embedded	413	2021-03-10 06:59:58.026	gadget-core-resources
confluence.extra.attachments	414	2021-03-10 06:59:58.026	rest-filter
com.atlassian.streams.confluence	415	2021-03-10 06:59:58.026	date-mi-NZ
com.atlassian.streams.confluence	416	2021-03-10 06:59:58.026	date-tt-RU
com.atlassian.confluence.plugins.confluence-spaces	417	2021-03-10 06:59:58.026	spacesconfiguration
com.atlassian.streams	418	2021-03-10 06:59:58.026	date-ky-KG
com.atlassian.confluence.extra.flyingpdf	419	2021-03-10 06:59:58.026	pdfExportFileNameGenerator
com.atlassian.auiplugin	420	2021-03-10 06:59:58.026	aui-alignment
com.atlassian.confluence.extra.officeconnector	421	2021-03-10 06:59:58.026	editInWordResourceFactory
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	422	2021-03-10 06:59:58.026	pluginLicenseManager
com.atlassian.confluence.plugins.confluence-daily-summary-email	423	2021-03-10 06:59:58.026	excerpter
com.atlassian.mywork.mywork-confluence-host-plugin	424	2021-03-10 06:59:58.026	shared-data-lookup
com.atlassian.streams.confluence	425	2021-03-10 06:59:58.026	date-mt-MT
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	426	2021-03-10 06:59:58.026	confluence-webpanel-static-resources
com.atlassian.applinks.applinks-plugin	427	2021-03-10 06:59:58.026	applinks-common
com.atlassian.confluence.plugins.confluence-request-access-plugin	428	2021-03-10 06:59:58.026	confluence-request-access-plugin-resources
com.atlassian.auiplugin	429	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-escape-html
com.atlassian.confluence.plugins.confluence-view-file-macro	430	2021-03-10 06:59:58.026	editorFilePlaceholderGeneratorServlet
com.atlassian.gadgets.directory	431	2021-03-10 06:59:58.026	gadget-directory-admin-server-templates
com.atlassian.confluence.plugins.confluence-email-resources	432	2021-03-10 06:59:58.026	attach-inline-dialog-images
com.atlassian.plugins.atlassian-nav-links-plugin	433	2021-03-10 06:59:58.026	atlassian-ui-popup-display-controller
com.atlassian.confluence.plugins.confluence-files	434	2021-03-10 06:59:58.026	customContentManager
com.atlassian.querylang.confluence-cql-plugin	435	2021-03-10 06:59:58.026	start-of-year-one-arg-function
confluence.search.mappers.lucene	436	2021-03-10 06:59:58.026	creator
com.atlassian.confluence.plugins.confluence-content-report-plugin	437	2021-03-10 06:59:58.026	resources
com.atlassian.confluence.plugins.confluence-previews	438	2021-03-10 06:59:58.026	upload-plugin
com.atlassian.auiplugin	439	2021-03-10 06:59:58.026	icons
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	440	2021-03-10 06:59:58.026	javascriptTemplateWebResourceTransformer
com.atlassian.confluence.plugins.status-macro	441	2021-03-10 06:59:58.026	editorImagePlageholderServlet
com.atlassian.querylang.confluence-cql-plugin	442	2021-03-10 06:59:58.026	rest-cql-metadata-filter
com.atlassian.streams.confluence	443	2021-03-10 06:59:58.026	date-el-GR
com.atlassian.templaterenderer.atlassian-template-renderer-velocity1.6-plugin	444	2021-03-10 06:59:58.026	velocity-1.6-template-renderer
com.atlassian.confluence.plugins.confluence-inline-tasks	445	2021-03-10 06:59:58.026	recommended-email-tasks-panel
com.atlassian.confluence.plugins.confluence-space-blueprints	446	2021-03-10 06:59:58.026	documentation-space-making-a-template-template
com.atlassian.confluence.extra.officeconnector	447	2021-03-10 06:59:58.026	viewppt-legacy
com.atlassian.confluence.editor	448	2021-03-10 06:59:58.026	editor-parent-restricted
com.atlassian.confluence.plugins.watch-button	449	2021-03-10 06:59:58.026	watch
com.atlassian.confluence.plugins.confluence-content-property-storage	450	2021-03-10 06:59:58.026	spacePropertyService
com.atlassian.confluence.plugins.gadgets.spi	451	2021-03-10 06:59:58.026	permissionService
com.atlassian.auiplugin	452	2021-03-10 06:59:58.026	aui-flag
com.atlassian.applinks.applinks-trustedapps-plugin	453	2021-03-10 06:59:58.026	authenticationConfigurationManager
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	454	2021-03-10 06:59:58.026	eolHealthCheck
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	455	2021-03-10 06:59:58.026	space-blog-recipients-provider
confluence.extra.jira	456	2021-03-10 06:59:58.026	jirachart-macro
com.atlassian.streams	457	2021-03-10 06:59:58.026	date-ur-PK
com.atlassian.confluence.rpc.confluence-axis-soap-plugin	458	2021-03-10 06:59:58.026	soap-axis1
confluence.macros.dashboard	459	2021-03-10 06:59:58.026	recentlyUpdatedContentService
com.atlassian.streams.core	460	2021-03-10 06:59:58.026	feedSanitizer
confluence.macros.dashboard	461	2021-03-10 06:59:58.026	space-details
confluence.sections.admin.tasks	462	2021-03-10 06:59:58.026	general
com.atlassian.confluence.plugins.pagetree	463	2021-03-10 06:59:58.026	pagetreesearch-xhtml
com.atlassian.applinks.applinks-plugin	464	2021-03-10 06:59:58.026	contextFilter
confluence.macros.advanced	465	2021-03-10 06:59:58.026	recent-updated-actions
com.atlassian.integration.jira.jira-integration-plugin	466	2021-03-10 06:59:58.026	transition-form
com.atlassian.confluence.plugins.confluence-mobile	467	2021-03-10 06:59:58.026	linkMarshallingFactory
com.atlassian.confluence.plugins.profile-picture	468	2021-03-10 06:59:58.026	profile-picture
com.atlassian.plugins.atlassian-whitelist-ui-plugin	469	2021-03-10 06:59:58.026	i18nResolver
com.atlassian.confluence.plugins.confluence-create-content-plugin	470	2021-03-10 06:59:58.026	rest-filter
com.atlassian.confluence.plugins.share-page	471	2021-03-10 06:59:58.026	share-attachment-notification
com.atlassian.streams	472	2021-03-10 06:59:58.026	date-kn-IN
com.atlassian.auiplugin	473	2021-03-10 06:59:58.026	toolbar
com.atlassian.confluence.plugins.confluence-easyuser-admin	474	2021-03-10 06:59:58.026	add-users-userdir-button
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	475	2021-03-10 06:59:58.026	upm_section
com.atlassian.mywork.mywork-confluence-host-plugin	476	2021-03-10 06:59:58.026	applink-helper
com.atlassian.confluence.extra.widgetconnector	477	2021-03-10 06:59:58.026	googledocs
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	478	2021-03-10 06:59:58.026	confluence-upm-manage-menu
com.atlassian.confluence.plugins.confluence-knowledge-base	479	2021-03-10 06:59:58.026	kb-troubleshooting-article-blueprint
com.atlassian.querylang.confluence-cql-plugin	480	2021-03-10 06:59:58.026	favourite-field
confluence.macros.basic	481	2021-03-10 06:59:58.026	color
com.atlassian.confluence.plugins.confluence-create-content-plugin	482	2021-03-10 06:59:58.026	featureDiscoveryService
confluence.editor.actions	483	2021-03-10 06:59:58.026	macrobrowseraction
com.atlassian.templaterenderer.api	484	2021-03-10 06:59:58.026	pluginAccessor
confluence.web.resources	485	2021-03-10 06:59:58.026	aui-messages
com.atlassian.confluence.plugins.confluence-feature-discovery-plugin	486	2021-03-10 06:59:58.026	featureMetadataManager
com.atlassian.confluence.plugins.confluence-request-access-plugin	487	2021-03-10 06:59:58.026	transactionTemplate
com.atlassian.auiplugin	488	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-expander
confluence.web.resources	489	2021-03-10 06:59:58.026	master-styles
com.atlassian.confluence.plugins.confluence-like	490	2021-03-10 06:59:58.026	rest-filter
com.atlassian.confluence.plugins.confluence-inline-tasks	491	2021-03-10 06:59:58.026	inlinetasksactions
com.atlassian.streams	492	2021-03-10 06:59:58.026	date-fo-FO
confluence.extra.jira	493	2021-03-10 06:59:58.026	jiraAnalytics
com.atlassian.confluence.plugins.share-page	494	2021-03-10 06:59:58.026	rest
com.atlassian.plugins.atlassian-help-tips	495	2021-03-10 06:59:58.026	helpTipManager
com.atlassian.confluence.plugins.confluence-view-file-macro	496	2021-03-10 06:59:58.026	delegateFileMarshaller
com.atlassian.confluence.editor	497	2021-03-10 06:59:58.026	xhtmlContent
com.atlassian.auiplugin	498	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-progress-indicator
confluence.user.menu	499	2021-03-10 06:59:58.026	user-profile
confluence.sections.user.view.follow	500	2021-03-10 06:59:58.026	resources
com.atlassian.confluence.plugins.confluence-inline-tasks	501	2021-03-10 06:59:58.026	team-task-report-template
com.atlassian.confluence.plugins.soy	502	2021-03-10 06:59:58.026	soy-site-title-function
com.atlassian.confluence.keyboardshortcuts	503	2021-03-10 06:59:58.026	tinymce.bullist
confluence.extra.information	504	2021-03-10 06:59:58.026	note
com.atlassian.confluence.plugins.confluence-daily-summary-email	505	2021-03-10 06:59:58.026	summaryEmailServiceTarget
com.atlassian.streams.confluence	506	2021-03-10 06:59:58.026	date-ar-YE
com.atlassian.querylang.confluence-cql-plugin	507	2021-03-10 06:59:58.026	macro-instance-field
com.atlassian.confluence.plugins.confluence-create-content-plugin	508	2021-03-10 06:59:58.026	rest-caching-filter
com.atlassian.confluence.extra.widgetconnector	509	2021-03-10 06:59:58.026	vcacheFactory
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	510	2021-03-10 06:59:58.026	hipChatLinkProvider
com.atlassian.confluence.extra.widgetconnector	511	2021-03-10 06:59:58.026	web-widget-migrator
com.atlassian.support.healthcheck.support-healthcheck-plugin	512	2021-03-10 06:59:58.026	healthCheckService
com.atlassian.confluence.plugins.confluence-email-resources	513	2021-03-10 06:59:58.026	inject-css-inline-function
confluence.web.resources	514	2021-03-10 06:59:58.026	browser
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	515	2021-03-10 06:59:58.026	follower-added-hipchat-notification-template-body
com.atlassian.confluence.plugins.confluence-onboarding	516	2021-03-10 06:59:58.026	userSettingsService
com.atlassian.auiplugin	517	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-vendor-underscorejs-underscore
com.atlassian.confluence.plugins.confluence-highlight-actions	518	2021-03-10 06:59:58.026	stripTagModifier
com.atlassian.streams	519	2021-03-10 06:59:58.026	eventPublisher
com.atlassian.confluence.plugins.confluence-space-directory	520	2021-03-10 06:59:58.026	add-space
com.atlassian.confluence.plugins.confluence-onboarding	521	2021-03-10 06:59:58.026	onboarding-flow-resources
com.atlassian.streams.confluence	522	2021-03-10 06:59:58.026	date-uk-UA
com.atlassian.confluence.plugins.confluence-inline-tasks	523	2021-03-10 06:59:58.026	view-tasks-hipchat-adg-footer-item
com.atlassian.confluence.plugins.confluence-inline-comments	524	2021-03-10 06:59:58.026	likes-view
confluence.web.resources	525	2021-03-10 06:59:58.026	navigator-context
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	526	2021-03-10 06:59:58.026	upm-marketplace-templates
confluence.extractors.core	527	2021-03-10 06:59:58.026	spaceKeyAndNameExtractor
com.atlassian.confluence.contributors	528	2021-03-10 06:59:58.026	componentLocator
com.atlassian.confluence.plugins.confluence-inline-comments	529	2021-03-10 06:59:58.026	reply-list-view
com.atlassian.mywork.mywork-common-plugin	530	2021-03-10 06:59:58.026	myworkauth
com.atlassian.confluence.plugins.confluence-sal-plugin	531	2021-03-10 06:59:58.026	searchProvider
com.atlassian.analytics.analytics-client	532	2021-03-10 06:59:58.026	confluence-whitelist-report-menu-item
com.atlassian.auiplugin	533	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-internal-select-suggestion-model
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	534	2021-03-10 06:59:58.026	confluenceInitialiser
confluence.listeners.core	535	2021-03-10 06:59:58.026	contentNameSearchSemaphoreListener
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	536	2021-03-10 06:59:58.026	confluenceSettingsWebItem
com.atlassian.mywork.mywork-confluence-host-plugin	537	2021-03-10 06:59:58.026	pluginSharedDataRegistry
com.atlassian.integration.jira.jira-integration-plugin	538	2021-03-10 06:59:58.026	jiraService
confluence.macros.advanced	539	2021-03-10 06:59:58.026	recently-updated-sidebar-resources
com.atlassian.auiplugin	540	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-vendor-raf-raf
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	541	2021-03-10 06:59:58.026	confluenceContentNotificationsAnalyticsWhitelist
com.atlassian.confluence.rpc.confluence-axis-soap-plugin	542	2021-03-10 06:59:58.026	pluginAccessor
com.atlassian.confluence.plugins.confluence-onboarding	543	2021-03-10 06:59:58.026	confluence-efi-rest-filter
com.atlassian.analytics.analytics-client	544	2021-03-10 06:59:58.026	threadLocalDelegateExecutorFactory
com.atlassian.plugins.base-hipchat-integration-plugin	545	2021-03-10 06:59:58.026	hipchat-links-support
com.atlassian.oauth.serviceprovider.sal	546	2021-03-10 06:59:58.026	pluginSettingsFactory
com.atlassian.oauth.serviceprovider	547	2021-03-10 06:59:58.026	delegateTokenStore
confluence.extra.jira	548	2021-03-10 06:59:58.026	jim-xwork
com.atlassian.confluence.plugins.confluence-spaces	549	2021-03-10 06:59:58.026	shortcuts
com.atlassian.mywork.mywork-confluence-host-plugin	550	2021-03-10 06:59:58.026	user-manager
com.atlassian.confluence.plugins.confluence-content-property-storage	551	2021-03-10 06:59:58.026	spacePropertyValidator
com.atlassian.plugin.notifications.notifications-module	552	2021-03-10 06:59:58.026	macroResolver
com.atlassian.crowd.embedded.admin	553	2021-03-10 06:59:58.026	support-directory-configuration
com.atlassian.mywork.mywork-confluence-provider-plugin	554	2021-03-10 06:59:58.026	renderer
com.atlassian.plugins.atlassian-nav-links-plugin	555	2021-03-10 06:59:58.026	executor-service
com.atlassian.confluence.plugins.confluence-email-resources	556	2021-03-10 06:59:58.026	templates
com.atlassian.confluence.plugins.confluence-space-blueprints	557	2021-03-10 06:59:58.026	TeamSpaceHomePageEventListener
com.atlassian.plugins.shortcuts.atlassian-shortcuts-plugin	558	2021-03-10 06:59:58.026	keyboardShortcutsRest
com.atlassian.confluence.plugins.confluence-page-layout	559	2021-03-10 06:59:58.026	editor-pagelayout-content-styles
com.atlassian.auiplugin	560	2021-03-10 06:59:58.026	internal-skatejs-0.13.17-lib-mutation-observer
com.atlassian.querylang.confluence-cql-plugin	561	2021-03-10 06:59:58.026	content-field
com.atlassian.confluence.plugins.confluence-edge-index	562	2021-03-10 06:59:58.026	edgeListener
com.atlassian.support.healthcheck.support-healthcheck-plugin	563	2021-03-10 06:59:58.026	supportHealthCheckRest-filter
com.atlassian.plugins.atlassian-nav-links-plugin	564	2021-03-10 06:59:58.026	navigation-links
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	565	2021-03-10 06:59:58.026	cluster-monitoring
com.atlassian.plugins.base-hipchat-integration-plugin	566	2021-03-10 06:59:58.026	get-product-text
com.atlassian.plugins.atlassian-plugins-webresource-plugin	567	2021-03-10 06:59:58.026	atlassian-module
com.atlassian.confluence.plugins.confluence-business-blueprints	568	2021-03-10 06:59:58.026	meeting-notes-blueprint
confluence.extractors.core	569	2021-03-10 06:59:58.026	contentAuthorExtractor
com.atlassian.streams	570	2021-03-10 06:59:58.026	date-dv-MV
com.atlassian.confluence.plugins.recently-viewed-plugin	571	2021-03-10 06:59:58.026	purgeHistoryJob
com.atlassian.streams.confluence	572	2021-03-10 06:59:58.026	date-cs-CZ
com.atlassian.applinks.applinks-cors-plugin	573	2021-03-10 06:59:58.026	xsrfTokenValidator
com.atlassian.oauth.serviceprovider	574	2021-03-10 06:59:58.026	authenticator
com.atlassian.plugins.base-hipchat-integration-plugin	575	2021-03-10 06:59:58.026	hipchat-action
com.atlassian.analytics.analytics-client	576	2021-03-10 06:59:58.026	analytics-filter
com.atlassian.auiplugin	577	2021-03-10 06:59:58.026	event
confluence.listeners.core	578	2021-03-10 06:59:58.026	app-status-plugin-framework-listener
confluence.sections.admin	579	2021-03-10 06:59:58.026	lookandfeel
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	580	2021-03-10 06:59:58.026	pluginController
com.atlassian.confluence.plugins.confluence-document-conversion-library	581	2021-03-10 06:59:58.026	conversionLoader
com.atlassian.applinks.applinks-cors-plugin	582	2021-03-10 06:59:58.026	loginUriProvider
com.atlassian.auiplugin	583	2021-03-10 06:59:58.026	aui-page-header
com.atlassian.confluence.plugins.confluence-knowledge-base	584	2021-03-10 06:59:58.026	oAuthRequestVerifierFactory
com.atlassian.confluence.editor	585	2021-03-10 06:59:58.026	tinymceaction
com.atlassian.confluence.plugins.confluence-business-blueprints	586	2021-03-10 06:59:58.026	meeting-notes-resources
com.atlassian.auiplugin	587	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-vendor-jquery-jquery-tipsy
confluence.sections.create	588	2021-03-10 06:59:58.026	add-page-with-parent
com.atlassian.confluence.keyboardshortcuts	589	2021-03-10 06:59:58.026	tinymce.go.to.preview.page
com.atlassian.confluence.plugins.confluence-email-resources	590	2021-03-10 06:59:58.026	find-user-function
com.atlassian.healthcheck.atlassian-healthcheck	591	2021-03-10 06:59:58.026	healthCheckSupplier
com.atlassian.analytics.analytics-client	592	2021-03-10 06:59:58.026	allowedWordFilter
com.atlassian.prettyurls.atlassian-pretty-urls-plugin	593	2021-03-10 06:59:58.026	prettyurls-sitemesh-fixup-filter-before-dispatch
confluence.web.resources	594	2021-03-10 06:59:58.026	syntaxhighlighter-css
com.atlassian.activeobjects.confluence.spi	595	2021-03-10 06:59:58.026	hibernateSessionFactory
com.atlassian.plugins.base-hipchat-integration-plugin	596	2021-03-10 06:59:58.026	hipchat-configurable
com.atlassian.confluence.plugins.confluence-dashboard	597	2021-03-10 06:59:58.026	dashboard-rest
com.atlassian.confluence.extra.widgetconnector	598	2021-03-10 06:59:58.026	friendfeed
com.atlassian.confluence.plugins.confluence-license-banner	599	2021-03-10 06:59:58.026	confluence-license-banner-resources
com.atlassian.streams.confluence	600	2021-03-10 06:59:58.026	date-default
com.atlassian.streams	601	2021-03-10 06:59:58.026	date-sv-FI
com.atlassian.oauth.serviceprovider	602	2021-03-10 06:59:58.026	validator
com.atlassian.streams	603	2021-03-10 06:59:58.026	date-vi-VN
com.atlassian.confluence.plugins.confluence-business-blueprints	604	2021-03-10 06:59:58.026	sharelinks-blueprint-listener
com.atlassian.confluence.plugins.confluence-dashboard	605	2021-03-10 06:59:58.026	routing-spaces-reverse
com.atlassian.confluence.plugins.confluence-user-rest	606	2021-03-10 06:59:58.026	userAccessor
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	607	2021-03-10 06:59:58.026	notification-transformer
confluence.listeners.core	608	2021-03-10 06:59:58.026	mailServerListener
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	609	2021-03-10 06:59:58.026	page-trashed-notification
com.atlassian.confluence.plugins.confluence-highlight-actions	610	2021-03-10 06:59:58.026	tableSelectionTransformer
confluence.search.mappers.lucene	611	2021-03-10 06:59:58.026	dateRange
com.atlassian.confluence.plugins.confluence-knowledge-base	612	2021-03-10 06:59:58.026	kbApplicationLinkRequestVerifier
confluence.extra.impresence2	613	2021-03-10 06:59:58.026	im-xhtml
com.atlassian.confluence.plugins.confluence-dashboard	614	2021-03-10 06:59:58.026	featureDiscoveryService
com.atlassian.confluence.plugins.drag-and-drop	615	2021-03-10 06:59:58.026	plupload
com.atlassian.confluence.plugins.confluence-knowledge-base	616	2021-03-10 06:59:58.026	searchResultAugmenter
com.atlassian.confluence.plugins.confluence-business-blueprints	617	2021-03-10 06:59:58.026	file-list-item
com.atlassian.confluence.plugins.confluence-email-resources	618	2021-03-10 06:59:58.026	notification-templates-blogpost-moved-1.0.0
com.atlassian.applinks.applinks-basicauth-plugin	619	2021-03-10 06:59:58.026	loginUriProvider
com.atlassian.confluence.plugins.confluence-mobile	620	2021-03-10 06:59:58.026	mention-resources
com.atlassian.confluence.plugins.confluence-edge-index	621	2021-03-10 06:59:58.026	comment.create
confluence.web.resources	622	2021-03-10 06:59:58.026	edit-user-profile
com.atlassian.oauth.consumer	623	2021-03-10 06:59:58.026	templateRenderer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	624	2021-03-10 06:59:58.026	notificationWebResourceTransformer
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	625	2021-03-10 06:59:58.026	batchingJob
com.atlassian.applinks.applinks-plugin	626	2021-03-10 06:59:58.026	projectManagerContextItem
com.atlassian.confluence.plugins.confluence-email-resources	627	2021-03-10 06:59:58.026	applicationProperties
com.atlassian.confluence.plugins.confluence-dashboard	628	2021-03-10 06:59:58.026	dashboard-server-side-soy
confluence.converters.core	629	2021-03-10 06:59:58.026	blog-converter
com.atlassian.confluence.plugins.confluence-fixed-headers	630	2021-03-10 06:59:58.026	handlers
com.atlassian.confluence.plugins.confluence-software-blueprints	631	2021-03-10 06:59:58.026	requirements-page
confluence.macros.advanced	632	2021-03-10 06:59:58.026	popular-labels
com.atlassian.confluence.plugins.recently-viewed-plugin	633	2021-03-10 06:59:58.026	userManager
confluence.search.mappers.lucene	634	2021-03-10 06:59:58.026	doubleRange
confluence.extractors.core	635	2021-03-10 06:59:58.026	contentPermissionsChangeExtractor
confluence.extra.masterdetail	636	2021-03-10 06:59:58.026	pagePropertiesExtractor
com.atlassian.auiplugin	637	2021-03-10 06:59:58.026	fancy-file-input
com.atlassian.confluence.plugins.confluence-software-project	638	2021-03-10 06:59:58.026	sp-space-meeting-notes-template
confluence.listeners.core	639	2021-03-10 06:59:58.026	userIndexingListener
com.atlassian.confluence.plugins.confluence-feature-discovery-plugin	640	2021-03-10 06:59:58.026	featureDiscoveryRest
com.atlassian.applinks.applinks-cors-plugin	641	2021-03-10 06:59:58.026	localeResolver
com.atlassian.applinks.applinks-oauth-plugin	642	2021-03-10 06:59:58.026	consumerTokenStore
com.atlassian.streams	643	2021-03-10 06:59:58.026	date-fa-IR
com.atlassian.templaterenderer.api	644	2021-03-10 06:59:58.026	i18nResolver
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	645	2021-03-10 06:59:58.026	notificationQueueManager
com.atlassian.confluence.plugins.confluence-email-resources	646	2021-03-10 06:59:58.026	resource-image-function
com.atlassian.oauth.consumer.sal	647	2021-03-10 06:59:58.026	consumerStore
com.atlassian.confluence.plugins.confluence-roadmap-plugin	648	2021-03-10 06:59:58.026	roadmap-dialog-resources
com.atlassian.confluence.editor	649	2021-03-10 06:59:58.026	editor-featured-macro-gallery
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	650	2021-03-10 06:59:58.026	confluence-collaborative-editor-config
com.atlassian.mywork.mywork-confluence-host-plugin	651	2021-03-10 06:59:58.026	localeResolver
com.atlassian.confluence.plugins.confluence-business-blueprints	652	2021-03-10 06:59:58.026	file-list-page
confluence.extra.attachments	653	2021-03-10 06:59:58.026	attachments-javascript
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	654	2021-03-10 06:59:58.026	page-created-notification
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	655	2021-03-10 06:59:58.026	packageAdmin
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	656	2021-03-10 06:59:58.026	hsqlHealthCheck
com.atlassian.confluence.plugins.confluence-files	657	2021-03-10 06:59:58.026	filesAttNotInList
com.atlassian.applinks.applinks-oauth-plugin	658	2021-03-10 06:59:58.026	OAuthAuthenticatorProviderPluginModule
confluence.sections.admin	659	2021-03-10 06:59:58.026	administration
confluence.extra.masterdetail	660	2021-03-10 06:59:58.026	details
com.atlassian.plugins.tinymce	661	2021-03-10 06:59:58.026	atlassian-rte-javascript-tinymce-core
com.atlassian.mywork.mywork-common-plugin	662	2021-03-10 06:59:58.026	xsrfTokenValidator
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	663	2021-03-10 06:59:58.026	blogpost-edited-hipchat-notification-template-body
com.atlassian.streams.confluence	664	2021-03-10 06:59:58.026	notificationManager
com.atlassian.confluence.plugins.confluence-onboarding	665	2021-03-10 06:59:58.026	onboarding-blueprint-templates-resources
com.atlassian.confluence.editor	666	2021-03-10 06:59:58.026	macroBodyTranformationCondition
com.atlassian.confluence.plugins.confluence-email-resources	667	2021-03-10 06:59:58.026	notification-templates-page-edited-2.0.0
com.atlassian.streams.confluence	668	2021-03-10 06:59:58.026	date-hu-HU
com.atlassian.confluence.plugins.gadgets	669	2021-03-10 06:59:58.026	gadgetsActions
com.atlassian.auiplugin	670	2021-03-10 06:59:58.026	aui-form-validation
com.atlassian.streams.confluence	671	2021-03-10 06:59:58.026	date-ar-QA
confluence.extra.webdav	672	2021-03-10 06:59:58.026	reverseProxyFilter
com.atlassian.streams.confluence	673	2021-03-10 06:59:58.026	date-zu-ZA
com.atlassian.streams.confluence	674	2021-03-10 06:59:58.026	date-ar-TN
com.atlassian.streams.confluence	675	2021-03-10 06:59:58.026	date-pt-PT
confluence.user.menu	676	2021-03-10 06:59:58.026	create-personal-space
com.atlassian.plugin.notifications.notifications-module	677	2021-03-10 06:59:58.026	templateManager
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	678	2021-03-10 06:59:58.026	pluginDownloadService
com.atlassian.confluence.plugins.quickreload	679	2021-03-10 06:59:58.026	pageManager
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	680	2021-03-10 06:59:58.026	pluginMetadataAccessor
com.atlassian.analytics.analytics-client	681	2021-03-10 06:59:58.026	i18nResolver
com.atlassian.plugins.base-hipchat-integration-plugin-api	682	2021-03-10 06:59:58.026	wrm-amd
com.atlassian.confluence.plugins.confluence-edge-index	683	2021-03-10 06:59:58.026	confluenceAccessManager
com.atlassian.confluence.plugins.confluence-mobile	684	2021-03-10 06:59:58.026	macroMarshallingFactory
com.atlassian.streams.confluence	685	2021-03-10 06:59:58.026	date-ar-SY
com.atlassian.confluence.keyboardshortcuts	686	2021-03-10 06:59:58.026	save.editor.page
confluence.extra.confluencerpc	687	2021-03-10 06:59:58.026	attachmentsSoapService
confluence.sections.admin	688	2021-03-10 06:59:58.026	securityconfiguration
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	689	2021-03-10 06:59:58.026	notification-recipients
com.atlassian.confluence.plugins.search.confluence-search	690	2021-03-10 06:59:58.026	boosting-query-mapper
com.atlassian.auiplugin	691	2021-03-10 06:59:58.026	internal-skatejs-0.13.17-lib-data
com.atlassian.auiplugin	692	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-restful-table-entry-model
confluence.user.menu.concise	693	2021-03-10 06:59:58.026	settings
com.atlassian.confluence.plugins.confluence-easyuser-admin	694	2021-03-10 06:59:58.026	mailServerExistsCriteria
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	695	2021-03-10 06:59:58.026	models
confluence.web.resources	696	2021-03-10 06:59:58.026	custom-page-content-resources
com.atlassian.confluence.ext.newcode-macro-plugin	697	2021-03-10 06:59:58.026	newcode
confluence.macros.advanced	698	2021-03-10 06:59:58.026	children-migrator
com.atlassian.confluence.plugins.confluence-space-ia	699	2021-03-10 06:59:58.026	rest
com.atlassian.confluence.plugins.confluence-knowledge-base	700	2021-03-10 06:59:58.026	kb-serviceDeskExternalCustomerServletFilter-filter
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	701	2021-03-10 06:59:58.026	applicationProperties
com.atlassian.applinks.applinks-trustedapps-plugin	702	2021-03-10 06:59:58.026	documentationLinker
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	703	2021-03-10 06:59:58.026	notificationCacheUpdateEventListener
com.atlassian.confluence.plugins.soy	704	2021-03-10 06:59:58.026	soy-format-date-function
com.atlassian.confluence.plugins.confluence-view-file-macro	705	2021-03-10 06:59:58.026	view-file-macro-export-resources
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	706	2021-03-10 06:59:58.026	differ
confluence.search.mappers.lucene	707	2021-03-10 06:59:58.026	longRange
com.atlassian.plugins.editor	708	2021-03-10 06:59:58.026	editor-panel
confluence.user.menu	709	2021-03-10 06:59:58.026	user-operations
com.atlassian.confluence.plugins.confluence-sal-plugin	710	2021-03-10 06:59:58.026	bootstrapManager
com.atlassian.plugins.base-hipchat-integration-plugin	711	2021-03-10 06:59:58.026	resources
com.atlassian.plugin.notifications.notifications-module	712	2021-03-10 06:59:58.026	notificationsAdminServlet
com.atlassian.streams.confluence	713	2021-03-10 06:59:58.026	date-ar-SA
confluence.sections.admin	714	2021-03-10 06:59:58.026	stylesheet
confluence.extra.confluencerpc	715	2021-03-10 06:59:58.026	confluence-xmlrpc
com.atlassian.confluence.plugins.confluence-license-banner	716	2021-03-10 06:59:58.026	rest-resource-filter
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	717	2021-03-10 06:59:58.026	cachedContentFinder
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	718	2021-03-10 06:59:58.026	page-moved-notification-transformer
com.atlassian.querylang.confluence-cql-plugin	719	2021-03-10 06:59:58.026	end-of-month-one-arg-function
com.atlassian.auiplugin	720	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-prevent-default
com.atlassian.confluence.extra.widgetconnector	721	2021-03-10 06:59:58.026	twitter-webresources
com.atlassian.plugins.rest.atlassian-rest-module	722	2021-03-10 06:59:58.026	httpContext
com.atlassian.confluence.plugins.confluence-create-content-plugin	723	2021-03-10 06:59:58.026	blueprintContentTemplateService
com.atlassian.mywork.mywork-confluence-host-plugin	724	2021-03-10 06:59:58.026	velocity-renderer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	725	2021-03-10 06:59:58.026	upm-manage-plugins-module
com.atlassian.confluence.plugins.confluence-inline-tasks	726	2021-03-10 06:59:58.026	rest-filter
com.atlassian.confluence.plugins.confluence-mentions-plugin	727	2021-03-10 06:59:58.026	dataSourceFactory
confluence.extra.masterdetail	728	2021-03-10 06:59:58.026	master-details-resources
com.atlassian.confluence.plugins.confluence-jira-metadata	729	2021-03-10 06:59:58.026	jira-metadata-cache-config-trigger
confluence.sections.space.admin	730	2021-03-10 06:59:58.026	layouts
com.atlassian.confluence.plugins.confluence-inline-comments	731	2021-03-10 06:59:58.026	notification-template-new-mail-body
confluence.sections.page.temp	732	2021-03-10 06:59:58.026	pagefavourite
confluence.search.mappers.lucene	733	2021-03-10 06:59:58.026	spaceCategory
confluence.web.resources	734	2021-03-10 06:59:58.026	js-reporting
com.atlassian.auiplugin	735	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-internal-browser
com.atlassian.applinks.applinks-basicauth-plugin	736	2021-03-10 06:59:58.026	pluginAccessor
com.atlassian.plugin.jslibs	737	2021-03-10 06:59:58.026	underscore-1.5.2
com.atlassian.plugins.atlassian-whitelist-ui-plugin	738	2021-03-10 06:59:58.026	applicationLinkService
com.atlassian.oauth.serviceprovider	739	2021-03-10 06:59:58.026	access-token-resources
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	740	2021-03-10 06:59:58.026	page-moved-notification-template
com.atlassian.confluence.plugins.watch-button	741	2021-03-10 06:59:58.026	watch-keyboard-shortcut
confluence.editor.actions	742	2021-03-10 06:59:58.026	edit-macro
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	743	2021-03-10 06:59:58.026	urlReadingNotificationWebResourceTransformer
confluence.sections.profile	744	2021-03-10 06:59:58.026	personalspace
com.atlassian.applinks.applinks-trustedapps-plugin	745	2021-03-10 06:59:58.026	eventPublisher
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	746	2021-03-10 06:59:58.026	escapeToolContextItem
com.atlassian.confluence.plugins.status-macro	747	2021-03-10 06:59:58.026	editor_content_status
com.atlassian.confluence.plugins.confluence-link-browser	748	2021-03-10 06:59:58.026	linkbrowser-css-resources
com.atlassian.confluence.contributors	749	2021-03-10 06:59:58.026	contributors-web-resources
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	750	2021-03-10 06:59:58.026	comment-created-notification-transformer
confluence.xhtml.wikimarkup	751	2021-03-10 06:59:58.026	unmigrated-wiki-markup
com.atlassian.confluence.plugins.confluence-email-resources	752	2021-03-10 06:59:58.026	notifications-cluster-node-id-function
com.atlassian.confluence.plugins.confluence-space-ia	753	2021-03-10 06:59:58.026	customPageSettingsManager
confluence.web.resources	754	2021-03-10 06:59:58.026	atlassian-effects
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	755	2021-03-10 06:59:58.026	cacheFactory
confluence.extra.information	756	2021-03-10 06:59:58.026	xhtml-note
com.atlassian.support.stp	757	2021-03-10 06:59:58.026	salWebSudoManager
com.atlassian.confluence.plugins.confluence-lookandfeel	758	2021-03-10 06:59:58.026	soyTemplateRenderer
com.atlassian.confluence.plugins.confluence-content-property-storage	759	2021-03-10 06:59:58.026	content-property-field-sort-mapper
com.atlassian.confluence.plugins.status-macro	760	2021-03-10 06:59:58.026	editor_status
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	761	2021-03-10 06:59:58.026	upm-web-resources
com.atlassian.confluence.plugins.confluence-user-profile	762	2021-03-10 06:59:58.026	user-avatar-resource
com.atlassian.plugins.rest.atlassian-rest-module	763	2021-03-10 06:59:58.026	requestFactory
com.atlassian.confluence.plugins.confluence-file-notifications	764	2021-03-10 06:59:58.026	notificationManager
com.atlassian.confluence.plugins.recently-viewed-plugin	765	2021-03-10 06:59:58.026	transactionTemplate
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	766	2021-03-10 06:59:58.026	requestCheckJob
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	767	2021-03-10 06:59:58.026	page-edited-notification-transformer
confluence.extra.layout	768	2021-03-10 06:59:58.026	section
confluence.macros.advanced	769	2021-03-10 06:59:58.026	listlabels-resources
com.atlassian.confluence.editor	770	2021-03-10 06:59:58.026	xmlOutputFactory
confluence.sections.space.tools	771	2021-03-10 06:59:58.026	removespace
com.atlassian.confluence.plugins.confluence-business-blueprints	772	2021-03-10 06:59:58.026	sharelinks-blueprint-item
com.atlassian.mywork.mywork-common-plugin	773	2021-03-10 06:59:58.026	i18nResolver
confluence.web.resources	774	2021-03-10 06:59:58.026	moment
com.atlassian.confluence.plugins.confluence-remote-page-view-plugin	775	2021-03-10 06:59:58.026	remotePageViewService
com.atlassian.confluence.plugins.confluence-fixed-headers	776	2021-03-10 06:59:58.026	utils
com.atlassian.applinks.applinks-plugin	777	2021-03-10 06:59:58.026	applicationLinkUIService
com.atlassian.confluence.plugins.confluence-email-resources	778	2021-03-10 06:59:58.026	template-utils
com.atlassian.confluence.plugins.share-page	779	2021-03-10 06:59:58.026	share-page-notification-transformer
com.atlassian.plugins.atlassian-project-creation-plugin	780	2021-03-10 06:59:58.026	aggregate-roots-rest-url
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	781	2021-03-10 06:59:58.026	soyTemplateRenderer
com.atlassian.confluence.plugins.search.confluence-search	782	2021-03-10 06:59:58.026	transactionTemplate
com.atlassian.confluence.plugins.quickedit	783	2021-03-10 06:59:58.026	quick-edit-general
com.atlassian.confluence.plugins.synchrony-interop	784	2021-03-10 06:59:58.026	synchronyStatusCheck
confluence.web.resources	785	2021-03-10 06:59:58.026	pagination-styles
confluence.extra.impresence2	786	2021-03-10 06:59:58.026	reporter-sametime
com.atlassian.confluence.plugins.confluence-software-blueprints	787	2021-03-10 06:59:58.026	retrospectives-page
com.atlassian.confluence.plugins.confluence-remote-page-view-plugin	788	2021-03-10 06:59:58.026	webResourceManager
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	789	2021-03-10 06:59:58.026	hipchat-oauth-profile-page
com.atlassian.streams.actions	790	2021-03-10 06:59:58.026	action-handler-web-resource
com.atlassian.confluence.plugins.confluence-knowledge-base	791	2021-03-10 06:59:58.026	permissionManager
com.atlassian.streams	792	2021-03-10 06:59:58.026	date-he-IL
com.atlassian.confluence.plugins.confluence-browser-metrics	793	2021-03-10 06:59:58.026	browser-metrics-api
com.atlassian.confluence.plugins.confluence-inline-comments	794	2021-03-10 06:59:58.026	inline-notification-new-mail
confluence.aui.staging	795	2021-03-10 06:59:58.026	meta
com.atlassian.confluence.plugins.confluence-file-notifications	796	2021-03-10 06:59:58.026	file-notifications-like-action
com.atlassian.applinks.applinks-cors-plugin	797	2021-03-10 06:59:58.026	adminUIAuthenticator
com.atlassian.confluence.plugins.confluence-inline-comments	798	2021-03-10 06:59:58.026	view-inline-email-adg-footer-item
com.atlassian.support.healthcheck.support-healthcheck-plugin	799	2021-03-10 06:59:58.026	healthcheck-resources
com.atlassian.auiplugin	800	2021-03-10 06:59:58.026	internal-jquery-ui-partial
confluence.macros.html	801	2021-03-10 06:59:58.026	outboundWhitelist
com.atlassian.confluence.plugins.confluence-knowledge-base	802	2021-03-10 06:59:58.026	spaceManager
com.atlassian.confluence.plugins.confluence-inline-comments	803	2021-03-10 06:59:58.026	create-inline-comment
com.atlassian.confluence.editor	804	2021-03-10 06:59:58.026	page-editor
com.atlassian.auiplugin	805	2021-03-10 06:59:58.026	deprecated-legacy-images
confluence.sections.admin.generalconfig	806	2021-03-10 06:59:58.026	resources
com.atlassian.applinks.applinks-cors-plugin	807	2021-03-10 06:59:58.026	cors-auth
com.atlassian.confluence.plugins.confluence-sal-plugin	808	2021-03-10 06:59:58.026	projectManager
com.atlassian.confluence.plugins.confluence-mobile	809	2021-03-10 06:59:58.026	webResourceAssemblerFactory
com.atlassian.applinks.applinks-trustedapps-plugin	810	2021-03-10 06:59:58.026	xsrfTokenValidator
com.atlassian.plugins.atlassian-whitelist-core-plugin	811	2021-03-10 06:59:58.026	applicationLinkService
com.atlassian.querylang.confluence-cql-plugin	812	2021-03-10 06:59:58.026	content-type-field
com.atlassian.confluence.plugins.confluence-space-ia	813	2021-03-10 06:59:58.026	header-people-link
com.atlassian.confluence.plugins.confluence-user-rest	814	2021-03-10 06:59:58.026	aggregationWarningManager
com.atlassian.confluence.contributors	815	2021-03-10 06:59:58.026	creationDate
com.atlassian.confluence.plugins.quickedit	816	2021-03-10 06:59:58.026	quick-edit-util
com.atlassian.confluence.plugins.confluence-sortable-tables	817	2021-03-10 06:59:58.026	ConfluenceSortableTablesEditorPlugin
com.atlassian.mywork.mywork-confluence-provider-plugin	818	2021-03-10 06:59:58.026	commentService
com.atlassian.confluence.extra.flyingpdf	819	2021-03-10 06:59:58.026	none
com.atlassian.confluence.plugins.confluence-lookandfeel	820	2021-03-10 06:59:58.026	siteLogoHelperContext
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	821	2021-03-10 06:59:58.026	auditLogUpgradeTask
com.atlassian.applinks.applinks-plugin	822	2021-03-10 06:59:58.026	applinks-application-type
com.atlassian.templaterenderer.api	823	2021-03-10 06:59:58.026	template-context-item
com.atlassian.oauth.serviceprovider	824	2021-03-10 06:59:58.026	postAuthorizationProcessor
com.atlassian.streams.confluence	825	2021-03-10 06:59:58.026	date-ar-IQ
com.atlassian.confluence.plugins.confluence-templates	826	2021-03-10 06:59:58.026	i18nResolver
com.atlassian.plugins.atlassian-nav-links-plugin	827	2021-03-10 06:59:58.026	threadLocalDelegateExecutorFactory
com.atlassian.confluence.plugins.confluence-space-directory	828	2021-03-10 06:59:58.026	spaceDirectoryEntityBuilder
com.atlassian.auiplugin	829	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-restful-table-edit-row
com.atlassian.applinks.applinks-trustedapps-plugin	830	2021-03-10 06:59:58.026	adminUIAuthenticator
com.atlassian.streams.confluence	831	2021-03-10 06:59:58.026	streamsLocaleProvider
com.atlassian.confluence.plugins.drag-and-drop	832	2021-03-10 06:59:58.026	drag-and-drop-for-view-attachments
com.atlassian.streams.confluence	833	2021-03-10 06:59:58.026	streamsFeedUrlBuilderFactory
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	834	2021-03-10 06:59:58.026	mailRenderer
com.atlassian.applinks.applinks-oauth-plugin	835	2021-03-10 06:59:58.026	confluence-inbound-two-legged-oauth
com.atlassian.confluence.plugins.confluence-space-ia	836	2021-03-10 06:59:58.026	spacemenu-resources
com.atlassian.confluence.plugins.gadgets	837	2021-03-10 06:59:58.026	publishedGadgetsDirectory
com.atlassian.confluence.plugins.confluence-license-rest	838	2021-03-10 06:59:58.026	userChecker
com.atlassian.confluence.plugins.confluence-create-content-plugin	839	2021-03-10 06:59:58.026	create-personal-space-item
com.atlassian.confluence.plugins.confluence-email-resources	840	2021-03-10 06:59:58.026	chrome-template-1.0.0
com.atlassian.confluence.plugins.confluence-email-resources	841	2021-03-10 06:59:58.026	email-reply-to-provider
com.atlassian.confluence.plugins.confluence-space-blueprints	842	2021-03-10 06:59:58.026	documentation-space-getting-started-template
com.atlassian.streams	843	2021-03-10 06:59:58.026	feedRenderer
com.atlassian.confluence.extra.flyingpdf	844	2021-03-10 06:59:58.026	pdfExportCustomFontMigrator
com.atlassian.streams.confluence	845	2021-03-10 06:59:58.026	date-nn-NO
com.atlassian.confluence.plugins.confluence-macro-usage	846	2021-03-10 06:59:58.026	macroExtractor
com.atlassian.applinks.applinks-cors-plugin	847	2021-03-10 06:59:58.026	applicationLinkService
com.atlassian.activeobjects.confluence.spi	848	2021-03-10 06:59:58.026	synchronizationManager
com.atlassian.confluence.plugins.confluence-page-banner	849	2021-03-10 06:59:58.026	content-metadata-attachments
confluence.extra.confluencerpc	850	2021-03-10 06:59:58.026	blogsSoapService
confluence.sections.space.tools	851	2021-03-10 06:59:58.026	stylesheet
com.atlassian.auiplugin	852	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-spin
com.atlassian.streams	853	2021-03-10 06:59:58.026	date-uz-Cyrl-UZ
com.atlassian.crowd.embedded.admin	854	2021-03-10 06:59:58.026	confluence-internal-directory-options
com.atlassian.plugins.atlassian-nav-links-plugin	855	2021-03-10 06:59:58.026	custom-apps-filter
com.atlassian.confluence.plugins.confluence-email-resources	856	2021-03-10 06:59:58.026	mimeBodyPartRecorder
com.atlassian.streams.confluence	857	2021-03-10 06:59:58.026	date-ar-LB
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	858	2021-03-10 06:59:58.026	hipchat-css-resources
com.atlassian.auiplugin	859	2021-03-10 06:59:58.026	internal-fancy-file-input-2.0.1-dist-fancy-file-input
com.atlassian.confluence.editor	860	2021-03-10 06:59:58.026	captcha-editor-panel
com.atlassian.confluence.extra.flyingpdf	861	2021-03-10 06:59:58.026	pdfExportFontManager
com.atlassian.querylang.confluence-cql-plugin	862	2021-03-10 06:59:58.026	created-date-field
com.atlassian.confluence.plugins.confluence-onboarding	863	2021-03-10 06:59:58.026	less-users-notification-transformer
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	864	2021-03-10 06:59:58.026	batching-notification-payload-processor
confluence.sections.admin	865	2021-03-10 06:59:58.026	security
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	866	2021-03-10 06:59:58.026	collationCheck
confluence.sections.admin	977	2021-03-10 06:59:58.026	auditlog
com.atlassian.confluence.plugins.confluence-inline-comments	867	2021-03-10 06:59:58.026	notification-template-reply-body
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	868	2021-03-10 06:59:58.026	soyTemplateRenderer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	869	2021-03-10 06:59:58.026	auditLogService
com.atlassian.streams.confluence	870	2021-03-10 06:59:58.026	date-ar-KW
com.atlassian.confluence.plugins.confluence-feature-discovery-plugin	871	2021-03-10 06:59:58.026	tx-processor
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	872	2021-03-10 06:59:58.026	upm-update-check-templates
com.atlassian.confluence.plugins.confluence-onboarding	873	2021-03-10 06:59:58.026	common-flow-resources
com.atlassian.confluence.plugins.view-storage-format	874	2021-03-10 06:59:58.026	darkFeaturesManager
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	875	2021-03-10 06:59:58.026	userKeyUpgradeTask
com.atlassian.auiplugin	876	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-internal-header-create-header
confluence.listeners.core	877	2021-03-10 06:59:58.026	mergerListener
com.atlassian.auiplugin	878	2021-03-10 06:59:58.026	dialog2
confluence.sections.admin.header	879	2021-03-10 06:59:58.026	admin-user
confluence.sections.space.advanced	880	2021-03-10 06:59:58.026	exportsection
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	881	2021-03-10 06:59:58.026	webResourceManager
com.atlassian.confluence.plugins.confluence-email-resources	882	2021-03-10 06:59:58.026	content-templates-content-excerpt-pattern-2.0.0
com.atlassian.confluence.plugins.confluence-create-content-plugin	883	2021-03-10 06:59:58.026	space-blueprints
com.atlassian.streams.confluence	884	2021-03-10 06:59:58.026	date-ar-JO
com.atlassian.confluence.plugins.synchrony-interop	885	2021-03-10 06:59:58.026	confluence-synchrony-interop-rest-api-filter
com.atlassian.confluence.plugins.confluence-license-banner	886	2021-03-10 06:59:58.026	rest-resource
com.atlassian.confluence.plugins.confluence-create-content-plugin	887	2021-03-10 06:59:58.026	create-content-with-init-context
com.atlassian.confluence.plugins.pagetree	888	2021-03-10 06:59:58.026	pagetree-js-resources
confluence.web.panels	889	2021-03-10 06:59:58.026	confluence-footer
confluence.search.lucene.initialisation	890	2021-03-10 06:59:58.026	defaultSearcherInitialisation
com.atlassian.confluence.plugins.confluence-business-blueprints	891	2021-03-10 06:59:58.026	contentBlueprintManager
confluence.extra.jira	892	2021-03-10 06:59:58.026	blueprint-selector
tac.confluence.languages.en_US	893	2021-03-10 06:59:58.026	en_US
com.atlassian.confluence.contributors	894	2021-03-10 06:59:58.026	keyword
com.atlassian.auiplugin	895	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-restful-table-data-keys
com.atlassian.confluence.plugins.confluence-daily-summary-email	896	2021-03-10 06:59:58.026	popularContentQueries
com.atlassian.streams	897	2021-03-10 06:59:58.026	date-eu-ES
com.atlassian.querylang.confluence-cql-plugin	898	2021-03-10 06:59:58.026	container-field
com.atlassian.streams.confluence	899	2021-03-10 06:59:58.026	spacePermissionManager
com.atlassian.analytics.analytics-client	900	2021-03-10 06:59:58.026	uploadAnalyticsInitialiser
confluence.search.mappers.lucene	901	2021-03-10 06:59:58.026	created
com.atlassian.analytics.analytics-client	902	2021-03-10 06:59:58.026	analytics-whitelist
com.atlassian.plugins.base-hipchat-integration-plugin	903	2021-03-10 06:59:58.026	common-resources
com.atlassian.plugins.base-hipchat-integration-plugin	904	2021-03-10 06:59:58.026	hipchat-installed-scopes
confluence.search.mappers.lucene	905	2021-03-10 06:59:58.026	contentType
com.atlassian.confluence.plugins.confluence-content-property-storage	906	2021-03-10 06:59:58.026	number-field-type-query-mapper
com.atlassian.confluence.plugins.confluence-create-content-plugin	907	2021-03-10 06:59:58.026	templateUpdatedListener
com.atlassian.streams.confluence	908	2021-03-10 06:59:58.026	streamsI18nResolver
com.atlassian.confluence.plugins.confluence-mentions-plugin	909	2021-03-10 06:59:58.026	mention-notification-template-body
com.atlassian.streams	910	2021-03-10 06:59:58.026	date-mr-IN
com.atlassian.confluence.plugins.confluence-roadmap-plugin	911	2021-03-10 06:59:58.026	roadmap-create-page-context
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	912	2021-03-10 06:59:58.026	page-edited-notification-template-body
com.atlassian.streams.confluence	913	2021-03-10 06:59:58.026	date-ar-MA
com.atlassian.confluence.plugins.confluence-remote-page-view-plugin	914	2021-03-10 06:59:58.026	rpv-serviceDeskExternalCustomerServletFilter-filter
com.atlassian.confluence.plugins.drag-and-drop	915	2021-03-10 06:59:58.026	image-dialog-client
com.atlassian.confluence.plugins.confluence-content-property-storage	916	2021-03-10 06:59:58.026	content-property
confluence.converters.core	917	2021-03-10 06:59:58.026	page-converter
confluence.macros.advanced	918	2021-03-10 06:59:58.026	xhtml-blog-posts
com.atlassian.confluence.plugins.confluence-feature-discovery-plugin	919	2021-03-10 06:59:58.026	transactionTemplate
confluence.web.resources	920	2021-03-10 06:59:58.026	floating-scrollbar
com.atlassian.querylang.confluence-cql-plugin	921	2021-03-10 06:59:58.026	watcher-field
com.atlassian.confluence.plugins.confluence-create-content-plugin	922	2021-03-10 06:59:58.026	blueprintResolver
com.atlassian.confluence.plugins.confluence-business-blueprints	923	2021-03-10 06:59:58.026	i18nBeanFactory
com.atlassian.applinks.applinks-plugin	924	2021-03-10 06:59:58.026	webFragmentHelper
com.atlassian.confluence.extra.officeconnector	925	2021-03-10 06:59:58.026	wordContentExtractor
com.atlassian.auiplugin	926	2021-03-10 06:59:58.026	internal-skatejs-0.13.17-lib-version
confluence.sections.admin.indexing	927	2021-03-10 06:59:58.026	resources
com.atlassian.streams.confluence	928	2021-03-10 06:59:58.026	date-ar-LY
com.atlassian.confluence.plugins.confluence-email-tracker	929	2021-03-10 06:59:58.026	emailTrackerServlet
com.atlassian.confluence.plugins.confluence-email-resources	930	2021-03-10 06:59:58.026	template-utils-fail-safe-user-link-1.0.0
confluence.sections.space	931	2021-03-10 06:59:58.026	space-blogposts
confluence.search.mappers.lucene	932	2021-03-10 06:59:58.026	booleanSearchFilter
confluence.extra.confluencerpc	933	2021-03-10 06:59:58.026	wikiSoapService
com.atlassian.confluence.plugins.gadgets	934	2021-03-10 06:59:58.026	cacheStatisticsManager
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	935	2021-03-10 06:59:58.026	underscoreTemplateRenderer
confluence.extractors.core	936	2021-03-10 06:59:58.026	objectDateExtractor
com.atlassian.confluence.plugins.confluence-roadmap-plugin	937	2021-03-10 06:59:58.026	actions
tac.confluence.languages.ru_RU	938	2021-03-10 06:59:58.026	ru_RU
com.atlassian.confluence.plugins.confluence-files	939	2021-03-10 06:59:58.026	transactionTemplate
com.atlassian.applinks.applinks-trustedapps-plugin	940	2021-03-10 06:59:58.026	applicationProperties
com.atlassian.plugin.notifications.notifications-module	941	2021-03-10 06:59:58.026	notificationMediumManager
com.atlassian.confluence.plugins.confluence-business-blueprints	942	2021-03-10 06:59:58.026	sharePageService
com.atlassian.confluence.plugins.templates-framework	943	2021-03-10 06:59:58.026	templates_js
com.atlassian.confluence.extra.officeconnector	944	2021-03-10 06:59:58.026	viewfile-legacy
confluence.sections.admin	945	2021-03-10 06:59:58.026	mailqueue
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	946	2021-03-10 06:59:58.026	pluginSettingsFactory
com.atlassian.confluence.plugins.confluence-create-content-plugin	947	2021-03-10 06:59:58.026	space-blueprint
com.atlassian.applinks.applinks-plugin	948	2021-03-10 06:59:58.026	page-applink-edit
com.atlassian.oauth.serviceprovider	949	2021-03-10 06:59:58.026	oAuthRequestVerifierFactory
com.atlassian.confluence.plugins.confluence-software-blueprints	950	2021-03-10 06:59:58.026	requirements-blueprint
confluence.extra.jira	951	2021-03-10 06:59:58.026	editor-featured-macro-jira
confluence.sections.admin	952	2021-03-10 06:59:58.026	indexing
confluence.lifecycle.core	953	2021-03-10 06:59:58.026	xhtmlWikiMarkupMacroMigration
com.atlassian.confluence.plugins.confluence-sal-plugin	954	2021-03-10 06:59:58.026	loginUriProvider
com.atlassian.auiplugin	955	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-progressive-data-set
com.atlassian.mywork.mywork-confluence-host-plugin	956	2021-03-10 06:59:58.026	i18nResolver
com.atlassian.favicon.confluence-custom-favicon-plugin	957	2021-03-10 06:59:58.026	favicon-plugin-resources
confluence.renderer.components	958	2021-03-10 06:59:58.026	html-entity-tokenize
com.atlassian.confluence.plugins.confluence-templates	959	2021-03-10 06:59:58.026	viewTransformer
com.atlassian.streams.confluence	960	2021-03-10 06:59:58.026	date-ar-OM
com.atlassian.confluence.plugins.confluence-like	961	2021-03-10 06:59:58.026	networkService
com.atlassian.confluence.plugins.confluence-ui-components	962	2021-03-10 06:59:58.026	page-picker
com.atlassian.confluence.plugins.confluence-image-attributes	963	2021-03-10 06:59:58.026	soy-resources
com.atlassian.analytics.analytics-client	964	2021-03-10 06:59:58.026	eventAnonymizer
com.atlassian.auiplugin	965	2021-03-10 06:59:58.026	aui-experimental-page-layout-typography-legacy1
com.atlassian.confluence.plugins.search.confluence-search	966	2021-03-10 06:59:58.026	confluence-search-resources
com.atlassian.auiplugin	967	2021-03-10 06:59:58.026	aui-experimental-restfultable
com.atlassian.plugins.atlassian-nav-links-plugin	968	2021-03-10 06:59:58.026	project-shortcuts-rest-filter
com.atlassian.plugins.atlassian-plugins-webresource-rest	969	2021-03-10 06:59:58.026	web-resource-manager
com.atlassian.streams	970	2021-03-10 06:59:58.026	date-de-DE
confluence.listeners.core	971	2021-03-10 06:59:58.026	clusterPanicListener
confluence.extra.confluencerpc	972	2021-03-10 06:59:58.026	spacesSoapService
confluence.web.components	973	2021-03-10 06:59:58.026	core
com.atlassian.confluence.plugins.confluence-mobile	974	2021-03-10 06:59:58.026	dashboard-dependencies
com.atlassian.auiplugin	975	2021-03-10 06:59:58.026	aui-mobile-suite
com.atlassian.confluence.plugins.confluence-software-blueprints	976	2021-03-10 06:59:58.026	retrospective-resources
com.atlassian.streams	978	2021-03-10 06:59:58.026	streamsWebResources
confluence.extractors.core	979	2021-03-10 06:59:58.026	untokenizedTitleExtractor
com.atlassian.confluence.plugins.confluence-like	980	2021-03-10 06:59:58.026	confluenceNotificationPreferenceManager
confluence.listeners.core	981	2021-03-10 06:59:58.026	createPersonalSpaceListener
com.atlassian.streams.confluence	982	2021-03-10 06:59:58.026	date-ar-AE
confluence.extra.webdav	983	2021-03-10 06:59:58.026	davResourceFactory
confluence.listeners.core	984	2021-03-10 06:59:58.026	followNotificationsListener
com.atlassian.integration.jira.jira-integration-plugin	985	2021-03-10 06:59:58.026	fields
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	986	2021-03-10 06:59:58.026	hamletClient
com.atlassian.confluence.plugins.gadgets	987	2021-03-10 06:59:58.026	gadget-user-settings
com.atlassian.confluence.plugins.quickreload	988	2021-03-10 06:59:58.026	permissionManager
com.atlassian.confluence.plugins.confluence-files	989	2021-03-10 06:59:58.026	attachmentManager
com.atlassian.confluence.plugins.confluence-previews	990	2021-03-10 06:59:58.026	confluencePreviewsWhitelist
com.atlassian.oauth.serviceprovider	991	2021-03-10 06:59:58.026	getAuthorizationProcessor
confluence.web.resources	992	2021-03-10 06:59:58.026	macro-js-overrides
confluence.sections.space.admin	993	2021-03-10 06:59:58.026	editspace
com.atlassian.plugins.atlassian-nav-links-plugin	994	2021-03-10 06:59:58.026	soyTemplateRenderer
com.atlassian.confluence.plugins.confluence-easyuser-admin	995	2021-03-10 06:59:58.026	eventPublisher
confluence.sections.space	996	2021-03-10 06:59:58.026	space-pages
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	997	2021-03-10 06:59:58.026	blogpost-created-hipchat-notification-template-body
com.atlassian.confluence.plugins.confluence-browser-metrics	998	2021-03-10 06:59:58.026	editor
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	999	2021-03-10 06:59:58.026	hostApplicationLicenseFactory
com.atlassian.confluence.plugins.confluence-create-content-plugin	1000	2021-03-10 06:59:58.026	contentBlueprintInstanceAdapter
com.atlassian.streams	1001	2021-03-10 06:59:58.026	date-se-FI
confluence.extra.information	1002	2021-03-10 06:59:58.026	warning
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1003	2021-03-10 06:59:58.026	upm-dac-landing-page-templates
com.atlassian.confluence.plugins.confluence-user-rest	1004	2021-03-10 06:59:58.026	usersEntityBuilder
com.atlassian.auiplugin	1005	2021-03-10 06:59:58.026	jquery-lib
com.atlassian.streams.confluence	1006	2021-03-10 06:59:58.026	transactionTemplate
com.atlassian.streams	1007	2021-03-10 06:59:58.026	date-cy-GB
com.atlassian.support.stp	1008	2021-03-10 06:59:58.026	salPluginSettingsFactory
com.atlassian.streams	1009	2021-03-10 06:59:58.026	configRepresentationBuilder
com.atlassian.auiplugin	1010	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-banner
com.atlassian.confluence.plugins.confluence-like	1011	2021-03-10 06:59:58.026	like-created-notification-template-body
com.atlassian.gadgets.publisher	1012	2021-03-10 06:59:58.026	ajs-gadgets
com.atlassian.plugins.atlassian-nav-links-plugin	1013	2021-03-10 06:59:58.026	custom-app-store
confluence.content.action.menu	1014	2021-03-10 06:59:58.026	view-history
com.atlassian.querylang.confluence-cql-plugin	1015	2021-03-10 06:59:58.026	title-text-field
confluence.web.resources	1016	2021-03-10 06:59:58.026	safe-ajax
confluence.web.resources	1017	2021-03-10 06:59:58.026	page-location
confluence.web.resources	1018	2021-03-10 06:59:58.026	marionette
com.atlassian.applinks.applinks-plugin	1019	2021-03-10 06:59:58.026	applinks-oauth-ui
confluence.macros.multimedia	1020	2021-03-10 06:59:58.026	real-media
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1021	2021-03-10 06:59:58.026	notificationsEventDispatcher
com.atlassian.confluence.plugins.confluence-previews	1022	2021-03-10 06:59:58.026	fileviewer-core
com.atlassian.confluence.plugins.view-source	1023	2021-03-10 06:59:58.026	view-source
confluence.sections.admin	1024	2021-03-10 06:59:58.026	usermacros
com.atlassian.auiplugin	1025	2021-03-10 06:59:58.026	ajs-raphael
confluence.user.menu.concise	1026	2021-03-10 06:59:58.026	user-history
com.atlassian.querylang.confluence-cql-plugin	1027	2021-03-10 06:59:58.026	confluence-cql-plugin-resources
com.atlassian.confluence.plugins.confluence-sal-plugin	1028	2021-03-10 06:59:58.026	transactionTemplate
com.atlassian.confluence.plugins.gadgets	1029	2021-03-10 06:59:58.026	cdnActivationListener
com.atlassian.confluence.plugins.confluence-sal-plugin	1030	2021-03-10 06:59:58.026	pluginAccessor
confluence.macros.dashboard	1031	2021-03-10 06:59:58.026	old-dashboard-resource-loader
confluence.extra.jira	1032	2021-03-10 06:59:58.026	jiraissues-xhtml
com.atlassian.confluence.plugins.confluence-user-profile	1033	2021-03-10 06:59:58.026	avatar-picker
com.atlassian.plugins.atlassian-nav-links-plugin	1034	2021-03-10 06:59:58.026	projectPermissionManager
com.atlassian.streams.confluence	1035	2021-03-10 06:59:58.026	date-ar-BH
confluence.web.resources	1036	2021-03-10 06:59:58.026	fancy-box
com.atlassian.confluence.plugins.confluence-lookandfeel	1037	2021-03-10 06:59:58.026	imageScaler
com.atlassian.confluence.plugins.confluence-email-resources	1038	2021-03-10 06:59:58.026	content-templates-contextual-excerpt-pattern-2.0.0
com.atlassian.confluence.plugins.confluence-email-resources	1039	2021-03-10 06:59:58.026	notification-templates-page-moved-1.0.0
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1040	2021-03-10 06:59:58.026	permissionService
com.atlassian.confluence.plugins.confluence-mobile	1041	2021-03-10 06:59:58.026	storageDefaultFragmentTransformerFactory
com.atlassian.confluence.plugins.confluence-lookandfeel	1042	2021-03-10 06:59:58.026	applicationProperties
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	1043	2021-03-10 06:59:58.026	hipChatLinkProvider
com.atlassian.prettyurls.atlassian-pretty-urls-plugin	1044	2021-03-10 06:59:58.026	prettyurls-sitemesh-filter-before-dispatch
com.atlassian.support.stp	1045	2021-03-10 06:59:58.026	loginUriProvider
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1046	2021-03-10 06:59:58.026	confluenceAccessManager
confluence.extra.webdav	1047	2021-03-10 06:59:58.026	webdavconfig
com.atlassian.auiplugin	1048	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-messages
com.atlassian.plugins.atlassian-nav-links-plugin	1049	2021-03-10 06:59:58.026	capabilities-forward
com.atlassian.streams.confluence	1050	2021-03-10 06:59:58.026	date-ar-EG
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1051	2021-03-10 06:59:58.026	page-edited-hipchat-notification-template-body
confluence.extra.masterdetail	1052	2021-03-10 06:59:58.026	details-migrator
com.atlassian.confluence.plugins.confluence-link-browser	1053	2021-03-10 06:59:58.026	link-browser-tab-files
com.atlassian.confluence.ext.newcode-macro-plugin	1054	2021-03-10 06:59:58.026	sh-theme-django
com.atlassian.plugins.atlassian-nav-links-plugin	1055	2021-03-10 06:59:58.026	app-link-service
com.atlassian.auiplugin	1056	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-navigation
confluence.sections.space.advanced	1057	2021-03-10 06:59:58.026	subscribesection
com.atlassian.plugins.atlassian-nav-links-plugin	1058	2021-03-10 06:59:58.026	custom-content-link-provider
com.atlassian.confluence.plugins.confluence-daily-summary-email	1059	2021-03-10 06:59:58.026	daily-summary-popular-content
com.atlassian.confluence.extra.widgetconnector	1060	2021-03-10 06:59:58.026	myspacevideo
com.atlassian.streams.confluence	1061	2021-03-10 06:59:58.026	date-ar-DZ
com.atlassian.confluence.plugins.confluence-ui-components	1062	2021-03-10 06:59:58.026	user-group-select2
com.atlassian.gadgets.oauth.serviceprovider	1063	2021-03-10 06:59:58.026	stringEscapeUtilContextItem
tac.confluence.languages.ja_JP	1064	2021-03-10 06:59:58.026	ja_JP
com.atlassian.auiplugin	1065	2021-03-10 06:59:58.026	aui-experimental-dropdown2
com.atlassian.gadgets.publisher	1066	2021-03-10 06:59:58.026	templates
com.atlassian.plugins.rest.atlassian-rest-module	1067	2021-03-10 06:59:58.026	rest-seraph-filter
confluence.extractors.core	1068	2021-03-10 06:59:58.026	personalInformationExtractor
com.atlassian.templaterenderer.atlassian-template-renderer-velocity1.6-plugin	1069	2021-03-10 06:59:58.026	templateContextFactory
com.atlassian.confluence.plugins.confluence-create-content-plugin	1070	2021-03-10 06:59:58.026	content-template
com.atlassian.mywork.mywork-confluence-host-plugin	1071	2021-03-10 06:59:58.026	userDeletedListener
com.atlassian.support.stp	1072	2021-03-10 06:59:58.026	permissionValidationService
com.atlassian.confluence.plugins.quickreload	1073	2021-03-10 06:59:58.026	rest-filter
com.atlassian.confluence.plugins.confluence-onboarding	1074	2021-03-10 06:59:58.026	notificationUserService
com.atlassian.confluence.plugins.confluence-sal-plugin	1075	2021-03-10 06:59:58.026	tenantAccessor
com.atlassian.auiplugin	1076	2021-03-10 06:59:58.026	jquery-selection
com.atlassian.confluence.editor	1077	2021-03-10 06:59:58.026	utils-resources
com.atlassian.confluence.plugins.confluence-email-resources	1078	2021-03-10 06:59:58.026	notification-templates-status-updated-1.0.0
com.atlassian.confluence.plugins.confluence-jira-content	1079	2021-03-10 06:59:58.026	confluence-jira-content-resources
confluence.search.mappers.lucene	1080	2021-03-10 06:59:58.026	excludePersonalInformationSearchFilter
com.atlassian.streams.confluence	1081	2021-03-10 06:59:58.026	date-sa-IN
confluence.sections.space.advanced	1082	2021-03-10 06:59:58.026	startwatchingblogs
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1083	2021-03-10 06:59:58.026	contentEntityManager
com.atlassian.confluence.plugins.confluence-highlight-actions	1084	2021-03-10 06:59:58.026	highlighting-experiment-resources
com.atlassian.confluence.plugins.confluence-link-browser	1085	2021-03-10 06:59:58.026	link-browser-resources
com.atlassian.confluence.plugins.confluence-sal-plugin	1086	2021-03-10 06:59:58.026	httpClientTrustedRequestFactory
com.atlassian.integration.jira.jira-integration-plugin	1087	2021-03-10 06:59:58.026	issue-jump-servlet
com.atlassian.confluence.plugins.gadgets.spi	1088	2021-03-10 06:59:58.026	subscribedGadgetFeedStore
confluence.user.hover.menu	1089	2021-03-10 06:59:58.026	primary
confluence.search.mappers.lucene	1090	2021-03-10 06:59:58.026	filesize
confluence.macros.advanced	1091	2021-03-10 06:59:58.026	children
com.atlassian.confluence.plugins.confluence-file-notifications	1092	2021-03-10 06:59:58.026	file-content-recipients-provider
com.atlassian.confluence.ext.newcode-macro-plugin	1093	2021-03-10 06:59:58.026	configure-newcode
com.atlassian.confluence.plugins.confluence-email-resources	1094	2021-03-10 06:59:58.026	batch-notification-templates
com.atlassian.plugin.notifications.notifications-module	1095	2021-03-10 06:59:58.026	notification-queue
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1096	2021-03-10 06:59:58.026	licenseReceiptHandler
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1097	2021-03-10 06:59:58.026	comment-created-notification-template-body
com.atlassian.confluence.plugins.confluence-create-content-plugin	1098	2021-03-10 06:59:58.026	spaceBlueprintManager
com.atlassian.streams.confluence	1099	2021-03-10 06:59:58.026	date-az-Latn-AZ
com.atlassian.streams	1100	2021-03-10 06:59:58.026	date-fi-FI
com.atlassian.confluence.plugins.confluence-mentions-plugin	1101	2021-03-10 06:59:58.026	mentions-email-soy-templates-2
com.atlassian.plugins.base-hipchat-integration-plugin	1102	2021-03-10 06:59:58.026	invites-soy-resources
com.atlassian.confluence.plugins.confluence-inline-comments	1103	2021-03-10 06:59:58.026	confluence-inline-resolved-batching
com.atlassian.confluence.plugins.confluence-mobile	1104	2021-03-10 06:59:58.026	dashboard-servlet
com.atlassian.streams	1105	2021-03-10 06:59:58.026	date-az-Cyrl-AZ
com.atlassian.confluence.extra.widgetconnector	1106	2021-03-10 06:59:58.026	twitter
confluence.sections.page.operations	1107	2021-03-10 06:59:58.026	wordexport
com.atlassian.confluence.plugins.confluence-knowledge-base	1108	2021-03-10 06:59:58.026	kb-article-resources
confluence.web.resources	1109	2021-03-10 06:59:58.026	print-styles
com.atlassian.confluence.plugins.confluence-inline-tasks	1110	2021-03-10 06:59:58.026	task-report-blueprint-resources
com.atlassian.confluence.plugins.confluence-email-resources	1111	2021-03-10 06:59:58.026	template-utils-floating-table-1.0.0
com.atlassian.gadgets.opensocial	1112	2021-03-10 06:59:58.026	guice-context-listener
com.atlassian.confluence.plugins.confluence-inline-comments	1113	2021-03-10 06:59:58.026	inlinecomment.sidebar.navigate.previous
com.atlassian.activeobjects.confluence.spi	1114	2021-03-10 06:59:58.026	dialectExractor
com.atlassian.confluence.plugins.confluence-create-content-plugin	1115	2021-03-10 06:59:58.026	removeSpaceListener
com.atlassian.plugins.base-hipchat-integration-plugin	1116	2021-03-10 06:59:58.026	hipchat-webhook
com.atlassian.confluence.plugins.confluence-document-conversion-library	1117	2021-03-10 06:59:58.026	conversionQueueMonitor
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	1118	2021-03-10 06:59:58.026	hipchat-invite-resources
com.atlassian.streams	1119	2021-03-10 06:59:58.026	applinkService
com.atlassian.plugins.atlassian-plugins-webresource-rest	1120	2021-03-10 06:59:58.026	web-resources-filter
com.atlassian.confluence.plugins.confluence-view-file-macro	1121	2021-03-10 06:59:58.026	view-file-macro-amd-resources
confluence.sections.space.tools	1122	2021-03-10 06:59:58.026	watch-blog
com.atlassian.auiplugin	1123	2021-03-10 06:59:58.026	aui-experimental-avatars
com.atlassian.applinks.applinks-plugin	1124	2021-03-10 06:59:58.026	page-v3
com.atlassian.confluence.keyboardshortcuts	1125	2021-03-10 06:59:58.026	keyboard-shortcuts-dialog-help-menu
com.atlassian.plugins.atlassian-nav-links-plugin	1126	2021-03-10 06:59:58.026	capability-client
com.atlassian.plugin.notifications.notifications-module	1127	2021-03-10 06:59:58.026	product
com.atlassian.confluence.plugins.confluence-previews	1128	2021-03-10 06:59:58.026	confluence-previews-pdf
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1129	2021-03-10 06:59:58.026	appManager
com.atlassian.confluence.plugins.confluence-license-banner	1130	2021-03-10 06:59:58.026	suppressStp1
com.atlassian.plugins.atlassian-nav-links-plugin	1131	2021-03-10 06:59:58.026	cacheFactory
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1132	2021-03-10 06:59:58.026	confluenceUserI18nResolver
com.atlassian.confluence.plugins.search.confluence-search	1133	2021-03-10 06:59:58.026	disabledContentTypeFilterFactory
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1134	2021-03-10 06:59:58.026	pluginRequestNotificationChecker
confluence.sections.space.admin	1135	2021-03-10 06:59:58.026	trash
com.atlassian.auiplugin	1136	2021-03-10 06:59:58.026	aui-page-suite
com.atlassian.streams	1137	2021-03-10 06:59:58.026	rest-filter
confluence.sections.space.tools	1138	2021-03-10 06:59:58.026	space-attachments
com.atlassian.streams	1139	2021-03-10 06:59:58.026	userManager
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1140	2021-03-10 06:59:58.026	upm-dac-landing-page-resources
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1141	2021-03-10 06:59:58.026	pluginControlHandlerRegistry
com.atlassian.confluence.plugins.gadgets	1142	2021-03-10 06:59:58.026	gadgetFeedReaderFactory
com.atlassian.support.stp	1143	2021-03-10 06:59:58.026	renderer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1144	2021-03-10 06:59:58.026	requests-servlet
com.atlassian.applinks.applinks-plugin	1145	2021-03-10 06:59:58.026	feature-oauth-dance
com.atlassian.applinks.applinks-plugin	1146	2021-03-10 06:59:58.026	auth-config-css
com.atlassian.confluence.plugins.confluence-business-blueprints	1147	2021-03-10 06:59:58.026	sharelinks-page
com.atlassian.auiplugin	1148	2021-03-10 06:59:58.026	aui-experimental-badge
com.atlassian.confluence.plugins.confluence-software-project	1149	2021-03-10 06:59:58.026	sp-space-file-lists-template
com.atlassian.confluence.plugins.confluence-lookandfeel	1150	2021-03-10 06:59:58.026	sitelogo-resources
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1151	2021-03-10 06:59:58.026	blogpost-edited-notification-template-body
com.atlassian.confluence.plugins.confluence-remote-page-view-plugin	1152	2021-03-10 06:59:58.026	remote-view-page-web-css-resource
confluence.sections.admin	1153	2021-03-10 06:59:58.026	license
com.atlassian.applinks.applinks-plugin	1154	2021-03-10 06:59:58.026	list-application-links
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1155	2021-03-10 06:59:58.026	pluginLicenseEventPublisherRegistry
com.atlassian.support.healthcheck.support-healthcheck-plugin	1156	2021-03-10 06:59:58.026	supportHealthCheckManager
com.atlassian.confluence.plugins.confluence-easyuser-admin	1157	2021-03-10 06:59:58.026	wikiStyleRenderer
com.atlassian.auiplugin	1158	2021-03-10 06:59:58.026	layer
com.atlassian.confluence.plugins.confluence-user-profile	1159	2021-03-10 06:59:58.026	user-avatar-resource-filter
com.atlassian.support.stp	1160	2021-03-10 06:59:58.026	stp-license-banner-data
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1161	2021-03-10 06:59:58.026	urlReadingWebResourceUrlBuilder
com.atlassian.confluence.plugins.confluence-labels	1162	2021-03-10 06:59:58.026	labels-resources
confluence.macros.basic	1163	2021-03-10 06:59:58.026	noformat
com.atlassian.applinks.applinks-plugin	1164	2021-03-10 06:59:58.026	xsrfTokenAccessor
confluence.extractors.core	1165	2021-03-10 06:59:58.026	spaceDescriptionUserNameExtractor
confluence.content.action.menu	1166	2021-03-10 06:59:58.026	secondary
confluence.content.action.menu	1167	2021-03-10 06:59:58.026	move-page
com.atlassian.streams.confluence.inlineactions	1168	2021-03-10 06:59:58.026	actionHandlers
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1169	2021-03-10 06:59:58.026	upm-manage-plugins-resources
com.atlassian.streams	1170	2021-03-10 06:59:58.026	date-sms-FI
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1171	2021-03-10 06:59:58.026	eventPublisher
com.atlassian.confluence.plugins.confluence-view-file-macro	1172	2021-03-10 06:59:58.026	view-file-macro-editor-resources
com.atlassian.applinks.applinks-plugin	1173	2021-03-10 06:59:58.026	generic
com.atlassian.confluence.plugins.confluence-mentions-plugin	1174	2021-03-10 06:59:58.026	mention-notification-template
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	1175	2021-03-10 06:59:58.026	openFilesHealthCheck
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1176	2021-03-10 06:59:58.026	dataSourceFactory
com.atlassian.applinks.applinks-plugin	1177	2021-03-10 06:59:58.026	model-applink
confluence.listeners.core	1178	2021-03-10 06:59:58.026	createUserNotificationsListener
com.atlassian.confluence.plugins.confluence-quicknav	1179	2021-03-10 06:59:58.026	quicknav-panel
com.atlassian.streams.confluence	1180	2021-03-10 06:59:58.026	date-de-LU
com.atlassian.confluence.plugins.confluence-knowledge-base	1181	2021-03-10 06:59:58.026	salDarkFeatureManager
com.atlassian.applinks.applinks-cors-plugin	1182	2021-03-10 06:59:58.026	i18nResolver
confluence.macros.advanced	1183	2021-03-10 06:59:58.026	xhtml-excerpt-include
com.atlassian.plugins.base-hipchat-integration-plugin	1184	2021-03-10 06:59:58.026	inviteServlet
confluence.admin.user	1185	2021-03-10 06:59:58.026	browse-users-tab-search
confluence.extra.masterdetail	1186	2021-03-10 06:59:58.026	clearCacheUpgradeTask
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	1187	2021-03-10 06:59:58.026	userManager
com.atlassian.confluence.plugins.confluence-email-resources	1188	2021-03-10 06:59:58.026	view-page-email-call-to-action
confluence.macros.basic	1189	2021-03-10 06:59:58.026	loremipsum
com.atlassian.streams.actions	1190	2021-03-10 06:59:58.026	actionHandlerAccessor
com.atlassian.streams.confluence	1191	2021-03-10 06:59:58.026	date-id-ID
com.atlassian.confluence.plugins.confluence-email-resources	1192	2021-03-10 06:59:58.026	chrome-template
com.atlassian.streams.confluence	1193	2021-03-10 06:59:58.026	date-sw-KE
com.atlassian.applinks.applinks-plugin	1194	2021-03-10 06:59:58.026	feature-applink-status
com.atlassian.plugin.jslibs	1195	2021-03-10 06:59:58.026	backbone-1.0.0-factory
com.atlassian.applinks.applinks-cors-plugin	1196	2021-03-10 06:59:58.026	requestFactory
confluence.extra.information	1197	2021-03-10 06:59:58.026	xhtml-tip
com.atlassian.analytics.analytics-client	1198	2021-03-10 06:59:58.026	pluginEventManager
com.atlassian.applinks.applinks-oauth-plugin	1199	2021-03-10 06:59:58.026	oAuthConfigListener
com.atlassian.confluence.plugins.confluence-remote-page-view-plugin	1200	2021-03-10 06:59:58.026	rpv-serviceDeskExternalCustomerServletFilter-component
com.atlassian.streams.confluence	1201	2021-03-10 06:59:58.026	date-de-LI
com.atlassian.analytics.analytics-client	1202	2021-03-10 06:59:58.026	schedulerComponent
com.atlassian.applinks.applinks-plugin	1203	2021-03-10 06:59:58.026	redirectController
com.atlassian.confluence.plugins.confluence-create-content-plugin	1204	2021-03-10 06:59:58.026	ao
com.atlassian.plugin.notifications.notifications-module	1205	2021-03-10 06:59:58.026	passwordEncrypter
com.atlassian.support.stp	1206	2021-03-10 06:59:58.026	pluginAccessor
com.atlassian.streams.confluence	1207	2021-03-10 06:59:58.026	date-sma-NO
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	1208	2021-03-10 06:59:58.026	jdkHealthCheck
confluence.web.panel.renderers	1209	2021-03-10 06:59:58.026	confluenceAwareWebPanelRenderer
com.atlassian.confluence.keyboardshortcuts	1210	2021-03-10 06:59:58.026	linktopage
com.atlassian.confluence.plugins.confluence-image-attributes	1211	2021-03-10 06:59:58.026	image-properties-tab-attributes
com.atlassian.mywork.mywork-confluence-host-plugin	1212	2021-03-10 06:59:58.026	task-dao
com.atlassian.streams.confluence	1213	2021-03-10 06:59:58.026	uriProvider
com.atlassian.confluence.plugins.recently-viewed-plugin	1214	2021-03-10 06:59:58.026	tx-processor
com.atlassian.applinks.applinks-cors-plugin	1215	2021-03-10 06:59:58.026	webSudoManager
com.atlassian.auiplugin	1216	2021-03-10 06:59:58.026	aui-select2
com.atlassian.applinks.applinks-plugin	1217	2021-03-10 06:59:58.026	templateRenderer
com.atlassian.oauth.serviceprovider	1218	2021-03-10 06:59:58.026	serviceProviderFactory
com.atlassian.querylang.confluence-cql-plugin	1219	2021-03-10 06:59:58.026	space-title-field
com.atlassian.confluence.plugins.confluence-onboarding	1220	2021-03-10 06:59:58.026	confluence-efi-rest
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	1221	2021-03-10 06:59:58.026	hipchat-resources
com.atlassian.confluence.plugins.confluence-inline-comments	1222	2021-03-10 06:59:58.026	sidebar-view
com.atlassian.streams.confluence	1223	2021-03-10 06:59:58.026	formatSettingsManager
com.atlassian.confluence.plugins.confluence-edge-index	1224	2021-03-10 06:59:58.026	rest
com.atlassian.templaterenderer.atlassian-template-renderer-velocity1.6-plugin	1225	2021-03-10 06:59:58.026	velocity-1.6-template-renderer-factory
com.atlassian.plugins.atlassian-nps-plugin	1226	2021-03-10 06:59:58.026	atlassian-nps-plugin-resources
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	1227	2021-03-10 06:59:58.026	atlassian-cluster-monitoring
com.atlassian.confluence.plugins.soy	1228	2021-03-10 06:59:58.026	soy-format-time-function
com.atlassian.confluence.plugins.confluence-onboarding	1229	2021-03-10 06:59:58.026	webItemService
com.atlassian.confluence.plugins.confluence-email-resources	1230	2021-03-10 06:59:58.026	view-blogpost-email-adg-footer-item
com.atlassian.confluence.plugins.confluence-email-resources	1231	2021-03-10 06:59:58.026	notification-templates-comment-add-2.0.0
com.atlassian.streams	1232	2021-03-10 06:59:58.026	date-de-AT
com.atlassian.confluence.plugins.quickedit	1233	2021-03-10 06:59:58.026	editor-view-resources
confluence.extra.masterdetail	1234	2021-03-10 06:59:58.026	detailssummary
com.atlassian.streams	1235	2021-03-10 06:59:58.026	feedSanitizer
com.atlassian.auiplugin	1236	2021-03-10 06:59:58.026	aui-experimental-page-layout
com.atlassian.auiplugin	1237	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-restful-table-custom-create-view
com.atlassian.confluence.extra.officeconnector	1238	2021-03-10 06:59:58.026	wordimportresource
com.atlassian.confluence.plugins.confluence-view-file-macro	1239	2021-03-10 06:59:58.026	filePlaceholderGeneratorServlet
com.atlassian.streams	1240	2021-03-10 06:59:58.026	date-kk-KZ
com.atlassian.confluence.plugins.whatsnew	1241	2021-03-10 06:59:58.026	whatsNewManager
com.atlassian.streams.confluence	1242	2021-03-10 06:59:58.026	date-ru-RU
com.atlassian.confluence.plugins.confluence-paste	1243	2021-03-10 06:59:58.026	autoconvert-linkedin-links
com.atlassian.plugins.browser.metrics.browser-metrics-plugin	1244	2021-03-10 06:59:58.026	manifestoHashAdapter
com.atlassian.confluence.plugins.confluence-onboarding	1245	2021-03-10 06:59:58.026	storage-service
confluence.extra.webdav	1246	2021-03-10 06:59:58.026	contentJobQueueExecutorTrigger
com.atlassian.confluence.plugins.confluence-like	1247	2021-03-10 06:59:58.026	notificationStoreService
tac.confluence.languages.pt_BR	1248	2021-03-10 06:59:58.026	pt_BR
com.atlassian.confluence.plugins.confluence-daily-summary-email	1249	2021-03-10 06:59:58.026	i18nResolver
com.atlassian.mywork.mywork-confluence-provider-plugin	1250	2021-03-10 06:59:58.026	tasksEventListener
com.atlassian.confluence.plugins.confluence-onboarding	1251	2021-03-10 06:59:58.026	eventPublisher
com.atlassian.plugins.atlassian-whitelist-ui-plugin	1252	2021-03-10 06:59:58.026	loginUriProvider
com.atlassian.confluence.extra.officeconnector	1253	2021-03-10 06:59:58.026	worddavadmin
com.atlassian.auiplugin	1254	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-internal-constants
confluence.sections.admin	1255	2021-03-10 06:59:58.026	colourscheme
confluence.converters.core	1256	2021-03-10 06:59:58.026	user-statuslist-converter
com.atlassian.streams	1257	2021-03-10 06:59:58.026	date-de-CH
confluence.web.resources	1258	2021-03-10 06:59:58.026	es6-promise
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	1259	2021-03-10 06:59:58.026	requiredPluginsHealthCheck
com.atlassian.confluence.extra.widgetconnector	1260	2021-03-10 06:59:58.026	ooyalaConfigurationManager
com.atlassian.plugins.atlassian-nav-links-plugin	1261	2021-03-10 06:59:58.026	custom-content-links
confluence.macros.advanced	1262	2021-03-10 06:59:58.026	nonViewableContentTypeSearchFilter
confluence.sections.admin.header	1263	2021-03-10 06:59:58.026	administration
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1264	2021-03-10 06:59:58.026	comment-edited-hipchat-notification-template-body
com.atlassian.confluence.plugins.confluence-mobile	1265	2021-03-10 06:59:58.026	transactionTemplate
confluence.extra.userlister	1266	2021-03-10 06:59:58.026	defaultUserListManager
com.atlassian.confluence.plugins.confluence-templates	1267	2021-03-10 06:59:58.026	saveTransformer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1268	2021-03-10 06:59:58.026	xmlPluginInstallHandler
confluence.user.menu	1269	2021-03-10 06:59:58.026	personal-space
com.atlassian.confluence.plugins.share-page	1270	2021-03-10 06:59:58.026	hipchat-resources-2.0.0
com.atlassian.confluence.plugins.soy	1271	2021-03-10 06:59:58.026	soy-format-date-time-function
com.atlassian.analytics.analytics-client	1272	2021-03-10 06:59:58.026	salHttpContextProvider
com.atlassian.confluence.keyboardshortcuts	1273	2021-03-10 06:59:58.026	goto.space
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1274	2021-03-10 06:59:58.026	upm-purchased-addons-templates
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1275	2021-03-10 06:59:58.026	confluenceNotificationsSpiAnalyticsWhitelist
com.atlassian.confluence.plugins.confluence-monitoring-console	1276	2021-03-10 06:59:58.026	monitoringControl
com.atlassian.confluence.plugins.confluence-highlight-actions	1277	2021-03-10 06:59:58.026	permissionManager
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	1278	2021-03-10 06:59:58.026	luceneHealthCheck
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	1279	2021-03-10 06:59:58.026	characterSetCheck
com.atlassian.crowd.embedded.admin	1280	2021-03-10 06:59:58.026	confluence-users-default-group
com.atlassian.confluence.extra.widgetconnector	1281	2021-03-10 06:59:58.026	googlemaps
com.atlassian.confluence.plugins.confluence-knowledge-base	1282	2021-03-10 06:59:58.026	kb-space-homepage-template
confluence.macros.advanced	1283	2021-03-10 06:59:58.026	galleryMacroMigrator
com.atlassian.streams.streams-thirdparty-plugin	1284	2021-03-10 06:59:58.026	pluginAccessor
com.atlassian.analytics.analytics-client	1285	2021-03-10 06:59:58.026	confluenceSenProvider
com.atlassian.confluence.plugins.confluence-email-resources	1286	2021-03-10 06:59:58.026	view-full-history-email-batch-item
com.atlassian.confluence.plugins.confluence-highlight-actions	1287	2021-03-10 06:59:58.026	markModificationValidator
com.atlassian.confluence.plugins.confluence-content-property-storage	1288	2021-03-10 06:59:58.026	pluginAccessor
confluence.user.hover.menu	1289	2021-03-10 06:59:58.026	user-profile
com.atlassian.streams.confluence	1290	2021-03-10 06:59:58.026	canCommentPredicateFactory
com.atlassian.streams.confluence	1291	2021-03-10 06:59:58.026	date-sl-SI
confluence.extra.jira	1292	2021-03-10 06:59:58.026	amd-support
confluence.extra.webdav	1293	2021-03-10 06:59:58.026	bandanaManager
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1294	2021-03-10 06:59:58.026	forgot-password-notification-transformer
confluence.extra.webdav	1295	2021-03-10 06:59:58.026	transactionTemplate
confluence.extra.impresence2	1296	2021-03-10 06:59:58.026	wildfire
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1297	2021-03-10 06:59:58.026	linkBuilderContextItem
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	1298	2021-03-10 06:59:58.026	systemInformationService
com.atlassian.gadgets.publisher	1299	2021-03-10 06:59:58.026	util
confluence.extra.jira	1300	2021-03-10 06:59:58.026	two-dimensional-chart-show-more-renderer
confluence.sections.space.advanced	1301	2021-03-10 06:59:58.026	stopwatchingblogs
confluence.listeners.core	1302	2021-03-10 06:59:58.026	stylesheetChangeListener
com.atlassian.auiplugin	1303	2021-03-10 06:59:58.026	binders
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	1304	2021-03-10 06:59:58.026	emoticonEditorUnmarshaller
com.atlassian.mywork.mywork-confluence-host-plugin	1305	2021-03-10 06:59:58.026	registration-service
com.atlassian.analytics.analytics-client	1306	2021-03-10 06:59:58.026	compatibilityPluginScheduler
com.atlassian.streams	1307	2021-03-10 06:59:58.026	date-ar-AE
com.atlassian.favicon.confluence-custom-favicon-plugin	1308	2021-03-10 06:59:58.026	faviconInterceptor
com.atlassian.auiplugin	1309	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-filter-by-search
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	1310	2021-03-10 06:59:58.026	clustering-resource
com.atlassian.streams	1311	2021-03-10 06:59:58.026	date-zh-MO
com.atlassian.confluence.plugins.confluence-email-tracker	1312	2021-03-10 06:59:58.026	emailUrlValidator
com.atlassian.confluence.plugins.confluence-quicknav	1313	2021-03-10 06:59:58.026	quicknav-resources
com.atlassian.streams	1314	2021-03-10 06:59:58.026	date-tr-TR
com.atlassian.querylang.confluence-cql-plugin	1315	2021-03-10 06:59:58.026	container-query-mapper
com.atlassian.confluence.plugins.confluence-create-content-plugin	1316	2021-03-10 06:59:58.026	indexPageManager
com.atlassian.auiplugin	1317	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-restful-table
com.atlassian.confluence.plugins.confluence-inline-tasks	1318	2021-03-10 06:59:58.026	tasks-notification
com.atlassian.confluence.plugins.confluence-email-resources	1319	2021-03-10 06:59:58.026	view-content-email-footer-item
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	1320	2021-03-10 06:59:58.026	common-soy
com.atlassian.plugins.atlassian-whitelist-core-plugin	1321	2021-03-10 06:59:58.026	cacheManager
com.atlassian.confluence.plugins.confluence-inline-comments	1322	2021-03-10 06:59:58.026	inlinecomment.sidebar.close
com.atlassian.streams.confluence	1323	2021-03-10 06:59:58.026	date-cy-GB
com.atlassian.confluence.plugins.confluence-files	1324	2021-03-10 06:59:58.026	filePermissionHelper
confluence.web.resources	1325	2021-03-10 06:59:58.026	syntaxhighlighter-all
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1326	2021-03-10 06:59:58.026	license-receipt-servlet
com.atlassian.confluence.plugins.confluence-space-ia	1327	2021-03-10 06:59:58.026	header-spaces-directory
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1328	2021-03-10 06:59:58.026	userSettingsPanel
com.atlassian.confluence.plugins.confluence-paste	1329	2021-03-10 06:59:58.026	autoconvert-shortcut-links
com.atlassian.plugins.editor	1330	2021-03-10 06:59:58.026	sections
com.atlassian.auiplugin	1331	2021-03-10 06:59:58.026	aui-tooltips
confluence.listeners.core	1332	2021-03-10 06:59:58.026	databaseLikesRemovalListener
com.atlassian.confluence.plugins.confluence-software-project	1333	2021-03-10 06:59:58.026	sp-space-retrospectives-template
confluence.macros.dashboard	1334	2021-03-10 06:59:58.026	velocity-renderer
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	1335	2021-03-10 06:59:58.026	internalAdminCheck
com.atlassian.auiplugin	1336	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-form-notification
com.atlassian.confluence.plugins.confluence-onboarding	1337	2021-03-10 06:59:58.026	onboarding
confluence.web.resources	1338	2021-03-10 06:59:58.026	global-permissions-inline-dialog
com.atlassian.confluence.plugins.confluence-nav-links	1339	2021-03-10 06:59:58.026	navlinksProjectManager
com.atlassian.confluence.extra.flyingpdf	1340	2021-03-10 06:59:58.026	flyingPdfExporterService
com.atlassian.confluence.plugins.confluence-email-resources	1341	2021-03-10 06:59:58.026	template-utils-render-web-panels-1.0.0
com.atlassian.streams.confluence	1342	2021-03-10 06:59:58.026	date-de-CH
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	1343	2021-03-10 06:59:58.026	confluence-webpanel-resources
com.atlassian.confluence.plugins.confluence-email-resources	1344	2021-03-10 06:59:58.026	content-templates-move-page-pattern-2.0.0
com.atlassian.confluence.plugins.confluence-fixed-headers	1345	2021-03-10 06:59:58.026	confluence-fixed-headers-editor-preview-resources
confluence.macros.advanced	1346	2021-03-10 06:59:58.026	content-by-user
confluence.macros.dashboard	1347	2021-03-10 06:59:58.026	spaces
com.atlassian.healthcheck.atlassian-healthcheck	1348	2021-03-10 06:59:58.026	healthCheckRest-filter
com.atlassian.streams	1349	2021-03-10 06:59:58.026	streamsGadgetResources
com.atlassian.auiplugin	1350	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-truncating-progressive-data-set
com.atlassian.applinks.applinks-basicauth-plugin	1351	2021-03-10 06:59:58.026	adminUIAuthenticator
confluence.extra.jira	1352	2021-03-10 06:59:58.026	proxy-js
com.atlassian.mywork.mywork-common-plugin	1353	2021-03-10 06:59:58.026	pluginAccessor
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1354	2021-03-10 06:59:58.026	hostLicenseUpdatedEventListener
confluence.extra.masterdetail	1355	2021-03-10 06:59:58.026	contentRetriever
com.atlassian.auiplugin	1356	2021-03-10 06:59:58.026	jquery-ui-other
com.atlassian.confluence.plugins.confluence-templates	1357	2021-03-10 06:59:58.026	list-global-templates-resources
com.atlassian.confluence.plugins.confluence-files	1358	2021-03-10 06:59:58.026	fileAutowatchEventListener
confluence.user.hover.menu	1359	2021-03-10 06:59:58.026	secondary
com.atlassian.confluence.plugins.confluence-darkfeatures-rest	1360	2021-03-10 06:59:58.026	userManager
com.atlassian.confluence.plugins.confluence-macro-usage-admin-plugin	1361	2021-03-10 06:59:58.026	PluginUsage-resources
com.atlassian.confluence.plugins.confluence-sal-plugin	1362	2021-03-10 06:59:58.026	certificateFactory
com.atlassian.confluence.plugins.confluence-like	1363	2021-03-10 06:59:58.026	actions
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1364	2021-03-10 06:59:58.026	i18nResolver
com.atlassian.confluence.plugins.confluence-mentions-plugin	1365	2021-03-10 06:59:58.026	help-dialog-extension
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1366	2021-03-10 06:59:58.026	content-type-icons
com.atlassian.confluence.plugins.confluence-inline-tasks	1367	2021-03-10 06:59:58.026	rest
com.atlassian.confluence.plugins.confluence-create-content-plugin	1368	2021-03-10 06:59:58.026	contentTemplateService
com.atlassian.confluence.extra.officeconnector	1369	2021-03-10 06:59:58.026	slide-viewer-resources
com.atlassian.confluence.plugins.confluence-create-content-plugin	1370	2021-03-10 06:59:58.026	documentationBeanFactory
com.atlassian.confluence.plugins.confluence-file-notifications	1371	2021-03-10 06:59:58.026	userAccessor
com.atlassian.streams.confluence	1372	2021-03-10 06:59:58.026	date-de-DE
com.atlassian.auiplugin	1373	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-internal-enforcer
com.atlassian.applinks.applinks-oauth-plugin	1374	2021-03-10 06:59:58.026	consumerService
com.atlassian.confluence.plugins.confluence-like	1375	2021-03-10 06:59:58.026	like-created-mail-batch-notification-processor
com.atlassian.plugin.notifications.notifications-module	1376	2021-03-10 06:59:58.026	userNotificationSettingsServlet
confluence.listeners.core	1377	2021-03-10 06:59:58.026	notification-removal-listener
confluence.listeners.core	1378	2021-03-10 06:59:58.026	createInitialContentListener
com.atlassian.streams	1379	2021-03-10 06:59:58.026	date-se-SE
com.atlassian.confluence.plugins.confluence-knowledge-base	1380	2021-03-10 06:59:58.026	kb-troubleshooting-article
com.atlassian.confluence.plugins.recently-viewed-plugin	1381	2021-03-10 06:59:58.026	recentlyViewedDao
com.atlassian.healthcheck.atlassian-healthcheck	1382	2021-03-10 06:59:58.026	healthCheckCorsDefaults
confluence.search.lucene.boosting	1383	2021-03-10 06:59:58.026	boostPreferredSpace
com.atlassian.confluence.plugins.confluence-email-resources	1384	2021-03-10 06:59:58.026	notification-templates-blogpost-created-2.0.0
confluence.extractors.core	1385	2021-03-10 06:59:58.026	pageContentEntityObjectExtractor
com.atlassian.plugins.base-hipchat-integration-plugin-api	1386	2021-03-10 06:59:58.026	underscore-amd
confluence.extra.jira	1387	2021-03-10 06:59:58.026	jira
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1388	2021-03-10 06:59:58.026	page-created-hipchat-notification-template-body
com.atlassian.confluence.plugins.confluence-inline-tasks	1389	2021-03-10 06:59:58.026	task-report-blueprint
com.atlassian.analytics.analytics-client	1390	2021-03-10 06:59:58.026	darkFeatureManager
com.atlassian.streams.confluence	1391	2021-03-10 06:59:58.026	date-fi-FI
com.atlassian.confluence.plugins.confluence-knowledge-base	1392	2021-03-10 06:59:58.026	rest-filter
com.atlassian.oauth.consumer.sal	1393	2021-03-10 06:59:58.026	keyPairFactory
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1394	2021-03-10 06:59:58.026	rest
com.atlassian.confluence.plugins.confluence-dashboard	1395	2021-03-10 06:59:58.026	dashboardContext
com.atlassian.confluence.plugins.confluence-inline-comments	1396	2021-03-10 06:59:58.026	notification-transformer-reply
confluence.web.resources	1397	2021-03-10 06:59:58.026	admin-tasklist
com.atlassian.confluence.editor	1398	2021-03-10 06:59:58.026	macro-heading
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1399	2021-03-10 06:59:58.026	userAccessor
com.atlassian.confluence.extra.officeconnector	1400	2021-03-10 06:59:58.026	importworditem1
confluence.sections.admin	1401	2021-03-10 06:59:58.026	systeminfo
com.atlassian.confluence.ext.newcode-macro-plugin	1402	2021-03-10 06:59:58.026	sh-theme-midnight
confluence.renderer.components	1403	2021-03-10 06:59:58.026	html-escape
com.atlassian.confluence.plugins.gadgets	1404	2021-03-10 06:59:58.026	page-gadget-resources
confluence.sections.create	1405	2021-03-10 06:59:58.026	create-user
com.atlassian.applinks.applinks-basicauth-plugin	1406	2021-03-10 06:59:58.026	xsrfTokenValidator
com.atlassian.confluence.plugins.confluence-highlight-actions	1407	2021-03-10 06:59:58.026	pageManager
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1408	2021-03-10 06:59:58.026	analyticsLogger
com.atlassian.oauth.serviceprovider	1409	2021-03-10 06:59:58.026	authenticationListener
confluence.sections.space	1410	2021-03-10 06:59:58.026	space-operations
com.atlassian.plugins.atlassian-nps-plugin	1411	2021-03-10 06:59:58.026	nps-util
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1412	2021-03-10 06:59:58.026	permissionEnforcer
com.atlassian.confluence.plugins.confluence-email-resources	1413	2021-03-10 06:59:58.026	settingsManager
com.atlassian.confluence.plugins.confluence-email-resources	1414	2021-03-10 06:59:58.026	template-utils-user-link-2.0.0
com.atlassian.confluence.plugins.soy	1415	2021-03-10 06:59:58.026	soy-resources
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1416	2021-03-10 06:59:58.026	page-edited-notification
com.atlassian.confluence.plugins.confluence-create-content-plugin	1417	2021-03-10 06:59:58.026	actions
com.atlassian.confluence.plugins.confluence-sal-plugin	1418	2021-03-10 06:59:58.026	authenticationController
com.atlassian.confluence.plugins.confluence-labels	1419	2021-03-10 06:59:58.026	view-labels-all
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	1420	2021-03-10 06:59:58.026	hipChatEmoticonService
com.atlassian.auiplugin	1421	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-vendor-jquery-plugins-jquery-aop
confluence.extra.webdav	1422	2021-03-10 06:59:58.026	confluenceResourceFactory
com.atlassian.applinks.applinks-cors-plugin	1423	2021-03-10 06:59:58.026	userManager
com.atlassian.confluence.plugins.confluence-highlight-actions	1424	2021-03-10 06:59:58.026	textCollector
com.atlassian.streams	1425	2021-03-10 06:59:58.026	date-en-029
com.atlassian.plugins.atlassian-whitelist-ui-plugin	1426	2021-03-10 06:59:58.026	whitelistBeanService
com.atlassian.confluence.plugins.confluence-inline-comments	1427	2021-03-10 06:59:58.026	navigation-view
com.atlassian.confluence.plugins.watch-button	1428	2021-03-10 06:59:58.026	rest-filter
confluence.aui.staging	1429	2021-03-10 06:59:58.026	persistable
confluence.extra.attachments	1430	2021-03-10 06:59:58.026	attachments-css
com.atlassian.streams	1431	2021-03-10 06:59:58.026	date-quz-PE
com.atlassian.confluence.restplugin	1432	2021-03-10 06:59:58.026	transactionTemplate
com.atlassian.auiplugin	1433	2021-03-10 06:59:58.026	message
com.atlassian.confluence.editor	1434	2021-03-10 06:59:58.026	error-placeholder
confluence.listeners.core	1435	2021-03-10 06:59:58.026	updatePersonalSpaceListener
com.atlassian.confluence.plugins.confluence-like	1436	2021-03-10 06:59:58.026	excerpter
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1437	2021-03-10 06:59:58.026	obrPluginInstallHandler
com.atlassian.applinks.applinks-oauth-plugin	1438	2021-03-10 06:59:58.026	auto-configuration-servlet
com.atlassian.confluence.plugins.confluence-dashboard	1439	2021-03-10 06:59:58.026	webResourceManager
com.atlassian.gadgets.opensocial	1440	2021-03-10 06:59:58.026	gadget-spec-not-found-error-servlet
com.atlassian.confluence.plugins.confluence-software-blueprints	1441	2021-03-10 06:59:58.026	retrospectives-blueprint
confluence.extra.confluencerpc	1442	2021-03-10 06:59:58.026	labelsSoapService
com.atlassian.applinks.applinks-trustedapps-plugin	1443	2021-03-10 06:59:58.026	templateRenderer
com.atlassian.confluence.plugins.confluence-create-content-plugin	1444	2021-03-10 06:59:58.026	contentTemplateRefManager
com.atlassian.auiplugin	1445	2021-03-10 06:59:58.026	internal-object-assign-4.0.1-index
com.atlassian.confluence.plugins.confluence-schedule-admin	1446	2021-03-10 06:59:58.026	scheduledjobs
com.atlassian.confluence.plugins.recently-viewed-plugin	1447	2021-03-10 06:59:58.026	recently-viewed-rest-filter
com.atlassian.streams.confluence	1448	2021-03-10 06:59:58.026	date-tn-ZA
com.atlassian.streams	1449	2021-03-10 06:59:58.026	date-de-LI
com.atlassian.confluence.plugins.templates-framework	1450	2021-03-10 06:59:58.026	configure-templates
com.atlassian.plugins.atlassian-nav-links-plugin	1451	2021-03-10 06:59:58.026	application-header-administration-cog-resource
com.atlassian.confluence.plugins.gadgets	1452	2021-03-10 06:59:58.026	whitelistService
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	1453	2021-03-10 06:59:58.026	page-create-notification
com.atlassian.mywork.mywork-common-plugin	1454	2021-03-10 06:59:58.026	myworkserviceselectorlink
confluence.extra.webdav	1455	2021-03-10 06:59:58.026	clientWriteDenyFilter
com.atlassian.plugins.atlassian-help-tips	1456	2021-03-10 06:59:58.026	helpTipsDao
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1457	2021-03-10 06:59:58.026	selfUpdatePluginAccessor
confluence.web.resources	1458	2021-03-10 06:59:58.026	almond
com.atlassian.confluence.plugins.gadgets	1459	2021-03-10 06:59:58.026	confluence-news-gadget
com.atlassian.support.stp	1460	2021-03-10 06:59:58.026	stp-license-status-resources
com.atlassian.querylang.confluence-cql-plugin	1461	2021-03-10 06:59:58.026	space-field
confluence.renderer.components	1462	2021-03-10 06:59:58.026	strong
com.atlassian.streams	1463	2021-03-10 06:59:58.026	localActivityProviders
com.atlassian.confluence.plugins.confluence-mobile	1464	2021-03-10 06:59:58.026	mobile-can-use-filter
com.atlassian.streams	1465	2021-03-10 06:59:58.026	date-de-LU
com.atlassian.confluence.plugins.view-storage-format	1466	2021-03-10 06:59:58.026	view-comment-storage
com.atlassian.plugin.notifications.notifications-module	1467	2021-03-10 06:59:58.026	notification-medium
confluence.macros.profile	1468	2021-03-10 06:59:58.026	profile
com.atlassian.streams.confluence	1469	2021-03-10 06:59:58.026	xmlOutputFactory
confluence.web.resources	1470	2021-03-10 06:59:58.026	admin
confluence.sections.help	1471	2021-03-10 06:59:58.026	confluence-about
com.atlassian.applinks.applinks-plugin	1472	2021-03-10 06:59:58.026	threadLocalDelegateExecutorFactory
confluence.extra.jira	1473	2021-03-10 06:59:58.026	dialogsJs
com.atlassian.mywork.mywork-common-plugin	1474	2021-03-10 06:59:58.026	unreliable-worker
com.atlassian.streams	1475	2021-03-10 06:59:58.026	date-quz-BO
com.atlassian.plugins.atlassian-whitelist-ui-plugin	1476	2021-03-10 06:59:58.026	outboundWhitelist
com.atlassian.streams	1477	2021-03-10 06:59:58.026	date-se-NO
com.atlassian.integration.jira.jira-integration-plugin	1478	2021-03-10 06:59:58.026	entityLinksService
com.atlassian.confluence.keyboardshortcuts	1479	2021-03-10 06:59:58.026	tinymce.table
confluence.macros.multimedia	1480	2021-03-10 06:59:58.026	flash
confluence.web.resources	1481	2021-03-10 06:59:58.026	people-directory
com.atlassian.confluence.plugins.confluence-space-ia	1482	2021-03-10 06:59:58.026	space-sidebar-xmlrpc
com.atlassian.confluence.editor	1483	2021-03-10 06:59:58.026	editor-resources
com.atlassian.querylang.confluence-cql-plugin	1484	2021-03-10 06:59:58.026	content-id-query-field-mapper
com.atlassian.confluence.ext.newcode-macro-plugin	1485	2021-03-10 06:59:58.026	syntaxhighlighter-init
com.atlassian.gadgets.opensocial	1486	2021-03-10 06:59:58.026	security-token-servlet
confluence.sections.space.admin	1487	2021-03-10 06:59:58.026	importpages
com.atlassian.confluence.plugins.confluence-roadmap-plugin	1488	2021-03-10 06:59:58.026	createPageListener
confluence.search.mappers.lucene	1489	2021-03-10 06:59:58.026	multiTextField
com.atlassian.applinks.applinks-plugin	1490	2021-03-10 06:59:58.026	entityRetriever
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	1491	2021-03-10 06:59:58.026	batching-notification-template-body
com.atlassian.confluence.plugins.confluence-email-resources	1492	2021-03-10 06:59:58.026	contentService
com.atlassian.applinks.applinks-trustedapps-plugin	1493	2021-03-10 06:59:58.026	trusted-auto-configuration-servlet
com.atlassian.confluence.plugins.confluence-inline-comments	1494	2021-03-10 06:59:58.026	highlight-view
com.atlassian.activeobjects.confluence.spi	1495	2021-03-10 06:59:58.026	aoSynchronizationManager
com.atlassian.auiplugin	1496	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-focus-manager
com.atlassian.streams	1497	2021-03-10 06:59:58.026	date-zh-SG
com.atlassian.confluence.plugins.confluence-jira-metadata	1498	2021-03-10 06:59:58.026	confluence-jira-metadata-resources
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1499	2021-03-10 06:59:58.026	blogpost-trashed-notification-transformer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1500	2021-03-10 06:59:58.026	jarPluginInstallHandler
com.atlassian.plugins.atlassian-nav-links-plugin	1501	2021-03-10 06:59:58.026	userSettingsService
confluence.extra.jira	1502	2021-03-10 06:59:58.026	servers-filter
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1503	2021-03-10 06:59:58.026	fileCleanup
confluence.search.mappers.lucene	1504	2021-03-10 06:59:58.026	title
com.atlassian.confluence.extra.flyingpdf	1505	2021-03-10 06:59:58.026	exportactions
com.atlassian.analytics.analytics-client	1506	2021-03-10 06:59:58.026	js-events
com.atlassian.querylang.confluence-cql-plugin	1507	2021-03-10 06:59:58.026	filesize-query-mapper
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1508	2021-03-10 06:59:58.026	hostContextAccessor
com.atlassian.confluence.extra.officeconnector	1509	2021-03-10 06:59:58.026	viewpdf-legacy
com.atlassian.confluence.plugins.confluence-quicknav	1510	2021-03-10 06:59:58.026	quick-nav-rest-filter
confluence.extra.webdav	1511	2021-03-10 06:59:58.026	pageRestoreListener
com.atlassian.streams.confluence	1512	2021-03-10 06:59:58.026	date-kk-KZ
com.atlassian.auiplugin	1513	2021-03-10 06:59:58.026	aui-layer-manager
com.atlassian.confluence.plugins.confluence-knowledge-base	1514	2021-03-10 06:59:58.026	sidebar-icons
com.atlassian.confluence.plugins.confluence-file-notifications	1515	2021-03-10 06:59:58.026	file-content-remove-payload-transformer
com.atlassian.confluence.plugins.confluence-roadmap-plugin	1516	2021-03-10 06:59:58.026	roadmap-bar-dialog-resources
confluence.web.resources	1517	2021-03-10 06:59:58.026	about
com.atlassian.confluence.plugins.confluence-inline-tasks	1518	2021-03-10 06:59:58.026	inlineTasksAnalyticsWhitelist
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1519	2021-03-10 06:59:58.026	licenseTokenStore
confluence.listeners.core	1520	2021-03-10 06:59:58.026	trackbackListener
com.atlassian.confluence.plugins.confluence-email-resources	1521	2021-03-10 06:59:58.026	template-utils-bullet-point-1.0.0
confluence.web.resources	1522	2021-03-10 06:59:58.026	content-styles
com.atlassian.confluence.plugins.whatsnew	1523	2021-03-10 06:59:58.026	applicationProperties
com.atlassian.confluence.plugins.confluence-files	1524	2021-03-10 06:59:58.026	commentManager
com.atlassian.streams	1525	2021-03-10 06:59:58.026	date-zh-TW
com.atlassian.confluence.extra.widgetconnector	1526	2021-03-10 06:59:58.026	googlegadgets
com.atlassian.streams	1527	2021-03-10 06:59:58.026	postReplyHandler
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1528	2021-03-10 06:59:58.026	upm-common-licensing
confluence.extractors.core	1529	2021-03-10 06:59:58.026	homePageExtractor
com.atlassian.streams	1530	2021-03-10 06:59:58.026	date-quz-EC
com.atlassian.integration.jira.jira-integration-plugin	1531	2021-03-10 06:59:58.026	jira-error-page
confluence.extractors.core	1532	2021-03-10 06:59:58.026	versionNumberExtractor
com.atlassian.plugins.atlassian-nav-links-plugin	1533	2021-03-10 06:59:58.026	custom-apps
com.atlassian.applinks.applinks-plugin	1534	2021-03-10 06:59:58.026	feature-oauth-picker
com.atlassian.streams	1535	2021-03-10 06:59:58.026	date-ar-DZ
com.atlassian.confluence.plugins.confluence-page-restrictions-dialog	1536	2021-03-10 06:59:58.026	dialog-resources
com.atlassian.plugins.atlassian-nps-plugin	1537	2021-03-10 06:59:58.026	nps-rest-filter
com.atlassian.integration.jira.jira-integration-plugin	1538	2021-03-10 06:59:58.026	applicationLinkService
com.atlassian.confluence.plugins.confluence-mobile	1539	2021-03-10 06:59:58.026	app-frame
com.atlassian.confluence.plugins.confluence-create-content-plugin	1540	2021-03-10 06:59:58.026	restrictedUserSpaceCreationStep
confluence.macros.advanced	1541	2021-03-10 06:59:58.026	blog
com.atlassian.streams	1542	2021-03-10 06:59:58.026	date-ar-EG
com.atlassian.plugins.browser.metrics.browser-metrics-plugin	1543	2021-03-10 06:59:58.026	impl
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1544	2021-03-10 06:59:58.026	reviewsNotificationsService
com.atlassian.confluence.keyboardshortcuts	1545	2021-03-10 06:59:58.026	tinymce.macro
com.atlassian.streams.confluence	1546	2021-03-10 06:59:58.026	settingsManager
com.atlassian.confluence.plugins.confluence-email-resources	1547	2021-03-10 06:59:58.026	confluenceNotificationPreferenceManager
com.atlassian.streams	1548	2021-03-10 06:59:58.026	date-id-ID
com.atlassian.auiplugin	1549	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-event
com.atlassian.confluence.plugins.confluence-inline-comments	1550	2021-03-10 06:59:58.026	bootstrap
com.atlassian.confluence.plugins.confluence-inline-comments	1551	2021-03-10 06:59:58.026	resolved-comment-view
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1552	2021-03-10 06:59:58.026	upm-common-licensing-templates
com.atlassian.confluence.plugins.confluence-create-content-plugin	1553	2021-03-10 06:59:58.026	watchSpaceCreationStep
com.atlassian.mywork.mywork-confluence-host-plugin	1554	2021-03-10 06:59:58.026	applinkid-service
com.atlassian.confluence.plugins.confluence-edge-index	1555	2021-03-10 06:59:58.026	pluginScheduler
com.atlassian.confluence.plugins.confluence-business-blueprints	1556	2021-03-10 06:59:58.026	sharelinks-urlmacro
com.atlassian.gadgets.publisher	1557	2021-03-10 06:59:58.026	ajs-gadgets-lite
confluence.extractors.core	1558	2021-03-10 06:59:58.026	pluginContentEntityObjectExtractor
com.atlassian.plugins.atlassian-help-tips	1559	2021-03-10 06:59:58.026	common
com.atlassian.confluence.plugins.search.confluence-search	1560	2021-03-10 06:59:58.026	eventPublisher
com.atlassian.confluence.plugins.confluence-email-resources	1561	2021-03-10 06:59:58.026	content-url-function
com.atlassian.applinks.applinks-cors-plugin	1562	2021-03-10 06:59:58.026	pluginAccessor
com.atlassian.plugin.jslibs	1563	2021-03-10 06:59:58.026	skate-0.12.6
com.atlassian.plugins.atlassian-nav-links-plugin	1564	2021-03-10 06:59:58.026	pluginSettingsFactory
com.atlassian.confluence.plugins.search.confluence-search	1565	2021-03-10 06:59:58.026	actions
com.atlassian.plugin.jslibs	1566	2021-03-10 06:59:58.026	skate-0.12.5
com.atlassian.applinks.applinks-basicauth-plugin	1567	2021-03-10 06:59:58.026	documentationLinker
confluence.sections.space.tools	1568	2021-03-10 06:59:58.026	contenttools
com.atlassian.mywork.mywork-confluence-provider-plugin	1569	2021-03-10 06:59:58.026	transactionTemplate
com.atlassian.confluence.contributors	1570	2021-03-10 06:59:58.026	soy-templates
com.atlassian.confluence.plugins.confluence-jira-content	1571	2021-03-10 06:59:58.026	create-jira-content-services-filter
confluence.extractors.core	1572	2021-03-10 06:59:58.026	attachmentOwnerContentTypeChangeExtractor
com.atlassian.confluence.plugins.recently-viewed-plugin	1573	2021-03-10 06:59:58.026	userAccessor
confluence.search.mappers.lucene	1574	2021-03-10 06:59:58.026	lastModifierUserSearchFilter
com.atlassian.confluence.plugins.confluence-inline-tasks	1575	2021-03-10 06:59:58.026	inline-tasks-view
com.atlassian.applinks.applinks-oauth-plugin	1576	2021-03-10 06:59:58.026	serviceProviderConsumerStore
com.atlassian.confluence.plugins.confluence-email-resources	1577	2021-03-10 06:59:58.026	stop-watching-space-email-footer-item
confluence.macros.multimedia	1578	2021-03-10 06:59:58.026	compatibility-multimedia
com.atlassian.streams.confluence	1579	2021-03-10 06:59:58.026	date-de-AT
com.atlassian.plugins.atlassian-whitelist-ui-plugin	1580	2021-03-10 06:59:58.026	whitelist-rest
com.atlassian.confluence.plugins.gadgets	1581	2021-03-10 06:59:58.026	publishedGadgetSpecStore
confluence.sections.admin	1582	2021-03-10 06:59:58.026	configuration
com.atlassian.confluence.contributors	1583	2021-03-10 06:59:58.026	analytics-whitelist
com.atlassian.confluence.plugins.search.confluence-search	1584	2021-03-10 06:59:58.026	searcherv3
com.atlassian.confluence.extra.widgetconnector	1585	2021-03-10 06:59:58.026	ooyala-web-resources
com.atlassian.applinks.applinks-plugin	1586	2021-03-10 06:59:58.026	helpurl-soy-function
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1587	2021-03-10 06:59:58.026	serverManager
com.atlassian.confluence.plugins.search.confluence-search	1588	2021-03-10 06:59:58.026	searcherv2
com.atlassian.confluence.plugins.confluence-email-resources	1589	2021-03-10 06:59:58.026	notification-templates-comment-edit-2.0.0
com.atlassian.confluence.plugins.gadgets	1590	2021-03-10 06:59:58.026	userAccessor
confluence.sections.create	1591	2021-03-10 06:59:58.026	create-comment
confluence.extra.impresence2	1592	2021-03-10 06:59:58.026	skype-xhtml
com.atlassian.confluence.plugins.confluence-view-file-macro	1593	2021-03-10 06:59:58.026	view-file-macro-editor-content-resources
com.atlassian.confluence.plugins.confluence-labels	1594	2021-03-10 06:59:58.026	view-labels-popular
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1595	2021-03-10 06:59:58.026	notification-templates-healthcheck
confluence.web.resources	1596	2021-03-10 06:59:58.026	user-macro-admin
com.atlassian.confluence.plugins.confluence-edge-index	1597	2021-03-10 06:59:58.026	edgeIndexRecoverer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1598	2021-03-10 06:59:58.026	confluenceQueueTaskManager
com.atlassian.confluence.plugins.confluence-inline-tasks	1599	2021-03-10 06:59:58.026	sortable-table-server-side
com.atlassian.applinks.applinks-basicauth-plugin	1600	2021-03-10 06:59:58.026	templateRenderer
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	1601	2021-03-10 06:59:58.026	xmlOutputFactory
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1602	2021-03-10 06:59:58.026	pluginLogService
com.atlassian.auiplugin	1603	2021-03-10 06:59:58.026	ajs-gadgets-base
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1604	2021-03-10 06:59:58.026	pluginSystemEventManager
com.atlassian.auiplugin	1605	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-populate-parameters
com.atlassian.confluence.plugins.confluence-email-resources	1606	2021-03-10 06:59:58.026	chrome-template-header-pattern-1.0.0
confluence.macros.advanced	1607	2021-03-10 06:59:58.026	recently-updated-mobile-resources
com.atlassian.confluence.plugins.confluence-edge-index	1608	2021-03-10 06:59:58.026	streamItemFactory
com.atlassian.streams	1609	2021-03-10 06:59:58.026	date-ar-BH
confluence.extra.information	1610	2021-03-10 06:59:58.026	xhtml-info
com.atlassian.plugins.browser.metrics.browser-metrics-plugin	1611	2021-03-10 06:59:58.026	featureManager
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1612	2021-03-10 06:59:58.026	follower-added-notification-template
com.atlassian.auiplugin	1613	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-vendor-spin-spin
com.atlassian.confluence.plugins.confluence-feature-discovery-plugin	1614	2021-03-10 06:59:58.026	featureDiscoveryRest-filter
confluence.listeners.core	1615	2021-03-10 06:59:58.026	permissions-logging-listener
com.atlassian.confluence.plugins.pagetree	1616	2021-03-10 06:59:58.026	PageHierarchyExtractor
com.atlassian.analytics.analytics-client	1617	2021-03-10 06:59:58.026	whitelistCollector
com.atlassian.streams	1618	2021-03-10 06:59:58.026	date-ar-QA
com.atlassian.gadgets.opensocial	1619	2021-03-10 06:59:58.026	opensocial-rpc-servlet
com.atlassian.auiplugin	1620	2021-03-10 06:59:58.026	aui-checkbox-multiselect
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1621	2021-03-10 06:59:58.026	renderer
com.atlassian.confluence.plugins.confluence-sal-plugin	1622	2021-03-10 06:59:58.026	trustedRequestFactory
com.atlassian.confluence.plugins.confluence-browser-metrics	1623	2021-03-10 06:59:58.026	bigpipe-reporter
com.atlassian.confluence.extra.flyingpdf	1624	2021-03-10 06:59:58.026	pdfResourceManager
com.atlassian.analytics.analytics-client	1625	2021-03-10 06:59:58.026	confluenceAnalyticsPropertyService
com.atlassian.confluence.plugins.gadgets	1626	2021-03-10 06:59:58.026	salUserManager
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	1627	2021-03-10 06:59:58.026	discovery-resources
com.atlassian.confluence.plugins.confluence-sal-plugin	1628	2021-03-10 06:59:58.026	xsrfTokenValidator
confluence.web.resources	1629	2021-03-10 06:59:58.026	select-all-row
com.atlassian.confluence.plugins.gadgets	1630	2021-03-10 06:59:58.026	gadgetSpecIdGenerator
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1631	2021-03-10 06:59:58.026	upm-osgi
com.atlassian.confluence.plugins.confluence-inline-tasks	1632	2021-03-10 06:59:58.026	notification-styles
com.atlassian.applinks.applinks-trustedapps-plugin	1633	2021-03-10 06:59:58.026	trustedContextFilter
com.atlassian.confluence.plugins.confluence-previews	1634	2021-03-10 06:59:58.026	minimode-plugin
com.atlassian.applinks.applinks-plugin	1635	2021-03-10 06:59:58.026	callbackParameter
com.atlassian.confluence.plugins.gadgets	1636	2021-03-10 06:59:58.026	gadget-search-resources
confluence.extra.masterdetail	1637	2021-03-10 06:59:58.026	rest-filter
com.atlassian.confluence.contributors	1638	2021-03-10 06:59:58.026	contributors-xhtml
com.atlassian.confluence.ext.newcode-macro-plugin	1639	2021-03-10 06:59:58.026	sh-theme-emacs
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1640	2021-03-10 06:59:58.026	auditLogPipQueue
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1641	2021-03-10 06:59:58.026	localeManager
com.atlassian.auiplugin	1642	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-tooltip
confluence.web.resources	1643	2021-03-10 06:59:58.026	content-body-with-styles
confluence.extra.masterdetail	1644	2021-03-10 06:59:58.026	cqlSearchService
confluence.extra.information	1645	2021-03-10 06:59:58.026	templateRenderer
com.atlassian.auiplugin	1646	2021-03-10 06:59:58.026	aui-experimental-labels
confluence.converters.core	1647	2021-03-10 06:59:58.026	user-converter
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1648	2021-03-10 06:59:58.026	bandanaManager
com.atlassian.mywork.mywork-confluence-provider-plugin	1649	2021-03-10 06:59:58.026	inlineTaskService
com.atlassian.streams.confluence	1650	2021-03-10 06:59:58.026	date-fa-IR
confluence.macros.advanced	1651	2021-03-10 06:59:58.026	xhtml-listlabels
com.atlassian.confluence.plugins.confluence-software-blueprints	1652	2021-03-10 06:59:58.026	jirareports-services-filter
com.atlassian.confluence.plugins.share-page	1653	2021-03-10 06:59:58.026	share-user-recipients-provider
com.atlassian.auiplugin	1654	2021-03-10 06:59:58.026	jquery-ui-interactions
com.atlassian.confluence.plugins.confluence-page-layout	1655	2021-03-10 06:59:58.026	pagelayout-content-styles
com.atlassian.confluence.plugins.confluence-request-access-plugin	1656	2021-03-10 06:59:58.026	rest-filter
confluence.macros.core	1657	2021-03-10 06:59:58.026	loremipsum
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1658	2021-03-10 06:59:58.026	comment-edited-notification-transformer
com.atlassian.applinks.applinks-oauth-plugin	1659	2021-03-10 06:59:58.026	add-consumer-manually
com.atlassian.applinks.applinks-plugin	1660	2021-03-10 06:59:58.026	confluence-list-application-links-legacy-url-filter
confluence.sections.space.export.view	1661	2021-03-10 06:59:58.026	spaceexport
com.atlassian.auiplugin	1662	2021-03-10 06:59:58.026	aui-experimental-autocomplete-helpers
com.atlassian.confluence.plugins.confluence-spaces	1663	2021-03-10 06:59:58.026	defaultspaceperms
com.atlassian.support.stp	1664	2021-03-10 06:59:58.026	stpWhitelist
com.atlassian.streams.confluence	1665	2021-03-10 06:59:58.026	attachmentItemFactory
confluence.sections.space	1666	2021-03-10 06:59:58.026	space-administration
com.atlassian.confluence.plugins.drag-and-drop	1667	2021-03-10 06:59:58.026	drag-and-drop-tip
com.atlassian.plugins.atlassian-nav-links-plugin	1668	2021-03-10 06:59:58.026	project-manager
com.atlassian.confluence.plugins.confluence-mentions-plugin	1669	2021-03-10 06:59:58.026	mention-hipchat-notification-template-body
com.atlassian.confluence.plugins.confluence-onboarding	1670	2021-03-10 06:59:58.026	onboardingNumberOfUsersCheckTrigger
com.atlassian.confluence.plugins.confluence-email-resources	1671	2021-03-10 06:59:58.026	stop-watching-page-email-adg-footer-item
com.atlassian.confluence.plugins.confluence-email-tracker	1672	2021-03-10 06:59:58.026	userAccessor
com.atlassian.confluence.plugins.confluence-spaces	1673	2021-03-10 06:59:58.026	soy-templates
confluence.extra.jira	1674	2021-03-10 06:59:58.026	mobile-browser-resources
confluence.renderer.components	1675	2021-03-10 06:59:58.026	template-parameters
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1676	2021-03-10 06:59:58.026	selfUpdateController
com.atlassian.confluence.plugins.confluence-software-blueprints	1677	2021-03-10 06:59:58.026	jirareports-statusreport
com.atlassian.applinks.applinks-trustedapps-plugin	1678	2021-03-10 06:59:58.026	trustedAppsOrphanedTrustDetector
com.atlassian.confluence.editor	1679	2021-03-10 06:59:58.026	search-ms-edge
com.atlassian.auiplugin	1680	2021-03-10 06:59:58.026	ajs-backbone
com.atlassian.auiplugin	1681	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-is-clipped
confluence.macros.advanced	1682	2021-03-10 06:59:58.026	search
com.atlassian.streams.confluence	1683	2021-03-10 06:59:58.026	date-he-IL
com.atlassian.confluence.extra.widgetconnector	1684	2021-03-10 06:59:58.026	googlevideo
com.atlassian.streams	1685	2021-03-10 06:59:58.026	date-ar-OM
com.atlassian.applinks.applinks-oauth-plugin	1686	2021-03-10 06:59:58.026	callbackParameter
com.atlassian.querylang.confluence-cql-plugin	1687	2021-03-10 06:59:58.026	parent-field
com.atlassian.auiplugin	1688	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-internal-select-option
com.atlassian.gadgets.directory	1689	2021-03-10 06:59:58.026	directory-config
com.atlassian.auiplugin	1690	2021-03-10 06:59:58.026	aui-experimental-devtools-iconfont
com.atlassian.confluence.plugins.confluence-onboarding	1691	2021-03-10 06:59:58.026	notification-template-less-users
com.atlassian.confluence.plugins.confluence-highlight-actions	1692	2021-03-10 06:59:58.026	selectionStorageFormatModifier
com.atlassian.confluence.plugins.confluence-easyuser-admin	1693	2021-03-10 06:59:58.026	admin-invite-users-panel
com.atlassian.support.healthcheck.support-healthcheck-plugin	1694	2021-03-10 06:59:58.026	userSettingsService
com.atlassian.auiplugin	1695	2021-03-10 06:59:58.026	aui-experimental-page-layout-legacy1
com.atlassian.plugin.jslibs	1696	2021-03-10 06:59:58.026	d3-3.4.13
com.atlassian.confluence.plugins.gadgets	1697	2021-03-10 06:59:58.026	gadget-old
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	1698	2021-03-10 06:59:58.026	hipchat-room-context
com.atlassian.confluence.plugins.confluence-email-resources	1699	2021-03-10 06:59:58.026	add-comment-to-content-email-adg-footer-item
com.atlassian.auiplugin	1700	2021-03-10 06:59:58.026	aui-experimental-module-and-header-legacy1
com.atlassian.plugin.jslibs	1701	2021-03-10 06:59:58.026	moment-2.10.3
com.atlassian.plugin.jslibs	1702	2021-03-10 06:59:58.026	brace-2014.09.03-factory
com.atlassian.confluence.plugins.confluence-file-notifications	1703	2021-03-10 06:59:58.026	file-content-update-email-notification-template-body
com.atlassian.plugins.atlassian-project-creation-plugin	1704	2021-03-10 06:59:58.026	project-linking-rest-filter
com.atlassian.plugins.base-hipchat-integration-plugin-api	1705	2021-03-10 06:59:58.026	hipchat-notification-context
com.atlassian.confluence.editor	1706	2021-03-10 06:59:58.026	unknown-attachment-placeholder
com.atlassian.gadgets.directory	1707	2021-03-10 06:59:58.026	directory-config-filter
com.atlassian.confluence.plugins.dialog-wizard	1708	2021-03-10 06:59:58.026	dialog-wizard
com.atlassian.confluence.editor	1709	2021-03-10 06:59:58.026	popup-resources
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1710	2021-03-10 06:59:58.026	asynchronousTaskStatusStore
confluence.web.components	1711	2021-03-10 06:59:58.026	property-panel-css
com.atlassian.oauth.serviceprovider	1712	2021-03-10 06:59:58.026	oauthAuthorizeServlet
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1713	2021-03-10 06:59:58.026	userManager
com.atlassian.gadgets.opensocial	1714	2021-03-10 06:59:58.026	rpc-relay-servlet
com.atlassian.streams	1715	2021-03-10 06:59:58.026	date-ar-MA
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1716	2021-03-10 06:59:58.026	compatibilityUserManager
crowd.system.passwordencoders	1717	2021-03-10 06:59:58.026	plaintext
com.atlassian.confluence.plugins.confluence-email-resources	1718	2021-03-10 06:59:58.026	stop-watching-all-blogs-email-adg-footer-item
com.atlassian.confluence.plugins.confluence-inline-tasks	1719	2021-03-10 06:59:58.026	show-task-feature-discovery-flag-blogpost
com.atlassian.confluence.plugins.confluence-ui-components	1720	2021-03-10 06:59:58.026	space-page-picker
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1721	2021-03-10 06:59:58.026	confluence-upm-marketplace-menu
com.atlassian.streams	1722	2021-03-10 06:59:58.026	date-ar-LY
com.atlassian.confluence.plugins.confluence-create-content-plugin	1723	2021-03-10 06:59:58.026	spaceEditedTemplatesUpgradeTask
com.atlassian.templaterenderer.atlassian-template-renderer-velocity1.6-plugin	1724	2021-03-10 06:59:58.026	velocity-1.6-web-panel-renderer-tracker
com.atlassian.confluence.keyboardshortcuts	1725	2021-03-10 06:59:58.026	confluenceKeyboardShortcutsRest-filter
com.atlassian.mywork.mywork-confluence-host-plugin	1726	2021-03-10 06:59:58.026	my-work-rest-filter
com.atlassian.confluence.extra.widgetconnector	1727	2021-03-10 06:59:58.026	web-widget
com.atlassian.confluence.plugins.confluence-page-banner	1728	2021-03-10 06:59:58.026	content-metadata-page-restrictions-hidden
com.atlassian.confluence.plugins.confluence-mobile	1729	2021-03-10 06:59:58.026	mobile-switch-resources
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1730	2021-03-10 06:59:58.026	differ
com.atlassian.streams	1731	2021-03-10 06:59:58.026	entityLinkService
confluence.extractors.core	1732	2021-03-10 06:59:58.026	labelExtractor
confluence.web.resources	1733	2021-03-10 06:59:58.026	view-user-profile
com.atlassian.confluence.plugins.confluence-mobile	1734	2021-03-10 06:59:58.026	dateEntityFactory
confluence.extra.impresence2	1735	2021-03-10 06:59:58.026	reporter-gtalk
com.atlassian.confluence.plugins.confluence-ui-components	1736	2021-03-10 06:59:58.026	common
confluence.extra.confluencerpc	1737	2021-03-10 06:59:58.026	adminSoapService
confluence.extra.layout	1738	2021-03-10 06:59:58.026	column
com.atlassian.streams	1739	2021-03-10 06:59:58.026	date-ar-LB
com.atlassian.confluence.plugins.drag-and-drop	1740	2021-03-10 06:59:58.026	capabilityService
confluence.content.action.menu	1741	2021-03-10 06:59:58.026	primary
com.atlassian.plugins.atlassian-nav-links-plugin	1742	2021-03-10 06:59:58.026	local-navigation-link-service
confluence.web.resources	1743	2021-03-10 06:59:58.026	common-header-resources
com.atlassian.streams	1744	2021-03-10 06:59:58.026	date-ar-KW
confluence.extra.impresence2	1745	2021-03-10 06:59:58.026	sametime-xhtml
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1746	2021-03-10 06:59:58.026	upmInformation
com.atlassian.applinks.applinks-oauth-plugin	1747	2021-03-10 06:59:58.026	oauth-dance
confluence.extra.jira	1748	2021-03-10 06:59:58.026	singleJiraIssuesMapThreadLocalFilter
confluence.web.components	1749	2021-03-10 06:59:58.026	dom-filter-field
com.atlassian.confluence.extra.flyingpdf	1750	2021-03-10 06:59:58.026	configpdflayout
com.atlassian.confluence.editor	1751	2021-03-10 06:59:58.026	unknown-macro-placeholder
confluence.sections.space.admin	1752	2021-03-10 06:59:58.026	editspacelabels
com.atlassian.plugins.atlassian-nav-links-plugin	1753	2021-03-10 06:59:58.026	transactionTempate
com.atlassian.confluence.extra.officeconnector	1754	2021-03-10 06:59:58.026	editinoffice
com.atlassian.analytics.analytics-client	1755	2021-03-10 06:59:58.026	universal-analytics-filter
com.atlassian.confluence.plugins.gadgets	1756	2021-03-10 06:59:58.026	gadgetLabelManager
confluence.aui.staging	1757	2021-03-10 06:59:58.026	storage-manager
com.atlassian.confluence.plugins.confluence-request-access-plugin	1758	2021-03-10 06:59:58.026	grantAccessPanel
com.atlassian.auiplugin	1759	2021-03-10 06:59:58.026	aui-inline-dialog2
com.atlassian.streams	1760	2021-03-10 06:59:58.026	date-hu-HU
com.atlassian.applinks.applinks-cors-plugin	1761	2021-03-10 06:59:58.026	typeAccessor
com.atlassian.mywork.mywork-common-plugin	1762	2021-03-10 06:59:58.026	userManager
com.atlassian.confluence.plugins.confluence-space-ia	1763	2021-03-10 06:59:58.026	collector-resources
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1764	2021-03-10 06:59:58.026	bundledUpdateCheckJob
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	1765	2021-03-10 06:59:58.026	pluginSettingsFactory
confluence.web.resources	1766	2021-03-10 06:59:58.026	colors
confluence.extra.webdav	1767	2021-03-10 06:59:58.026	attachmentSafeContentHeaderGuesser
com.atlassian.confluence.plugins.confluence-browser-metrics	1768	2021-03-10 06:59:58.026	space
com.atlassian.auiplugin	1769	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-trigger
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1770	2021-03-10 06:59:58.026	confluenceUserAccessor
com.atlassian.applinks.applinks-plugin	1771	2021-03-10 06:59:58.026	applinks-authentication-provider
com.atlassian.confluence.plugins.confluence-business-blueprints	1772	2021-03-10 06:59:58.026	sharelinks-resources
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1773	2021-03-10 06:59:58.026	pluginInstallHandlerRegistry
com.atlassian.confluence.restplugin	1774	2021-03-10 06:59:58.026	confluence-rest
confluence.renderer.components	1775	2021-03-10 06:59:58.026	emoticon
com.atlassian.confluence.plugins.confluence-license-rest	1776	2021-03-10 06:59:58.026	license-resource
com.atlassian.confluence.keyboardshortcuts	1777	2021-03-10 06:59:58.026	confluenceKeyboardShortcutsRest
com.atlassian.plugins.base-hipchat-integration-plugin	1778	2021-03-10 06:59:58.026	hipchat-external-page
com.atlassian.auiplugin	1779	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-key-code
com.atlassian.gadgets.oauth.serviceprovider	1780	2021-03-10 06:59:58.026	applicationPropertiesContextItem
com.atlassian.confluence.plugins.confluence-create-content-plugin	1781	2021-03-10 06:59:58.026	httpContext
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1782	2021-03-10 06:59:58.026	userNotificationDefaultsService
com.atlassian.confluence.extra.widgetconnector	1783	2021-03-10 06:59:58.026	tudou
com.atlassian.confluence.plugins.confluence-monitoring-console	1784	2021-03-10 06:59:58.026	stats-resource
com.atlassian.applinks.applinks-oauth-plugin	1785	2021-03-10 06:59:58.026	consumerTokenStoreService
com.atlassian.streams	1786	2021-03-10 06:59:58.026	date-ar-IQ
confluence.listeners.core	1787	2021-03-10 06:59:58.026	user-management-logging-listener
com.atlassian.confluence.plugins.confluence-nav-links	1788	2021-03-10 06:59:58.026	capability-content-link
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	1789	2021-03-10 06:59:58.026	synchrony-plugin-analytics-whitelist
com.atlassian.applinks.applinks-cors-plugin	1790	2021-03-10 06:59:58.026	servletMessageFactory
confluence.web.resources	1791	2021-03-10 06:59:58.026	setup-license
com.atlassian.mywork.mywork-confluence-host-plugin	1792	2021-03-10 06:59:58.026	mw-login-miniview
com.atlassian.confluence.plugins.confluence-edge-index	1793	2021-03-10 06:59:58.026	build-edge-index-servlet
com.atlassian.streams	1794	2021-03-10 06:59:58.026	date-ar-JO
com.atlassian.confluence.ext.newcode-macro-plugin	1795	2021-03-10 06:59:58.026	sh-theme-default
com.atlassian.confluence.plugins.confluence-nav-links	1796	2021-03-10 06:59:58.026	home
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	1797	2021-03-10 06:59:58.026	contentEntityManager
com.atlassian.plugins.atlassian-nav-links-plugin	1798	2021-03-10 06:59:58.026	salDarkFeatureService
com.atlassian.confluence.plugins.confluence-create-content-plugin	1799	2021-03-10 06:59:58.026	iconUrlProvider
com.atlassian.confluence.plugins.confluence-roadmap-plugin	1800	2021-03-10 06:59:58.026	roadmap-editor-view-resources
com.atlassian.plugins.shortcuts.atlassian-shortcuts-plugin	1801	2021-03-10 06:59:58.026	moduleFactory
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1802	2021-03-10 06:59:58.026	dispatchService
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1803	2021-03-10 06:59:58.026	roleBasedPluginDescriptorMetadataCache
com.atlassian.mywork.mywork-confluence-host-plugin	1804	2021-03-10 06:59:58.026	applicationLinkService
com.atlassian.confluence.plugins.confluence-browser-metrics	1805	2021-03-10 06:59:58.026	server-duration
com.atlassian.plugins.confluence-tdm-merger	1806	2021-03-10 06:59:58.026	xmlEventReaderFactory
com.atlassian.streams	1807	2021-03-10 06:59:58.026	date-ar-YE
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	1808	2021-03-10 06:59:58.026	spacePermissionManager
com.atlassian.confluence.plugins.confluence-sortable-tables	1809	2021-03-10 06:59:58.026	sortable-table-resources
com.atlassian.auiplugin	1810	2021-03-10 06:59:58.026	aui-experimental-date-picker
com.atlassian.confluence.editor	1811	2021-03-10 06:59:58.026	editor-css-resources
com.atlassian.labs.atlassian-bot-killer	1812	2021-03-10 06:59:58.026	userManager
com.atlassian.plugins.atlassian-whitelist-core-plugin	1813	2021-03-10 06:59:58.026	whitelistService
com.atlassian.oauth.serviceprovider	1814	2021-03-10 06:59:58.026	i18nResolver
com.atlassian.mywork.mywork-confluence-host-plugin	1815	2021-03-10 06:59:58.026	confluenceCommonHeaderIcon
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	1816	2021-03-10 06:59:58.026	hipchat-js-resources
com.atlassian.confluence.plugins.confluence-inline-tasks	1817	2021-03-10 06:59:58.026	inline-tasks-macro-browser
com.atlassian.confluence.keyboardshortcuts	1818	2021-03-10 06:59:58.026	tinymce.file
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	1819	2021-03-10 06:59:58.026	instanceHealthCopyEolFileTask
com.atlassian.integration.jira.jira-integration-plugin	1820	2021-03-10 06:59:58.026	jira-issues-dialog
com.atlassian.confluence.plugins.confluence-file-notifications	1821	2021-03-10 06:59:58.026	confluenceAccessManager
com.atlassian.applinks.applinks-oauth-plugin	1822	2021-03-10 06:59:58.026	confluence-inbound-oauth
com.atlassian.applinks.applinks-plugin	1823	2021-03-10 06:59:58.026	webInterfaceManager
com.atlassian.streams.confluence	1824	2021-03-10 06:59:58.026	evictor
com.atlassian.confluence.plugins.confluence-space-ia	1825	2021-03-10 06:59:58.026	header-spaces-link
confluence.search.mappers.lucene	1826	2021-03-10 06:59:58.026	archivedSpacesSearchFilter
com.atlassian.confluence.keyboardshortcuts	1827	2021-03-10 06:59:58.026	tinymce.numlist
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	1828	2021-03-10 06:59:58.026	maxAllowedPacketsCheck
com.atlassian.confluence.plugins.confluence-create-content-plugin	1829	2021-03-10 06:59:58.026	webInterfaceManager
com.atlassian.streams	1830	2021-03-10 06:59:58.026	date-nn-NO
com.atlassian.templaterenderer.api	1831	2021-03-10 06:59:58.026	webResourceManager
com.atlassian.confluence.plugins.confluence-like	1832	2021-03-10 06:59:58.026	like-plugin-icons
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1833	2021-03-10 06:59:58.026	comment-created-mail-batch-notification-processor
confluence.extra.jira	1834	2021-03-10 06:59:58.026	refresh-resources
com.atlassian.confluence.extra.officeconnector	1835	2021-03-10 06:59:58.026	htmlslideservlet
com.atlassian.confluence.plugins.confluence-mentions-plugin	1836	2021-03-10 06:59:58.026	mention-email-view-page-link
com.atlassian.confluence.extra.officeconnector	1837	2021-03-10 06:59:58.026	viewppt
com.atlassian.confluence.plugins.confluence-nav-links	1838	2021-03-10 06:59:58.026	sidebar-link-service
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	1839	2021-03-10 06:59:58.026	ao
com.atlassian.confluence.plugins.confluence-space-ia	1840	2021-03-10 06:59:58.026	avatar-picker
com.atlassian.confluence.plugins.confluence-like	1841	2021-03-10 06:59:58.026	manage-notifications-email-footer-item
com.atlassian.confluence.plugins.confluence-space-ia	1842	2021-03-10 06:59:58.026	main-links
confluence.extra.impresence2	1843	2021-03-10 06:59:58.026	gtalk
com.atlassian.confluence.plugins.confluence-mentions-plugin	1844	2021-03-10 06:59:58.026	new-content-mention-payload-transformer
confluence.lifecycle.core	1845	2021-03-10 06:59:58.026	sysinfodump
confluence.search.mappers.lucene	1846	2021-03-10 06:59:58.026	filename
com.atlassian.confluence.plugins.confluence-inline-comments	1847	2021-03-10 06:59:58.026	inline-notification-resolved
com.atlassian.webhooks.atlassian-webhooks-plugin	1848	2021-03-10 06:59:58.026	webhooksRest-filter
confluence.web.resources	1849	2021-03-10 06:59:58.026	macro-browser-sprites
confluence.editor.actions	1850	2021-03-10 06:59:58.026	insert
com.atlassian.analytics.analytics-client	1851	2021-03-10 06:59:58.026	analytics-rest
confluence.sections.attachments	1852	2021-03-10 06:59:58.026	remove-version
tac.confluence.languages.de_DE	1853	2021-03-10 06:59:58.026	de_DE
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1854	2021-03-10 06:59:58.026	defaultNotificationUserService
com.atlassian.confluence.plugins.confluence-onboarding	1855	2021-03-10 06:59:58.026	onboardingSpaceCheckJob
confluence.admin.user	1856	2021-03-10 06:59:58.026	entitypicker
com.atlassian.auiplugin	1857	2021-03-10 06:59:58.026	internal-aui-browser
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1858	2021-03-10 06:59:58.026	blogpost-moved-notification
com.atlassian.confluence.plugins.confluence-dashboard	1859	2021-03-10 06:59:58.026	onboardingService
com.atlassian.mywork.mywork-confluence-provider-plugin	1860	2021-03-10 06:59:58.026	confluenceActionService
confluence.renderer.components	1861	2021-03-10 06:59:58.026	emphases
com.atlassian.oauth.serviceprovider.sal	1862	2021-03-10 06:59:58.026	clock
com.atlassian.confluence.rpc.confluence-json-rpc-plugin	1863	2021-03-10 06:59:58.026	pluginAccessor
com.atlassian.streams	1864	2021-03-10 06:59:58.026	date-zh-CN
confluence.web.resources	1865	2021-03-10 06:59:58.026	search-results-grid
com.atlassian.confluence.keyboardshortcuts	1866	2021-03-10 06:59:58.026	keyboardshortcut-flag
com.atlassian.confluence.plugins.confluence-space-blueprints	1867	2021-03-10 06:59:58.026	team-space-email-resources
confluence.user.menu	1868	2021-03-10 06:59:58.026	signup
com.atlassian.streams.confluence	1869	2021-03-10 06:59:58.026	commentManager
confluence.macros.dashboard	1870	2021-03-10 06:59:58.026	welcome-message
com.atlassian.confluence.plugins.confluence-email-resources	1871	2021-03-10 06:59:58.026	templates-2.0.0
com.atlassian.confluence.plugins.confluence-create-content-plugin	1872	2021-03-10 06:59:58.026	spaceBlueprintService
com.atlassian.confluence.plugins.recently-viewed-plugin	1873	2021-03-10 06:59:58.026	ao
com.atlassian.plugins.editor	1874	2021-03-10 06:59:58.026	atlassian-rte-javascript
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	1875	2021-03-10 06:59:58.026	hipchat-soy-resources
com.atlassian.confluence.plugins.confluence-space-ia	1876	2021-03-10 06:59:58.026	confluence-content-link-provider
com.atlassian.streams.streams-thirdparty-plugin	1877	2021-03-10 06:59:58.026	thirdparty-web-resources
com.atlassian.auiplugin	1878	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-internal-is-input
com.atlassian.confluence.plugins.confluence-space-ia	1879	2021-03-10 06:59:58.026	header-spaces-create-space
confluence.sections.search.view	1880	2021-03-10 06:59:58.026	search
confluence.extra.impresence2	1881	2021-03-10 06:59:58.026	msn
com.atlassian.mywork.mywork-confluence-host-plugin	1882	2021-03-10 06:59:58.026	actionServiceSelector
com.atlassian.analytics.analytics-client	1883	2021-03-10 06:59:58.026	eventReporter
com.atlassian.confluence.plugins.confluence-business-blueprints	1884	2021-03-10 06:59:58.026	sharelinksbookmarklet-resources
com.atlassian.confluence.plugins.gadgets	1885	2021-03-10 06:59:58.026	localeManager
confluence.macros.advanced	1886	2021-03-10 06:59:58.026	get-more
com.atlassian.support.stp	1887	2021-03-10 06:59:58.026	stp-license-banner-data-bamboo
com.atlassian.confluence.plugins.confluence-roadmap-plugin	1888	2021-03-10 06:59:58.026	roadmap-view-resources
com.atlassian.soy.soy-template-plugin	1889	2021-03-10 06:59:58.026	soy-deps
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	1890	2021-03-10 06:59:58.026	batchMessage-soy-function
com.atlassian.auiplugin	1891	2021-03-10 06:59:58.026	aui-experimental-progress-tracker
com.atlassian.plugins.atlassian-whitelist-core-plugin	1892	2021-03-10 06:59:58.026	outboundWhitelist
com.atlassian.confluence.plugins.view-source	1893	2021-03-10 06:59:58.026	confluenceViewSourceWhitelist
com.atlassian.confluence.extra.widgetconnector	1894	2021-03-10 06:59:58.026	widget-xhtml
com.atlassian.confluence.plugins.confluence-create-content-plugin	1895	2021-03-10 06:59:58.026	default-index-template
com.atlassian.confluence.plugins.search.confluence-search	1896	2021-03-10 06:59:58.026	excludedContentTypeSearchFilter
com.atlassian.confluence.editor	1897	2021-03-10 06:59:58.026	table-resizable-editor-content-styles
com.atlassian.confluence.plugins.confluence-browser-metrics	1898	2021-03-10 06:59:58.026	browser-metrics-reporters
com.atlassian.confluence.plugins.confluence-user-rest	1899	2021-03-10 06:59:58.026	permissionManager
confluence.listeners.core	1900	2021-03-10 06:59:58.026	autogroupadderlistener
com.atlassian.confluence.plugins.confluence-spaces	1901	2021-03-10 06:59:58.026	actions
com.atlassian.plugins.atlassian-whitelist-core-plugin	1902	2021-03-10 06:59:58.026	whitelistOnOffSwitch
com.atlassian.support.stp	1903	2021-03-10 06:59:58.026	applicationPropertiesContextItem
com.atlassian.plugins.atlassian-nav-links-plugin	1904	2021-03-10 06:59:58.026	template-renderer
confluence.sections.space.tools	1905	2021-03-10 06:59:58.026	export-format-xml
com.atlassian.confluence.plugins.confluence-software-project	1906	2021-03-10 06:59:58.026	sp-space-blueprint-item
com.atlassian.oauth.serviceprovider	1907	2021-03-10 06:59:58.026	oauthIconUriServlet
com.atlassian.plugins.atlassian-plugins-webresource-rest	1908	2021-03-10 06:59:58.026	curl
com.atlassian.applinks.applinks-plugin	1909	2021-03-10 06:59:58.026	get-documentation-base-url-soy-function
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	1910	2021-03-10 06:59:58.026	i18nResolver
com.atlassian.streams.confluence	1911	2021-03-10 06:59:58.026	date-eu-ES
com.atlassian.prettyurls.atlassian-pretty-urls-plugin	1912	2021-03-10 06:59:58.026	prettyurls-dispatcher-filter-before-dispatch
com.atlassian.confluence.plugins.confluence-user-profile	1913	2021-03-10 06:59:58.026	editmyprofilepicture
com.atlassian.streams.streams-thirdparty-plugin	1914	2021-03-10 06:59:58.026	userProfileAccessor
confluence.lifecycle.core	1915	2021-03-10 06:59:58.026	pluginframeworkdependentupgrades
com.atlassian.confluence.plugins.share-page	1916	2021-03-10 06:59:58.026	share-attachment-notification-transformer
com.atlassian.streams	1917	2021-03-10 06:59:58.026	feedRendererContext
confluence.sections.settings.edit	1918	2021-03-10 06:59:58.026	editemailpreferences
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1919	2021-03-10 06:59:58.026	upm-update-check-resources
com.atlassian.plugins.shortcuts.atlassian-shortcuts-plugin	1920	2021-03-10 06:59:58.026	keyboard-shortcut
com.atlassian.mywork.mywork-confluence-host-plugin	1921	2021-03-10 06:59:58.026	mwLeftMenuPanel
confluence.listeners.core	1922	2021-03-10 06:59:58.026	confluenceCrowdUserEventAdaptorListener
confluence.aui.staging	1923	2021-03-10 06:59:58.026	dark-features
com.atlassian.streams	1924	2021-03-10 06:59:58.026	date-ar-TN
com.atlassian.support.healthcheck.support-healthcheck-plugin	1925	2021-03-10 06:59:58.026	supportHealthStatusProperties
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1926	2021-03-10 06:59:58.026	confluenceApplicationDescriptor
com.atlassian.applinks.applinks-plugin	1927	2021-03-10 06:59:58.026	lodash-amd
com.atlassian.confluence.plugins.confluence-fixed-headers	1928	2021-03-10 06:59:58.026	confFixedHeadersAnalyticsWhitelist
com.atlassian.querylang.confluence-cql-plugin	1929	2021-03-10 06:59:58.026	end-of-day-one-arg-function
com.atlassian.confluence.plugins.confluence-business-blueprints	1930	2021-03-10 06:59:58.026	decisions-page
com.atlassian.querylang.confluence-cql-plugin	1931	2021-03-10 06:59:58.026	end-of-week-zero-arg-function
com.atlassian.confluence.plugins.confluence-ui-rest	1932	2021-03-10 06:59:58.026	ui-rest-filter
com.atlassian.streams	1933	2021-03-10 06:59:58.026	date-ar-SA
com.atlassian.confluence.extra.widgetconnector	1934	2021-03-10 06:59:58.026	scribd
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	1935	2021-03-10 06:59:58.026	simple-json-serialize-function
com.atlassian.streams	1936	2021-03-10 06:59:58.026	date-ar-SY
com.atlassian.confluence.plugins.whatsnew	1937	2021-03-10 06:59:58.026	whats-new-item-help-menu
com.atlassian.streams.core	1938	2021-03-10 06:59:58.026	streamsI18nResolver
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	1939	2021-03-10 06:59:58.026	sqlModeCheck
com.atlassian.confluence.plugins.confluence-mentions-plugin	1940	2021-03-10 06:59:58.026	email-resources
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1941	2021-03-10 06:59:58.026	upmPluginAccessor
com.atlassian.confluence.plugins.confluence-inline-tasks	1942	2021-03-10 06:59:58.026	my-tasks-menu-item
com.atlassian.streams	1943	2021-03-10 06:59:58.026	appLinksUriSupplier
com.atlassian.confluence.plugins.confluence-image-attributes	1944	2021-03-10 06:59:58.026	image-attributes
com.atlassian.plugin.notifications.notifications-module	1945	2021-03-10 06:59:58.026	applicationPropertiesContextItem
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1946	2021-03-10 06:59:58.026	tabVisibility
confluence.macros.profile	1947	2021-03-10 06:59:58.026	profile-macro-styles
com.atlassian.plugins.shortcuts.atlassian-shortcuts-plugin	1948	2021-03-10 06:59:58.026	httpContext
confluence.admin.user	1949	2021-03-10 06:59:58.026	browse-users-tab-signup
com.atlassian.confluence.plugins.confluence-mobile	1950	2021-03-10 06:59:58.026	macroManagerFactory
com.atlassian.confluence.plugins.confluence-lookandfeel	1951	2021-03-10 06:59:58.026	eventPublisher
com.atlassian.mywork.mywork-common-plugin	1952	2021-03-10 06:59:58.026	notification-service
confluence.sections.create	1953	2021-03-10 06:59:58.026	add-page-without-parent
com.atlassian.support.stp	1954	2021-03-10 06:59:58.026	confluence-application-info
com.atlassian.oauth.serviceprovider	1955	2021-03-10 06:59:58.026	userManager
com.atlassian.confluence.plugins.confluence-monitoring-console	1956	2021-03-10 06:59:58.026	userManager
com.atlassian.confluence.plugins.gadgets	1957	2021-03-10 06:59:58.026	gadget-render-resources
confluence.search.mappers.lucene	1958	2021-03-10 06:59:58.026	fileExtension
com.atlassian.analytics.analytics-client	1959	2021-03-10 06:59:58.026	eventSerializer
com.atlassian.confluence.plugins.confluence-software-project	1960	2021-03-10 06:59:58.026	sp-space-blueprint
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1961	2021-03-10 06:59:58.026	httpRequestWrapper
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	1962	2021-03-10 06:59:58.026	userManager
confluence.search.lucene.initialisation	1963	2021-03-10 06:59:58.026	boostByModificationDateStrategySearcherInitialisation
com.atlassian.auiplugin	1964	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-polyfills-console
confluence.sections.space.advanced	1965	2021-03-10 06:59:58.026	exporthtml
com.atlassian.confluence.plugins.confluence-software-blueprints	1966	2021-03-10 06:59:58.026	requirements-index
confluence.extra.impresence2	1967	2021-03-10 06:59:58.026	localeSupport
com.atlassian.streams.confluence	1968	2021-03-10 06:59:58.026	date-sq-AL
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1969	2021-03-10 06:59:58.026	page-created-notification-template-body
com.atlassian.support.stp	1970	2021-03-10 06:59:58.026	schedulerCleanUpTask
com.atlassian.confluence.plugins.synchrony-interop	1971	2021-03-10 06:59:58.026	synchrony-status-banner-resources
com.atlassian.streams.confluence	1972	2021-03-10 06:59:58.026	date-mr-IN
com.atlassian.crowd.embedded.admin	1973	2021-03-10 06:59:58.026	default-groups
com.atlassian.streams	1974	2021-03-10 06:59:58.026	date-zh-HK
com.atlassian.confluence.plugins.editor-loader	1975	2021-03-10 06:59:58.026	background-loading-editor
com.atlassian.confluence.keyboardshortcuts	1976	2021-03-10 06:59:58.026	confluence-keyboard-shortcuts
confluence.sections.profile	1977	2021-03-10 06:59:58.026	primary
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	1978	2021-03-10 06:59:58.026	hipchat2-space-configuration
com.atlassian.confluence.plugins.confluence-email-resources	1979	2021-03-10 06:59:58.026	notification-templates-follower-added-1.0.0
com.atlassian.templaterenderer.api	1980	2021-03-10 06:59:58.026	pluginEventManager
com.atlassian.plugins.rest.atlassian-rest-module	1981	2021-03-10 06:59:58.026	restRequestFactory
com.atlassian.confluence.plugins.confluence-dashboard	1982	2021-03-10 06:59:58.026	buttons-web-items
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	1983	2021-03-10 06:59:58.026	activeObjectsHealthCheck
confluence.sections.profile	1984	2021-03-10 06:59:58.026	profile-administer-user
com.atlassian.confluence.ext.newcode-macro-plugin	1985	2021-03-10 06:59:58.026	editor-scripts
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1986	2021-03-10 06:59:58.026	darkFeatureManager
com.atlassian.streams.confluence	1987	2021-03-10 06:59:58.026	date-kn-IN
com.atlassian.confluence.plugins.confluence-browser-metrics	1988	2021-03-10 06:59:58.026	viewcontent
com.atlassian.confluence.plugins.confluence-lookandfeel	1989	2021-03-10 06:59:58.026	xsrfTokenGenerator
com.atlassian.plugins.atlassian-nav-links-plugin	1990	2021-03-10 06:59:58.026	userManager
com.atlassian.plugin.notifications.notifications-module	1991	2021-03-10 06:59:58.026	userProfileMappingResolver
com.atlassian.confluence.plugins.confluence-edge-index	1992	2021-03-10 06:59:58.026	networkService
confluence.sections.settings.edit	1993	2021-03-10 06:59:58.026	editeditorpreferences
com.atlassian.plugins.atlassian-nav-links-plugin	1994	2021-03-10 06:59:58.026	applinks-change-listener
com.atlassian.confluence.plugins.confluence-email-resources	1995	2021-03-10 06:59:58.026	stop-following-user-email-adg-footer-item
com.atlassian.confluence.plugins.xmlrpc.bloggingrpc	1996	2021-03-10 06:59:58.026	blogger-xmlrpc
com.atlassian.streams.confluence	1997	2021-03-10 06:59:58.026	templateRenderer
com.atlassian.streams.confluence	1998	2021-03-10 06:59:58.026	xmlEventReaderFactory
com.atlassian.confluence.plugins.confluence-email-resources	1999	2021-03-10 06:59:58.026	notification-templates-blogpost-add-1.0.0
com.atlassian.crowd.embedded.admin	2000	2021-03-10 06:59:58.026	UpdateDirectoriesConfigurationWithExternalI
com.atlassian.confluence.extra.widgetconnector	2001	2021-03-10 06:59:58.026	sliderocket
confluence.search.mappers.lucene	2002	2021-03-10 06:59:58.026	labelsSearchFilter
com.atlassian.confluence.plugins.confluence-inline-tasks	2003	2021-03-10 06:59:58.026	inline-task-mail-resources
com.atlassian.auiplugin	2004	2021-03-10 06:59:58.026	internal-skatejs-0.13.17-lib-lifecycle
com.atlassian.confluence.plugins.confluence-email-resources	2005	2021-03-10 06:59:58.026	notification-templates-blog-remove-1.0.0
confluence.search.contentname	2006	2021-03-10 06:59:58.026	default-contentname-search-provider
com.atlassian.confluence.plugins.confluence-create-content-plugin	2007	2021-03-10 06:59:58.026	createButtonService
com.atlassian.confluence.plugins.confluence-email-resources	2008	2021-03-10 06:59:58.026	content-templates-status-update-pattern-2.0.0
com.atlassian.streams.confluence	2009	2021-03-10 06:59:58.026	date-syr-SY
com.atlassian.auiplugin	2010	2021-03-10 06:59:58.026	aui-experimental-page-layout-typography
confluence.macros.advanced	2011	2021-03-10 06:59:58.026	blogpost-mobile-resources
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	2012	2021-03-10 06:59:58.026	confluence-webpanel-data-resources
com.atlassian.auiplugin	2013	2021-03-10 06:59:58.026	hotkeys
com.atlassian.streams.confluence	2014	2021-03-10 06:59:58.026	date-ky-KG
com.atlassian.applinks.applinks-trustedapps-plugin	2015	2021-03-10 06:59:58.026	trustedAppsAuthenticationProviderPluginModule
com.atlassian.confluence.plugins.confluence-schedule-admin	2016	2021-03-10 06:59:58.026	view-scheduled-jobs
com.atlassian.oauth.consumer	2071	2021-03-10 06:59:58.026	consumerInfoServlet
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2017	2021-03-10 06:59:58.026	notificationStoreService
com.atlassian.plugins.base-hipchat-integration-plugin	2018	2021-03-10 06:59:58.026	hipchat-webpanel
com.atlassian.confluence.plugins.watch-button	2019	2021-03-10 06:59:58.026	rest
com.atlassian.confluence.plugins.confluence-software-project	2020	2021-03-10 06:59:58.026	SoftwareProjectSpaceHomePageEventListener
com.atlassian.confluence.plugins.confluence-create-content-plugin	2021	2021-03-10 06:59:58.026	header-create-link
com.atlassian.plugins.atlassian-whitelist-ui-plugin	2022	2021-03-10 06:59:58.026	whitelistRuleComparator
com.atlassian.integration.jira.jira-integration-plugin	2023	2021-03-10 06:59:58.026	jiraKeyScanner
com.atlassian.confluence.plugins.confluence-content-property-storage	2024	2021-03-10 06:59:58.026	contentPropertyValidator
confluence.sections.profile	2025	2021-03-10 06:59:58.026	stop-favourite-user-personal-space
com.atlassian.confluence.plugins.confluence-email-resources	2026	2021-03-10 06:59:58.026	content-templates-simple-data-table-pattern-1.0.0
com.atlassian.streams	2027	2021-03-10 06:59:58.026	templateRendererFactory
com.atlassian.streams	2028	2021-03-10 06:59:58.026	streamsActivityServlet
confluence.search.mappers.lucene	2029	2021-03-10 06:59:58.026	label
com.atlassian.confluence.plugins.templates-framework	2030	2021-03-10 06:59:58.026	templates_css
com.atlassian.applinks.applinks-plugin	2031	2021-03-10 06:59:58.026	crowd
com.atlassian.analytics.analytics-client	2032	2021-03-10 06:59:58.026	productUUIDProvider
com.atlassian.auiplugin	2033	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-jquery-jquery-os
com.atlassian.streams.core	2034	2021-03-10 06:59:58.026	templateRenderer
confluence.macros.advanced	2035	2021-03-10 06:59:58.026	advancedMacrosExcerpter
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2036	2021-03-10 06:59:58.026	instanceTopologyJob
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2037	2021-03-10 06:59:58.026	blogpost-edited-notification-template
com.atlassian.confluence.plugins.confluence-daily-summary-email	2038	2021-03-10 06:59:58.026	title-metadata
com.atlassian.confluence.plugins.search.confluence-search	2039	2021-03-10 06:59:58.026	searchResultBuilderFactory
com.atlassian.auiplugin	2040	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-binder
com.atlassian.streams.confluence	2041	2021-03-10 06:59:58.026	spaceKeys
confluence.sections.admin	2042	2021-03-10 06:59:58.026	layouts
com.atlassian.gadgets.opensocial	2043	2021-03-10 06:59:58.026	gadget-removed-error-page-resources
com.atlassian.confluence.plugins.confluence-user-rest	2044	2021-03-10 06:59:58.026	groupEntityBuilder
com.atlassian.confluence.plugins.confluence-content-property-storage	2045	2021-03-10 06:59:58.026	contentPropertyExtractionManager
com.atlassian.confluence.plugins.confluence-space-blueprints	2046	2021-03-10 06:59:58.026	sidebarService
com.atlassian.confluence.plugins.confluence-nav-links	2047	2021-03-10 06:59:58.026	confluenceWeights
com.atlassian.mywork.mywork-common-plugin	2048	2021-03-10 06:59:58.026	myworkserviceselector
confluence.sections.space.admin	2049	2021-03-10 06:59:58.026	spaceops
com.atlassian.mywork.mywork-common-plugin	2050	2021-03-10 06:59:58.026	reliable-rest-service
com.atlassian.applinks.applinks-cors-plugin	2051	2021-03-10 06:59:58.026	corsUISysadminAuthenticatorFilter
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2052	2021-03-10 06:59:58.026	propertiesManager
com.atlassian.applinks.applinks-trustedapps-plugin	2053	2021-03-10 06:59:58.026	applicationLinkService
com.atlassian.oauth.serviceprovider	2054	2021-03-10 06:59:58.026	requestFactory
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2055	2021-03-10 06:59:58.026	dac-landing-page-servlet
com.atlassian.confluence.plugins.confluence-sal-plugin	2056	2021-03-10 06:59:58.026	pluginSettingsFactory
com.atlassian.plugins.base-hipchat-integration-plugin	2057	2021-03-10 06:59:58.026	hipchat-global
com.atlassian.auiplugin	2058	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-tables-sortable
com.atlassian.oauth.serviceprovider	2059	2021-03-10 06:59:58.026	converter
confluence.sections.create	2060	2021-03-10 06:59:58.026	add-blogpost
com.atlassian.confluence.plugins.gadgets	2061	2021-03-10 06:59:58.026	i18nResolver
com.atlassian.confluence.keyboardshortcuts	2062	2021-03-10 06:59:58.026	return.to.edit.page
com.atlassian.labs.lucene-compat-plugin	2063	2021-03-10 06:59:58.026	extractor
confluence.macros.basic	2064	2021-03-10 06:59:58.026	panel-xhtml
com.atlassian.confluence.plugins.confluence-onboarding	2065	2021-03-10 06:59:58.026	no-spaces-notification-transformer
com.atlassian.confluence.plugins.confluence-nav-links	2066	2021-03-10 06:59:58.026	profile
com.atlassian.streams.confluence	2067	2021-03-10 06:59:58.026	attachmentRendererFactory
com.atlassian.plugins.atlassian-nav-links-plugin	2068	2021-03-10 06:59:58.026	content-link
com.atlassian.plugins.atlassian-nav-links-plugin	2069	2021-03-10 06:59:58.026	projects-service
com.atlassian.streams	2070	2021-03-10 06:59:58.026	date-el-GR
com.atlassian.confluence.plugins.confluence-email-resources	2072	2021-03-10 06:59:58.026	use-custom-site-logo-function
confluence.listeners.core	2073	2021-03-10 06:59:58.026	crowddirectorylistener
com.atlassian.confluence.plugins.confluence-inline-comments	2074	2021-03-10 06:59:58.026	inlinecomment-findAllResolvedComment
confluence.listeners.core	2075	2021-03-10 06:59:58.026	resetHiloAfterImportListener
com.atlassian.confluence.plugins.confluence-previews	2076	2021-03-10 06:59:58.026	share-plugin
com.atlassian.confluence.keyboardshortcuts	2077	2021-03-10 06:59:58.026	tinymce.pre
com.atlassian.gadgets.publisher	2078	2021-03-10 06:59:58.026	ajs-gadgets-debug
com.atlassian.plugins.atlassian-nps-plugin	2079	2021-03-10 06:59:58.026	nps-specific-resources-async
com.atlassian.webhooks.atlassian-webhooks-plugin	2080	2021-03-10 06:59:58.026	webhooksRest
com.atlassian.streams	2081	2021-03-10 06:59:58.026	pluginEventManager
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	2082	2021-03-10 06:59:58.026	pluginAccessor
com.atlassian.auiplugin	2083	2021-03-10 06:59:58.026	aui-deprecation
com.atlassian.confluence.plugins.quickreload	2084	2021-03-10 06:59:58.026	quick-reload-resources
com.atlassian.confluence.plugins.confluence-paste	2085	2021-03-10 06:59:58.026	autoconvert-confluence
com.atlassian.confluence.plugins.search.confluence-search	2086	2021-03-10 06:59:58.026	moduleDescriptorCacheFactory
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2087	2021-03-10 06:59:58.026	blogpost-moved-notification-transformer
com.atlassian.confluence.plugins.confluence-knowledge-base	2088	2021-03-10 06:59:58.026	rest
confluence.search.mappers.lucene	2089	2021-03-10 06:59:58.026	deactivatedUserSearchFilter
com.atlassian.applinks.applinks-plugin	2090	2021-03-10 06:59:58.026	applinksRestV3-filter
confluence.extra.dynamictasklist2	2091	2021-03-10 06:59:58.026	v2-dynamictasklist2
com.atlassian.analytics.analytics-client	2092	2021-03-10 06:59:58.026	analyticsLogger
com.atlassian.plugins.atlassian-nav-links-plugin	2093	2021-03-10 06:59:58.026	web-interface-manager
com.atlassian.plugins.atlassian-nav-links-plugin	2094	2021-03-10 06:59:58.026	navigation-link
com.atlassian.streams	2095	2021-03-10 06:59:58.026	feedAggregator
com.atlassian.mywork.mywork-confluence-host-plugin	2096	2021-03-10 06:59:58.026	registration-dao
com.atlassian.confluence.extra.officeconnector	2097	2021-03-10 06:59:58.026	viewpdf
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	2098	2021-03-10 06:59:58.026	admin.cluster-monitoring
confluence.extra.confluencerpc	2099	2021-03-10 06:59:58.026	xhtmlSoapServiceTarget
com.atlassian.confluence.plugins.confluence-lookandfeel	2100	2021-03-10 06:59:58.026	transactionTemplate
confluence.search.mappers.lucene	2101	2021-03-10 06:59:58.026	phrase
com.atlassian.confluence.plugins.confluence-create-content-plugin	2102	2021-03-10 06:59:58.026	blueprint-first-time-tooltip-resources
com.atlassian.applinks.applinks-plugin	2103	2021-03-10 06:59:58.026	projectManager
com.atlassian.streams.confluence	2104	2021-03-10 06:59:58.026	contentEntityItemFactory
com.atlassian.confluence.plugins.gadgets	2105	2021-03-10 06:59:58.026	analytics-whitelist
com.atlassian.plugins.atlassian-nav-links-plugin	2106	2021-03-10 06:59:58.026	menu-rest
com.atlassian.confluence.plugins.confluence-email-resources	2107	2021-03-10 06:59:58.026	content-templates-content-excerpt-pattern-1.0.0
confluence.macros.advanced	2108	2021-03-10 06:59:58.026	news
com.atlassian.confluence.plugins.confluence-software-blueprints	2109	2021-03-10 06:59:58.026	jirareports-index
com.atlassian.confluence.extra.flyingpdf	2110	2021-03-10 06:59:58.026	flyingPdfDocumentConverter
confluence.macros.advanced	2111	2021-03-10 06:59:58.026	recently-used-labels
com.atlassian.oauth.consumer.sal	2112	2021-03-10 06:59:58.026	i18nResolver
com.atlassian.applinks.applinks-plugin	2113	2021-03-10 06:59:58.026	soyTemplateRenderer
com.atlassian.confluence.plugins.confluence-sortable-tables	2114	2021-03-10 06:59:58.026	sortable-table-loader
com.atlassian.confluence.plugins.gadgets	2115	2021-03-10 06:59:58.026	webResourceManager
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2116	2021-03-10 06:59:58.026	asynchronousTaskManager
com.atlassian.applinks.applinks-plugin	2117	2021-03-10 06:59:58.026	manifestRetrieverContextItem
com.atlassian.auiplugin	2118	2021-03-10 06:59:58.026	darkFeatureManager
com.atlassian.streams	2119	2021-03-10 06:59:58.026	date-hr-BA
com.atlassian.streams.confluence	2120	2021-03-10 06:59:58.026	date-ja-JP
com.atlassian.auiplugin	2121	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-dialog2
com.atlassian.streams	2122	2021-03-10 06:59:58.026	date-mi-NZ
com.atlassian.confluence.plugins.confluence-business-blueprints	2123	2021-03-10 06:59:58.026	sharelinks-blueprint
com.atlassian.confluence.plugins.synchrony-interop	2124	2021-03-10 06:59:58.026	confluence-synchrony-interop-rest-api
com.atlassian.streams	2125	2021-03-10 06:59:58.026	date-mt-MT
com.atlassian.applinks.applinks-oauth-plugin	2126	2021-03-10 06:59:58.026	redirectController
confluence.extra.jira	2127	2021-03-10 06:59:58.026	servers
com.atlassian.confluence.plugins.confluence-sal-plugin	2128	2021-03-10 06:59:58.026	applicationProperties
confluence.extra.livesearch	2129	2021-03-10 06:59:58.026	livesearch-xhtml
com.atlassian.confluence.plugins.drag-and-drop	2130	2021-03-10 06:59:58.026	drag-and-drop-overlay
com.atlassian.auiplugin	2131	2021-03-10 06:59:58.026	aui-banner
confluence.user.menu	2132	2021-03-10 06:59:58.026	user-history
com.atlassian.confluence.plugins.confluence-software-blueprints	2133	2021-03-10 06:59:58.026	jirareports-changelog-static
com.atlassian.streams.confluence	2134	2021-03-10 06:59:58.026	userProfileAccessor
com.atlassian.applinks.applinks-plugin	2135	2021-03-10 06:59:58.026	applinks-entity-type
confluence.web.resources	2136	2021-03-10 06:59:58.026	draft-changes
com.atlassian.confluence.plugins.confluence-file-notifications	2137	2021-03-10 06:59:58.026	file-content-payload-transformer
com.atlassian.plugins.atlassian-nav-links-plugin	2138	2021-03-10 06:59:58.026	project-shortcut
com.atlassian.plugins.atlassian-whitelist-ui-plugin	2139	2021-03-10 06:59:58.026	whitelist-web-resources
com.atlassian.confluence.plugins.confluence-highlight-actions	2140	2021-03-10 06:59:58.026	highlightOptionPanelConfigService
com.atlassian.applinks.applinks-oauth-plugin	2141	2021-03-10 06:59:58.026	add-consumer-redirect
confluence.web.resources	2142	2021-03-10 06:59:58.026	jquery-autocomplete
confluence.extra.confluencerpc	2143	2021-03-10 06:59:58.026	soapServiceHelper
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2144	2021-03-10 06:59:58.026	transactionTemplate
confluence.macros.basic	2145	2021-03-10 06:59:58.026	noformat-xhtml
com.atlassian.plugins.tinymce	2146	2021-03-10 06:59:58.026	atlassian-rte-javascript-tinymce-extensions
com.atlassian.confluence.plugins.confluence-onboarding	2147	2021-03-10 06:59:58.026	confluenceOnboardingPluginAnalyticsWhitelist
com.atlassian.applinks.applinks-plugin	2148	2021-03-10 06:59:58.026	feature-v3-onboarding
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2149	2021-03-10 06:59:58.026	rest-filter
com.atlassian.prettyurls.atlassian-pretty-urls-plugin	2150	2021-03-10 06:59:58.026	prettyurls-matcher-filter-before-dispatch
com.atlassian.confluence.plugins.confluence-email-resources	2151	2021-03-10 06:59:58.026	stop-watching-space-blogs-email-footer-item
com.atlassian.mywork.mywork-confluence-provider-plugin	2152	2021-03-10 06:59:58.026	eventPublisher
com.atlassian.confluence.plugins.reliablesave	2153	2021-03-10 06:59:58.026	confluenceReliableSaveWhitelist
com.atlassian.streams	2154	2021-03-10 06:59:58.026	date-sr-Cyrl-CS
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2155	2021-03-10 06:59:58.026	confluenceNotificationRenderer
com.atlassian.confluence.plugins.confluence-email-resources	2156	2021-03-10 06:59:58.026	reply-to-comment-email-batch-item
com.atlassian.confluence.plugins.confluence-like	2157	2021-03-10 06:59:58.026	notificationListener
com.atlassian.mywork.mywork-common-plugin	2158	2021-03-10 06:59:58.026	mywork-action-service
com.atlassian.streams	2159	2021-03-10 06:59:58.026	appLinksWhitelist
confluence.macros.advanced	2160	2021-03-10 06:59:58.026	include
com.atlassian.streams.confluence	2161	2021-03-10 06:59:58.026	thumbnailManager
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2162	2021-03-10 06:59:58.026	fancy-select
com.atlassian.integration.jira.jira-integration-plugin	2163	2021-03-10 06:59:58.026	jira-resource
com.atlassian.confluence.plugins.confluence-roadmap-plugin	2164	2021-03-10 06:59:58.026	roadmap-analytics-whitelist
com.atlassian.confluence.plugins.confluence-jira-content	2165	2021-03-10 06:59:58.026	issues-created-panel
confluence.web.resources	2166	2021-03-10 06:59:58.026	general-analytics-bindings
org.randombits.confluence.toc	2167	2021-03-10 06:59:58.026	server-soy-templates
com.atlassian.confluence.plugins.confluence-inline-comments	2168	2021-03-10 06:59:58.026	common-resource
com.atlassian.confluence.contributors	2169	2021-03-10 06:59:58.026	PageDetailsHelper
com.atlassian.auiplugin	2170	2021-03-10 06:59:58.026	ajs-contextpath
com.atlassian.streams.streams-thirdparty-plugin	2171	2021-03-10 06:59:58.026	ao
confluence.sections.space.tools	2172	2021-03-10 06:59:58.026	stop-watching-space
com.atlassian.plugins.base-hipchat-integration-plugin	2173	2021-03-10 06:59:58.026	view-oauth-resources
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2174	2021-03-10 06:59:58.026	comment-edited-hipchat-notification-template
com.atlassian.applinks.applinks-cors-plugin	2175	2021-03-10 06:59:58.026	documentationLinker
com.atlassian.healthcheck.atlassian-healthcheck	2176	2021-03-10 06:59:58.026	healthCheckRest
confluence.extractors.core	2177	2021-03-10 06:59:58.026	lastModifierNameChangeExtractor
com.atlassian.plugins.base-hipchat-integration-plugin	2178	2021-03-10 06:59:58.026	rest-ping-filter
com.atlassian.applinks.applinks-plugin	2179	2021-03-10 06:59:58.026	confluence-inbound-two-legged-oauth
com.atlassian.confluence.plugins.confluence-email-resources	2180	2021-03-10 06:59:58.026	templateRenderer
com.atlassian.soy.soy-template-plugin	2181	2021-03-10 06:59:58.026	toStringFunction
confluence.renderer.components	2182	2021-03-10 06:59:58.026	macro
confluence.search.mappers.lucene	2183	2021-03-10 06:59:58.026	queryString
com.atlassian.streams	2184	2021-03-10 06:59:58.026	date-sr-Cyrl-BA
com.atlassian.auiplugin	2185	2021-03-10 06:59:58.026	aui-expander
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2186	2021-03-10 06:59:58.026	pluginManualUpdateNotificationService
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	2187	2021-03-10 06:59:58.026	confluenceSpaceToRoomNotificationsAnalyticsWhitelist
confluence.web.resources	2188	2021-03-10 06:59:58.026	module-exporter
confluence.search.mappers.lucene	2189	2021-03-10 06:59:58.026	termRange
com.atlassian.streams.streams-thirdparty-plugin	2190	2021-03-10 06:59:58.026	applicationProperties
com.atlassian.plugins.atlassian-whitelist-core-plugin	2191	2021-03-10 06:59:58.026	confluenceGadgetWhitelistMigration
com.atlassian.confluence.plugins.confluence-email-resources	2192	2021-03-10 06:59:58.026	template-utils-user-avatar-name-table-2.0.0
confluence.sections.attachments	2193	2021-03-10 06:59:58.026	edit
com.atlassian.auiplugin	2194	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-index-of
com.atlassian.confluence.plugins.confluence-inline-tasks	2195	2021-03-10 06:59:58.026	custom-task-report-template
com.atlassian.confluence.plugins.confluence-inline-comments	2196	2021-03-10 06:59:58.026	view-inline-comment-batch-email-action
com.atlassian.analytics.analytics-client	2197	2021-03-10 06:59:58.026	confluenceClusterInformationProvider
com.atlassian.support.stp	2198	2021-03-10 06:59:58.026	resources
com.atlassian.confluence.keyboardshortcuts	2199	2021-03-10 06:59:58.026	create.page
com.atlassian.streams.confluence	2200	2021-03-10 06:59:58.026	date-fo-FO
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2201	2021-03-10 06:59:58.026	compatibilityPluginScheduler
com.atlassian.mywork.mywork-confluence-host-plugin	2202	2021-03-10 06:59:58.026	mw-header-anchor-css
confluence.macros.advanced	2203	2021-03-10 06:59:58.026	gallery
com.atlassian.plugins.atlassian-nps-plugin	2204	2021-03-10 06:59:58.026	pluginSettingsFactory
com.atlassian.querylang.confluence-cql-plugin	2205	2021-03-10 06:59:58.026	rest-cql-metadata
com.atlassian.confluence.plugins.confluence-content-property-storage	2206	2021-03-10 06:59:58.026	hostContextAccessor
com.atlassian.plugins.atlassian-nav-links-plugin	2207	2021-03-10 06:59:58.026	capabilities-consumer-admin-rest
com.atlassian.confluence.keyboardshortcuts	2208	2021-03-10 06:59:58.026	goto.dashboard
com.atlassian.mywork.mywork-confluence-host-plugin	2209	2021-03-10 06:59:58.026	client-service
confluence.sections.space.admin	2210	2021-03-10 06:59:58.026	security
com.atlassian.plugins.base-hipchat-integration-plugin	2211	2021-03-10 06:59:58.026	hipchat-command
com.atlassian.confluence.plugins.gadgets	2212	2021-03-10 06:59:58.026	themeManager
confluence.extra.jira	2213	2021-03-10 06:59:58.026	autoconvert-jira
confluence.web.panels	2214	2021-03-10 06:59:58.026	confluence-header-help-menu
com.atlassian.confluence.image.effects.ImageEffectsPlugin	2215	2021-03-10 06:59:58.026	imgfilterfilter
com.atlassian.confluence.plugins.confluence-knowledge-base	2216	2021-03-10 06:59:58.026	searcher
com.atlassian.confluence.plugins.confluence-inline-tasks	2217	2021-03-10 06:59:58.026	email-resources-2.0.0
com.atlassian.streams	2218	2021-03-10 06:59:58.026	date-smn-FI
com.atlassian.applinks.applinks-cors-plugin	2219	2021-03-10 06:59:58.026	internalHostApplication
com.atlassian.confluence.plugins.soy	2220	2021-03-10 06:59:58.026	soy-web-panel-function
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2221	2021-03-10 06:59:58.026	userSettingsStore
com.atlassian.streams.confluence	2222	2021-03-10 06:59:58.026	date-xh-ZA
confluence.web.resources	2223	2021-03-10 06:59:58.026	master-scripts
com.atlassian.streams	2224	2021-03-10 06:59:58.026	date-js
com.atlassian.analytics.analytics-client	2225	2021-03-10 06:59:58.026	atomicEventSender
com.atlassian.auiplugin	2226	2021-03-10 06:59:58.026	aui-trigger
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2227	2021-03-10 06:59:58.026	templatePathResolver
com.atlassian.confluence.plugins.recently-viewed-plugin	2228	2021-03-10 06:59:58.026	current-user-metadata-provider
com.atlassian.confluence.plugins.confluence-previews	2229	2021-03-10 06:59:58.026	permalink-plugin
com.atlassian.confluence.plugins.confluence-cache-management-plugin	2230	2021-03-10 06:59:58.026	cacheStatisticsRestResource
com.atlassian.confluence.plugins.confluence-easyuser-admin	2231	2021-03-10 06:59:58.026	easyuser
com.atlassian.auiplugin	2232	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-toggle
com.atlassian.auiplugin	2233	2021-03-10 06:59:58.026	aui-experimental-spinner
confluence.extra.webdav	2234	2021-03-10 06:59:58.026	davSessionProvider
confluence.sections.page.temp	2235	2021-03-10 06:59:58.026	pageunfavourite
com.atlassian.streams.confluence	2236	2021-03-10 06:59:58.026	date-ro-RO
com.atlassian.streams	2237	2021-03-10 06:59:58.026	webResourceManager
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2238	2021-03-10 06:59:58.026	pluginAccessor
com.atlassian.confluence.plugins.confluence-daily-summary-email	2239	2021-03-10 06:59:58.026	summaryEmail
com.atlassian.confluence.plugins.gadgets	2240	2021-03-10 06:59:58.026	gadget-directory
com.atlassian.confluence.plugins.confluence-email-resources	2241	2021-03-10 06:59:58.026	is-system-user-function
com.atlassian.applinks.applinks-plugin	2242	2021-03-10 06:59:58.026	readOnlyApplicationLinkService
com.atlassian.auiplugin	2243	2021-03-10 06:59:58.026	jquery-ui-widgets
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2244	2021-03-10 06:59:58.026	pageManager
com.atlassian.confluence.plugins.confluence-software-blueprints	2245	2021-03-10 06:59:58.026	jiraReportConfiguration
confluence.sections.space.admin	2246	2021-03-10 06:59:58.026	stylesheet
com.atlassian.confluence.plugins.confluence-files	2247	2021-03-10 06:59:58.026	contentEntityManager
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2248	2021-03-10 06:59:58.026	confluenceNotificationJwtIssuer
com.atlassian.confluence.extra.officeconnector	2249	2021-03-10 06:59:58.026	viewxls
confluence.web.resources	2250	2021-03-10 06:59:58.026	syntaxhighlighter-core
com.atlassian.mywork.mywork-confluence-host-plugin	2251	2021-03-10 06:59:58.026	storageFormatCleaner
com.atlassian.confluence.plugins.confluence-software-blueprints	2252	2021-03-10 06:59:58.026	setUserPermission
com.atlassian.confluence.plugins.confluence-email-resources	2253	2021-03-10 06:59:58.026	content-templates-content-highlight-1.0.0
com.atlassian.confluence.plugins.confluence-easyuser-admin	2254	2021-03-10 06:59:58.026	userManager
com.atlassian.streams	2255	2021-03-10 06:59:58.026	date-cs-CZ
com.atlassian.applinks.applinks-plugin	2256	2021-03-10 06:59:58.026	listApplicationLinks
com.atlassian.confluence.plugins.confluence-like	2257	2021-03-10 06:59:58.026	vcacheFactory
com.atlassian.confluence.plugins.confluence-jira-content	2258	2021-03-10 06:59:58.026	show-feature-discovery-flag
com.atlassian.confluence.plugins.confluence-inline-tasks	2259	2021-03-10 06:59:58.026	ao-module
com.atlassian.support.stp	2260	2021-03-10 06:59:58.026	applicationProperties
confluence.listeners.core	2261	2021-03-10 06:59:58.026	bundledcontentremovallistener
com.atlassian.confluence.plugins.confluence-lookandfeel	2262	2021-03-10 06:59:58.026	sitelogo
com.atlassian.auiplugin	2263	2021-03-10 06:59:58.026	aui-restfultable
com.atlassian.oauth.serviceprovider	2264	2021-03-10 06:59:58.026	authorization-resources
com.atlassian.confluence.plugins.confluence-inline-tasks	2265	2021-03-10 06:59:58.026	task-email-notification-template-body
confluence.web.resources	2266	2021-03-10 06:59:58.026	view-my-drafts
com.atlassian.confluence.editor	2267	2021-03-10 06:59:58.026	editor-autocomplete-resources-only
confluence.extra.webdav	2268	2021-03-10 06:59:58.026	webdav.plugin.actions
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	2269	2021-03-10 06:59:58.026	page-share-notification
com.atlassian.confluence.plugins.confluence-templates	2270	2021-03-10 06:59:58.026	template-variable-placeholder
com.atlassian.confluence.editor	2271	2021-03-10 06:59:58.026	editor-featured-macro-toc
com.atlassian.confluence.editor	2272	2021-03-10 06:59:58.026	sectionAndColumnListener
com.atlassian.confluence.editor	2273	2021-03-10 06:59:58.026	editor-captcha
confluence.comment.action	2274	2021-03-10 06:59:58.026	remove-comment
com.atlassian.analytics.analytics-client	2275	2021-03-10 06:59:58.026	confluenceProgrammaticAnalyticsDetector
confluence.extra.jira	2276	2021-03-10 06:59:58.026	jirachart-resources
com.atlassian.auiplugin	2277	2021-03-10 06:59:58.026	internal-src-js-aui-header-async
com.atlassian.confluence.plugins.confluence-highlight-actions	2278	2021-03-10 06:59:58.026	eventPublisher
confluence.extra.jira	2279	2021-03-10 06:59:58.026	jira-issues-view-mode-async-resource
confluence.content.action.menu	2280	2021-03-10 06:59:58.026	view-in-hierarchy-page
confluence.listeners.core	2281	2021-03-10 06:59:58.026	referralsListener
com.atlassian.confluence.contributors	2282	2021-03-10 06:59:58.026	PageSearchHelper
com.atlassian.auiplugin	2283	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-internal-mediaQuery
com.atlassian.confluence.plugins.confluence-daily-summary-email	2284	2021-03-10 06:59:58.026	summaryEmailHourlyTrigger
com.atlassian.mywork.mywork-common-plugin	2285	2021-03-10 06:59:58.026	reliability-service
com.atlassian.confluence.editor	2286	2021-03-10 06:59:58.026	commentRenderService
com.atlassian.applinks.applinks-trustedapps-plugin	2287	2021-03-10 06:59:58.026	redirectController
com.atlassian.streams.confluence	2288	2021-03-10 06:59:58.026	date-nl-NL
confluence.extra.impresence2	2289	2021-03-10 06:59:58.026	wildfire-migrator
com.atlassian.confluence.plugins.confluence-onboarding	2290	2021-03-10 06:59:58.026	onboarding-notification-less-users
com.atlassian.confluence.plugins.confluence-space-directory	2291	2021-03-10 06:59:58.026	space-directory-rest
com.atlassian.prettyurls.atlassian-pretty-urls-plugin	2292	2021-03-10 06:59:58.026	prettyurls-combined-filter-before-decoration
confluence.user.menu	2293	2021-03-10 06:59:58.026	user-watches
com.atlassian.confluence.plugins.confluence-create-content-plugin	2294	2021-03-10 06:59:58.026	trashManager
com.atlassian.applinks.applinks-basicauth-plugin	2295	2021-03-10 06:59:58.026	authenticationConfigurationManager
com.atlassian.confluence.extra.widgetconnector	2296	2021-03-10 06:59:58.026	slideshare
com.atlassian.streams.confluence	2297	2021-03-10 06:59:58.026	date-dv-MV
com.atlassian.confluence.plugins.expand-macro	2298	2021-03-10 06:59:58.026	expand-macro-core
confluence.listeners.core	2299	2021-03-10 06:59:58.026	imageDetailsListener
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	2300	2021-03-10 06:59:58.026	clustering-unavailable-resource
com.atlassian.confluence.plugins.confluence-mentions-plugin	2301	2021-03-10 06:59:58.026	notificationDataService
com.atlassian.confluence.ext.newcode-macro-plugin	2302	2021-03-10 06:59:58.026	newcode-json-actions
confluence.search.mappers.lucene	2303	2021-03-10 06:59:58.026	permittedSpaces
com.atlassian.confluence.ext.newcode-macro-plugin	2304	2021-03-10 06:59:58.026	newcode-admin-link
com.atlassian.confluence.plugins.confluence-request-access-plugin	2305	2021-03-10 06:59:58.026	requestAccessPageNotPermittedPanel
com.atlassian.confluence.plugins.recently-viewed-plugin	2306	2021-03-10 06:59:58.026	pluginScheduler
com.atlassian.confluence.plugins.confluence-mobile	2307	2021-03-10 06:59:58.026	search-resources
confluence.search.mappers.lucene	2308	2021-03-10 06:59:58.026	textField
com.atlassian.confluence.plugins.confluence-business-blueprints	2309	2021-03-10 06:59:58.026	sharelinks-service-filter
com.atlassian.auiplugin	2310	2021-03-10 06:59:58.026	ajs-html5shim
com.atlassian.confluence.extra.officeconnector	2311	2021-03-10 06:59:58.026	officeConnectorAnalyticsWhitelist
com.atlassian.streams	2312	2021-03-10 06:59:58.026	streamsFeedUriFactory
confluence.macros.multimedia	2313	2021-03-10 06:59:58.026	xsrfTokenGenerator
com.atlassian.confluence.extra.widgetconnector	2314	2021-03-10 06:59:58.026	googlecalender
com.atlassian.confluence.plugins.confluence-inline-tasks	2315	2021-03-10 06:59:58.026	my-tasks-profile-menu-item
confluence.xhtml.wikimarkup	2316	2021-03-10 06:59:58.026	unmigrated-inline-wiki-markup
com.atlassian.confluence.plugins.confluence-sal-plugin	2317	2021-03-10 06:59:58.026	springHostConnectionAccessor
com.atlassian.confluence.plugins.confluence-content-property-storage	2318	2021-03-10 06:59:58.026	spaceproperty-all-by-key
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2319	2021-03-10 06:59:58.026	space-notification-recipients-provider
com.atlassian.applinks.applinks-plugin	2320	2021-03-10 06:59:58.026	fisheyeCrucibleProject
com.atlassian.auiplugin	2321	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-restful-table-custom-edit-view
com.atlassian.confluence.plugins.confluence-space-blueprints	2322	2021-03-10 06:59:58.026	view-homepage-email-item
com.atlassian.confluence.extra.widgetconnector	2323	2021-03-10 06:59:58.026	ooyala
com.atlassian.confluence.plugins.confluence-content-property-storage	2324	2021-03-10 06:59:58.026	content-property-index-schema
com.atlassian.mywork.mywork-common-plugin	2325	2021-03-10 06:59:58.026	web-resources
com.atlassian.confluence.plugins.confluence-request-access-plugin	2326	2021-03-10 06:59:58.026	mailService
com.atlassian.confluence.plugins.confluence-previews	2327	2021-03-10 06:59:58.026	confluence-previews-resources
com.atlassian.auiplugin	2328	2021-03-10 06:59:58.026	aui-internal-state
com.atlassian.confluence.plugins.confluence-user-rest	2329	2021-03-10 06:59:58.026	confluenceUserManagementRest
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2330	2021-03-10 06:59:58.026	pluginLicenseEventPublisher
com.atlassian.gadgets.publisher	2331	2021-03-10 06:59:58.026	ajax
com.atlassian.auiplugin	2332	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-internal-skate
com.atlassian.confluence.plugins.confluence-software-project	2333	2021-03-10 06:59:58.026	confluence-software-project-resources
com.atlassian.analytics.analytics-client	2334	2021-03-10 06:59:58.026	userManager
confluence.extra.attachments	2335	2021-03-10 06:59:58.026	rest
com.atlassian.confluence.editor	2336	2021-03-10 06:59:58.026	editor-javascript-resources
com.atlassian.confluence.editor	2337	2021-03-10 06:59:58.026	table-resizable-styles
confluence.macros.advanced	2338	2021-03-10 06:59:58.026	blog-post-resources
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2339	2021-03-10 06:59:58.026	confluenceClusterLockServiceAccessor
com.atlassian.confluence.plugins.confluence-mobile	2340	2021-03-10 06:59:58.026	fly-out-resources
com.atlassian.analytics.analytics-client	2341	2021-03-10 06:59:58.026	loginPageRedirector
confluence.extra.jira	2342	2021-03-10 06:59:58.026	help-dialog-extension
confluence.sections.settings.edit	2343	2021-03-10 06:59:58.026	yoursettings
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2344	2021-03-10 06:59:58.026	staticServerPreferenceKeyProvider
confluence.sections.space.advanced	2345	2021-03-10 06:59:58.026	startwatching
com.atlassian.confluence.plugins.confluence-view-file-macro	2346	2021-03-10 06:59:58.026	view-file-macro-resources
com.atlassian.confluence.plugins.confluence-mobile	2347	2021-03-10 06:59:58.026	i18nResolver
com.atlassian.plugin.notifications.notifications-module	2348	2021-03-10 06:59:58.026	notification-util
com.atlassian.applinks.applinks-basicauth-plugin	2349	2021-03-10 06:59:58.026	applicationLinkService
confluence.search.mappers.lucene	2350	2021-03-10 06:59:58.026	textFieldPrefix
com.atlassian.confluence.plugins.view-storage-format	2351	2021-03-10 06:59:58.026	view-storage-menu-resources
com.atlassian.crowd.embedded.admin	2352	2021-03-10 06:59:58.026	internal-directory-options
confluence.sections.space.tools	2353	2021-03-10 06:59:58.026	export-format-html
com.atlassian.plugins.rest.atlassian-rest-module	2354	2021-03-10 06:59:58.026	rest-container-servlet-filter-REQUEST
com.atlassian.confluence.plugins.confluence-daily-summary-email	2355	2021-03-10 06:59:58.026	transactionTemplate
com.atlassian.analytics.analytics-client	2356	2021-03-10 06:59:58.026	whitelist-report
com.atlassian.confluence.plugins.confluence-content-property-storage	2357	2021-03-10 06:59:58.026	spaceproperty-by-key
com.atlassian.confluence.plugins.confluence-request-access-plugin	2358	2021-03-10 06:59:58.026	rest
confluence.web.resources	2359	2021-03-10 06:59:58.026	jquery
com.atlassian.confluence.plugins.confluence-mobile	2360	2021-03-10 06:59:58.026	resourceIdentifierContextUtility
confluence.web.resources	2361	2021-03-10 06:59:58.026	regexes
confluence.search.mappers.lucene	2362	2021-03-10 06:59:58.026	subset
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2363	2021-03-10 06:59:58.026	pluginEnablementService
com.atlassian.confluence.plugins.confluence-email-resources	2364	2021-03-10 06:59:58.026	analyticsRenderContext
confluence.renderer.components	2365	2021-03-10 06:59:58.026	subscript
com.atlassian.streams.confluence	2366	2021-03-10 06:59:58.026	date-th-TH
com.atlassian.confluence.plugins.confluence-email-resources	2367	2021-03-10 06:59:58.026	stop-watching-space-email-batch-footer
com.atlassian.confluence.plugins.confluence-like	2368	2021-03-10 06:59:58.026	confluenceAccessManager
confluence.search.lucene.boosting	2369	2021-03-10 06:59:58.026	boostByModificationDate
confluence.sections.admin	2370	2021-03-10 06:59:58.026	dailybackup
com.atlassian.confluence.plugins.pagetree	2371	2021-03-10 06:59:58.026	pagetree-css-resources
confluence.extractors.core	2372	2021-03-10 06:59:58.026	spaceTypeExtractor
com.atlassian.oauth.serviceprovider.sal	2373	2021-03-10 06:59:58.026	consumerStore
com.atlassian.confluence.editor	2374	2021-03-10 06:59:58.026	page-editor-js
com.atlassian.confluence.plugins.quickreload	2375	2021-03-10 06:59:58.026	quickReloadCaches
com.atlassian.plugins.atlassian-nav-links-plugin	2376	2021-03-10 06:59:58.026	salFeatureManager
com.atlassian.streams.confluence	2377	2021-03-10 06:59:58.026	formatPreferenceProvider
com.atlassian.plugins.base-hipchat-integration-plugin-api	2378	2021-03-10 06:59:58.026	hipchat-notification-type
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2379	2021-03-10 06:59:58.026	licenseReceiptValidator
com.atlassian.confluence.plugins.confluence-inline-tasks	2380	2021-03-10 06:59:58.026	my-tasks-resources
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	2381	2021-03-10 06:59:58.026	batching-notification-template
com.atlassian.confluence.plugins.recently-viewed-plugin	2382	2021-03-10 06:59:58.026	purgeHistoryJobTrigger
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	2383	2021-03-10 06:59:58.026	licenseHealthCheck
confluence.search.mappers.lucene	2384	2021-03-10 06:59:58.026	siteSearchPermissionsFilter
com.atlassian.confluence.plugins.confluence-knowledge-base	2385	2021-03-10 06:59:58.026	kb-how-to-article
com.atlassian.confluence.editor	2386	2021-03-10 06:59:58.026	editor-unrestricted
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	2387	2021-03-10 06:59:58.026	databaseHealthCheck
com.atlassian.plugins.editor	2388	2021-03-10 06:59:58.026	atlassian-rte-css
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2389	2021-03-10 06:59:58.026	licenseManagerProvider
com.atlassian.plugins.atlassian-nav-links-plugin	2390	2021-03-10 06:59:58.026	show-app-switcher-soy-function
confluence.macros.advanced	2391	2021-03-10 06:59:58.026	blogs
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2392	2021-03-10 06:59:58.026	applicationLifecycleLogger
com.atlassian.confluence.plugins.confluence-mentions-plugin	2393	2021-03-10 06:59:58.026	mention-created-notification
com.atlassian.confluence.plugins.confluence-like	2394	2021-03-10 06:59:58.026	view-email-content-item
com.atlassian.streams.streams-thirdparty-plugin	2395	2021-03-10 06:59:58.026	streams-thirdparty-ao-module
com.atlassian.confluence.plugins.confluence-onboarding	2396	2021-03-10 06:59:58.026	space-service
confluence.extractors.core	2397	2021-03-10 06:59:58.026	attachmentMetadataExtractor
com.atlassian.auiplugin	2398	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-header-async
com.atlassian.plugins.rest.atlassian-rest-module	2399	2021-03-10 06:59:58.026	rest-servlet-filter
com.atlassian.confluence.plugins.confluence-email-resources	2400	2021-03-10 06:59:58.026	notification-templates-page-created-2.0.0
com.atlassian.mywork.mywork-confluence-host-plugin	2401	2021-03-10 06:59:58.026	loginUriProvider
confluence.extra.information	2402	2021-03-10 06:59:58.026	information-plugin-mobile-styles
com.atlassian.oauth.serviceprovider	2403	2021-03-10 06:59:58.026	helpLinkResolver
com.atlassian.auiplugin	2404	2021-03-10 06:59:58.026	aui-experimental-toolbar2
confluence.search.mappers.lucene	2405	2021-03-10 06:59:58.026	viewUserProfilePermissionsSearchFilter
com.atlassian.confluence.plugins.confluence-like	2406	2021-03-10 06:59:58.026	contentEntityManager
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2407	2021-03-10 06:59:58.026	userSettingsUpgradeTask
com.atlassian.confluence.plugins.confluence-inline-tasks	2408	2021-03-10 06:59:58.026	space-page-picker-shim
confluence.search.mappers.lucene	2409	2021-03-10 06:59:58.026	hasPersonalSpace
com.atlassian.mywork.mywork-common-plugin	2410	2021-03-10 06:59:58.026	backoff-scheduler
com.atlassian.confluence.plugins.confluence-sal-plugin	2411	2021-03-10 06:59:58.026	localeResolver
com.atlassian.plugins.base-hipchat-integration-plugin-api	2412	2021-03-10 06:59:58.026	legacyTokenCleanup
com.atlassian.auiplugin	2413	2021-03-10 06:59:58.026	jquery-aop
com.atlassian.activeobjects.activeobjects-plugin	2414	2021-03-10 06:59:58.026	web-resources
com.atlassian.confluence.plugins.confluence-macro-usage-admin-plugin	2415	2021-03-10 06:59:58.026	pluginUsage
com.atlassian.querylang.confluence-cql-plugin	2416	2021-03-10 06:59:58.026	confluence-cql-plugin-macro-resources
com.atlassian.confluence.keyboardshortcuts	2417	2021-03-10 06:59:58.026	addlabel
com.atlassian.confluence.plugins.confluence-email-resources	2418	2021-03-10 06:59:58.026	mail
confluence.sections.space.tools	2419	2021-03-10 06:59:58.026	spacepermissions
com.atlassian.confluence.plugins.confluence-space-ia	2420	2021-03-10 06:59:58.026	sidebarActions
com.atlassian.streams	2421	2021-03-10 06:59:58.026	xsrfHeaderValidator
com.atlassian.confluence.plugins.confluence-onboarding	2422	2021-03-10 06:59:58.026	init-session-flow-resources
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2423	2021-03-10 06:59:58.026	pluginController
com.atlassian.plugins.atlassian-nav-links-plugin	2424	2021-03-10 06:59:58.026	local-navigation-links
confluence.sections.space.pages	2425	2021-03-10 06:59:58.026	list-recently-updated
com.atlassian.applinks.applinks-trustedapps-plugin	2426	2021-03-10 06:59:58.026	trusted-auth-outbound-configuration
com.atlassian.confluence.plugins.confluence-highlight-actions	2427	2021-03-10 06:59:58.026	xmlParserHelper
com.atlassian.confluence.plugins.confluence-file-notifications	2428	2021-03-10 06:59:58.026	file-notifications-page-link-action
com.atlassian.confluence.plugins.confluence-business-blueprints	2429	2021-03-10 06:59:58.026	sharelinksbookmarklet-actions
confluence.sections.page	2430	2021-03-10 06:59:58.026	view-attachments
com.atlassian.confluence.plugins.confluence-create-content-plugin	2431	2021-03-10 06:59:58.026	user-select2
com.atlassian.confluence.plugins.confluence-mentions-plugin	2432	2021-03-10 06:59:58.026	mentionsExcerptor
com.atlassian.confluence.plugins.confluence-roadmap-plugin	2433	2021-03-10 06:59:58.026	roadmap-placeholder-css
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2434	2021-03-10 06:59:58.026	pacClientContextFactory
com.atlassian.confluence.plugins.confluence-link-browser	2435	2021-03-10 06:59:58.026	link-browser-tab-weblink
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	2436	2021-03-10 06:59:58.026	batch-section-provider
confluence.extra.confluencerpc	2437	2021-03-10 06:59:58.026	notificationsSoapService
com.atlassian.plugins.atlassian-whitelist-core-plugin	2438	2021-03-10 06:59:58.026	transactionTemplate
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2439	2021-03-10 06:59:58.026	upm-common-install
com.atlassian.applinks.applinks-basicauth-plugin	2440	2021-03-10 06:59:58.026	applicationProperties
confluence.extra.webdav	2441	2021-03-10 06:59:58.026	microsoftMiniRedirectorAuthenticationHeaderFix
com.atlassian.streams.streams-thirdparty-plugin	2442	2021-03-10 06:59:58.026	sessionManager
confluence.web.resources	2443	2021-03-10 06:59:58.026	create-personal-space
com.atlassian.plugins.atlassian-nav-links-plugin	2444	2021-03-10 06:59:58.026	linked-application-capabilities
com.atlassian.applinks.applinks-trustedapps-plugin	2445	2021-03-10 06:59:58.026	loginUriProvider
com.atlassian.confluence.plugins.confluence-browser-metrics	2446	2021-03-10 06:59:58.026	whitelist
com.atlassian.confluence.plugins.view-source	2447	2021-03-10 06:59:58.026	view-source-resources
com.atlassian.confluence.plugins.confluence-mobile	2448	2021-03-10 06:59:58.026	dashboard-resources
confluence.macros.dashboard	2449	2021-03-10 06:59:58.026	create-space-button
com.atlassian.confluence.plugins.confluence-space-ia	2450	2021-03-10 06:59:58.026	space-ia-analytics
com.atlassian.plugins.base-hipchat-integration-plugin	2451	2021-03-10 06:59:58.026	connection-status-resources
confluence.web.resources	2452	2021-03-10 06:59:58.026	quicksearchdropdown
com.atlassian.confluence.plugins.confluence-mentions-plugin	2453	2021-03-10 06:59:58.026	mention-email-comment-link
confluence.macros.advanced	2454	2021-03-10 06:59:58.026	xhtml-excerpt
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2455	2021-03-10 06:59:58.026	upm-purchased-addons
confluence.sections.space.tools	2456	2021-03-10 06:59:58.026	orphan
com.atlassian.applinks.applinks-plugin	2457	2021-03-10 06:59:58.026	applinks-new-ui-creation
confluence.sections.news	2458	2021-03-10 06:59:58.026	view-attachments
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2459	2021-03-10 06:59:58.026	jwtService
com.atlassian.confluence.plugins.confluence-like	2460	2021-03-10 06:59:58.026	mobile-comments-like-resource
confluence.content.action.menu	2461	2021-03-10 06:59:58.026	modify
confluence.listeners.core	2462	2021-03-10 06:59:58.026	label-delete-listener
confluence.extra.attachments	2463	2021-03-10 06:59:58.026	analytics-whitelist
com.atlassian.confluence.plugins.confluence-email-resources	2464	2021-03-10 06:59:58.026	content-templates-share-notification-comment-pattern-1.0.0
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	2465	2021-03-10 06:59:58.026	clusterMonitoring
com.atlassian.querylang.confluence-cql-plugin	2466	2021-03-10 06:59:58.026	user-field
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2467	2021-03-10 06:59:58.026	page-created-notification-template
confluence.extra.masterdetail	2468	2021-03-10 06:59:58.026	pagePropertiesService
com.atlassian.confluence.plugins.soy	2469	2021-03-10 06:59:58.026	soyTemplateRenderer
confluence.sections.space.tools	2470	2021-03-10 06:59:58.026	spacedetails
com.atlassian.confluence.plugins.confluence-business-blueprints	2471	2021-03-10 06:59:58.026	sharelinks-urlmacro-editor-resources
com.atlassian.confluence.plugins.confluence-space-blueprints	2472	2021-03-10 06:59:58.026	confluence-team-space-blueprint-resources
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	2473	2021-03-10 06:59:58.026	coming-soon-banner
com.atlassian.support.stp	2474	2021-03-10 06:59:58.026	pluginSupportInfoAppenderManager
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2475	2021-03-10 06:59:58.026	mailServerManager
com.atlassian.confluence.editor	2476	2021-03-10 06:59:58.026	vanilla
com.atlassian.streams	2477	2021-03-10 06:59:58.026	date-hr-HR
com.atlassian.confluence.plugins.confluence-mentions-plugin	2478	2021-03-10 06:59:58.026	mention-email-view-blogpost-link
com.atlassian.confluence.plugins.confluence-cache-management-plugin	2479	2021-03-10 06:59:58.026	cacheStatisticsRestResource-filter
com.atlassian.confluence.plugins.confluence-email-resources	2480	2021-03-10 06:59:58.026	defaultNotificationUserService
com.atlassian.confluence.plugins.confluence-create-content-plugin	2481	2021-03-10 06:59:58.026	bandanaManager
com.atlassian.confluence.extra.widgetconnector	2482	2021-03-10 06:59:58.026	vimeo
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2483	2021-03-10 06:59:58.026	blogpost-created-notification-template-body
com.atlassian.confluence.plugins.confluence-monitoring	2484	2021-03-10 06:59:58.026	live-activity
com.atlassian.plugins.atlassian-nav-links-plugin	2485	2021-03-10 06:59:58.026	plugin-module-type-based-navigation-link-repository
com.atlassian.confluence.plugins.gadgets.spi	2486	2021-03-10 06:59:58.026	gadgetSpecIdGenerator
com.atlassian.confluence.extra.officeconnector	2487	2021-03-10 06:59:58.026	preview
confluence.sections.space.tools	2488	2021-03-10 06:59:58.026	watch-space
com.atlassian.confluence.plugins.search.confluence-search	2489	2021-03-10 06:59:58.026	searchQuerySessionFilter
com.atlassian.confluence.plugins.confluence-view-file-macro	2490	2021-03-10 06:59:58.026	view-file-macro-embedded-file-view-soy-resources
com.atlassian.applinks.applinks-plugin	2491	2021-03-10 06:59:58.026	refapp
com.atlassian.auiplugin	2492	2021-03-10 06:59:58.026	tabs
com.atlassian.auiplugin	2493	2021-03-10 06:59:58.026	keycode
com.atlassian.auiplugin	2494	2021-03-10 06:59:58.026	aui-tipsy
com.atlassian.confluence.plugins.templates-framework	2495	2021-03-10 06:59:58.026	importtemplates
com.atlassian.confluence.plugins.confluence-create-content-plugin	2496	2021-03-10 06:59:58.026	editor-blueprint-resources
com.atlassian.confluence.plugins.confluence-labels	2497	2021-03-10 06:59:58.026	labels-resources-server
com.atlassian.auiplugin	2498	2021-03-10 06:59:58.026	aui-form-notification
com.atlassian.confluence.plugins.confluence-email-resources	2499	2021-03-10 06:59:58.026	notification-templates-page-trashed-2.0.0
com.atlassian.soy.soy-template-plugin	2500	2021-03-10 06:59:58.026	helpUrlFunction
com.atlassian.confluence.plugins.confluence-jira-content	2501	2021-03-10 06:59:58.026	create-jira-content-services
com.atlassian.confluence.plugins.confluence-inline-comments	2502	2021-03-10 06:59:58.026	app
confluence.search.mappers.lucene	2503	2021-03-10 06:59:58.026	anonymousUserInfoSearchFilter
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2504	2021-03-10 06:59:58.026	sysPersisted
com.atlassian.streams.confluence	2505	2021-03-10 06:59:58.026	date-smj-NO
com.atlassian.streams	2506	2021-03-10 06:59:58.026	date-it-CH
com.atlassian.confluence.plugins.confluence-email-resources	2507	2021-03-10 06:59:58.026	get-attachment-download-url-function
confluence.extra.confluencerpc	2617	2021-03-10 06:59:58.026	confluence-soap-2
com.atlassian.confluence.plugins.confluence-templates	2508	2021-03-10 06:59:58.026	globaltemplates
com.atlassian.auiplugin	2509	2021-03-10 06:59:58.026	jquery-all
com.atlassian.streams.confluence	2510	2021-03-10 06:59:58.026	date-fr-MC
com.atlassian.confluence.plugins.confluence-inline-comments	2511	2021-03-10 06:59:58.026	create-comment-view
com.atlassian.gadgets.publisher	2512	2021-03-10 06:59:58.026	publisher-plugin-rest-endpoints-filter
com.atlassian.auiplugin	2513	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-jquery
confluence.listeners.core	2514	2021-03-10 06:59:58.026	clusterWideReindexEventListener
com.atlassian.streams.confluence	2515	2021-03-10 06:59:58.026	date-nl-BE
com.atlassian.oauth.serviceprovider	2516	2021-03-10 06:59:58.026	oauthAccessTokenServlet
confluence.analytics.whitelist	2517	2021-03-10 06:59:58.026	confluenceCoreAnalyticsWhitelist
com.atlassian.streams.confluence	2518	2021-03-10 06:59:58.026	date-fr-LU
com.atlassian.streams	2519	2021-03-10 06:59:58.026	requestFactory
com.atlassian.streams	2520	2021-03-10 06:59:58.026	streamsWallboardWebResources
com.atlassian.auiplugin	2521	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-forms
confluence.web.resources	2522	2021-03-10 06:59:58.026	support-utility
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	2523	2021-03-10 06:59:58.026	opt-in-resources
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2524	2021-03-10 06:59:58.026	blogpost-edited-hipchat-notification-template
com.atlassian.confluence.editor	2525	2021-03-10 06:59:58.026	attachments-insert-utils-resources
com.atlassian.confluence.plugins.confluence-sal-plugin	2526	2021-03-10 06:59:58.026	transactionalExecutorFactory
com.atlassian.confluence.plugins.confluence-templates	2527	2021-03-10 06:59:58.026	confluence-templates-action
confluence.sections.admin.header	2528	2021-03-10 06:59:58.026	admin-plugins
com.atlassian.confluence.plugins.status-macro	2529	2021-03-10 06:59:58.026	pluginAccessor
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2530	2021-03-10 06:59:58.026	roleBasedLicensingPluginService
com.atlassian.plugins.rest.atlassian-rest-module	2531	2021-03-10 06:59:58.026	cors-defaults
confluence.content.action.menu	2532	2021-03-10 06:59:58.026	move-blogpost
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2533	2021-03-10 06:59:58.026	pluginsEnablementStateStore
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2534	2021-03-10 06:59:58.026	comment-edited-notification
com.atlassian.streams	2535	2021-03-10 06:59:58.026	date-it-IT
com.atlassian.applinks.applinks-oauth-plugin	2536	2021-03-10 06:59:58.026	add-consumer-servlet
com.atlassian.confluence.plugins.confluence-inline-tasks	2537	2021-03-10 06:59:58.026	tasks-report-resources
com.atlassian.streams.confluence	2538	2021-03-10 06:59:58.026	date-bg-BG
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	2539	2021-03-10 06:59:58.026	hipChatSpaceDiscovery
com.atlassian.plugins.browser.metrics.browser-metrics-plugin	2540	2021-03-10 06:59:58.026	analytics-whitelist
com.atlassian.plugins.jquery	2541	2021-03-10 06:59:58.026	darkFeatureManager
com.atlassian.plugins.atlassian-nav-links-plugin	2542	2021-03-10 06:59:58.026	navigation-capability-resource-forward
com.atlassian.streams	2543	2021-03-10 06:59:58.026	projectKeyValidator
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2544	2021-03-10 06:59:58.026	refimpl-upm-osgi-menu
com.atlassian.plugins.base-hipchat-integration-plugin	2545	2021-03-10 06:59:58.026	hipchat-configuration-panel-js
confluence.listeners.core	2546	2021-03-10 06:59:58.026	commentNotificationsListener
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2547	2021-03-10 06:59:58.026	confluenceGroupManager
com.atlassian.confluence.plugins.confluence-edge-index	2548	2021-03-10 06:59:58.026	nestedCommentCountQuery
com.atlassian.streams	2549	2021-03-10 06:59:58.026	date-ta-IN
com.atlassian.confluence.plugins.confluence-spaces	2550	2021-03-10 06:59:58.026	resources
com.atlassian.confluence.plugins.confluence-files	2551	2021-03-10 06:59:58.026	fileCommentService
com.atlassian.confluence.plugins.confluence-email-resources	2552	2021-03-10 06:59:58.026	template-utils-avatar-name-table-1.0.0
com.atlassian.confluence.plugins.confluence-email-resources	2553	2021-03-10 06:59:58.026	manage-user-email-footer-item
com.atlassian.plugins.atlassian-whitelist-core-plugin	2554	2021-03-10 06:59:58.026	userManager
confluence.comment.action	2555	2021-03-10 06:59:58.026	reply-comment
com.atlassian.confluence.plugins.confluence-create-content-plugin	2556	2021-03-10 06:59:58.026	templateChildCreatorListener
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2557	2021-03-10 06:59:58.026	pluginNotificationService
com.atlassian.confluence.plugins.confluence-ui-rest	2558	2021-03-10 06:59:58.026	ui-rest
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	2559	2021-03-10 06:59:58.026	util
com.atlassian.confluence.extra.widgetconnector	2560	2021-03-10 06:59:58.026	episodic
com.atlassian.confluence.plugins.search.confluence-search	2561	2021-03-10 06:59:58.026	confluenceV3SearchWhiteList
com.atlassian.confluence.plugins.confluence-file-notifications	2562	2021-03-10 06:59:58.026	file-content-mention-payload-transformer
com.atlassian.querylang.confluence-cql-plugin	2563	2021-03-10 06:59:58.026	id-field
com.atlassian.confluence.plugins.gadgets	2564	2021-03-10 06:59:58.026	wikiStyleRenderer
com.atlassian.plugins.atlassian-nav-links-plugin	2565	2021-03-10 06:59:58.026	absolute-url-factory
com.atlassian.plugins.atlassian-nps-plugin	2566	2021-03-10 06:59:58.026	applicationProperties
com.atlassian.plugins.rest.atlassian-rest-module	2567	2021-03-10 06:59:58.026	xsrfTokenValidator
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	2568	2021-03-10 06:59:58.026	applicationProperties
com.atlassian.confluence.plugins.confluence-license-banner	2569	2021-03-10 06:59:58.026	soy-resources
com.atlassian.confluence.plugins.confluence-space-blueprints	2570	2021-03-10 06:59:58.026	DocumentationSpaceEventListener
com.atlassian.applinks.applinks-plugin	2571	2021-03-10 06:59:58.026	applinks-wizard
com.atlassian.auiplugin	2572	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-version
com.atlassian.plugins.atlassian-project-creation-plugin	2573	2021-03-10 06:59:58.026	project-crud-rest-filter
com.atlassian.streams.confluence	2574	2021-03-10 06:59:58.026	date-te-IN
com.atlassian.confluence.plugins.confluence-onboarding	2575	2021-03-10 06:59:58.026	spaceManager
com.atlassian.confluence.plugins.confluence-paste	2576	2021-03-10 06:59:58.026	restEndPoint
com.atlassian.analytics.analytics-client	2577	2021-03-10 06:59:58.026	pluginAccessor
confluence.extra.masterdetail	2578	2021-03-10 06:59:58.026	createButtonService
com.atlassian.applinks.applinks-plugin	2579	2021-03-10 06:59:58.026	applicationLinkRequestFactoryFactory
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2580	2021-03-10 06:59:58.026	noOpPluginControlHandler
com.atlassian.confluence.plugins.confluence-email-resources	2581	2021-03-10 06:59:58.026	chrome-template-html-header-1.0.0
com.atlassian.confluence.plugins.confluence-highlight-actions	2582	2021-03-10 06:59:58.026	xmlModificationValidator
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	2583	2021-03-10 06:59:58.026	emoticonStorageUnmarshaller
com.atlassian.streams.confluence	2584	2021-03-10 06:59:58.026	date-smj-SE
com.atlassian.support.stp	2585	2021-03-10 06:59:58.026	stp-rest-filter
com.atlassian.confluence.keyboardshortcuts	2586	2021-03-10 06:59:58.026	confluence-tinymce-keyboard-shortcuts
com.atlassian.plugin.notifications.notifications-module	2587	2021-03-10 06:59:58.026	serverManager
com.atlassian.mywork.mywork-confluence-host-plugin	2588	2021-03-10 06:59:58.026	mw-miniview
confluence.sections.space.admin	2589	2021-03-10 06:59:58.026	addons
confluence.web.resources	2590	2021-03-10 06:59:58.026	avataror
com.atlassian.confluence.plugins.confluence-feature-discovery-plugin	2591	2021-03-10 06:59:58.026	ao-module
com.atlassian.applinks.applinks-plugin	2592	2021-03-10 06:59:58.026	authenticationConfigurator
com.atlassian.activeobjects.confluence.spi	2593	2021-03-10 06:59:58.026	initExecutorServiceProvider
com.atlassian.confluence.plugins.confluence-mobile	2594	2021-03-10 06:59:58.026	mobileAnalyticsWhitelist
com.atlassian.applinks.applinks-plugin	2595	2021-03-10 06:59:58.026	entityLinkClient
com.atlassian.plugins.base-hipchat-integration-plugin-api	2596	2021-03-10 06:59:58.026	ajs-amd
com.atlassian.confluence.plugins.confluence-mobile	2597	2021-03-10 06:59:58.026	macro-resources
confluence.extra.impresence2	2598	2021-03-10 06:59:58.026	reporter-msn
com.atlassian.integration.jira.jira-integration-plugin	2599	2021-03-10 06:59:58.026	applicationProperties
confluence.extra.attachments	2600	2021-03-10 06:59:58.026	attachments-xhtml
com.atlassian.mywork.mywork-confluence-provider-plugin	2601	2021-03-10 06:59:58.026	internalHostApplication
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2602	2021-03-10 06:59:58.026	comment-edited-notification-template
confluence.web.resources	2603	2021-03-10 06:59:58.026	trigger
com.atlassian.confluence.plugins.confluence-software-blueprints	2604	2021-03-10 06:59:58.026	jirareports-item
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	2605	2021-03-10 06:59:58.026	bulkOperationsWhitelist
com.atlassian.auiplugin	2606	2021-03-10 06:59:58.026	aui-date-picker
com.atlassian.streams.streams-thirdparty-plugin	2607	2021-03-10 06:59:58.026	entityAssociationProviders
com.atlassian.confluence.ext.newcode-macro-plugin	2608	2021-03-10 06:59:58.026	newcode-xhtml
confluence.lifecycle.core	2609	2021-03-10 06:59:58.026	dblowercheck
confluence.extra.dynamictasklist2	2610	2021-03-10 06:59:58.026	v2-tasklist
confluence.macros.dashboard	2611	2021-03-10 06:59:58.026	popular-tab
com.atlassian.gadgets.publisher	2612	2021-03-10 06:59:58.026	publisher-plugin-rest-endpoints
com.atlassian.confluence.plugins.confluence-space-ia	2613	2021-03-10 06:59:58.026	rest-filter
com.atlassian.mywork.mywork-common-plugin	2614	2021-03-10 06:59:58.026	my-work-client-rest-filter
com.atlassian.streams.confluence	2615	2021-03-10 06:59:58.026	followManager
confluence.content.action.menu	2616	2021-03-10 06:59:58.026	remove-blogpost
com.atlassian.confluence.plugins.confluence-view-file-macro	2618	2021-03-10 06:59:58.026	view-file
com.atlassian.confluence.plugins.confluence-sal-plugin	2619	2021-03-10 06:59:58.026	helpPathResolver
com.atlassian.plugin.notifications.notifications-module	2620	2021-03-10 06:59:58.026	addNotificationServerServlet
com.atlassian.oauth.consumer.sal	2621	2021-03-10 06:59:58.026	applicationProperties
com.atlassian.confluence.plugins.status-macro	2622	2021-03-10 06:59:58.026	editor-featured-macro-status
com.atlassian.confluence.plugins.search.confluence-search	2623	2021-03-10 06:59:58.026	spanQueryBuilder
com.atlassian.confluence.plugins.recently-viewed-plugin	2624	2021-03-10 06:59:58.026	contentViewedListener
confluence.web.resources	2625	2021-03-10 06:59:58.026	select2
com.atlassian.confluence.plugins.confluence-content-property-storage	2626	2021-03-10 06:59:58.026	contentService
com.atlassian.plugins.atlassian-help-tips	2627	2021-03-10 06:59:58.026	tx-processor
com.atlassian.confluence.plugins.confluence-business-blueprints	2628	2021-03-10 06:59:58.026	decisions-index-page
com.atlassian.confluence.extra.widgetconnector	2629	2021-03-10 06:59:58.026	shareacrobat
com.atlassian.confluence.plugins.dialog-wizard	2630	2021-03-10 06:59:58.026	dialog-wizard-resources
com.atlassian.mywork.mywork-common-plugin	2631	2021-03-10 06:59:58.026	systemStatusService
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	2632	2021-03-10 06:59:58.026	operatingSystemInfo
com.atlassian.confluence.plugins.quickreload	2633	2021-03-10 06:59:58.026	renderer
com.atlassian.gadgets.opensocial	2634	2021-03-10 06:59:58.026	authentication-servlet-filter
com.atlassian.applinks.applinks-oauth-plugin	2635	2021-03-10 06:59:58.026	TwoLeggedOAuthAuthenticatorProviderPluginModule
com.atlassian.streams.streams-thirdparty-plugin	2636	2021-03-10 06:59:58.026	activityService
com.atlassian.streams	2637	2021-03-10 06:59:58.026	defaultClock
com.atlassian.confluence.plugins.confluence-request-access-plugin	2638	2021-03-10 06:59:58.026	userNotificationService
com.atlassian.mywork.mywork-common-plugin	2639	2021-03-10 06:59:58.026	application-link-rescheduler
com.atlassian.mywork.mywork-confluence-host-plugin	2640	2021-03-10 06:59:58.026	workday-email-resources
com.atlassian.confluence.rpc.confluence-json-rpc-plugin	2641	2021-03-10 06:59:58.026	i18NResolver
com.atlassian.confluence.plugins.confluence-request-access-plugin	2642	2021-03-10 06:59:58.026	pageNotPermittedPanel
com.atlassian.confluence.plugins.xmlrpc.bloggingrpc	2643	2021-03-10 06:59:58.026	bloggingUtils
com.atlassian.streams.confluence	2644	2021-03-10 06:59:58.026	date-fr-FR
com.atlassian.mywork.mywork-confluence-host-plugin	2645	2021-03-10 06:59:58.026	authenticationListener
com.atlassian.support.healthcheck.support-healthcheck-plugin	2646	2021-03-10 06:59:58.026	supportHealthCheckRest
com.atlassian.analytics.analytics-client	2647	2021-03-10 06:59:58.026	userPermissionsHelper
com.atlassian.confluence.plugins.confluence-files	2648	2021-03-10 06:59:58.026	unresolvedCommentCountOnFileVersions
confluence.extra.webdav	2649	2021-03-10 06:59:58.026	pluginAccessor
confluence.sections.space.advanced	2650	2021-03-10 06:59:58.026	spacedetails-personal
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	2651	2021-03-10 06:59:58.026	spaceConfigurationAction2
confluence.sections.page.temp	2652	2021-03-10 06:59:58.026	edit-blogpost
confluence.web.panels	2653	2021-03-10 06:59:58.026	confluence-userprofile-info
com.atlassian.oauth.serviceprovider	2654	2021-03-10 06:59:58.026	basicConsumerInformationRenderer
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2655	2021-03-10 06:59:58.026	user-settings-panel-resources
com.atlassian.streams.confluence	2656	2021-03-10 06:59:58.026	date-sr-Latn-CS
com.atlassian.confluence.plugins.confluence-business-blueprints	2657	2021-03-10 06:59:58.026	autoconvert-any-link
com.atlassian.streams	2658	2021-03-10 06:59:58.026	date-ns-ZA
com.atlassian.plugins.base-hipchat-integration-plugin	2659	2021-03-10 06:59:58.026	configureServlet
confluence.sections.admin	2660	2021-03-10 06:59:58.026	generalconfiguration
confluence.sections.profile	2661	2021-03-10 06:59:58.026	follow-user
org.randombits.confluence.toc	2662	2021-03-10 06:59:58.026	toc-plugin-analytics
confluence.web.resources	2663	2021-03-10 06:59:58.026	jquery-progressbar
com.atlassian.confluence.extra.widgetconnector	2664	2021-03-10 06:59:58.026	backtype
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2665	2021-03-10 06:59:58.026	licenseHandlerContextItem
com.atlassian.auiplugin	2666	2021-03-10 06:59:58.026	aui-toggle
com.atlassian.confluence.plugins.confluence-inline-tasks	2667	2021-03-10 06:59:58.026	editor-autocomplete-date-js
com.atlassian.plugins.atlassian-help-tips	2668	2021-03-10 06:59:58.026	userManager
com.atlassian.confluence.plugins.confluence-space-ia	2669	2021-03-10 06:59:58.026	space-tools-reorder-pages
com.atlassian.confluence.plugins.confluence-link-browser	2670	2021-03-10 06:59:58.026	link-browser-web-items
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2671	2021-03-10 06:59:58.026	payload-processor
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	2672	2021-03-10 06:59:58.026	emoticonEditorToStorageTransformer
confluence.sections.space.tools	2673	2021-03-10 06:59:58.026	formats
com.atlassian.plugins.atlassian-plugins-webresource-plugin	2674	2021-03-10 06:59:58.026	data
confluence.macros.advanced	2675	2021-03-10 06:59:58.026	blogposts
com.atlassian.confluence.plugins.confluence-email-resources	2676	2021-03-10 06:59:58.026	natto-function
confluence.sections.space.admin	2677	2021-03-10 06:59:58.026	choosetheme
com.atlassian.support.stp	2678	2021-03-10 06:59:58.026	env-support-info
com.atlassian.confluence.plugins.confluence-email-resources	2679	2021-03-10 06:59:58.026	content-templates
com.atlassian.confluence.plugins.confluence-software-blueprints	2680	2021-03-10 06:59:58.026	jirareports-services
com.atlassian.applinks.applinks-trustedapps-plugin	2681	2021-03-10 06:59:58.026	callbackParameter
confluence.search.mappers.lucene	2682	2021-03-10 06:59:58.026	matchNoDocsFilter
com.atlassian.support.stp	2683	2021-03-10 06:59:58.026	support-info
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2684	2021-03-10 06:59:58.026	uriBuilder
com.atlassian.confluence.plugins.soy	2685	2021-03-10 06:59:58.026	soy-doclink-function
confluence.macro.metadata.provider	2686	2021-03-10 06:59:58.026	macro-browser-metadata-resources
com.atlassian.confluence.plugins.confluence-email-resources	2687	2021-03-10 06:59:58.026	template-utils-user-link-1.0.0
com.atlassian.plugins.base-hipchat-integration-plugin-api	2688	2021-03-10 06:59:58.026	jquery-amd
confluence.content.action.menu	2689	2021-03-10 06:59:58.026	linkpopup-resources
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	2690	2021-03-10 06:59:58.026	helpPathResolver
confluence.web.resources	2691	2021-03-10 06:59:58.026	analytics-support
com.atlassian.auiplugin	2692	2021-03-10 06:59:58.026	internal-skatejs-0.13.17-lib-document-observer
com.atlassian.querylang.confluence-cql-plugin	2693	2021-03-10 06:59:58.026	contributor-field
com.atlassian.confluence.plugins.share-page	2694	2021-03-10 06:59:58.026	share-page-email-notification-template-body
com.atlassian.confluence.keyboardshortcuts	2695	2021-03-10 06:59:58.026	tinymce.save.editor.page
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	2696	2021-03-10 06:59:58.026	userAuthenticationDecorator
com.atlassian.oauth.consumer.sal	2697	2021-03-10 06:59:58.026	pluginSettingsFactory
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2698	2021-03-10 06:59:58.026	blogpost-created-notification
com.atlassian.support.stp	2699	2021-03-10 06:59:58.026	pluginScheduler
com.atlassian.plugins.base-hipchat-integration-plugin	2700	2021-03-10 06:59:58.026	room-deleted
com.atlassian.confluence.plugins.confluence-edge-index	2701	2021-03-10 06:59:58.026	rest-filter
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	2702	2021-03-10 06:59:58.026	hipChatDiscoveryIsSpaceAdmin
com.atlassian.streams	2703	2021-03-10 06:59:58.026	date-pl-PL
com.atlassian.confluence.extra.officeconnector	2704	2021-03-10 06:59:58.026	cleanupTrigger
com.atlassian.applinks.applinks-plugin	2705	2021-03-10 06:59:58.026	applicationPropertiesContextItem
com.atlassian.confluence.plugins.gadgets	2706	2021-03-10 06:59:58.026	gadget-admin
com.atlassian.plugins.atlassian-nav-links-plugin	2707	2021-03-10 06:59:58.026	host-product-login-page
com.atlassian.confluence.plugins.confluence-macro-usage-admin-plugin	2708	2021-03-10 06:59:58.026	viewpluginusage
com.atlassian.confluence.plugins.status-macro	2709	2021-03-10 06:59:58.026	status-legacy
com.atlassian.confluence.plugins.confluence-edge-index	2710	2021-03-10 06:59:58.026	like.create
com.atlassian.oauth.serviceprovider	2711	2021-03-10 06:59:58.026	transactionTemplate
com.atlassian.confluence.plugins.confluence-onboarding	2712	2021-03-10 06:59:58.026	draftsTransitionHelper
confluence.extra.masterdetail	2713	2021-03-10 06:59:58.026	analytics-whitelist
com.atlassian.applinks.applinks-oauth-plugin	2714	2021-03-10 06:59:58.026	oauth-auth
confluence.macros.advanced	2715	2021-03-10 06:59:58.026	xhtml-include
com.atlassian.auiplugin	2716	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-set-visible
confluence.macros.advanced	2717	2021-03-10 06:59:58.026	blog-posts
com.atlassian.confluence.plugins.confluence-mentions-plugin	2718	2021-03-10 06:59:58.026	mention-recipients-provider
com.atlassian.confluence.plugins.watch-button	2719	2021-03-10 06:59:58.026	watch-resources
com.atlassian.applinks.applinks-basicauth-plugin	2720	2021-03-10 06:59:58.026	BasicAuthenticationProviderPluginModule
confluence.macros.basic	2721	2021-03-10 06:59:58.026	quote
com.atlassian.confluence.plugins.search.confluence-search	2722	2021-03-10 06:59:58.026	searchService
com.atlassian.streams	2723	2021-03-10 06:59:58.026	date-kok-IN
confluence.macros.advanced	2724	2021-03-10 06:59:58.026	doc
com.atlassian.applinks.applinks-oauth-plugin	2725	2021-03-10 06:59:58.026	adminUIAuthenticator
com.atlassian.confluence.plugins.confluence-email-resources	2726	2021-03-10 06:59:58.026	content-templates-users-involved-pattern-2.0.0
com.atlassian.querylang.confluence-cql-plugin	2727	2021-03-10 06:59:58.026	creator-field
com.atlassian.plugins.atlassian-whitelist-ui-plugin	2728	2021-03-10 06:59:58.026	userManager
com.atlassian.plugins.atlassian-whitelist-core-plugin	2729	2021-03-10 06:59:58.026	ao-module
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2730	2021-03-10 06:59:58.026	tabVisibilityContextItem
com.atlassian.confluence.plugins.search.confluence-search	2731	2021-03-10 06:59:58.026	boostingQueryFactory
com.atlassian.mywork.mywork-common-plugin	2732	2021-03-10 06:59:58.026	pluginEventManager
com.atlassian.plugins.base-hipchat-integration-plugin	2733	2021-03-10 06:59:58.026	hipchat-require-resource-by-context-function
com.atlassian.confluence.plugins.confluence-daily-summary-email	2734	2021-03-10 06:59:58.026	SummaryEmailNotificationManager
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2735	2021-03-10 06:59:58.026	jwtTokenFactory
com.atlassian.confluence.plugins.confluence-onboarding	2736	2021-03-10 06:59:58.026	confluenceAccessManager
com.atlassian.confluence.rpc.confluence-axis-soap-plugin	2737	2021-03-10 06:59:58.026	settingsManager
com.atlassian.confluence.plugins.confluence-inline-comments	2738	2021-03-10 06:59:58.026	confluence-inline-comments-rest
confluence.extra.chart	2739	2021-03-10 06:59:58.026	com.atlassian.confluence.extra.chart.name
com.atlassian.mywork.mywork-confluence-host-plugin	2740	2021-03-10 06:59:58.026	authenticationConfigurationManager
com.atlassian.confluence.plugins.confluence-mentions-plugin	2741	2021-03-10 06:59:58.026	notificationEmailFactory
com.atlassian.confluence.contributors	2742	2021-03-10 06:59:58.026	contributors-summary-xhtml
confluence.admin.user	2743	2021-03-10 06:59:58.026	browse-users-tab-create
com.atlassian.confluence.plugins.search.confluence-search	2744	2021-03-10 06:59:58.026	siteSearch-query-mapper
com.atlassian.confluence.plugins.confluence-space-directory	2745	2021-03-10 06:59:58.026	spaceDirectoryActions
com.atlassian.applinks.applinks-plugin	2746	2021-03-10 06:59:58.026	list-application-entity-action
com.atlassian.confluence.plugins.confluence-mobile	2747	2021-03-10 06:59:58.026	app-resources
com.atlassian.confluence.plugins.confluence-create-content-plugin	2748	2021-03-10 06:59:58.026	avatar
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2749	2021-03-10 06:59:58.026	instanceTopologyService
com.atlassian.confluence.plugins.confluence-license-rest	2750	2021-03-10 06:59:58.026	clusterManager
com.atlassian.confluence.plugins.confluence-remote-page-view-plugin	2751	2021-03-10 06:59:58.026	confluenceAccessManager
com.atlassian.confluence.editor	2752	2021-03-10 06:59:58.026	editor-page-restricted
com.atlassian.plugins.atlassian-nav-links-plugin	2753	2021-03-10 06:59:58.026	clock
confluence.extra.impresence2	2754	2021-03-10 06:59:58.026	yahoo-xhtml
com.atlassian.confluence.plugins.confluence-files	2755	2021-03-10 06:59:58.026	eventPublisher
com.atlassian.mywork.mywork-common-plugin	2756	2021-03-10 06:59:58.026	registration-service
com.atlassian.streams	2757	2021-03-10 06:59:58.026	date-uz-Latn-UZ
com.atlassian.confluence.plugins.confluence-onboarding	2758	2021-03-10 06:59:58.026	contentBlueprintManager
confluence.comment.action	2759	2021-03-10 06:59:58.026	primary
confluence.extra.confluencerpc	2760	2021-03-10 06:59:58.026	xhtmlRpcHandler
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	2761	2021-03-10 06:59:58.026	system-information
confluence.sections.admin	2762	2021-03-10 06:59:58.026	loglevel
com.atlassian.confluence.plugins.confluence-inline-tasks	2763	2021-03-10 06:59:58.026	inline-tasks-resources
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2764	2021-03-10 06:59:58.026	blogpost-trashed-notification
com.atlassian.confluence.plugins.confluence-quicknav	2765	2021-03-10 06:59:58.026	quick-nav-rest
confluence.extractors.core	2766	2021-03-10 06:59:58.026	genericExtractor
confluence.user.menu	2767	2021-03-10 06:59:58.026	user-preferences
com.atlassian.confluence.plugins.reliablesave	2768	2021-03-10 06:59:58.026	reliable-save
com.atlassian.confluence.plugins.confluence-create-content-plugin	2769	2021-03-10 06:59:58.026	blueprint
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	2770	2021-03-10 06:59:58.026	transactionTemplate
com.atlassian.applinks.applinks-plugin	2771	2021-03-10 06:59:58.026	xsrfTokenValidator
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2772	2021-03-10 06:59:58.026	bundledUpdateInfoStore
com.atlassian.confluence.editor	2773	2021-03-10 06:59:58.026	editor-core-resources
com.atlassian.streams.confluence	2774	2021-03-10 06:59:58.026	applicationProperties
com.atlassian.confluence.plugins.confluence-files	2775	2021-03-10 06:59:58.026	confluenceFileRest-filter
com.atlassian.confluence.plugins.confluence-email-resources	2776	2021-03-10 06:59:58.026	siteLogoManager
com.atlassian.streams.streams-thirdparty-plugin	2777	2021-03-10 06:59:58.026	thirdPartyStreamsEntryBuilder
com.atlassian.confluence.extra.officeconnector	2778	2021-03-10 06:59:58.026	macro-browser-smart-fields
com.atlassian.auiplugin	2779	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-vendor-backbone-backbone
com.atlassian.confluence.plugins.confluence-macro-usage-admin-plugin	2780	2021-03-10 06:59:58.026	soy-templates
confluence.web.resources	2781	2021-03-10 06:59:58.026	keyboard
confluence.sections.help	2782	2021-03-10 06:59:58.026	feedbuilder
com.atlassian.confluence.plugins.confluence-email-tracker	2783	2021-03-10 06:59:58.026	emailTrackerService
com.atlassian.plugins.base-hipchat-integration-plugin	2784	2021-03-10 06:59:58.026	configurationPanel
confluence.extra.livesearch	2785	2021-03-10 06:59:58.026	livesearch-macro-web-resources
com.atlassian.confluence.plugins.confluence-space-directory	2786	2021-03-10 06:59:58.026	space-directory-templates
com.atlassian.querylang.confluence-cql-plugin	2787	2021-03-10 06:59:58.026	user-query-mapper
com.atlassian.streams	2788	2021-03-10 06:59:58.026	date-et-EE
com.atlassian.auiplugin	2789	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-format
com.atlassian.streams.confluence	2790	2021-03-10 06:59:58.026	date-ca-ES
com.atlassian.streams.streams-thirdparty-plugin	2791	2021-03-10 06:59:58.026	uriBuilder
confluence.web.resources	2792	2021-03-10 06:59:58.026	backupadmin
com.atlassian.confluence.plugins.confluence-inline-comments	2793	2021-03-10 06:59:58.026	inline-comment-created-mail-batch-notification-processor
com.atlassian.confluence.plugins.confluence-daily-summary-email	2794	2021-03-10 06:59:58.026	daily-summary-admin-item
com.atlassian.plugins.atlassian-nav-links-plugin	2795	2021-03-10 06:59:58.026	activeObjects
com.atlassian.plugin.jslibs	2796	2021-03-10 06:59:58.026	skate-0.14.0
com.atlassian.confluence.plugins.confluence-business-blueprints	2797	2021-03-10 06:59:58.026	meeting-notes-index
com.atlassian.plugins.atlassian-nav-links-plugin	2798	2021-03-10 06:59:58.026	host-application
com.atlassian.confluence.plugins.confluence-business-blueprints	2799	2021-03-10 06:59:58.026	meeting-notes-page
com.atlassian.mywork.mywork-common-plugin	2800	2021-03-10 06:59:58.026	servingRequestsFilter
com.atlassian.auiplugin	2801	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-internal-has-touch
com.atlassian.confluence.plugins.search.confluence-search	2802	2021-03-10 06:59:58.026	rest-filter
com.atlassian.confluence.extra.flyingpdf	2803	2021-03-10 06:59:58.026	customFontListener
confluence.web.resources	2804	2021-03-10 06:59:58.026	auditlogclient
com.atlassian.confluence.plugins.confluence-file-notifications	2805	2021-03-10 06:59:58.026	file-content-icons
confluence.web.resources	2806	2021-03-10 06:59:58.026	meta
com.atlassian.confluence.plugins.confluence-roadmap-plugin	2807	2021-03-10 06:59:58.026	roadmap-models
com.atlassian.confluence.editor	2808	2021-03-10 06:59:58.026	page-editor-message
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2809	2021-03-10 06:59:58.026	follower-added-hipchat-notification-template
confluence.web.resources	2810	2021-03-10 06:59:58.026	breadcrumbs
com.atlassian.confluence.plugins.confluence-mobile	2811	2021-03-10 06:59:58.026	localeManager
com.atlassian.confluence.plugins.soy	2812	2021-03-10 06:59:58.026	soy-import-resource-function
com.atlassian.streams.confluence	2813	2021-03-10 06:59:58.026	date-lv-LV
confluence.listeners.core	2814	2021-03-10 06:59:58.026	plugin-logging-listener
com.atlassian.confluence.plugins.confluence-highlight-actions	2815	2021-03-10 06:59:58.026	tableModificationValidator
com.atlassian.streams.confluence	2816	2021-03-10 06:59:58.026	date-ur-PK
com.atlassian.confluence.plugins.confluence-content-property-storage	2817	2021-03-10 06:59:58.026	contentPropertyIndexSchemaManager
confluence.listeners.core	2818	2021-03-10 06:59:58.026	page-hierarchy-logging-listener
com.atlassian.oauth.serviceprovider.sal	2819	2021-03-10 06:59:58.026	tokenStore
com.atlassian.plugin.notifications.notifications-module	2820	2021-03-10 06:59:58.026	notificationSchemeService
com.atlassian.confluence.plugins.confluence-roadmap-plugin	2821	2021-03-10 06:59:58.026	roadmap-image-servlet
com.atlassian.confluence.plugins.quickedit	2822	2021-03-10 06:59:58.026	quick-comment-initial
com.atlassian.support.stp	2823	2021-03-10 06:59:58.026	scheduledTaskManager
com.atlassian.plugins.base-hipchat-integration-plugin	2824	2021-03-10 06:59:58.026	hipchat-configuration-panel-resources
com.atlassian.auiplugin	2825	2021-03-10 06:59:58.026	soy
com.atlassian.confluence.plugins.confluence-fixed-headers	2826	2021-03-10 06:59:58.026	confluence-fixed-headers-editor-resources
com.atlassian.querylang.confluence-cql-plugin	2827	2021-03-10 06:59:58.026	start-of-day-zero-arg-function
confluence.sections.space.tools	2828	2021-03-10 06:59:58.026	permissions
com.atlassian.streams	2829	2021-03-10 06:59:58.026	completionService
com.atlassian.confluence.plugins.confluence-create-content-plugin	2830	2021-03-10 06:59:58.026	webResourceUrlProvider
com.atlassian.plugin.jslibs	2831	2021-03-10 06:59:58.026	d3-3.5.5
com.atlassian.auiplugin	2832	2021-03-10 06:59:58.026	aui-spinner
com.atlassian.mywork.mywork-common-plugin	2833	2021-03-10 06:59:58.026	xsrfTokenAccessor
com.atlassian.plugins.atlassian-nav-links-plugin	2834	2021-03-10 06:59:58.026	custom-apps-admin-ui-resources
confluence.macros.advanced	2835	2021-03-10 06:59:58.026	change-history
com.atlassian.auiplugin	2942	2021-03-10 06:59:58.026	ajs-zepto
com.atlassian.confluence.plugins.confluence-previews	2836	2021-03-10 06:59:58.026	confluence-previews-js
com.atlassian.confluence.extra.officeconnector	2837	2021-03-10 06:59:58.026	officeconnector-analytics-resources
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	2838	2021-03-10 06:59:58.026	confluence-webpanel-servlet
com.atlassian.confluence.plugins.confluence-labels	2839	2021-03-10 06:59:58.026	labels-editor
com.atlassian.confluence.plugins.confluence-file-notifications	2840	2021-03-10 06:59:58.026	contentService
com.atlassian.plugin.notifications.notifications-module	2841	2021-03-10 06:59:58.026	notification-prefs
confluence.content.action.menu	2842	2021-03-10 06:59:58.026	page-permissions
confluence.web.resources	2843	2021-03-10 06:59:58.026	setup-success
com.atlassian.streams.confluence	2844	2021-03-10 06:59:58.026	date-es-UY
com.atlassian.auiplugin	2845	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-restful-table-custom-read-view
com.atlassian.auiplugin	2846	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-setup
com.atlassian.confluence.plugins.confluence-daily-summary-email	2847	2021-03-10 06:59:58.026	pluginSettingsFactory
com.atlassian.confluence.plugins.confluence-like	2848	2021-03-10 06:59:58.026	like-hipchat-soy-templates
com.atlassian.applinks.applinks-plugin	2849	2021-03-10 06:59:58.026	applinksRestV2-filter
confluence.web.resources	2850	2021-03-10 06:59:58.026	page-restricted-resources
com.atlassian.auiplugin	2851	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-vendor-jquery-jquery-spin
com.atlassian.confluence.extra.widgetconnector	2852	2021-03-10 06:59:58.026	widget
com.atlassian.confluence.plugins.soy	2853	2021-03-10 06:59:58.026	soyTemplateRendererHelperContext
com.atlassian.streams.confluence	2854	2021-03-10 06:59:58.026	date-es-VE
com.atlassian.confluence.plugins.confluence-email-resources	2855	2021-03-10 06:59:58.026	template-utils-avatar-name-table-column-2.0.0
confluence.web.resources	2856	2021-03-10 06:59:58.026	setup
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2857	2021-03-10 06:59:58.026	upm-osgi-templates
com.atlassian.confluence.extra.flyingpdf	2858	2021-03-10 06:59:58.026	pdfExportServiceDelegator
com.atlassian.streams	2859	2021-03-10 06:59:58.026	streamsCommentsServlet
com.atlassian.auiplugin	2860	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-when-i-type
com.atlassian.streams.confluence	2861	2021-03-10 06:59:58.026	date-sr-Latn-BA
com.atlassian.streams	2862	2021-03-10 06:59:58.026	date-pa-IN
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2863	2021-03-10 06:59:58.026	confluence-page-edited-batching
com.atlassian.confluence.plugins.confluence-highlight-actions	2864	2021-03-10 06:59:58.026	markSelectionModifier
com.atlassian.confluence.plugins.confluence-business-blueprints	2865	2021-03-10 06:59:58.026	decisions-blueprint
com.atlassian.auiplugin	2866	2021-03-10 06:59:58.026	deprecated-legacy-ajs-file
com.atlassian.streams.confluence	2867	2021-03-10 06:59:58.026	date-fr-CH
com.atlassian.confluence.keyboardshortcuts	2868	2021-03-10 06:59:58.026	toggle.space.sidebar
com.atlassian.prettyurls.atlassian-pretty-urls-plugin	2869	2021-03-10 06:59:58.026	prettyurls-combined-filter-before-login
com.atlassian.confluence.plugins.confluence-inline-tasks	2870	2021-03-10 06:59:58.026	location-task-report-template
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2871	2021-03-10 06:59:58.026	personalInformationManager
com.atlassian.confluence.plugins.confluence-easyuser-admin	2872	2021-03-10 06:59:58.026	add-users-button
confluence.listeners.core	2873	2021-03-10 06:59:58.026	userdirectorylistener
confluence.macros.advanced	2874	2021-03-10 06:59:58.026	xhtml-gallery
com.atlassian.streams.confluence	2875	2021-03-10 06:59:58.026	date-fr-CA
com.atlassian.confluence.plugins.confluence-onboarding	2876	2021-03-10 06:59:58.026	cqlSearchService
com.atlassian.confluence.plugins.confluence-view-file-macro	2877	2021-03-10 06:59:58.026	common
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2878	2021-03-10 06:59:58.026	comment-created-hipchat-notification-template
com.atlassian.confluence.plugins.confluence-link-browser	2879	2021-03-10 06:59:58.026	link-browser-tab-recentlyviewed
com.atlassian.confluence.extra.officeconnector	2880	2021-03-10 06:59:58.026	officeauth
confluence.extra.impresence2	2881	2021-03-10 06:59:58.026	skype
com.atlassian.streams.confluence	2882	2021-03-10 06:59:58.026	date-vi-VN
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2883	2021-03-10 06:59:58.026	hostApplicationInformation
com.atlassian.auiplugin	2884	2021-03-10 06:59:58.026	dropdown
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2885	2021-03-10 06:59:58.026	applicationPropertiesContextItem
com.atlassian.confluence.plugins.confluence-mobile	2886	2021-03-10 06:59:58.026	webResourceManager
confluence.web.resources	2887	2021-03-10 06:59:58.026	syntaxhighlighter-xml
com.atlassian.streams	2888	2021-03-10 06:59:58.026	date-default
confluence.search.mappers.lucene	2889	2021-03-10 06:59:58.026	constantScore
com.atlassian.plugins.atlassian-nav-links-plugin	2890	2021-03-10 06:59:58.026	custom-apps-navigation-links
com.atlassian.confluence.plugins.confluence-email-resources	2891	2021-03-10 06:59:58.026	manage-notifications-email-footer-item
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2892	2021-03-10 06:59:58.026	monitorRepresentationFactory
com.atlassian.confluence.plugins.confluence-email-resources	2893	2021-03-10 06:59:58.026	notification-templates-comment-edit-1.0.0
com.atlassian.applinks.applinks-cors-plugin	2894	2021-03-10 06:59:58.026	templateRenderer
com.atlassian.confluence.plugins.soy	2895	2021-03-10 06:59:58.026	soy-panels-for-location-soy-function
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2896	2021-03-10 06:59:58.026	upm-common-templates
com.atlassian.auiplugin	2897	2021-03-10 06:59:58.026	aui-experimental-header
com.atlassian.confluence.plugins.share-page	2898	2021-03-10 06:59:58.026	share-attachment-email-notification-template
com.atlassian.applinks.applinks-plugin	2899	2021-03-10 06:59:58.026	applinks-public
com.atlassian.confluence.plugins.gadgets	2900	2021-03-10 06:59:58.026	whitelist
com.atlassian.confluence.plugins.confluence-create-content-plugin	2901	2021-03-10 06:59:58.026	i18nBeanFactory
com.atlassian.streams.confluence	2902	2021-03-10 06:59:58.026	date-fr-BE
com.atlassian.confluence.plugins.view-storage-format	2903	2021-03-10 06:59:58.026	view-comment-storage-resources
com.atlassian.confluence.plugins.confluence-dashboard	2904	2021-03-10 06:59:58.026	react-dashboard-dependencies
com.atlassian.confluence.plugins.confluence-content-property-storage	2905	2021-03-10 06:59:58.026	contentproperty-by-contents-and-keys
com.atlassian.confluence.plugins.confluence-like	2906	2021-03-10 06:59:58.026	view-email-adg-content-item
com.atlassian.confluence.plugins.confluence-space-ia	2907	2021-03-10 06:59:58.026	soy-resources
com.atlassian.applinks.applinks-plugin	2908	2021-03-10 06:59:58.026	feature-v3-feedback-collector
com.atlassian.analytics.analytics-client	2909	2021-03-10 06:59:58.026	programmatic-analytics-init
com.atlassian.confluence.plugins.confluence-inline-tasks	2910	2021-03-10 06:59:58.026	task-email-notification-template
com.atlassian.confluence.ext.newcode-macro-plugin	2911	2021-03-10 06:59:58.026	sh-theme-rdark
com.atlassian.querylang.confluence-cql-plugin	2912	2021-03-10 06:59:58.026	none-query-mapper
com.atlassian.streams	2913	2021-03-10 06:59:58.026	date-sma-SE
confluence.extractors.core	2914	2021-03-10 06:59:58.026	lastModifierName Extractor
com.atlassian.streams.streams-thirdparty-plugin	2915	2021-03-10 06:59:58.026	activityServiceActiveObjects
confluence.extractors.core	2916	2021-03-10 06:59:58.026	htmlEntitiesFilterExtractor
com.atlassian.confluence.plugins.drag-and-drop	2917	2021-03-10 06:59:58.026	files-upload-analytics
crowd.system.passwordencoders	2918	2021-03-10 06:59:58.026	sha
com.atlassian.confluence.plugins.confluence-mobile	2919	2021-03-10 06:59:58.026	mobile-site-filter
com.atlassian.confluence.plugins.confluence-onboarding	2920	2021-03-10 06:59:58.026	userAccessor
com.atlassian.confluence.plugins.confluence-sal-plugin	2921	2021-03-10 06:59:58.026	authenticationListener
confluence.web.resources	2922	2021-03-10 06:59:58.026	draft-changes-css
com.atlassian.applinks.applinks-plugin	2923	2021-03-10 06:59:58.026	requestFactory
com.atlassian.confluence.plugins.confluence-link-browser	2924	2021-03-10 06:59:58.026	confluenceLinkBrowserWhitelist
com.atlassian.confluence.plugins.confluence-darkfeatures-rest	2925	2021-03-10 06:59:58.026	dark-feature-rest-filter
com.atlassian.confluence.plugins.confluence-create-content-plugin	2926	2021-03-10 06:59:58.026	list-space-blueprints-templates-panel
com.atlassian.confluence.plugins.confluence-create-content-plugin	2927	2021-03-10 06:59:58.026	create-from-template-macro-browser-resources
com.atlassian.confluence.plugins.confluence-monitoring	2928	2021-03-10 06:59:58.026	cache-stats
com.atlassian.confluence.plugins.confluence-license-rest	2929	2021-03-10 06:59:58.026	licenseService
com.atlassian.analytics.analytics-client	2930	2021-03-10 06:59:58.026	whitelist-report-servlet
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2931	2021-03-10 06:59:58.026	soyTemplateRenderer
com.atlassian.confluence.plugins.confluence-mentions-plugin	2932	2021-03-10 06:59:58.026	confluenceMentionsEventListener
confluence.sections.space	2933	2021-03-10 06:59:58.026	space-labels
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2934	2021-03-10 06:59:58.026	pluginHibernateSessionFactory
com.atlassian.confluence.plugins.confluence-create-content-plugin	2935	2021-03-10 06:59:58.026	create-blank-space-blueprint
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2936	2021-03-10 06:59:58.026	follower-added-notification
com.atlassian.plugins.rest.atlassian-rest-module	2937	2021-03-10 06:59:58.026	pluginAccessor
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2938	2021-03-10 06:59:58.026	confluenceNotificationPreferenceManager
com.atlassian.applinks.applinks-cors-plugin	2939	2021-03-10 06:59:58.026	xsrfTokenAccessor
confluence.web.resources	2940	2021-03-10 06:59:58.026	page-move-resources
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2941	2021-03-10 06:59:58.026	plugin-notifications
com.atlassian.applinks.applinks-plugin	2943	2021-03-10 06:59:58.026	bamboo-project
com.atlassian.mywork.mywork-confluence-host-plugin	2944	2021-03-10 06:59:58.026	mwloginminiview
confluence.header.imagelinks	2945	2021-03-10 06:59:58.026	siteDarkFeatures
com.atlassian.streams.confluence	2946	2021-03-10 06:59:58.026	date-es-PY
com.atlassian.confluence.plugins.confluence-templates	2947	2021-03-10 06:59:58.026	template-editor-variables-template-resources
com.atlassian.confluence.plugins.confluence-inline-comments	2948	2021-03-10 06:59:58.026	notification-template-new-mail
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	2949	2021-03-10 06:59:58.026	notification-batching
com.atlassian.mywork.mywork-common-plugin	2950	2021-03-10 06:59:58.026	hostApplication
com.atlassian.activeobjects.confluence.spi	2951	2021-03-10 06:59:58.026	activeObjectsBackupRestoreProvider
confluence.lifecycle.core	2952	2021-03-10 06:59:58.026	tenantawarejobrescheduler
com.atlassian.streams.confluence	2953	2021-03-10 06:59:58.026	date-es-PR
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2954	2021-03-10 06:59:58.026	analyticsRenderContext
com.atlassian.applinks.applinks-trustedapps-plugin	2955	2021-03-10 06:59:58.026	i18nResolver
com.atlassian.confluence.ext.newcode-macro-plugin	2956	2021-03-10 06:59:58.026	newcode-migration
confluence.extra.impresence2	2957	2021-03-10 06:59:58.026	wildfire-xhtml
com.atlassian.applinks.applinks-cors-plugin	2958	2021-03-10 06:59:58.026	appLinksCorsDefaults
com.atlassian.confluence.plugins.confluence-page-banner	2959	2021-03-10 06:59:58.026	soy-resources
confluence.comment.action	2960	2021-03-10 06:59:58.026	secondary
com.atlassian.confluence.plugins.recently-viewed-plugin	2961	2021-03-10 06:59:58.026	mobile-menu-panel
com.atlassian.applinks.applinks-plugin	2962	2021-03-10 06:59:58.026	feature-v3-list
com.atlassian.auiplugin	2963	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-form-validation-validator-register
confluence.web.resources	2964	2021-03-10 06:59:58.026	logger
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2965	2021-03-10 06:59:58.026	pluginLicenseEventPublisherPublishCheckEvent
com.atlassian.mywork.mywork-confluence-host-plugin	2966	2021-03-10 06:59:58.026	resources
com.atlassian.confluence.plugins.confluence-business-blueprints	2967	2021-03-10 06:59:58.026	localeManager
confluence.renderer.components	2968	2021-03-10 06:59:58.026	citation
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	2969	2021-03-10 06:59:58.026	webpanelDecorator
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2970	2021-03-10 06:59:58.026	cachedContentLoader
confluence.user.menu	2971	2021-03-10 06:59:58.026	drafts
com.atlassian.confluence.plugins.confluence-create-content-plugin	2972	2021-03-10 06:59:58.026	pageContentTemplateService
com.atlassian.confluence.plugins.confluence-create-content-plugin	2973	2021-03-10 06:59:58.026	create-personal-space-blueprint
com.atlassian.confluence.keyboardshortcuts	2974	2021-03-10 06:59:58.026	help
com.atlassian.auiplugin	2975	2021-03-10 06:59:58.026	aui-page-typography
confluence.macros.advanced	2976	2021-03-10 06:59:58.026	contentbylabel-migrator
com.atlassian.confluence.extra.officeconnector	2977	2021-03-10 06:59:58.026	office-connector-css
com.atlassian.confluence.plugins.confluence-mobile	2978	2021-03-10 06:59:58.026	mobile-profile-filter
org.randombits.confluence.toc	2979	2021-03-10 06:59:58.026	toc-regex-migrator
com.atlassian.confluence.plugins.confluence-mobile	2980	2021-03-10 06:59:58.026	xmlStreamWriterTemplate
com.atlassian.confluence.plugins.confluence-highlight-actions	2981	2021-03-10 06:59:58.026	textMatcher
confluence.extra.attachments	2982	2021-03-10 06:59:58.026	attachments
confluence.extractors.core	2983	2021-03-10 06:59:58.026	titleExtractor
confluence.web.resources	2984	2021-03-10 06:59:58.026	lookandfeel
confluence.macros.dashboard	2985	2021-03-10 06:59:58.026	global-reports
com.atlassian.streams.confluence	2986	2021-03-10 06:59:58.026	date-es-PA
com.atlassian.plugins.atlassian-nav-links-plugin	2987	2021-03-10 06:59:58.026	remote-navigation-link-service
confluence.extractors.core	2988	2021-03-10 06:59:58.026	titleChangeExtractor
com.atlassian.applinks.applinks-plugin	2989	2021-03-10 06:59:58.026	applinks-components
com.atlassian.confluence.plugins.confluence-create-content-plugin	2990	2021-03-10 06:59:58.026	createContentPluginsWhitelist
com.atlassian.auiplugin	2991	2021-03-10 06:59:58.026	internal-aui-widget
confluence.extra.userlister	2992	2021-03-10 06:59:58.026	userlister-xhtml
com.atlassian.streams.confluence	2993	2021-03-10 06:59:58.026	date-es-PE
confluence.extra.information	2994	2021-03-10 06:59:58.026	tip
com.atlassian.auiplugin	2995	2021-03-10 06:59:58.026	jquery-form
com.atlassian.confluence.plugins.confluence-like	2996	2021-03-10 06:59:58.026	like-created-notification-transformer
com.atlassian.plugins.atlassian-nav-links-plugin	2997	2021-03-10 06:59:58.026	capability
confluence.web.resources	2998	2021-03-10 06:59:58.026	licensedetails
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	2999	2021-03-10 06:59:58.026	defaultNotificationUserService
confluence.sections.space.browse	3000	2021-03-10 06:59:58.026	browse-personal-space
com.atlassian.confluence.plugins.confluence-ui-components	3001	2021-03-10 06:59:58.026	cql
com.atlassian.auiplugin	3002	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-query-input
confluence.macros.advanced	3003	2021-03-10 06:59:58.026	navmap
confluence.user.hover.menu	3004	2021-03-10 06:59:58.026	follow-tab
com.atlassian.confluence.plugins.confluence-email-resources	3005	2021-03-10 06:59:58.026	content-templates-content-title-pattern-2.0.0
com.atlassian.confluence.extra.flyingpdf	3006	2021-03-10 06:59:58.026	pdfexport-xmlrpc
com.atlassian.streams.confluence	3007	2021-03-10 06:59:58.026	activitystream-gadget
com.atlassian.confluence.plugins.gadgets	3008	2021-03-10 06:59:58.026	clusterManager
com.atlassian.confluence.editor	3009	2021-03-10 06:59:58.026	editor-edit-only
com.atlassian.applinks.applinks-plugin	3010	2021-03-10 06:59:58.026	authConfigContainer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3011	2021-03-10 06:59:58.026	mailSender
confluence.macros.advanced	3012	2021-03-10 06:59:58.026	xhtml-recently-updated
confluence.extra.masterdetail	3013	2021-03-10 06:59:58.026	i18nResolver
com.atlassian.streams.confluence	3014	2021-03-10 06:59:58.026	date-es-MX
com.atlassian.streams.confluence	3015	2021-03-10 06:59:58.026	streamsEntryRendererFactory
com.atlassian.auiplugin	3016	2021-03-10 06:59:58.026	aui-experimental-tooltips
com.atlassian.plugins.atlassian-nav-links-plugin	3017	2021-03-10 06:59:58.026	capabilities-cache-loader
confluence.listeners.core	3018	2021-03-10 06:59:58.026	updateAttachmentsOnFilesystemOnPageMoveListener
com.atlassian.plugins.atlassian-nav-links-plugin	3019	2021-03-10 06:59:58.026	typeAccessor
com.atlassian.streams.confluence	3020	2021-03-10 06:59:58.026	date-es-NI
com.atlassian.plugins.atlassian-project-creation-plugin	3021	2021-03-10 06:59:58.026	project-creation-capability
com.atlassian.oauth.serviceprovider	3022	2021-03-10 06:59:58.026	tokenStore
com.atlassian.confluence.plugins.confluence-monitoring-console	3023	2021-03-10 06:59:58.026	monitoring-console-actions
com.atlassian.confluence.extra.widgetconnector	3024	2021-03-10 06:59:58.026	yahoovideo
com.atlassian.applinks.applinks-trustedapps-plugin	3025	2021-03-10 06:59:58.026	trusted-auth
com.atlassian.confluence.plugins.confluence-email-resources	3026	2021-03-10 06:59:58.026	chrome-template-header-pattern-2.0.0
com.atlassian.plugins.atlassian-whitelist-ui-plugin	3027	2021-03-10 06:59:58.026	confluence-whitelist
com.atlassian.streams.confluence	3028	2021-03-10 06:59:58.026	date-sv-FI
com.atlassian.confluence.plugins.confluence-highlight-actions	3029	2021-03-10 06:59:58.026	action-panel
com.atlassian.streams	3030	2021-03-10 06:59:58.026	streams-parent-js
com.atlassian.auiplugin	3031	2021-03-10 06:59:58.026	aui-help
com.atlassian.confluence.plugins.confluence-business-blueprints	3032	2021-03-10 06:59:58.026	decisions-resources
com.atlassian.confluence.plugins.confluence-sal-plugin	3033	2021-03-10 06:59:58.026	salUserManager
com.atlassian.querylang.confluence-cql-plugin	3034	2021-03-10 06:59:58.026	mention-field
com.atlassian.querylang.confluence-cql-plugin	3035	2021-03-10 06:59:58.026	attachment-filesize-field
confluence.extra.masterdetail	3036	2021-03-10 06:59:58.026	detailssummary-xhtml
com.atlassian.applinks.applinks-plugin	3037	2021-03-10 06:59:58.026	supported-inbound-authentication
com.atlassian.querylang.confluence-cql-plugin	3038	2021-03-10 06:59:58.026	start-of-week-one-arg-function
confluence.macros.advanced	3039	2021-03-10 06:59:58.026	blog-post
confluence.web.resources	3040	2021-03-10 06:59:58.026	page-ordering-tree
com.atlassian.mywork.mywork-confluence-host-plugin	3041	2021-03-10 06:59:58.026	task-service
com.atlassian.support.healthcheck.support-healthcheck-plugin	3042	2021-03-10 06:59:58.026	operatingSystemInfo
com.atlassian.confluence.plugins.quickreload	3043	2021-03-10 06:59:58.026	rest
confluence.macros.advanced	3044	2021-03-10 06:59:58.026	xhtml-children
com.atlassian.streams	3045	2021-03-10 06:59:58.026	date-mn-MN
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	3046	2021-03-10 06:59:58.026	dispatchService
confluence.sections.space.tools	3047	2021-03-10 06:59:58.026	layouts
com.atlassian.auiplugin	3048	2021-03-10 06:59:58.026	ajs-evejs
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3049	2021-03-10 06:59:58.026	plugin-osgi-servlet
com.atlassian.confluence.plugins.confluence-create-content-plugin	3050	2021-03-10 06:59:58.026	requestStorage
com.atlassian.plugins.base-hipchat-integration-plugin	3051	2021-03-10 06:59:58.026	plugin-resource-url
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3052	2021-03-10 06:59:58.026	pluginInstallationService
com.atlassian.confluence.plugins.confluence-mobile	3053	2021-03-10 06:59:58.026	userDtoFactory
com.atlassian.confluence.extra.officeconnector	3054	2021-03-10 06:59:58.026	file-viewer-plugin
com.atlassian.plugins.base-hipchat-integration-plugin	3055	2021-03-10 06:59:58.026	web-panel-soy-function
com.atlassian.streams.confluence	3056	2021-03-10 06:59:58.026	salUserManager
confluence.listeners.core	3057	2021-03-10 06:59:58.026	userremovallistener
confluence.search.mappers.lucene	3058	2021-03-10 06:59:58.026	userText
com.atlassian.confluence.extra.widgetconnector	3059	2021-03-10 06:59:58.026	mockingbird
com.atlassian.confluence.plugins.confluence-email-resources	3060	2021-03-10 06:59:58.026	content-templates-actions-pattern-1.0.0
com.atlassian.streams.confluence	3061	2021-03-10 06:59:58.026	date-es-SV
com.atlassian.jwt.jwt-plugin	3062	2021-03-10 06:59:58.026	jwtAuthFilter
com.atlassian.confluence.plugins.confluence-email-resources	3063	2021-03-10 06:59:58.026	content-templates-inline-user-pattern-2.0.0
com.atlassian.applinks.applinks-plugin	3064	2021-03-10 06:59:58.026	webSudoManager
com.atlassian.confluence.plugins.confluence-email-resources	3065	2021-03-10 06:59:58.026	change-settings-email-adg-footer-item
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3066	2021-03-10 06:59:58.026	comment-created-hipchat-notification-template-body
com.atlassian.confluence.plugins.confluence-content-property-storage	3067	2021-03-10 06:59:58.026	contentproperty-by-content
com.atlassian.confluence.extra.officeconnector	3068	2021-03-10 06:59:58.026	editattachmentinworditempathauth
com.atlassian.plugin.jslibs	3069	2021-03-10 06:59:58.026	moment-2.6.0
com.atlassian.confluence.plugins.confluence-like	3070	2021-03-10 06:59:58.026	like-email-soy-templates
com.atlassian.plugin.notifications.notifications-module	3071	2021-03-10 06:59:58.026	tx-processor
confluence.macros.dashboard	3072	2021-03-10 06:59:58.026	confluenceDashboardMacrosRest-filter
com.atlassian.plugins.atlassian-nav-links-plugin	3073	2021-03-10 06:59:58.026	navigation-links-cache-loader
confluence.extra.webdav	3074	2021-03-10 06:59:58.026	confluenceDavSessionInvalidatorJob
com.atlassian.confluence.plugins.confluence-inline-comments	3075	2021-03-10 06:59:58.026	reply-to-comment-email-adg-footer-item
com.atlassian.querylang.confluence-cql-plugin	3076	2021-03-10 06:59:58.026	ancestorId-query-mapper
com.atlassian.confluence.plugins.confluence-space-directory	3077	2021-03-10 06:59:58.026	space-directory-rest-filter
confluence.listeners.core	3078	2021-03-10 06:59:58.026	rpcConfigurationListener
com.atlassian.confluence.plugins.confluence-create-content-plugin	3079	2021-03-10 06:59:58.026	requestFactory
confluence.sections.profile.view	3080	2021-03-10 06:59:58.026	profile-styles
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3081	2021-03-10 06:59:58.026	executorFactory
com.atlassian.confluence.plugins.confluence-onboarding	3082	2021-03-10 06:59:58.026	onboarding-notification-no-spaces
com.atlassian.applinks.applinks-oauth-plugin	3083	2021-03-10 06:59:58.026	confluence-inbound-two-legged-oauth-with-impersonation
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3084	2021-03-10 06:59:58.026	blogpost-created-hipchat-notification-template
com.atlassian.confluence.plugins.confluence-jira-content	3085	2021-03-10 06:59:58.026	common-resource
com.atlassian.mywork.mywork-confluence-provider-plugin	3086	2021-03-10 06:59:58.026	notificationService
com.atlassian.support.healthcheck.support-healthcheck-plugin	3087	2021-03-10 06:59:58.026	tx-processor
com.atlassian.confluence.plugins.confluence-required-health-checks	3088	2021-03-10 06:59:58.026	requiredHealthChecksSupplier
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	3089	2021-03-10 06:59:58.026	delete-soy
com.atlassian.confluence.editor	3090	2021-03-10 06:59:58.026	image-properties-web-items
com.atlassian.querylang.confluence-cql-plugin	3091	2021-03-10 06:59:58.026	end-of-year-one-arg-function
com.atlassian.auiplugin	3092	2021-03-10 06:59:58.026	ajs-underscorejs
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3093	2021-03-10 06:59:58.026	analytics-link-builder
com.atlassian.gadgets.opensocial	3094	2021-03-10 06:59:58.026	gadget-rendering-servlet
com.atlassian.oauth.serviceprovider	3095	2021-03-10 06:59:58.026	tokenLoader
com.atlassian.mywork.mywork-confluence-host-plugin	3096	2021-03-10 06:59:58.026	pluginScheduler
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3097	2021-03-10 06:59:58.026	serviceAccessor
com.atlassian.confluence.plugins.view-storage-format	3098	2021-03-10 06:59:58.026	viewstorageActions
com.atlassian.confluence.plugins.confluence-license-rest	3099	2021-03-10 06:59:58.026	i18nResolver
com.atlassian.auiplugin	3100	2021-03-10 06:59:58.026	jquery-ui
com.atlassian.auiplugin	3101	2021-03-10 06:59:58.026	aui-core
com.atlassian.confluence.plugins.confluence-quicknav	3102	2021-03-10 06:59:58.026	contentNameSearchService
com.atlassian.plugins.atlassian-nav-links-plugin	3103	2021-03-10 06:59:58.026	content-links-rest
com.atlassian.gadgets.directory	3104	2021-03-10 06:59:58.026	gadgets-directory-admin-servlet
com.atlassian.confluence.plugins.confluence-like	3105	2021-03-10 06:59:58.026	manage-like-notifications-email-adg-footer-item
com.atlassian.confluence.plugins.confluence-business-blueprints	3106	2021-03-10 06:59:58.026	sharelinks-blueprint-widget-connector-support
confluence.extra.impresence2	3107	2021-03-10 06:59:58.026	reporter-skypeme
com.atlassian.confluence.plugins.confluence-knowledge-base	3108	2021-03-10 06:59:58.026	kb-blueprint-item
com.atlassian.applinks.applinks-plugin	3109	2021-03-10 06:59:58.026	applinks-common-exported
com.atlassian.mywork.mywork-confluence-host-plugin	3110	2021-03-10 06:59:58.026	tx-processor
com.atlassian.auiplugin	3111	2021-03-10 06:59:58.026	aui-focus-manager
confluence.sections.space.tools	3112	2021-03-10 06:59:58.026	trash
com.atlassian.applinks.applinks-plugin	3113	2021-03-10 06:59:58.026	applinks-ui
com.atlassian.streams.streams-thirdparty-plugin	3114	2021-03-10 06:59:58.026	streamsI18nResolver
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3115	2021-03-10 06:59:58.026	objectMapperFactory
com.atlassian.confluence.plugins.confluence-space-blueprints	3116	2021-03-10 06:59:58.026	DocumentationSpaceHomePageEventListener
com.atlassian.confluence.plugins.share-page	3117	2021-03-10 06:59:58.026	email-resources
com.atlassian.confluence.plugins.confluence-create-content-plugin	3118	2021-03-10 06:59:58.026	show-blueprint-index-popup-flag
com.atlassian.streams.streams-thirdparty-plugin	3119	2021-03-10 06:59:58.026	linkBuilder
confluence.macros.advanced	3120	2021-03-10 06:59:58.026	index
com.atlassian.streams.confluence	3121	2021-03-10 06:59:58.026	date-es-HN
com.atlassian.plugins.atlassian-nav-links-plugin	3122	2021-03-10 06:59:58.026	confluence-custom-apps-manage-menu
com.atlassian.plugins.shortcuts.atlassian-shortcuts-plugin	3123	2021-03-10 06:59:58.026	keyboardShortcutManager
com.atlassian.applinks.applinks-basicauth-plugin	3124	2021-03-10 06:59:58.026	basicAuthUISysadminAuthenticatorFilter
com.atlassian.confluence.plugins.confluence-create-content-plugin	3125	2021-03-10 06:59:58.026	list-system-templates-panel
confluence.macros.dashboard	3126	2021-03-10 06:59:58.026	confluenceDashboardMacrosWhitelist
com.atlassian.confluence.plugins.confluence-onboarding	3127	2021-03-10 06:59:58.026	find-relevant-spaces-service
com.atlassian.confluence.plugins.confluence-feature-discovery-plugin	3128	2021-03-10 06:59:58.026	pluginModuleEventListener
com.atlassian.streams	3129	2021-03-10 06:59:58.026	date-uk-UA
com.atlassian.support.healthcheck.support-healthcheck-plugin	3130	2021-03-10 06:59:58.026	pluginScheduler
com.atlassian.streams	3131	2021-03-10 06:59:58.026	rest
com.atlassian.oauth.serviceprovider	3132	2021-03-10 06:59:58.026	stringEscapeUtil
com.atlassian.streams.confluence	3133	2021-03-10 06:59:58.026	date-es-GT
confluence.web.resources	3134	2021-03-10 06:59:58.026	quick-nav
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3135	2021-03-10 06:59:58.026	requestFactory
confluence.listeners.core	3136	2021-03-10 06:59:58.026	admin-audit-logging-listener
com.atlassian.oauth.consumer.sal	3137	2021-03-10 06:59:58.026	consumerService
com.atlassian.confluence.plugins.confluence-knowledge-base	3138	2021-03-10 06:59:58.026	kb-blueprint
com.atlassian.querylang.confluence-cql-plugin	3139	2021-03-10 06:59:58.026	now-one-arg-function
com.atlassian.auiplugin	3140	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-internal-log
com.atlassian.confluence.plugins.confluence-mentions-plugin	3141	2021-03-10 06:59:58.026	notificationService
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3142	2021-03-10 06:59:58.026	notification
com.atlassian.mywork.mywork-confluence-provider-plugin	3143	2021-03-10 06:59:58.026	confluenceEventRegister
com.atlassian.confluence.plugins.confluence-view-file-macro	3144	2021-03-10 06:59:58.026	unknownAttachmentFilePlaceholderMarshaller
com.atlassian.confluence.plugins.confluence-templates	3145	2021-03-10 06:59:58.026	view-template-styles
confluence.web.resources	3146	2021-03-10 06:59:58.026	dictionary
com.atlassian.confluence.plugins.confluence-create-content-plugin	3147	2021-03-10 06:59:58.026	resources
com.atlassian.plugins.atlassian-plugins-webresource-plugin	3148	2021-03-10 06:59:58.026	web-resource-manager
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3149	2021-03-10 06:59:58.026	forgot-password-notification-template-body
com.atlassian.streams.streams-thirdparty-plugin	3150	2021-03-10 06:59:58.026	thirdparty
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	3151	2021-03-10 06:59:58.026	hipchat-space-context
confluence.content.action.menu	3152	2021-03-10 06:59:58.026	marker
confluence.macros.basic	3153	2021-03-10 06:59:58.026	cheese
com.atlassian.confluence.plugins.confluence-schedule-admin	3154	2021-03-10 06:59:58.026	scheduled-admin-xwork
confluence.macro.metadata.provider	3155	2021-03-10 06:59:58.026	macroMetadataProvider
com.atlassian.applinks.applinks-plugin	3156	2021-03-10 06:59:58.026	confluence-inbound-two-legged-oauth-with-impersonation
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	3157	2021-03-10 06:59:58.026	confluence-collaborative-editor-opt-in
com.atlassian.confluence.plugins.confluence-email-resources	3158	2021-03-10 06:59:58.026	view-content-changes-email-batch-item
com.atlassian.confluence.plugins.confluence-email-resources	3159	2021-03-10 06:59:58.026	notification-templates-page-edit-1.0.0
com.atlassian.analytics.analytics-client	3160	2021-03-10 06:59:58.026	programmatic-analytics
com.atlassian.confluence.plugins.view-storage-format	3161	2021-03-10 06:59:58.026	view-storage
com.atlassian.confluence.plugins.confluence-templates	3162	2021-03-10 06:59:58.026	editTransformer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3163	2021-03-10 06:59:58.026	upm-install-templates
confluence.sections.space.admin	3164	2021-03-10 06:59:58.026	import
confluence.sections.settings.edit	3165	2021-03-10 06:59:58.026	changepassword
confluence.sections.space.advanced	3166	2021-03-10 06:59:58.026	space-attachments
com.atlassian.confluence.plugins.confluence-lookandfeel	3167	2021-03-10 06:59:58.026	default-sitelogo-resources
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3168	2021-03-10 06:59:58.026	versioned-resource
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3169	2021-03-10 06:59:58.026	dataSourceFactory
confluence.search.mappers.lucene	3170	2021-03-10 06:59:58.026	prefixSearchFilter
com.atlassian.streams.confluence	3171	2021-03-10 06:59:58.026	date-es-ES
com.atlassian.confluence.plugins.drag-and-drop	3172	2021-03-10 06:59:58.026	drop-zone-for-view-attachments
confluence.web.resources	3173	2021-03-10 06:59:58.026	view-content
com.atlassian.streams.actions	3174	2021-03-10 06:59:58.026	streamsLocaleProvider
com.atlassian.confluence.plugins.xmlrpc.bloggingrpc	3175	2021-03-10 06:59:58.026	transactionTemplate
com.atlassian.confluence.plugins.confluence-sal-plugin	3176	2021-03-10 06:59:58.026	pluginHibernateSessionFactory
confluence.web.resources	3177	2021-03-10 06:59:58.026	aui-forms
confluence.web.resources	3178	2021-03-10 06:59:58.026	tooltip
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3179	2021-03-10 06:59:58.026	confluence-upm-requests-menu
com.atlassian.confluence.plugins.drag-and-drop	3180	2021-03-10 06:59:58.026	support
com.atlassian.confluence.plugins.confluence-email-resources	3181	2021-03-10 06:59:58.026	content-templates-primary-button-1.0.0
com.atlassian.confluence.plugins.confluence-create-content-plugin	3182	2021-03-10 06:59:58.026	dialogManager
com.atlassian.confluence.plugins.confluence-view-file-macro	3183	2021-03-10 06:59:58.026	defaultFilePlaceholderMarshaller
com.atlassian.oauth.serviceprovider	3184	2021-03-10 06:59:58.026	loginRedirector
com.atlassian.confluence.plugins.confluence-mobile	3185	2021-03-10 06:59:58.026	xmlEventReaderFactory
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3186	2021-03-10 06:59:58.026	confluenceUserPreferencesManager
confluence.web.resources	3187	2021-03-10 06:59:58.026	cssSubstitution
confluence.converters.core	3188	2021-03-10 06:59:58.026	user-status-converter
com.atlassian.confluence.editor	3189	2021-03-10 06:59:58.026	editor-autocomplete-resources
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3190	2021-03-10 06:59:58.026	page-created-hipchat-notification-template
com.atlassian.confluence.plugins.drag-and-drop	3191	2021-03-10 06:59:58.026	drag-and-drop-for-view-content
confluence.sections.admin	3192	2021-03-10 06:59:58.026	defaultspacelogo
com.atlassian.confluence.plugins.confluence-highlight-actions	3193	2021-03-10 06:59:58.026	darkFeaturesManager
confluence.sections.user.follow.list	3194	2021-03-10 06:59:58.026	resources
confluence.macros.advanced	3195	2021-03-10 06:59:58.026	popular-labels-resources
com.atlassian.applinks.applinks-plugin	3196	2021-03-10 06:59:58.026	adminUIAuthenticator
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	3197	2021-03-10 06:59:58.026	bootstrap-resource
com.atlassian.plugins.atlassian-nav-links-plugin	3198	2021-03-10 06:59:58.026	administration-shortcuts
confluence.extra.impresence2	3199	2021-03-10 06:59:58.026	yahoo
com.atlassian.plugins.atlassian-whitelist-ui-plugin	3200	2021-03-10 06:59:58.026	whitelist-bootstrap-template
com.atlassian.confluence.plugins.confluence-dashboard	3201	2021-03-10 06:59:58.026	svgContentTypeServletFilter
com.atlassian.confluence.plugins.confluence-jira-content	3202	2021-03-10 06:59:58.026	ao-module
confluence.sections.space.advanced	3203	2021-03-10 06:59:58.026	spacedetails
com.atlassian.confluence.plugins.confluence-mentions-plugin	3204	2021-03-10 06:59:58.026	notificationUserService
com.atlassian.confluence.plugins.confluence-feature-discovery-plugin	3205	2021-03-10 06:59:58.026	confluence-feature-discovery-plugin-features-meta
com.atlassian.confluence.plugins.confluence-required-health-checks	3206	2021-03-10 06:59:58.026	requiredHealthChecksEnabledCheck
com.atlassian.streams	3207	2021-03-10 06:59:58.026	date-tt-RU
confluence.extra.jira	3208	2021-03-10 06:59:58.026	jqlHelper
crowd.system.passwordencoders	3209	2021-03-10 06:59:58.026	bcrypt
com.atlassian.streams	3210	2021-03-10 06:59:58.026	feedBuilder
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	3211	2021-03-10 06:59:58.026	views
com.atlassian.confluence.plugins.confluence-nav-links	3212	2021-03-10 06:59:58.026	rotp-menu
com.atlassian.templaterenderer.api	3213	2021-03-10 06:59:58.026	webResourceUrlProvider
com.atlassian.confluence.plugins.confluence-business-blueprints	3214	2021-03-10 06:59:58.026	linkMetadataExtractor
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	3215	2021-03-10 06:59:58.026	spaceManager
com.atlassian.confluence.plugins.confluence-create-content-plugin	3216	2021-03-10 06:59:58.026	user-multiselect
com.atlassian.confluence.extra.officeconnector	3217	2021-03-10 06:59:58.026	ppt2k7ContentExtractor
com.atlassian.plugins.atlassian-whitelist-core-plugin	3218	2021-03-10 06:59:58.026	applicationLinkChangeListener
com.atlassian.confluence.plugins.confluence-email-resources	3219	2021-03-10 06:59:58.026	notification-templates-comment-remove-1.0.0
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3220	2021-03-10 06:59:58.026	hostLicenseUpdatedHandler
com.atlassian.confluence.plugins.synchrony-interop	3221	2021-03-10 06:59:58.026	synchrony-status-banner-loader
com.atlassian.mywork.mywork-common-plugin	3222	2021-03-10 06:59:58.026	thread-local-delegate-executor-factory
com.atlassian.confluence.plugins.confluence-email-resources	3223	2021-03-10 06:59:58.026	transactionTemplate
com.atlassian.confluence.plugins.confluence-edge-index	3224	2021-03-10 06:59:58.026	mobile-can-use-rest-filter
confluence.listeners.core	3225	2021-03-10 06:59:58.026	space-audit-logging-listener
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3226	2021-03-10 06:59:58.026	tokenManager
com.atlassian.analytics.analytics-client	3227	2021-03-10 06:59:58.026	event-checklist-servlet
confluence.web.resources	3228	2021-03-10 06:59:58.026	drop-down
com.atlassian.querylang.confluence-cql-plugin	3229	2021-03-10 06:59:58.026	ancestor-field
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3230	2021-03-10 06:59:58.026	purchased-addons-servlet
com.atlassian.streams	3231	2021-03-10 06:59:58.026	date-pt-BR
com.atlassian.plugins.less-transformer-plugin	3232	2021-03-10 06:59:58.026	lessTransformer
com.atlassian.confluence.plugins.confluence-email-resources	3233	2021-03-10 06:59:58.026	notifications-cluster-node-name-function
com.atlassian.analytics.analytics-client	3234	2021-03-10 06:59:58.026	event-checklist
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3235	2021-03-10 06:59:58.026	privateListingsUpgradeTask
com.atlassian.mywork.mywork-confluence-host-plugin	3236	2021-03-10 06:59:58.026	userDao
com.atlassian.confluence.plugins.confluence-dashboard	3237	2021-03-10 06:59:58.026	footer-analytics
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3238	2021-03-10 06:59:58.026	addonMarketplaceQueries
confluence.extractors.core	3239	2021-03-10 06:59:58.026	labelChangeExtractor
com.atlassian.gadgets.opensocial	3240	2021-03-10 06:59:58.026	make-request-servlet
com.atlassian.streams.confluence	3241	2021-03-10 06:59:58.026	date-hy-AM
com.atlassian.confluence.plugins.confluence-email-tracker	3242	2021-03-10 06:59:58.026	resources
com.atlassian.confluence.plugins.confluence-email-resources	3243	2021-03-10 06:59:58.026	change-settings-email-footer-item
com.atlassian.confluence.plugins.confluence-knowledge-base	3244	2021-03-10 06:59:58.026	kb-how-to-item
com.atlassian.streams.confluence	3245	2021-03-10 06:59:58.026	date-sk-SK
com.atlassian.confluence.plugins.confluence-email-resources	3246	2021-03-10 06:59:58.026	chrome-template-footer-pattern-2.0.0
confluence.sections.admin	3247	2021-03-10 06:59:58.026	backup
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	3248	2021-03-10 06:59:58.026	fetch
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3249	2021-03-10 06:59:58.026	urlReadingJavascriptTemplateWebResourceTransformer
confluence.extra.jira	3250	2021-03-10 06:59:58.026	jirachart-xhtml
com.atlassian.confluence.plugins.confluence-sal-plugin	3251	2021-03-10 06:59:58.026	pluginScheduler
com.atlassian.streams.confluence	3252	2021-03-10 06:59:58.026	date-sv-SE
com.atlassian.streams.confluence	3253	2021-03-10 06:59:58.026	date-js
com.atlassian.confluence.plugins.gadgets	3254	2021-03-10 06:59:58.026	subscribedGadgetFeedStore
com.atlassian.confluence.plugins.gadgets	3255	2021-03-10 06:59:58.026	tenantRegistry
com.atlassian.confluence.plugins.confluence-inline-comments	3256	2021-03-10 06:59:58.026	like-inline-comment-batch-email-action
com.atlassian.oauth.consumer.sal	3257	2021-03-10 06:59:58.026	hostConsumerAndSecretProvider
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	3258	2021-03-10 06:59:58.026	configuration-resources
com.atlassian.confluence.plugins.share-page	3259	2021-03-10 06:59:58.026	share-content-plugin-icons
com.atlassian.streams.confluence	3260	2021-03-10 06:59:58.026	date-gl-ES
confluence.macros.advanced	3261	2021-03-10 06:59:58.026	recently-updated-social-resources
com.atlassian.confluence.rpc.confluence-json-rpc-plugin	3262	2021-03-10 06:59:58.026	pluginEventManager
com.atlassian.auiplugin	3263	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-vendor-jquery-jquery-ui-jquery-ui-datepicker
com.atlassian.mywork.mywork-confluence-host-plugin	3264	2021-03-10 06:59:58.026	mailNotificationService
com.atlassian.confluence.plugins.confluence-like	3265	2021-03-10 06:59:58.026	transactionTemplate
com.atlassian.templaterenderer.atlassian-template-renderer-velocity1.6-plugin	3266	2021-03-10 06:59:58.026	velocity-1.6-web-panel-renderer
com.atlassian.confluence.plugins.search.confluence-search	3267	2021-03-10 06:59:58.026	pluginAccessor
com.atlassian.confluence.editor	3268	2021-03-10 06:59:58.026	editor-location
com.atlassian.confluence.editor	3269	2021-03-10 06:59:58.026	macro-icon-placeholder
com.atlassian.confluence.plugins.drag-and-drop	3270	2021-03-10 06:59:58.026	drag-and-drop-resource-filter
com.atlassian.confluence.plugins.confluence-email-resources	3271	2021-03-10 06:59:58.026	space-logo-image-function
confluence.extra.masterdetail	3272	2021-03-10 06:59:58.026	cachingDetailsManager
com.atlassian.confluence.plugins.confluence-mentions-plugin	3273	2021-03-10 06:59:58.026	salUserManager
com.atlassian.oauth.serviceprovider	3274	2021-03-10 06:59:58.026	expiredTokenRemoverScheduler
com.atlassian.confluence.extra.widgetconnector	3275	2021-03-10 06:59:58.026	widgetbox
com.atlassian.confluence.plugins.confluence-create-content-plugin	3276	2021-03-10 06:59:58.026	spaceBlueprintCreationListener
com.atlassian.confluence.plugins.confluence-software-blueprints	3277	2021-03-10 06:59:58.026	jirareports-changelog-dynamic
com.atlassian.confluence.plugins.confluence-space-ia	3278	2021-03-10 06:59:58.026	spacebar-pages
com.atlassian.applinks.applinks-plugin	3279	2021-03-10 06:59:58.026	applinks-new-table
confluence.sections.space.pages	3280	2021-03-10 06:59:58.026	list-alphabetically
com.atlassian.plugins.atlassian-nav-links-plugin	3281	2021-03-10 06:59:58.026	is-side-bar-enabled
com.atlassian.streams.core	3282	2021-03-10 06:59:58.026	streamsFeedUriBuilderFactory
com.atlassian.streams	3283	2021-03-10 06:59:58.026	transactionTemplate
com.atlassian.confluence.plugins.confluence-business-blueprints	3284	2021-03-10 06:59:58.026	common-template-resources
com.atlassian.plugins.atlassian-nav-links-plugin	3285	2021-03-10 06:59:58.026	navigation-capability
com.atlassian.streams	3286	2021-03-10 06:59:58.026	date-lt-LT
confluence.extra.impresence2	3287	2021-03-10 06:59:58.026	sametime
com.atlassian.confluence.plugins.confluence-like	3288	2021-03-10 06:59:58.026	liked-page-action-reply-to-comment-link
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3289	2021-03-10 06:59:58.026	threadLocalDelegateExecutorFactory
com.atlassian.auiplugin	3290	2021-03-10 06:59:58.026	aui-header
com.atlassian.confluence.plugins.gadgets	3291	2021-03-10 06:59:58.026	gadgetViewFactory
com.atlassian.gadgets.directory	3292	2021-03-10 06:59:58.026	gadget-directory-admin-client-main
com.atlassian.streams	3293	2021-03-10 06:59:58.026	pluginAccessor
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	3294	2021-03-10 06:59:58.026	hipchat-space-to-room-global-install
com.atlassian.confluence.plugins.confluence-email-resources	3295	2021-03-10 06:59:58.026	template-utils-avatar-name-table-2.0.0
com.atlassian.confluence.plugins.confluence-mentions-plugin	3296	2021-03-10 06:59:58.026	mentions-hipchat-soy-templates-2
com.atlassian.confluence.plugins.confluence-content-property-storage	3297	2021-03-10 06:59:58.026	contentproperty-by-key
com.atlassian.confluence.plugins.confluence-sal-plugin	3298	2021-03-10 06:59:58.026	salHttpContext
com.atlassian.plugins.shortcuts.atlassian-shortcuts-plugin	3299	2021-03-10 06:59:58.026	shortcuts
com.atlassian.auiplugin	3300	2021-03-10 06:59:58.026	aui-reset
com.atlassian.confluence.plugins.confluence-labels	3301	2021-03-10 06:59:58.026	labels-actions
confluence.aui.staging	3302	2021-03-10 06:59:58.026	skate
com.atlassian.confluence.plugins.confluence-labels	3303	2021-03-10 06:59:58.026	view-labels-all-system
com.atlassian.confluence.plugins.confluence-ui-components	3304	2021-03-10 06:59:58.026	label-picker
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	3305	2021-03-10 06:59:58.026	is-room-notify-client-enabled-soy-function
com.atlassian.confluence.plugins.confluence-cache-management-plugin	3306	2021-03-10 06:59:58.026	client-resources
com.atlassian.confluence.plugins.confluence-user-profile	3307	2021-03-10 06:59:58.026	applicationProperties
com.atlassian.confluence.plugins.confluence-space-blueprints	3308	2021-03-10 06:59:58.026	documentation-space-blueprint
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	3309	2021-03-10 06:59:58.026	transformer
com.atlassian.confluence.plugins.confluence-create-content-plugin	3310	2021-03-10 06:59:58.026	user-templates-resources
com.atlassian.plugins.atlassian-nav-links-plugin	3311	2021-03-10 06:59:58.026	http-cache-expiry-service
confluence.content.action.menu	3312	2021-03-10 06:59:58.026	word-export
com.atlassian.streams.confluence	3313	2021-03-10 06:59:58.026	spaceRendererFactory
com.atlassian.applinks.applinks-plugin	3314	2021-03-10 06:59:58.026	applinks-new-ui-utils
com.atlassian.plugins.atlassian-whitelist-core-plugin	3315	2021-03-10 06:59:58.026	applicationProperties
com.atlassian.auiplugin	3316	2021-03-10 06:59:58.026	aui-experimental-mobile
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	3317	2021-03-10 06:59:58.026	confluence-collaborative-editor-api-rest-filter
confluence.extra.dynamictasklist2	3318	2021-03-10 06:59:58.026	web-resources
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3319	2021-03-10 06:59:58.026	blogpost-created-notification-template
confluence.sections.admin.tasks	3320	2021-03-10 06:59:58.026	marketplaceAdminTask
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3321	2021-03-10 06:59:58.026	pluginMetaDataManager
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3322	2021-03-10 06:59:58.026	email-source-param-function
com.atlassian.confluence.plugins.confluence-labels	3323	2021-03-10 06:59:58.026	view-all-content-with-label
confluence.sections.profile	3324	2021-03-10 06:59:58.026	edit-notifications-profile
com.atlassian.applinks.applinks-plugin	3325	2021-03-10 06:59:58.026	applinks-v2-shim
com.atlassian.streams	3326	2021-03-10 06:59:58.026	date-mk-MK
com.atlassian.confluence.extra.flyingpdf	3327	2021-03-10 06:59:58.026	pdfExportLongRunningTaskFactory
com.atlassian.mywork.mywork-confluence-host-plugin	3328	2021-03-10 06:59:58.026	mwnotificationsminiview
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3329	2021-03-10 06:59:58.026	localeManager
com.atlassian.confluence.image.effects.ImageEffectsPlugin	3330	2021-03-10 06:59:58.026	config-resource
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3331	2021-03-10 06:59:58.026	plugin-manager-servlet
com.atlassian.mywork.mywork-confluence-host-plugin	3332	2021-03-10 06:59:58.026	html-service
com.atlassian.confluence.plugins.expand-macro	3333	2021-03-10 06:59:58.026	expand
com.atlassian.confluence.plugins.confluence-mobile	3334	2021-03-10 06:59:58.026	mobile-can-use-rest-filter
confluence.extra.jira	3335	2021-03-10 06:59:58.026	jirachart
com.atlassian.mywork.mywork-confluence-host-plugin	3336	2021-03-10 06:59:58.026	userApplicationLinkDao
com.atlassian.plugins.atlassian-help-tips	3337	2021-03-10 06:59:58.026	helptips-filter
com.atlassian.confluence.plugins.confluence-previews	3338	2021-03-10 06:59:58.026	version-navigation-plugin
com.atlassian.querylang.confluence-cql-plugin	3339	2021-03-10 06:59:58.026	space-type-field
com.atlassian.streams.confluence	3340	2021-03-10 06:59:58.026	date-es-DO
com.atlassian.confluence.plugins.gadgets	3341	2021-03-10 06:59:58.026	requestContextBuilder
com.atlassian.auiplugin	3342	2021-03-10 06:59:58.026	internal-basic-css
com.atlassian.confluence.keyboardshortcuts	3343	2021-03-10 06:59:58.026	tinymce.blockquote
com.atlassian.mywork.mywork-confluence-host-plugin	3344	2021-03-10 06:59:58.026	myWorkAnalyticsWhitelist
com.atlassian.confluence.plugins.confluence-daily-summary-email	3345	2021-03-10 06:59:58.026	chrome-template
com.atlassian.auiplugin	3346	2021-03-10 06:59:58.026	internal-skatejs-0.13.17-lib-registry
com.atlassian.auiplugin	3347	2021-03-10 06:59:58.026	aui-badge
com.atlassian.confluence.plugins.confluence-labels	3348	2021-03-10 06:59:58.026	soy-label-link-server-function
com.atlassian.streams	3349	2021-03-10 06:59:58.026	date-en-AU
com.atlassian.oauth.serviceprovider	3350	2021-03-10 06:59:58.026	localeResolver
confluence.web.resources	3351	2021-03-10 06:59:58.026	colours-transformer
com.atlassian.support.healthcheck.support-healthcheck-plugin	3352	2021-03-10 06:59:58.026	salI18nResolver
confluence.web.components	3353	2021-03-10 06:59:58.026	property-panel-js
confluence.extra.chart	3354	2021-03-10 06:59:58.026	chart-xhtml
com.atlassian.confluence.plugins.confluence-remote-page-view-plugin	3355	2021-03-10 06:59:58.026	i18nResolver
com.atlassian.auiplugin	3356	2021-03-10 06:59:58.026	aui-page-layout
com.atlassian.plugins.base-hipchat-integration-plugin	3357	2021-03-10 06:59:58.026	configure-integration-data
com.atlassian.streams.confluence	3358	2021-03-10 06:59:58.026	date-es-EC
com.atlassian.support.stp	3359	2021-03-10 06:59:58.026	webResourceManagerContextItem
com.atlassian.streams	3360	2021-03-10 06:59:58.026	date-da-DK
com.atlassian.auiplugin	3361	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-form-validation-basic-validators
com.atlassian.confluence.plugins.search.confluence-search	3362	2021-03-10 06:59:58.026	queryFactory
confluence.search.mappers.lucene	3363	2021-03-10 06:59:58.026	all
com.atlassian.querylang.confluence-cql-plugin	3364	2021-03-10 06:59:58.026	current-content-query-function
com.atlassian.streams.confluence	3365	2021-03-10 06:59:58.026	date-es-CL
com.atlassian.streams	3366	2021-03-10 06:59:58.026	date-en-CA
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	3367	2021-03-10 06:59:58.026	rest-compatibility-filter
com.atlassian.streams	3368	2021-03-10 06:59:58.026	date-en-BZ
com.atlassian.streams.confluence	3369	2021-03-10 06:59:58.026	date-es-CO
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3370	2021-03-10 06:59:58.026	site-blog-recipients-provider
com.atlassian.confluence.plugins.confluence-create-content-plugin	3371	2021-03-10 06:59:58.026	spaceCollectionService
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3372	2021-03-10 06:59:58.026	confluenceHostLicenseProvider
confluence.macros.multimedia	3373	2021-03-10 06:59:58.026	quicktime
com.atlassian.confluence.plugins.confluence-space-blueprints	3374	2021-03-10 06:59:58.026	sidebarLinkService
com.atlassian.querylang.confluence-cql-plugin	3375	2021-03-10 06:59:58.026	modified-field
confluence.content.action.menu	3376	2021-03-10 06:59:58.026	view-information
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	3377	2021-03-10 06:59:58.026	atlassianClusterMonitoring
com.atlassian.confluence.plugins.confluence-space-blueprints	3378	2021-03-10 06:59:58.026	team-space-blueprint-item
com.atlassian.auiplugin	3379	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-internal-alignment
com.atlassian.streams.actions	3380	2021-03-10 06:59:58.026	commentActionHandlers
com.atlassian.streams	3381	2021-03-10 06:59:58.026	executorFactory
confluence.extra.jira	3382	2021-03-10 06:59:58.026	macro-browser-resources
com.atlassian.confluence.plugins.confluence-create-content-plugin	3383	2021-03-10 06:59:58.026	create-from-template-resources
confluence.listeners.core	3384	2021-03-10 06:59:58.026	usercredentialupdatelistener
com.atlassian.streams	3385	2021-03-10 06:59:58.026	streamsI18nResolver
com.atlassian.plugins.base-hipchat-integration-plugin	3386	2021-03-10 06:59:58.026	image-resources
com.atlassian.analytics.analytics-client	3387	2021-03-10 06:59:58.026	event-report-servlet
com.atlassian.plugins.atlassian-nav-links-plugin	3388	2021-03-10 06:59:58.026	readOnlyApplicationLinkService
com.atlassian.confluence.plugins.confluence-inline-tasks	3389	2021-03-10 06:59:58.026	tasks-feature-discovery-resources
com.atlassian.confluence.plugins.gadgets	3390	2021-03-10 06:59:58.026	page-gadget-embedded
com.atlassian.streams.confluence	3391	2021-03-10 06:59:58.026	date-es-CR
com.atlassian.confluence.editor	3392	2021-03-10 06:59:58.026	editor-save
com.atlassian.support.healthcheck.support-healthcheck-plugin	3393	2021-03-10 06:59:58.026	supportHealthCheckSupplier
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	3394	2021-03-10 06:59:58.026	synchronyWebJsonToken
com.atlassian.confluence.plugins.confluence-email-resources	3395	2021-03-10 06:59:58.026	content-templates-page-link-pattern-1.0.0
confluence.extra.webdav	3396	2021-03-10 06:59:58.026	confluenceDavSessionInvalidatorJobTrigger
com.atlassian.confluence.plugins.confluence-mentions-plugin	3397	2021-03-10 06:59:58.026	mention-hipchat-notification-template
com.atlassian.confluence.editor	3398	2021-03-10 06:59:58.026	pageLayoutListener
com.atlassian.streams.core	3399	2021-03-10 06:59:58.026	i18nResolver
com.atlassian.streams.confluence	3400	2021-03-10 06:59:58.026	date-es-BO
com.atlassian.confluence.plugins.confluence-email-resources	3401	2021-03-10 06:59:58.026	content-templates-status-update-pattern-1.0.0
com.atlassian.streams	3402	2021-03-10 06:59:58.026	streamsActivityRedirectionFilter
com.atlassian.confluence.plugins.confluence-labels	3403	2021-03-10 06:59:58.026	view-label-resources
com.atlassian.confluence.plugins.gadgets	3404	2021-03-10 06:59:58.026	gadget-placeholder
confluence.lifecycle.core	3405	2021-03-10 06:59:58.026	schedulerLifecycle
com.atlassian.applinks.applinks-plugin	3406	2021-03-10 06:59:58.026	applinks-new-ui
com.atlassian.applinks.applinks-oauth-plugin	3407	2021-03-10 06:59:58.026	applinkPluginUtil
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3408	2021-03-10 06:59:58.026	notificationUserService
com.atlassian.confluence.plugins.confluence-edge-index	3409	2021-03-10 06:59:58.026	flushEdgeIndexQueueJob
com.atlassian.confluence.plugins.confluence-sal-plugin	3410	2021-03-10 06:59:58.026	oAuthRequestVerifierFactory
confluence.extra.impresence2	3411	2021-03-10 06:59:58.026	reporter-jabber
com.atlassian.applinks.applinks-plugin	3412	2021-03-10 06:59:58.026	applinks-lib-backbone
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	3413	2021-03-10 06:59:58.026	jsonableJacksonService
com.atlassian.confluence.plugins.confluence-create-content-plugin	3414	2021-03-10 06:59:58.026	blueprint-resources
com.atlassian.plugins.less-transformer-plugin	3415	2021-03-10 06:59:58.026	pluginUriResolver
com.atlassian.auiplugin	3416	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-internal-deprecation
confluence.renderer.components	3417	2021-03-10 06:59:58.026	block
com.atlassian.confluence.extra.officeconnector	3418	2021-03-10 06:59:58.026	editinwordlink-legacy
com.atlassian.confluence.plugins.confluence-create-content-plugin	3419	2021-03-10 06:59:58.026	header-create-dialog
com.atlassian.confluence.plugins.confluence-inline-comments	3420	2021-03-10 06:59:58.026	loader
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	3421	2021-03-10 06:59:58.026	confluence-collaborative-editor-api-rest
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	3422	2021-03-10 06:59:58.026	app
com.atlassian.streams.confluence	3423	2021-03-10 06:59:58.026	spaceEntityResolver
com.atlassian.auiplugin	3424	2021-03-10 06:59:58.026	placeholder
com.atlassian.plugins.atlassian-plugins-webresource-plugin	3425	2021-03-10 06:59:58.026	jsI18n
com.atlassian.confluence.extra.widgetconnector	3426	2021-03-10 06:59:58.026	voicethread
com.atlassian.auiplugin	3427	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-layer
com.atlassian.confluence.plugins.confluence-inline-tasks	3428	2021-03-10 06:59:58.026	show-task-feature-discovery-flag-page
com.atlassian.applinks.applinks-basicauth-plugin	3429	2021-03-10 06:59:58.026	applinkPluginUtil
com.atlassian.confluence.plugins.confluence-mentions-plugin	3430	2021-03-10 06:59:58.026	editor-insertmention
com.atlassian.plugin.notifications.notifications-module	3431	2021-03-10 06:59:58.026	notificationSchemeStore
com.atlassian.support.healthcheck.support-healthcheck-plugin	3432	2021-03-10 06:59:58.026	notificationDismissPersistenceService
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	3433	2021-03-10 06:59:58.026	blog-share-notification
com.atlassian.streams.confluence	3434	2021-03-10 06:59:58.026	date-es-AR
com.atlassian.analytics.analytics-client	3435	2021-03-10 06:59:58.026	policy-update-init
com.atlassian.confluence.plugins.confluence-email-resources	3436	2021-03-10 06:59:58.026	notification-templates-1.0.0
com.atlassian.plugins.atlassian-whitelist-core-plugin	3437	2021-03-10 06:59:58.026	pluginSettingsFactory
com.atlassian.plugins.atlassian-nav-links-plugin	3438	2021-03-10 06:59:58.026	project-shortcuts-rest
com.atlassian.plugins.base-hipchat-integration-plugin	3439	2021-03-10 06:59:58.026	rest-ping
com.atlassian.confluence.plugins.confluence-roadmap-plugin	3440	2021-03-10 06:59:58.026	rest-filter
com.atlassian.auiplugin	3441	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-contain-dropdown
com.atlassian.plugins.atlassian-whitelist-core-plugin	3442	2021-03-10 06:59:58.026	eventPublisher
com.atlassian.plugin.notifications.notifications-module	3443	2021-03-10 06:59:58.026	notificationErrorRegistry
com.atlassian.plugins.atlassian-nav-links-plugin	3444	2021-03-10 06:59:58.026	http-request-factory
com.atlassian.confluence.plugins.search.confluence-search	3445	2021-03-10 06:59:58.026	cqlSearcher
com.atlassian.auiplugin	3446	2021-03-10 06:59:58.026	ajs
com.atlassian.analytics.analytics-client	3447	2021-03-10 06:59:58.026	productEventListener
confluence.sections.space.admin	3448	2021-03-10 06:59:58.026	spacelogo
confluence.search.mappers.lucene	3449	2021-03-10 06:59:58.026	customContentType
com.atlassian.webhooks.atlassian-webhooks-plugin	3450	2021-03-10 06:59:58.026	analytics-whitelist
com.atlassian.confluence.plugins.confluence-mobile	3451	2021-03-10 06:59:58.026	view-content-resources
com.atlassian.applinks.applinks-trustedapps-plugin	3452	2021-03-10 06:59:58.026	trustedApplicationReaper
com.atlassian.confluence.plugins.confluence-knowledge-base	3453	2021-03-10 06:59:58.026	userAccessor
com.atlassian.confluence.plugins.confluence-daily-summary-email	3454	2021-03-10 06:59:58.026	PopularContentManager
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3455	2021-03-10 06:59:58.026	localLicenseNotificationJob
com.atlassian.plugins.rest.atlassian-rest-module	3456	2021-03-10 06:59:58.026	activator
confluence.extra.impresence2	3457	2021-03-10 06:59:58.026	skypeme-xhtml
com.atlassian.confluence.extra.flyingpdf	3458	2021-03-10 06:59:58.026	configpdflayout-2
com.atlassian.confluence.extra.flyingpdf	3459	2021-03-10 06:59:58.026	export-format-pdf
com.atlassian.applinks.applinks-plugin	3460	2021-03-10 06:59:58.026	applinks-images
confluence.extra.impresence2	3461	2021-03-10 06:59:58.026	presence-reporter
confluence.macros.advanced	3462	2021-03-10 06:59:58.026	favpages-resources
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3463	2021-03-10 06:59:58.026	upm-requirejs
com.atlassian.streams	3464	2021-03-10 06:59:58.026	date-gu-IN
com.atlassian.streams.confluence	3465	2021-03-10 06:59:58.026	date-ka-GE
com.atlassian.plugins.confluence-tdm-merger	3466	2021-03-10 06:59:58.026	threadLocalDelegateExecutorFactory
com.atlassian.confluence.plugins.confluence-content-property-storage	3467	2021-03-10 06:59:58.026	contentPropertySearchQueryFactory
com.atlassian.mywork.mywork-common-plugin	3468	2021-03-10 06:59:58.026	velocity-renderer
com.atlassian.confluence.plugins.search.confluence-search	3469	2021-03-10 06:59:58.026	luceneQueryParserFactory
com.atlassian.plugins.atlassian-nps-plugin	3470	2021-03-10 06:59:58.026	nps-rest
com.atlassian.auiplugin	3471	2021-03-10 06:59:58.026	aui-experimental-data-handlers
com.atlassian.analytics.analytics-client	3472	2021-03-10 06:59:58.026	privacyPolicyUpdateDetector
com.atlassian.support.stp	3473	2021-03-10 06:59:58.026	isUserAdminConditionChecker
com.atlassian.confluence.plugins.confluence-edge-index	3474	2021-03-10 06:59:58.026	commentCountQuery
com.atlassian.confluence.plugins.confluence-default-space-content-plugin	3475	2021-03-10 06:59:58.026	spacecontent-personal
confluence.sections.help	3476	2021-03-10 06:59:58.026	conf-help
com.atlassian.streams.confluence	3477	2021-03-10 06:59:58.026	date-is-IS
confluence.macros.multimedia	3478	2021-03-10 06:59:58.026	video
com.atlassian.auiplugin	3479	2021-03-10 06:59:58.026	template
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	3480	2021-03-10 06:59:58.026	delete-resources
com.atlassian.applinks.applinks-plugin	3481	2021-03-10 06:59:58.026	restUrlBuilder
com.atlassian.auiplugin	3482	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-include
com.atlassian.auiplugin	3483	2021-03-10 06:59:58.026	aui-experimental-soy-templates-2
com.atlassian.streams.confluence	3484	2021-03-10 06:59:58.026	date-sms-FI
com.atlassian.confluence.plugins.confluence-email-resources	3485	2021-03-10 06:59:58.026	view-blogpost-email-call-to-action
com.atlassian.auiplugin	3486	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-blanket
com.atlassian.confluence.plugins.confluence-email-resources	3487	2021-03-10 06:59:58.026	get-nice-file-size-function
com.atlassian.plugins.atlassian-nav-links-plugin	3488	2021-03-10 06:59:58.026	cacheRefreshService
com.atlassian.confluence.editor	3489	2021-03-10 06:59:58.026	servletcontextthreadlocalservlet
confluence.extra.jira	3490	2021-03-10 06:59:58.026	applinksProxy
confluence.user.menu	3491	2021-03-10 06:59:58.026	login
confluence.web.resources	3492	2021-03-10 06:59:58.026	pages-dirview
com.atlassian.confluence.plugins.confluence-onboarding	3493	2021-03-10 06:59:58.026	onboardingNumberOfUsersCheckJob
com.atlassian.confluence.plugins.confluence-create-content-plugin	3494	2021-03-10 06:59:58.026	lazyInsertExecutor
com.atlassian.applinks.applinks-plugin	3495	2021-03-10 06:59:58.026	loginUriProvider
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3496	2021-03-10 06:59:58.026	notificationRepresentationFactory
com.atlassian.applinks.applinks-oauth-plugin	3497	2021-03-10 06:59:58.026	oAuthUIAdminAuthenticatorFilter
com.atlassian.confluence.plugins.confluence-highlight-actions	3498	2021-03-10 06:59:58.026	highlightActionsAnalyticsWhitelist
com.atlassian.confluence.plugins.confluence-software-project	3499	2021-03-10 06:59:58.026	confluence-software-project-viewcontent-resources
com.atlassian.auiplugin	3500	2021-03-10 06:59:58.026	aui-experimental-example
com.atlassian.applinks.applinks-plugin	3501	2021-03-10 06:59:58.026	typeAccessor
com.atlassian.confluence.plugins.confluence-file-notifications	3502	2021-03-10 06:59:58.026	file-notifications-file-details-file-version
com.atlassian.plugins.atlassian-nav-links-plugin	3503	2021-03-10 06:59:58.026	application-properties
com.atlassian.confluence.plugins.confluence-roadmap-plugin	3504	2021-03-10 06:59:58.026	roadmap-editor-resources
com.atlassian.auiplugin	3505	2021-03-10 06:59:58.026	cookie
com.atlassian.confluence.plugins.confluence-create-content-plugin	3506	2021-03-10 06:59:58.026	create-from-template
com.atlassian.querylang.confluence-cql-plugin	3507	2021-03-10 06:59:58.026	space-key-field
com.atlassian.confluence.plugins.confluence-email-resources	3508	2021-03-10 06:59:58.026	notification-templates-content-removed-1.0.0
confluence.web.resources	3509	2021-03-10 06:59:58.026	view-comment
com.atlassian.plugins.base-hipchat-integration-plugin	3510	2021-03-10 06:59:58.026	invites-resources
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3511	2021-03-10 06:59:58.026	page-event-notification-transformer
com.atlassian.confluence.plugins.confluence-space-blueprints	3512	2021-03-10 06:59:58.026	documentation-space-homepage-template
com.atlassian.applinks.applinks-plugin	3513	2021-03-10 06:59:58.026	authenticationListener
com.atlassian.applinks.applinks-plugin	3514	2021-03-10 06:59:58.026	webResourceUrlProvider
com.atlassian.confluence.ext.newcode-macro-plugin	3515	2021-03-10 06:59:58.026	pluginAccessor
com.atlassian.auiplugin	3516	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-css-deprecations
com.atlassian.confluence.plugins.confluence-inline-tasks	3517	2021-03-10 06:59:58.026	task-hipchat-notification-template-body
com.atlassian.confluence.plugins.confluence-create-content-plugin	3518	2021-03-10 06:59:58.026	contentBlueprintService
com.atlassian.confluence.plugins.confluence-lookandfeel	3519	2021-03-10 06:59:58.026	fileUploadManager
confluence.listeners.core	3520	2021-03-10 06:59:58.026	look-and-feel-audit-logging-listener
com.atlassian.streams.confluence	3521	2021-03-10 06:59:58.026	date-az-Cyrl-AZ
com.atlassian.plugins.base-hipchat-integration-plugin	3522	2021-03-10 06:59:58.026	hipchatUserConfigurationPanel
com.atlassian.analytics.analytics-client	3523	2021-03-10 06:59:58.026	licenseCreationDateService
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	3524	2021-03-10 06:59:58.026	searchManager
com.atlassian.auiplugin	3525	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-internal-globalize
com.atlassian.applinks.applinks-plugin	3526	2021-03-10 06:59:58.026	auth-container
com.atlassian.auiplugin	3527	2021-03-10 06:59:58.026	aui-experimental-table-sortable
com.atlassian.streams	3528	2021-03-10 06:59:58.026	date-pt-PT
com.atlassian.confluence.editor	3529	2021-03-10 06:59:58.026	macro-placeholder
com.atlassian.confluence.plugins.confluence-like	3530	2021-03-10 06:59:58.026	like-created-notification-template-hipchat
confluence.renderer.components	3531	2021-03-10 06:59:58.026	url
confluence.sections.page	3532	2021-03-10 06:59:58.026	view-information
com.atlassian.confluence.plugins.share-page	3533	2021-03-10 06:59:58.026	share-attachment-email-notification-template-body
confluence.search.mappers.lucene	3534	2021-03-10 06:59:58.026	spacePermissionsSearchFilter
com.atlassian.confluence.extra.widgetconnector	3535	2021-03-10 06:59:58.026	widget-migrator
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3536	2021-03-10 06:59:58.026	confluenceUserRolesProvider
com.atlassian.confluence.plugins.confluence-knowledge-base	3537	2021-03-10 06:59:58.026	kb-how-to-article-blueprint
com.atlassian.confluence.plugins.confluence-software-blueprints	3538	2021-03-10 06:59:58.026	retrospectives-index
confluence.extra.impresence2	3539	2021-03-10 06:59:58.026	reporter-yahoo
com.atlassian.confluence.plugins.confluence-space-ia	3540	2021-03-10 06:59:58.026	advanced-links
com.atlassian.streams.confluence	3541	2021-03-10 06:59:58.026	activityObjectFactory
com.atlassian.confluence.plugins.confluence-content-property-storage	3542	2021-03-10 06:59:58.026	contentPropertiesExtractor
confluence.listeners.core	3543	2021-03-10 06:59:58.026	superBatchCounterInvalidator
com.atlassian.confluence.plugins.confluence-onboarding	3544	2021-03-10 06:59:58.026	onboarding-common-resources
com.atlassian.auiplugin	3545	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-backbone
com.atlassian.confluence.keyboardshortcuts	3546	2021-03-10 06:59:58.026	tinymce.table.paste.row
com.atlassian.confluence.extra.flyingpdf	3547	2021-03-10 06:59:58.026	exportcss
com.atlassian.confluence.plugins.confluence-sal-plugin	3548	2021-03-10 06:59:58.026	threadLocalContextManager
com.atlassian.querylang.confluence-cql-plugin	3549	2021-03-10 06:59:58.026	user-sort-mapper
com.atlassian.plugin.notifications.notifications-module	3550	2021-03-10 06:59:58.026	userName
com.atlassian.confluence.plugins.confluence-knowledge-base	3551	2021-03-10 06:59:58.026	transactionTemplate
confluence.web.resources	3552	2021-03-10 06:59:58.026	type-helpers
com.atlassian.confluence.plugins.confluence-inline-comments	3553	2021-03-10 06:59:58.026	editor
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	3554	2021-03-10 06:59:58.026	batchMessageMap-soy-function
com.atlassian.confluence.plugins.confluence-software-blueprints	3555	2021-03-10 06:59:58.026	jirareports-resources
com.atlassian.confluence.plugins.confluence-file-notifications	3556	2021-03-10 06:59:58.026	file-content-remove-notification
com.atlassian.confluence.plugins.confluence-rest-resources	3557	2021-03-10 06:59:58.026	rest-api-filter
com.atlassian.confluence.plugins.confluence-macro-browser	3558	2021-03-10 06:59:58.026	macro-browser-js
com.atlassian.confluence.restplugin	3559	2021-03-10 06:59:58.026	rest-filter
com.atlassian.confluence.plugins.recently-viewed-plugin	3560	2021-03-10 06:59:58.026	app-resources
com.atlassian.confluence.plugins.confluence-sortable-tables	3561	2021-03-10 06:59:58.026	date-format-header-metadata
com.atlassian.confluence.plugins.confluence-mobile	3562	2021-03-10 06:59:58.026	pluginResourceLocator
com.atlassian.confluence.extra.officeconnector	3563	2021-03-10 06:59:58.026	viewdoc-legacy
com.atlassian.confluence.plugins.confluence-create-content-plugin	3564	2021-03-10 06:59:58.026	all-resources
com.atlassian.confluence.plugins.confluence-inline-comments	3565	2021-03-10 06:59:58.026	like-email-adg-content-item
com.atlassian.confluence.image.effects.ImageEffectsPlugin	3566	2021-03-10 06:59:58.026	propertiespanel
com.atlassian.confluence.plugins.confluence-content-property-storage	3567	2021-03-10 06:59:58.026	storageContentPropertyManager
confluence.sections.news	3568	2021-03-10 06:59:58.026	view-information
com.atlassian.auiplugin	3569	2021-03-10 06:59:58.026	aui-experimental-progress-buttons
com.atlassian.confluence.plugins.confluence-page-banner	3570	2021-03-10 06:59:58.026	content-metadata-page-inherited-restrictions
confluence.sections.space.advanced	3571	2021-03-10 06:59:58.026	unfavourite
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	3572	2021-03-10 06:59:58.026	hipchat-emoticons
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3573	2021-03-10 06:59:58.026	safeModeService
com.atlassian.streams.confluence	3574	2021-03-10 06:59:58.026	wiki
confluence.web.panels	3575	2021-03-10 06:59:58.026	confluence-header-workday-menu
confluence.sections.admin	3576	2021-03-10 06:59:58.026	theme
com.atlassian.crowd.embedded.admin	3577	2021-03-10 06:59:58.026	UpdateDirectoryConfigurationWithLocalUserStatus
com.atlassian.applinks.applinks-plugin	3578	2021-03-10 06:59:58.026	feature-v3
confluence.web.resources	3579	2021-03-10 06:59:58.026	login-styles
com.atlassian.confluence.editor	3580	2021-03-10 06:59:58.026	storageToEditorFragmentTransformer
com.atlassian.auiplugin	3581	2021-03-10 06:59:58.026	inline-dialog
com.atlassian.auiplugin	3582	2021-03-10 06:59:58.026	internal-skatejs-0.13.17-lib-constants
confluence.user.menu.concise	3583	2021-03-10 06:59:58.026	logout
com.atlassian.confluence.contributors	3584	2021-03-10 06:59:58.026	notificationEventListener
com.atlassian.streams.streams-thirdparty-plugin	3585	2021-03-10 06:59:58.026	transactionTemplate
com.atlassian.applinks.applinks-plugin	3586	2021-03-10 06:59:58.026	feature-applink-migration
com.atlassian.confluence.plugins.confluence-file-notifications	3587	2021-03-10 06:59:58.026	confluenceFileManagaer
com.atlassian.confluence.plugins.confluence-onboarding	3588	2021-03-10 06:59:58.026	global-storage-service
com.atlassian.querylang.confluence-cql-plugin	3589	2021-03-10 06:59:58.026	current-space-query-function
com.atlassian.confluence.plugins.confluence-onboarding	3590	2021-03-10 06:59:58.026	confluence-flow-resources
com.atlassian.confluence.plugins.confluence-email-resources	3591	2021-03-10 06:59:58.026	clusterManager
com.atlassian.confluence.plugins.confluence-onboarding	3592	2021-03-10 06:59:58.026	onboarding-email-soy-templates
com.atlassian.streams.streams-thirdparty-plugin	3593	2021-03-10 06:59:58.026	feedSanitizer
com.atlassian.plugins.base-hipchat-integration-plugin	3594	2021-03-10 06:59:58.026	atlassianHipChatIntegrationAnalyticsWhitelist
confluence.renderer.components	3595	2021-03-10 06:59:58.026	inserted
com.atlassian.confluence.contributors	3596	2021-03-10 06:59:58.026	rest
com.atlassian.applinks.applinks-oauth-plugin	3597	2021-03-10 06:59:58.026	documentationLinker
com.atlassian.confluence.plugins.confluence-mobile	3598	2021-03-10 06:59:58.026	rest-filter
com.atlassian.gadgets.opensocial	3599	2021-03-10 06:59:58.026	metadata-rpc-servlet
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3600	2021-03-10 06:59:58.026	linkBuilder
com.atlassian.applinks.applinks-cors-plugin	3601	2021-03-10 06:59:58.026	corsFilter
com.atlassian.mywork.mywork-confluence-host-plugin	3602	2021-03-10 06:59:58.026	mwauthredirect
com.atlassian.integration.jira.jira-integration-plugin	3603	2021-03-10 06:59:58.026	server-side-templates
confluence.extra.confluencerpc	3604	2021-03-10 06:59:58.026	wikiSoapServiceTarget
com.atlassian.support.healthcheck.support-healthcheck-plugin	3605	2021-03-10 06:59:58.026	timeZoneManager
com.atlassian.confluence.plugins.confluence-content-property-storage	3606	2021-03-10 06:59:58.026	spacePropertyFinderFactory
com.atlassian.streams	3607	2021-03-10 06:59:58.026	date-ru-RU
com.atlassian.confluence.plugins.confluence-file-notifications	3608	2021-03-10 06:59:58.026	file-notifications-reply-action
com.atlassian.mywork.mywork-confluence-host-plugin	3609	2021-03-10 06:59:58.026	ao
com.atlassian.applinks.applinks-plugin	3610	2021-03-10 06:59:58.026	feature-help-link
com.atlassian.analytics.analytics-client	3611	2021-03-10 06:59:58.026	logEventFormatter
com.atlassian.plugin.notifications.notifications-module	3612	2021-03-10 06:59:58.026	cacheManager
com.atlassian.confluence.restplugin	3613	2021-03-10 06:59:58.026	rest
com.atlassian.support.healthcheck.support-healthcheck-plugin	3614	2021-03-10 06:59:58.026	applicationProperties
com.atlassian.applinks.applinks-plugin	3615	2021-03-10 06:59:58.026	applicationLinkService
com.atlassian.confluence.editor	3616	2021-03-10 06:59:58.026	transactionTemplate
com.atlassian.streams	3617	2021-03-10 06:59:58.026	date-ms-BN
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3618	2021-03-10 06:59:58.026	instanceTopologyFactory
com.atlassian.confluence.plugins.confluence-previews	3619	2021-03-10 06:59:58.026	confluence-previews-css
com.atlassian.confluence.plugins.confluence-cache-management-plugin	3620	2021-03-10 06:59:58.026	actions
com.atlassian.confluence.plugins.confluence-jira-metadata	3621	2021-03-10 06:59:58.026	servlet-jira-redirect
com.atlassian.confluence.plugins.confluence-create-content-plugin	3622	2021-03-10 06:59:58.026	rest
com.atlassian.confluence.plugins.confluence-highlight-actions	3623	2021-03-10 06:59:58.026	highlighting-service-filter
com.atlassian.confluence.plugins.quickedit	3624	2021-03-10 06:59:58.026	quick-comment-page
com.atlassian.confluence.plugins.confluence-rest-resources	3625	2021-03-10 06:59:58.026	content-labels-metadata-provider
confluence.sections.space.admin	3626	2021-03-10 06:59:58.026	removespace
com.atlassian.confluence.plugins.confluence-create-content-plugin	3627	2021-03-10 06:59:58.026	blueprintsTemplateHelper
com.atlassian.plugins.atlassian-nav-links-plugin	3628	2021-03-10 06:59:58.026	atlassian-nav-links-whitelist
com.atlassian.confluence.plugins.confluence-email-resources	3629	2021-03-10 06:59:58.026	notification-templates-forgot-password-1.0.0
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3630	2021-03-10 06:59:58.026	localeResolver
com.atlassian.confluence.plugins.confluence-software-project	3631	2021-03-10 06:59:58.026	confluence-software-project-analytics-whitelist
com.atlassian.analytics.analytics-client	3632	2021-03-10 06:59:58.026	eventPublisher
com.atlassian.confluence.plugins.confluence-lookandfeel	3633	2021-03-10 06:59:58.026	siteLogoManager
com.atlassian.applinks.applinks-oauth-plugin	3634	2021-03-10 06:59:58.026	serviceProviderTokenStore
com.atlassian.streams	3635	2021-03-10 06:59:58.026	date-en-NZ
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	3636	2021-03-10 06:59:58.026	atlassianClusterMonitoring-filter
confluence.extra.jira	3637	2021-03-10 06:59:58.026	jiraissues-migration
com.atlassian.confluence.plugins.confluence-create-content-plugin	3638	2021-03-10 06:59:58.026	editor-resources
com.atlassian.plugins.atlassian-project-creation-plugin	3639	2021-03-10 06:59:58.026	project-linking-capability
confluence.extra.masterdetail	3640	2021-03-10 06:59:58.026	rest
com.atlassian.confluence.plugins.confluence-email-resources	3641	2021-03-10 06:59:58.026	chrome-template-main-table-1.0.0
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	3642	2021-03-10 06:59:58.026	applicationProperties
confluence.sections.space.tools	3643	2021-03-10 06:59:58.026	overview
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3644	2021-03-10 06:59:58.026	page-or-blog-notification-recipients-provider
com.atlassian.analytics.analytics-client	3645	2021-03-10 06:59:58.026	s3EventUploader
com.atlassian.plugin.notifications.notifications-module	3646	2021-03-10 06:59:58.026	notification-panel
crowd.system.passwordencoders	3647	2021-03-10 06:59:58.026	des
com.atlassian.streams	3648	2021-03-10 06:59:58.026	date-en-PH
com.atlassian.confluence.plugins.confluence-link-browser	3649	2021-03-10 06:59:58.026	link-browser-editor-resources
confluence.sections.admin	3650	2021-03-10 06:59:58.026	groups
com.atlassian.confluence.plugins.confluence-previews	3651	2021-03-10 06:59:58.026	annotation-plugin
com.atlassian.confluence.plugins.whatsnew	3652	2021-03-10 06:59:58.026	buildInformationService
confluence.extra.information	3653	2021-03-10 06:59:58.026	soy-templates
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3654	2021-03-10 06:59:58.026	upmScheduler
com.atlassian.plugins.atlassian-nav-links-plugin	3655	2021-03-10 06:59:58.026	capabilities-consumer-admin-rest-filter
confluence.macros.dashboard	3656	2021-03-10 06:59:58.026	spaces-list
com.atlassian.confluence.plugins.quickreload	3657	2021-03-10 06:59:58.026	confluence.quick-reload-automated
confluence.web.panels	3658	2021-03-10 06:59:58.026	confluence-header-admin-menu
confluence.search.mappers.lucene	3659	2021-03-10 06:59:58.026	termSearchFilter
com.atlassian.plugins.atlassian-nps-plugin	3660	2021-03-10 06:59:58.026	npsAnalyticsWhitelist
com.atlassian.confluence.plugins.confluence-file-notifications	3661	2021-03-10 06:59:58.026	file-notifications-reopen-action
confluence.web.resources	3662	2021-03-10 06:59:58.026	page-templates
com.atlassian.streams	3663	2021-03-10 06:59:58.026	date-sma-NO
confluence.extra.attachments	3664	2021-03-10 06:59:58.026	space-attachments-javascript
com.atlassian.confluence.plugins.gadgets	3665	2021-03-10 06:59:58.026	core-services-filter
confluence.sections.space.admin	3666	2021-03-10 06:59:58.026	looknfeel
com.atlassian.auiplugin	3667	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-select
com.atlassian.confluence.plugins.gadgets.spi	3668	2021-03-10 06:59:58.026	subscribedGadgetFeedIdGenerator
com.atlassian.crowd.embedded.admin	3669	2021-03-10 06:59:58.026	enable-html-escaping
com.atlassian.confluence.plugins.confluence-page-banner	3670	2021-03-10 06:59:58.026	page-banner-preview-resources
com.atlassian.auiplugin	3671	2021-03-10 06:59:58.026	aui-experimental-header-rotp
com.atlassian.auiplugin	3672	2021-03-10 06:59:58.026	aui-experimental-soy-templates
com.atlassian.applinks.applinks-cors-plugin	3673	2021-03-10 06:59:58.026	applicationProperties
com.atlassian.streams	3674	2021-03-10 06:59:58.026	date-hi-IN
com.atlassian.confluence.plugins.confluence-email-resources	3675	2021-03-10 06:59:58.026	templateManager
com.atlassian.support.healthcheck.support-healthcheck-plugin	3676	2021-03-10 06:59:58.026	ao
com.atlassian.confluence.plugins.gadgets	3677	2021-03-10 06:59:58.026	css
com.atlassian.confluence.plugins.confluence-like	3678	2021-03-10 06:59:58.026	content-like-resources
com.atlassian.querylang.confluence-cql-plugin	3679	2021-03-10 06:59:58.026	multi-sort-mapper
com.atlassian.confluence.plugins.confluence-remote-page-view-plugin	3680	2021-03-10 06:59:58.026	remote-page-view-servlet
com.atlassian.oauth.serviceprovider	3681	2021-03-10 06:59:58.026	consumerStore
com.atlassian.plugins.atlassian-nav-links-plugin	3682	2021-03-10 06:59:58.026	ao-module
com.atlassian.auiplugin	3683	2021-03-10 06:59:58.026	aui-experimental-page-header
com.atlassian.confluence.plugins.confluence-create-content-plugin	3684	2021-03-10 06:59:58.026	hostContextAccessor
com.atlassian.confluence.plugins.confluence-space-blueprints	3685	2021-03-10 06:59:58.026	confluence-space-blueprints-resources
com.atlassian.plugins.atlassian-nav-links-plugin	3686	2021-03-10 06:59:58.026	menu-rest-filter
com.atlassian.confluence.plugins.confluence-email-resources	3687	2021-03-10 06:59:58.026	macroResolver
com.atlassian.confluence.plugins.confluence-space-directory	3688	2021-03-10 06:59:58.026	timeZoneManager
com.atlassian.soy.soy-template-plugin	3689	2021-03-10 06:59:58.026	soyTransformer
confluence.extra.information	3690	2021-03-10 06:59:58.026	info
com.atlassian.activeobjects.activeobjects-plugin	3691	2021-03-10 06:59:58.026	admin-ui-filter
confluence.extra.jira	3692	2021-03-10 06:59:58.026	jira-chart-proxy-servlet
confluence.sections.space.advanced	3693	2021-03-10 06:59:58.026	exportxml
com.atlassian.applinks.applinks-plugin	3694	2021-03-10 06:59:58.026	concurrentExecutor
confluence.web.resources	3695	2021-03-10 06:59:58.026	querystring
com.atlassian.confluence.plugins.share-page	3696	2021-03-10 06:59:58.026	share-keyboard-shortcut
confluence.listeners.core	3697	2021-03-10 06:59:58.026	import-export-audit-logging-listener
com.atlassian.support.stp	3698	2021-03-10 06:59:58.026	userManager
com.atlassian.confluence.plugins.confluence-create-content-plugin	3699	2021-03-10 06:59:58.026	contentGenerator
com.atlassian.streams.streams-thirdparty-plugin	3700	2021-03-10 06:59:58.026	userManager
confluence.renderer.components	3701	2021-03-10 06:59:58.026	monospace
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3702	2021-03-10 06:59:58.026	follower-added-notification-template-body
confluence.search.mappers.lucene	3703	2021-03-10 06:59:58.026	macroStorageVersion
com.atlassian.webhooks.atlassian-webhooks-plugin	3704	2021-03-10 06:59:58.026	WebHooksAdminActions
confluence.extra.masterdetail	3705	2021-03-10 06:59:58.026	details-xhtml
com.atlassian.confluence.plugins.gadgets	3706	2021-03-10 06:59:58.026	gadgetSpecUrlChecker
com.atlassian.confluence.plugins.confluence-request-access-plugin	3707	2021-03-10 06:59:58.026	pageRestrictionService
com.atlassian.querylang.confluence-cql-plugin	3708	2021-03-10 06:59:58.026	current-user-query-function
confluence.admin.user	3709	2021-03-10 06:59:58.026	userpicker
com.atlassian.confluence.contributors	3710	2021-03-10 06:59:58.026	contributors-summary
com.atlassian.confluence.plugins.gadgets	3711	2021-03-10 06:59:58.026	confluence-page-gadget
com.atlassian.support.stp	3712	2021-03-10 06:59:58.026	stp-license-banner-data-bitbucket
confluence.comment.action	3713	2021-03-10 06:59:58.026	comment-date
com.atlassian.confluence.plugins.confluence-email-resources	3714	2021-03-10 06:59:58.026	notification-templates-content-added-1.0.0
com.atlassian.applinks.applinks-trustedapps-plugin	3715	2021-03-10 06:59:58.026	trustedUISysadminAuthenticatorFilter
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3716	2021-03-10 06:59:58.026	content-edited-mail-batch-notification-processor
com.atlassian.confluence.plugins.confluence-inline-comments	3717	2021-03-10 06:59:58.026	notification-template-reply
confluence.web.resources	3718	2021-03-10 06:59:58.026	dialog-breadcrumbs
com.atlassian.applinks.applinks-oauth-plugin	3719	2021-03-10 06:59:58.026	consumerTokenService
crowd.system.passwordencoders	3720	2021-03-10 06:59:58.026	ssha
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	3721	2021-03-10 06:59:58.026	emoticons-resource-filter
com.atlassian.confluence.plugins.confluence-email-resources	3722	2021-03-10 06:59:58.026	content-templates-1.0.0
confluence.search.mappers.lucene	3723	2021-03-10 06:59:58.026	unlicensedUserSearchFilter
confluence.sections.page	3724	2021-03-10 06:59:58.026	edit
com.atlassian.applinks.applinks-basicauth-plugin	3725	2021-03-10 06:59:58.026	userManager
com.atlassian.plugins.atlassian-help-tips	3726	2021-03-10 06:59:58.026	ao-module
com.atlassian.applinks.applinks-trustedapps-plugin	3727	2021-03-10 06:59:58.026	trusted-auth-inbound-configuration
com.atlassian.plugins.base-hipchat-integration-plugin	3728	2021-03-10 06:59:58.026	conf-menu-item
com.atlassian.confluence.plugins.confluence-roadmap-plugin	3729	2021-03-10 06:59:58.026	roadmap-utilities-resources
com.atlassian.confluence.plugins.confluence-space-blueprints	3730	2021-03-10 06:59:58.026	confluence-documentation-space-blueprint-resources
com.atlassian.applinks.applinks-plugin	3731	2021-03-10 06:59:58.026	applinks-configure-entity-links-2
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3732	2021-03-10 06:59:58.026	upmSchedulerUpgradeTask
confluence.web.resources	3733	2021-03-10 06:59:58.026	userlink
com.atlassian.auiplugin	3734	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-underscore
com.atlassian.confluence.plugins.confluence-page-restrictions-dialog	3735	2021-03-10 06:59:58.026	confluencePageRestrictionsDialogWhitelist
com.atlassian.confluence.plugins.confluence-space-ia	3736	2021-03-10 06:59:58.026	link-dialog
com.atlassian.streams.confluence	3737	2021-03-10 06:59:58.026	date-ms-MY
com.atlassian.applinks.applinks-basicauth-plugin	3738	2021-03-10 06:59:58.026	confluence-inbound-basic
com.atlassian.plugin.notifications.notifications-module	3739	2021-03-10 06:59:58.026	eventPublisher
confluence.search.mappers.lucene	3740	2021-03-10 06:59:58.026	lastModifierSearchFilter
com.atlassian.plugin.notifications.notifications-module	3741	2021-03-10 06:59:58.026	notification-scheme
com.atlassian.confluence.plugins.gadgets	3742	2021-03-10 06:59:58.026	pageManager
com.atlassian.applinks.applinks-basicauth-plugin	3743	2021-03-10 06:59:58.026	internalHostApplication
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3744	2021-03-10 06:59:58.026	blogpost-trashed-notification-template
com.atlassian.confluence.image.effects.ImageEffectsPlugin	3745	2021-03-10 06:59:58.026	imgfilterservler
confluence.sections.news	3746	2021-03-10 06:59:58.026	edit
com.atlassian.confluence.plugins.confluence-edge-index	3747	2021-03-10 06:59:58.026	flushEdgeIndexQueue
com.atlassian.confluence.plugins.confluence-content-property-storage	3748	2021-03-10 06:59:58.026	string-field-type-query-mapper
com.atlassian.streams	3749	2021-03-10 06:59:58.026	date-en-US
com.atlassian.confluence.plugins.confluence-knowledge-base	3750	2021-03-10 06:59:58.026	kbSpacePermissionUpdateService
com.atlassian.applinks.applinks-plugin	3751	2021-03-10 06:59:58.026	listEntityLinks
com.atlassian.plugins.atlassian-nps-plugin	3752	2021-03-10 06:59:58.026	nps-btf-admin-resources
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3753	2021-03-10 06:59:58.026	hostLicenseInformation
com.atlassian.confluence.plugins.confluence-email-resources	3754	2021-03-10 06:59:58.026	notification-templates
com.atlassian.streams	3755	2021-03-10 06:59:58.026	date-en-UK
confluence.macros.dashboard	3756	2021-03-10 06:59:58.026	dashboard-macros-resources
com.atlassian.streams.core	3757	2021-03-10 06:59:58.026	localeResolver
com.atlassian.mywork.mywork-common-plugin	3758	2021-03-10 06:59:58.026	hostService
com.atlassian.plugins.atlassian-nps-plugin	3759	2021-03-10 06:59:58.026	nps-acknowledgement-flag-resources-async
com.atlassian.confluence.plugins.drag-and-drop	3760	2021-03-10 06:59:58.026	actions
com.atlassian.confluence.plugins.confluence-knowledge-base	3761	2021-03-10 06:59:58.026	spacePermissionManager
com.atlassian.streams	3762	2021-03-10 06:59:58.026	date-sw-KE
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3763	2021-03-10 06:59:58.026	upm-manage-templates
com.atlassian.confluence.plugins.confluence-edge-index	3764	2021-03-10 06:59:58.026	page.create
com.atlassian.confluence.plugins.confluence-templates	3765	2021-03-10 06:59:58.026	template-editor-variables-resources
confluence.macros.basic	3766	2021-03-10 06:59:58.026	nolink
com.atlassian.confluence.plugins.confluence-file-notifications	3767	2021-03-10 06:59:58.026	file-content-update-email-notification-template
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3768	2021-03-10 06:59:58.026	url-builder-function
com.atlassian.streams	3769	2021-03-10 06:59:58.026	date-bs-Latn-BA
com.atlassian.streams	3770	2021-03-10 06:59:58.026	date-en-TT
com.atlassian.streams	3771	2021-03-10 06:59:58.026	date-zu-ZA
com.atlassian.confluence.plugins.confluence-onboarding	3772	2021-03-10 06:59:58.026	soyTemplateRenderer
com.atlassian.confluence.plugins.confluence-dashboard	3773	2021-03-10 06:59:58.026	confluence-dashboard-resources
com.atlassian.mywork.mywork-confluence-host-plugin	3774	2021-03-10 06:59:58.026	myWorkActionService
com.atlassian.confluence.extra.officeconnector	3775	2021-03-10 06:59:58.026	searchpreview
com.atlassian.confluence.plugins.confluence-create-content-plugin	3776	2021-03-10 06:59:58.026	webItemService
com.atlassian.plugins.atlassian-nav-links-plugin	3777	2021-03-10 06:59:58.026	navigation-client
com.atlassian.confluence.plugins.confluence-dashboard	3778	2021-03-10 06:59:58.026	opt-out
com.atlassian.streams.confluence	3779	2021-03-10 06:59:58.026	userManager
com.atlassian.auiplugin	3780	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-toggle-class-name
com.atlassian.soy.soy-template-plugin	3781	2021-03-10 06:59:58.026	soyWebPanelRenderer
com.atlassian.plugins.base-hipchat-integration-plugin	3782	2021-03-10 06:59:58.026	hipchat-user-link-support
confluence.extra.confluencerpc	3783	2021-03-10 06:59:58.026	xhtmlSoapService
com.atlassian.confluence.plugins.system-templates	3784	2021-03-10 06:59:58.026	welcome-message
com.atlassian.confluence.plugins.confluence-paste	3785	2021-03-10 06:59:58.026	autoconvert-core
com.atlassian.analytics.analytics-client	3786	2021-03-10 06:59:58.026	confluenceEventListener
confluence.macros.profile	3787	2021-03-10 06:59:58.026	network
com.atlassian.auiplugin	3788	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-internal-state
com.atlassian.applinks.applinks-plugin	3789	2021-03-10 06:59:58.026	applinks-whitelist
com.atlassian.streams.actions	3790	2021-03-10 06:59:58.026	actionHandlerWebResources
confluence.extractors.core	3791	2021-03-10 06:59:58.026	versionCommentExtractor
com.atlassian.confluence.plugins.confluence-dashboard	3792	2021-03-10 06:59:58.026	navigation-webitems-resources
confluence.sections.space.advanced	3793	2021-03-10 06:59:58.026	rss
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3794	2021-03-10 06:59:58.026	page-moved-notification-template-body
com.atlassian.confluence.plugins.status-macro	3795	2021-03-10 06:59:58.026	status
com.atlassian.streams	3796	2021-03-10 06:59:58.026	date-sa-IN
com.atlassian.confluence.plugins.confluence-content-property-storage	3797	2021-03-10 06:59:58.026	content-property-field
confluence.extra.impresence2	3798	2021-03-10 06:59:58.026	icq-xhtml
com.atlassian.plugins.atlassian-help-tips	3799	2021-03-10 06:59:58.026	ao
com.atlassian.plugins.atlassian-nav-links-plugin	3800	2021-03-10 06:59:58.026	webSudoManager
com.atlassian.streams	3801	2021-03-10 06:59:58.026	date-en-GB
com.atlassian.confluence.plugins.confluence-request-access-plugin	3802	2021-03-10 06:59:58.026	request-access-email-resources
confluence.web.resources	3803	2021-03-10 06:59:58.026	syntaxhighlighter-java
com.atlassian.confluence.plugins.confluence-email-resources	3804	2021-03-10 06:59:58.026	notification-templates-page-remove-1.0.0
com.atlassian.confluence.plugins.confluence-create-content-plugin	3805	2021-03-10 06:59:58.026	promotedBlueprintService
com.atlassian.confluence.plugins.confluence-templates	3806	2021-03-10 06:59:58.026	breadcrumbGenerator
com.atlassian.streams	3807	2021-03-10 06:59:58.026	date-be-BY
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	3808	2021-03-10 06:59:58.026	runtime-information
confluence.sections.space.tools	3809	2021-03-10 06:59:58.026	integrations
com.atlassian.confluence.plugins.confluence-create-content-plugin	3810	2021-03-10 06:59:58.026	show-space-welcome-dialog-flag
com.atlassian.analytics.analytics-client	3811	2021-03-10 06:59:58.026	cacheManager
com.atlassian.confluence.plugins.confluence-user-profile	3812	2021-03-10 06:59:58.026	user.profile.section
com.atlassian.confluence.plugins.share-page	3813	2021-03-10 06:59:58.026	rest-filter
confluence.listeners.core	3814	2021-03-10 06:59:58.026	blogpostNotificationsListener
com.atlassian.confluence.plugins.confluence-content-property-storage	3815	2021-03-10 06:59:58.026	date-field-type-query-mapper
com.atlassian.streams.confluence	3816	2021-03-10 06:59:58.026	date-be-BY
com.atlassian.plugins.atlassian-nav-links-plugin	3817	2021-03-10 06:59:58.026	user-agent-property
confluence.listeners.core	3818	2021-03-10 06:59:58.026	userStatusLabelListener
confluence.renderer.components	3819	2021-03-10 06:59:58.026	newline
com.atlassian.confluence.plugins.quickreload	3820	2021-03-10 06:59:58.026	userAccessor
confluence.extra.impresence2	3821	2021-03-10 06:59:58.026	reporter-skype
confluence.search.mappers.lucene	3822	2021-03-10 06:59:58.026	containingContentType
com.atlassian.applinks.applinks-plugin	3823	2021-03-10 06:59:58.026	servletMessageFactory
com.atlassian.confluence.plugins.confluence-rest-resources	3824	2021-03-10 06:59:58.026	content-api
com.atlassian.confluence.plugins.confluence-edge-index	3825	2021-03-10 06:59:58.026	eventPublisher
com.atlassian.applinks.applinks-plugin	3826	2021-03-10 06:59:58.026	confluence-inbound-trusted
confluence.extractors.core	3827	2021-03-10 06:59:58.026	addressableChangeExtractor
com.atlassian.analytics.analytics-client	3828	2021-03-10 06:59:58.026	whitelistFilter
com.atlassian.confluence.plugins.view-source	3829	2021-03-10 06:59:58.026	confluence-view-source-api-rest-filter
com.atlassian.streams.confluence	3830	2021-03-10 06:59:58.026	date-en-US
com.atlassian.confluence.plugins.search.confluence-search	3831	2021-03-10 06:59:58.026	lastModificationFormatter
com.atlassian.confluence.plugins.confluence-jira-metadata	3832	2021-03-10 06:59:58.026	jira-metadata-aggregate-cache-invalidation
com.atlassian.streams.actions	3833	2021-03-10 06:59:58.026	i18nResolver
com.atlassian.confluence.keyboardshortcuts	3834	2021-03-10 06:59:58.026	view.attachments
com.atlassian.mywork.mywork-confluence-host-plugin	3835	2021-03-10 06:59:58.026	ao-module
com.atlassian.applinks.applinks-plugin	3836	2021-03-10 06:59:58.026	feature-bitbucket-rebrand
com.atlassian.confluence.extra.widgetconnector	3837	2021-03-10 06:59:58.026	dailymotion
com.atlassian.confluence.plugins.confluence-file-notifications	3838	2021-03-10 06:59:58.026	transactionTemplate
confluence.extra.livesearch	3839	2021-03-10 06:59:58.026	livesearch
com.atlassian.confluence.plugins.confluence-space-ia	3840	2021-03-10 06:59:58.026	space-ia-analytics-whitelist
com.atlassian.confluence.plugins.confluence-ui-components	3841	2021-03-10 06:59:58.026	space-picker
confluence.macros.advanced	3842	2021-03-10 06:59:58.026	listlabels
com.atlassian.streams	3843	2021-03-10 06:59:58.026	date-en-IE
com.atlassian.plugins.atlassian-nav-links-plugin	3844	2021-03-10 06:59:58.026	navigation-link-repository-service
com.atlassian.plugins.confluence-tdm-merger	3845	2021-03-10 06:59:58.026	tdmmerger
confluence.listeners.core	3846	2021-03-10 06:59:58.026	clusteredEventListener
com.atlassian.plugin.notifications.notifications-module	3847	2021-03-10 06:59:58.026	ao-module
com.atlassian.support.healthcheck.support-healthcheck-plugin	3848	2021-03-10 06:59:58.026	healthCheckSchedulerComponent
com.atlassian.applinks.applinks-oauth-plugin	3849	2021-03-10 06:59:58.026	add-consumer-reciprocal
com.atlassian.streams	3850	2021-03-10 06:59:58.026	date-af-ZA
com.atlassian.confluence.plugins.confluence-email-resources	3851	2021-03-10 06:59:58.026	notification-templates-page-add-1.0.0
com.atlassian.confluence.plugins.confluence-create-content-plugin	3852	2021-03-10 06:59:58.026	list-templates-resources
com.atlassian.streams.confluence	3853	2021-03-10 06:59:58.026	date-en-TT
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3854	2021-03-10 06:59:58.026	renderContextFactory
com.atlassian.plugins.atlassian-whitelist-core-plugin	3855	2021-03-10 06:59:58.026	confluenceMacroWhitelistMigration
com.atlassian.streams.confluence	3856	2021-03-10 06:59:58.026	date-en-UK
com.atlassian.support.healthcheck.support-healthcheck-plugin	3857	2021-03-10 06:59:58.026	ao-module
confluence.admin.user	3858	2021-03-10 06:59:58.026	browseusers
com.atlassian.auiplugin	3859	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-contains
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3860	2021-03-10 06:59:58.026	confluenceNotificationJwtIssuerRegistry
com.atlassian.confluence.plugins.quickedit	3861	2021-03-10 06:59:58.026	quick-comment-panel
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3862	2021-03-10 06:59:58.026	confluence-comment-created-batching
confluence.sections.space.advanced	3863	2021-03-10 06:59:58.026	stopwatching
com.atlassian.confluence.plugins.confluence-content-report-plugin	3864	2021-03-10 06:59:58.026	content-report-table
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3865	2021-03-10 06:59:58.026	update-check-servlet
com.atlassian.confluence.keyboardshortcuts	3866	2021-03-10 06:59:58.026	go.to.preview.page
com.atlassian.streams.confluence	3867	2021-03-10 06:59:58.026	pageManager
com.atlassian.streams	3868	2021-03-10 06:59:58.026	date-az-Latn-AZ
com.atlassian.confluence.image.effects.ImageEffectsPlugin	3869	2021-03-10 06:59:58.026	image-properties-tab-effects
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3870	2021-03-10 06:59:58.026	notificationTypes
com.atlassian.webhooks.atlassian-webhooks-plugin	3871	2021-03-10 06:59:58.026	cross-prod-webhooks-ao-module
confluence.listeners.core	3872	2021-03-10 06:59:58.026	plugincontentremovallistener
com.atlassian.confluence.plugins.confluence-files	3873	2021-03-10 06:59:58.026	conversionManager
com.atlassian.confluence.plugins.confluence-jira-metadata	3874	2021-03-10 06:59:58.026	confluence-jira-metadata-rest-filter
com.atlassian.confluence.ext.newcode-macro-plugin	3875	2021-03-10 06:59:58.026	newcode-admin
confluence.web.resources	3876	2021-03-10 06:59:58.026	space-permissions-table
confluence.macros.advanced	3877	2021-03-10 06:59:58.026	export-styles
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3878	2021-03-10 06:59:58.026	packageAccessor
com.atlassian.confluence.plugins.confluence-fixed-headers	3879	2021-03-10 06:59:58.026	confluence-fixed-headers-editor-content-resources
com.atlassian.plugins.atlassian-nav-links-plugin	3880	2021-03-10 06:59:58.026	is-user-admin-soy-function
com.atlassian.applinks.applinks-plugin	3881	2021-03-10 06:59:58.026	applicationLinkClient
com.atlassian.applinks.applinks-trustedapps-plugin	3882	2021-03-10 06:59:58.026	localeResolver
com.atlassian.plugins.rest.atlassian-rest-module	3883	2021-03-10 06:59:58.026	servletModuleManager
com.atlassian.confluence.plugins.confluence-inline-tasks	3884	2021-03-10 06:59:58.026	mobile
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3885	2021-03-10 06:59:58.026	rest
com.atlassian.streams.confluence	3886	2021-03-10 06:59:58.026	spaceWatchActionHandler
com.atlassian.confluence.plugins.confluence-email-resources	3887	2021-03-10 06:59:58.026	stop-watching-page-email-batch-footer
confluence.user.menu	3888	2021-03-10 06:59:58.026	anonymous
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3889	2021-03-10 06:59:58.026	notificationQueueManager
com.atlassian.applinks.applinks-plugin	3890	2021-03-10 06:59:58.026	page-common
com.atlassian.applinks.applinks-cors-plugin	3891	2021-03-10 06:59:58.026	corsAuthenticationProviderPluginModule
confluence.extra.jira	3892	2021-03-10 06:59:58.026	web-resources
com.atlassian.mywork.mywork-confluence-host-plugin	3893	2021-03-10 06:59:58.026	pluginSettingsFactory
com.atlassian.applinks.applinks-plugin	3894	2021-03-10 06:59:58.026	authenticationConfigurationManager
com.atlassian.plugins.atlassian-nps-plugin	3895	2021-03-10 06:59:58.026	nps-acknowledgement-resources
com.atlassian.mywork.mywork-common-plugin	3896	2021-03-10 06:59:58.026	eventPublisher
com.atlassian.streams.confluence	3897	2021-03-10 06:59:58.026	permissionManager
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3898	2021-03-10 06:59:58.026	i18nResolver
com.atlassian.confluence.plugins.search.confluence-search	3899	2021-03-10 06:59:58.026	cql-site-search-field
com.atlassian.streams.confluence	3900	2021-03-10 06:59:58.026	date-en-ZW
com.atlassian.querylang.confluence-cql-plugin	3901	2021-03-10 06:59:58.026	text-field
com.atlassian.plugin.jslibs	3902	2021-03-10 06:59:58.026	marionette-2.1.0-factory
com.atlassian.auiplugin	3903	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-tipsy
com.atlassian.confluence.plugins.confluence-edge-index	3904	2021-03-10 06:59:58.026	edge-type
com.atlassian.streams	3905	2021-03-10 06:59:58.026	date-nb-NO
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3906	2021-03-10 06:59:58.026	disallowStartupInCloud
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3907	2021-03-10 06:59:58.026	mailContentProcessor
confluence.web.resources	3908	2021-03-10 06:59:58.026	page-diffs
com.atlassian.confluence.plugins.confluence-business-blueprints	3909	2021-03-10 06:59:58.026	file-list-blueprint
com.atlassian.confluence.plugins.confluence-inline-tasks	3910	2021-03-10 06:59:58.026	inline-tasks-styles
confluence.web.resources	3911	2021-03-10 06:59:58.026	auditlog
com.atlassian.confluence.plugins.confluence-onboarding	3912	2021-03-10 06:59:58.026	notification-template-no-spaces-body
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	3913	2021-03-10 06:59:58.026	userManager
com.atlassian.streams	3914	2021-03-10 06:59:58.026	date-en-JM
com.atlassian.confluence.plugins.confluence-easyuser-admin	3915	2021-03-10 06:59:58.026	confluence-easyuser-admin-actions
com.atlassian.analytics.analytics-client	3916	2021-03-10 06:59:58.026	whitelistSearcher
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3917	2021-03-10 06:59:58.026	contentService
com.atlassian.streams.confluence	3918	2021-03-10 06:59:58.026	date-en-ZA
confluence.sections.profile	3919	2021-03-10 06:59:58.026	user-administion
com.atlassian.plugins.atlassian-nav-links-plugin	3920	2021-03-10 06:59:58.026	i18n-resolver
confluence.comment.action	3921	2021-03-10 06:59:58.026	edit-comment
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3922	2021-03-10 06:59:58.026	page-trashed-notification-transformer
confluence.web.resources	3978	2021-03-10 06:59:58.026	jquery-json
com.atlassian.confluence.plugins.confluence-paste	3923	2021-03-10 06:59:58.026	autoconvert-skitch
confluence.macros.dashboard	3924	2021-03-10 06:59:58.026	tabProvider
confluence.lifecycle.core	3925	2021-03-10 06:59:58.026	mananagedjobs
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3926	2021-03-10 06:59:58.026	pluginLicenseNotificationChecker
org.randombits.confluence.toc	3927	2021-03-10 06:59:58.026	toc-zone-old
com.atlassian.confluence.plugins.confluence-create-content-plugin	3928	2021-03-10 06:59:58.026	list-blueprints-templates-panel
confluence.web.resources	3929	2021-03-10 06:59:58.026	attachments
com.atlassian.confluence.plugins.confluence-email-resources	3930	2021-03-10 06:59:58.026	get-attachment-filetype-i18n-function
com.atlassian.confluence.plugins.confluence-license-rest	3931	2021-03-10 06:59:58.026	license-resource-filter
com.atlassian.confluence.plugins.confluence-daily-summary-email	3932	2021-03-10 06:59:58.026	personalInformationManager
com.atlassian.streams.core	3933	2021-03-10 06:59:58.026	templateRendererFactory
com.atlassian.confluence.plugins.soy	3934	2021-03-10 06:59:58.026	soy-friendly-format-date-time-function
confluence.extra.jira	3935	2021-03-10 06:59:58.026	jira-xhtml
com.atlassian.confluence.plugins.confluence-view-file-macro	3936	2021-03-10 06:59:58.026	view-file-macro-notification-resources
com.atlassian.plugins.atlassian-project-creation-plugin	3937	2021-03-10 06:59:58.026	linking-rest-url
confluence.listeners.core	3938	2021-03-10 06:59:58.026	removePersonalSpaceListener
com.atlassian.confluence.plugins.confluence-daily-summary-email	3939	2021-03-10 06:59:58.026	popular-content-action-resources
com.atlassian.mywork.mywork-confluence-host-plugin	3940	2021-03-10 06:59:58.026	myTaskDeprecatedListener
com.atlassian.analytics.analytics-client	3941	2021-03-10 06:59:58.026	blacklistFilter
com.atlassian.confluence.plugins.confluence-mobile	3942	2021-03-10 06:59:58.026	rest-caching-filter
com.atlassian.plugins.atlassian-nav-links-plugin	3943	2021-03-10 06:59:58.026	rotp-projectshortcuts
confluence.extra.masterdetail	3944	2021-03-10 06:59:58.026	detailsSummaryBuilder
com.atlassian.streams.confluence	3945	2021-03-10 06:59:58.026	date-ko-KR
com.atlassian.confluence.plugins.confluence-onboarding	3946	2021-03-10 06:59:58.026	userChecker
com.atlassian.confluence.extra.officeconnector	3947	2021-03-10 06:59:58.026	pptslideservlet
com.atlassian.analytics.analytics-client	3948	2021-03-10 06:59:58.026	pluginSettingsFactory
com.atlassian.confluence.plugins.quickreload	3949	2021-03-10 06:59:58.026	quickreload
com.atlassian.confluence.plugins.confluence-paste	3950	2021-03-10 06:59:58.026	paste-resources
com.atlassian.plugins.atlassian-nav-links-plugin	3951	2021-03-10 06:59:58.026	menu-service
com.atlassian.templaterenderer.api	3952	2021-03-10 06:59:58.026	i18nResolverContextItem
com.atlassian.confluence.plugins.confluence-inline-tasks	3953	2021-03-10 06:59:58.026	inline-tasks-editor
com.atlassian.confluence.plugins.gadgets	3954	2021-03-10 06:59:58.026	gadgetUsageTracker
com.atlassian.auiplugin	3955	2021-03-10 06:59:58.026	aui-progress-tracker
com.atlassian.plugins.atlassian-nav-links-plugin	3956	2021-03-10 06:59:58.026	login-uri-provider
com.atlassian.auiplugin	3957	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-polyfills-placeholder
confluence.extractors.core	3958	2021-03-10 06:59:58.026	textAttachmentContentExtractor
com.atlassian.auiplugin	3959	2021-03-10 06:59:58.026	jquery-effects
confluence.web.resources	3960	2021-03-10 06:59:58.026	left-nav-panel-resources
com.atlassian.streams.confluence	3961	2021-03-10 06:59:58.026	searchManager
com.atlassian.templaterenderer.api	3962	2021-03-10 06:59:58.026	webResourceManagerContextItem
com.atlassian.confluence.plugins.confluence-daily-summary-email	3963	2021-03-10 06:59:58.026	networkService
com.atlassian.auiplugin	3964	2021-03-10 06:59:58.026	aui-css-deprecation-warnings
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3965	2021-03-10 06:59:58.026	templatePathResolver
com.atlassian.analytics.analytics-client	3966	2021-03-10 06:59:58.026	timeKeeper
com.atlassian.auiplugin	3967	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-dialog
com.atlassian.confluence.extra.widgetconnector	3968	2021-03-10 06:59:58.026	wufoo
com.atlassian.confluence.plugins.confluence-edge-index	3969	2021-03-10 06:59:58.026	dateEntityFactory
com.atlassian.confluence.plugins.confluence-like	3970	2021-03-10 06:59:58.026	like-content-email-batch-item
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3971	2021-03-10 06:59:58.026	upm-osgi-resources
com.atlassian.streams.confluence	3972	2021-03-10 06:59:58.026	date-en-PH
com.atlassian.confluence.plugins.confluence-daily-summary-email	3973	2021-03-10 06:59:58.026	permissionManager
com.atlassian.confluence.plugins.confluence-page-layout	3974	2021-03-10 06:59:58.026	pagelayout
com.atlassian.auiplugin	3975	2021-03-10 06:59:58.026	internal-skatejs-0.13.17-lib-fix-ie-innerhtml
confluence.search.mappers.lucene	3976	2021-03-10 06:59:58.026	prefix
com.atlassian.auiplugin	3977	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-template
confluence.search.mappers.lucene	3979	2021-03-10 06:59:58.026	matchAllDocsFilter
confluence.web.resources	3980	2021-03-10 06:59:58.026	event
com.atlassian.mywork.mywork-confluence-host-plugin	3981	2021-03-10 06:59:58.026	service-selector
com.atlassian.analytics.analytics-client	3982	2021-03-10 06:59:58.026	eventPreprocessor
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	3983	2021-03-10 06:59:58.026	emoticons-resource
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3984	2021-03-10 06:59:58.026	formatSettingsManager
com.atlassian.mywork.mywork-confluence-host-plugin	3985	2021-03-10 06:59:58.026	transactionTemplate
com.atlassian.plugins.rest.atlassian-rest-module	3986	2021-03-10 06:59:58.026	xsrfTokenAccessor
com.atlassian.healthcheck.atlassian-healthcheck	3987	2021-03-10 06:59:58.026	hostStateMonitor
com.atlassian.streams.confluence	3988	2021-03-10 06:59:58.026	date-se-FI
com.atlassian.auiplugin	3989	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-binders-placeholder
com.atlassian.plugins.base-hipchat-integration-plugin	3990	2021-03-10 06:59:58.026	soy-resources
confluence.listeners.core	3991	2021-03-10 06:59:58.026	confluence-easyuser-userSignUpEmail
org.randombits.confluence.toc	3992	2021-03-10 06:59:58.026	toc-zone
confluence.extra.webdav	3993	2021-03-10 06:59:58.026	reverseProxyFilterSupport
com.atlassian.plugins.base-hipchat-integration-plugin-api	3994	2021-03-10 06:59:58.026	hipchatAO
com.atlassian.confluence.plugins.gadgets	3995	2021-03-10 06:59:58.026	gadget-macro-migrator
com.atlassian.confluence.plugins.attachmentExtractors	3996	2021-03-10 06:59:58.026	pdfContentExtractor
com.atlassian.plugins.atlassian-whitelist-ui-plugin	3997	2021-03-10 06:59:58.026	inboundWhitelist
com.atlassian.streams.confluence	3998	2021-03-10 06:59:58.026	date-en-NZ
com.atlassian.confluence.plugins.confluence-space-ia	3999	2021-03-10 06:59:58.026	ao-module
com.atlassian.confluence.plugins.confluence-inline-comments	4000	2021-03-10 06:59:58.026	notification-transformer-resolve
com.atlassian.applinks.applinks-oauth-plugin	4001	2021-03-10 06:59:58.026	TwoLeggedOAuthWithImpersonationAuthenticatorProviderPluginModule
com.atlassian.confluence.extra.widgetconnector	4002	2021-03-10 06:59:58.026	placeholderService
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4003	2021-03-10 06:59:58.026	licenseHandler
com.atlassian.streams.confluence	4004	2021-03-10 06:59:58.026	captchaManager
com.atlassian.confluence.plugins.confluence-lookandfeel	4005	2021-03-10 06:59:58.026	sitelogo-admin-task
com.atlassian.confluence.plugins.confluence-mentions-plugin	4006	2021-03-10 06:59:58.026	mentionsRest
com.atlassian.auiplugin	4007	2021-03-10 06:59:58.026	internal-skatejs-0.13.17-lib-skate
com.atlassian.mywork.mywork-common-plugin	4008	2021-03-10 06:59:58.026	mywork-registration-provider
com.atlassian.confluence.extra.flyingpdf	4009	2021-03-10 06:59:58.026	globalconfigpdflayout
com.atlassian.querylang.confluence-cql-plugin	4010	2021-03-10 06:59:58.026	cqlsearchaction
com.atlassian.auiplugin	4011	2021-03-10 06:59:58.026	aui-css
com.atlassian.confluence.keyboardshortcuts	4012	2021-03-10 06:59:58.026	create.blog
com.atlassian.confluence.plugins.confluence-email-resources	4013	2021-03-10 06:59:58.026	stop-watching-space-email-adg-footer-item
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	4014	2021-03-10 06:59:58.026	emoticonStorageToViewTransformer
confluence.web.resources	4015	2021-03-10 06:59:58.026	icons
com.atlassian.confluence.plugins.expand-macro	4016	2021-03-10 06:59:58.026	i18nResolver
com.atlassian.confluence.ext.newcode-macro-plugin	4017	2021-03-10 06:59:58.026	syntaxhighlighter-export
com.atlassian.confluence.plugins.confluence-easyuser-admin	4018	2021-03-10 06:59:58.026	admin-signup-users-panel
com.atlassian.plugin.notifications.notifications-module	4019	2021-03-10 06:59:58.026	notification-macro
com.atlassian.streams	4020	2021-03-10 06:59:58.026	xsrfTokenValidator
confluence.sections.create	4021	2021-03-10 06:59:58.026	add-page-without-parent-template
com.atlassian.auiplugin	4022	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-internal-attributes
com.atlassian.plugins.base-hipchat-integration-plugin	4023	2021-03-10 06:59:58.026	rest-integration-filter
com.atlassian.confluence.plugins.gadgets	4024	2021-03-10 06:59:58.026	applicationProperties
com.atlassian.confluence.plugins.confluence-rest-resources	4025	2021-03-10 06:59:58.026	rest-api-experimental-filter
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4026	2021-03-10 06:59:58.026	mpacAnalyticsHttpClientFactory
com.atlassian.streams.confluence	4027	2021-03-10 06:59:58.026	confluence-rest-filter
com.atlassian.confluence.ext.newcode-macro-plugin	4028	2021-03-10 06:59:58.026	syntaxhighlighter-mobile
com.atlassian.mywork.mywork-confluence-provider-plugin	4029	2021-03-10 06:59:58.026	localeManager
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	4030	2021-03-10 06:59:58.026	notificationStoreService
confluence.extra.impresence2	4031	2021-03-10 06:59:58.026	icq
confluence.sections.profile	4032	2021-03-10 06:59:58.026	unfollow-user
confluence.extra.dynamictasklist2	4033	2021-03-10 06:59:58.026	tasklist
com.atlassian.auiplugin	4034	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-unique-id
com.atlassian.streams.confluence	4035	2021-03-10 06:59:58.026	date-ms-BN
com.atlassian.confluence.plugins.gadgets	4036	2021-03-10 06:59:58.026	externalGadgetStore
com.atlassian.plugins.atlassian-help-tips	4037	2021-03-10 06:59:58.026	helptips
confluence.web.components	4038	2021-03-10 06:59:58.026	show.business.group.in.user.hover
com.atlassian.applinks.applinks-oauth-plugin	4039	2021-03-10 06:59:58.026	serviceProviderStoreService
com.atlassian.applinks.applinks-plugin	4040	2021-03-10 06:59:58.026	applinks-configure-entity-links
com.atlassian.streams.confluence	4041	2021-03-10 06:59:58.026	hibernateSessionFactory
com.atlassian.auiplugin	4042	2021-03-10 06:59:58.026	ajs-gadgets
com.atlassian.auiplugin	4043	2021-03-10 06:59:58.026	internal-src-js-aui-css-deprecations
com.atlassian.mywork.mywork-confluence-host-plugin	4044	2021-03-10 06:59:58.026	open.notifications
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	4045	2021-03-10 06:59:58.026	localeResolver
confluence.extractors.core	4046	2021-03-10 06:59:58.026	spaceTypeChangeExtractor
com.atlassian.confluence.plugins.confluence-software-blueprints	4047	2021-03-10 06:59:58.026	requirements-item
confluence.extractors.core	4048	2021-03-10 06:59:58.026	untokenizedTitleChangeExtractor
com.atlassian.confluence.editor	4049	2021-03-10 06:59:58.026	emotions-resources
confluence.extractors.core	4050	2021-03-10 06:59:58.026	versionCommentChangeExtractor
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4051	2021-03-10 06:59:58.026	licenseTokenValidator
com.atlassian.confluence.plugins.confluence-file-notifications	4052	2021-03-10 06:59:58.026	file-notifications-file-details-file-link
com.atlassian.mywork.mywork-confluence-host-plugin	4053	2021-03-10 06:59:58.026	systemStatusService
com.atlassian.support.stp	4054	2021-03-10 06:59:58.026	pluginSupportInfoXmlKeyResolver
com.atlassian.streams.streams-thirdparty-plugin	4055	2021-03-10 06:59:58.026	tenantAwareDataSourceProvider
com.atlassian.confluence.plugins.confluence-paste	4056	2021-03-10 06:59:58.026	autoconvert-google-redirect
com.atlassian.confluence.plugins.confluence-mobile	4057	2021-03-10 06:59:58.026	user-profile-resources
com.atlassian.plugins.atlassian-whitelist-ui-plugin	4058	2021-03-10 06:59:58.026	whitelist-rest-filter
com.atlassian.streams.confluence	4059	2021-03-10 06:59:58.026	date-af-ZA
com.atlassian.confluence.plugins.confluence-files	4060	2021-03-10 06:59:58.026	confluenceFileRest
com.atlassian.confluence.extra.flyingpdf	4061	2021-03-10 06:59:58.026	intermediateHtmlBuilder
confluence.macros.advanced	4062	2021-03-10 06:59:58.026	blogpost-resources
com.atlassian.confluence.extra.widgetconnector	4063	2021-03-10 06:59:58.026	skitch
com.atlassian.activeobjects.activeobjects-plugin	4064	2021-03-10 06:59:58.026	enable-html-escaping
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	4065	2021-03-10 06:59:58.026	rest-filter
com.atlassian.plugins.atlassian-whitelist-core-plugin	4066	2021-03-10 06:59:58.026	whitelistManager
com.atlassian.applinks.applinks-cors-plugin	4067	2021-03-10 06:59:58.026	applinkPluginUtil
crowd.system.passwordencoders	4068	2021-03-10 06:59:58.026	md5
com.atlassian.mywork.mywork-confluence-host-plugin	4069	2021-03-10 06:59:58.026	user-mapping
com.atlassian.gadgets.opensocial	4070	2021-03-10 06:59:58.026	js-servlet
confluence.web.resources	4071	2021-03-10 06:59:58.026	shared-templates
confluence.sections.space.admin	4072	2021-03-10 06:59:58.026	spacepermissions
com.atlassian.confluence.plugins.editor-loader	4073	2021-03-10 06:59:58.026	breadcrumb-generator
confluence.extractors.core	4074	2021-03-10 06:59:58.026	commentExtractor
com.atlassian.support.healthcheck.support-healthcheck-plugin	4075	2021-03-10 06:59:58.026	shcWhitelistNotifications
com.atlassian.gadgets.publisher	4076	2021-03-10 06:59:58.026	dashboard-item-common
com.atlassian.confluence.keyboardshortcuts	4077	2021-03-10 06:59:58.026	edit.page
com.atlassian.confluence.plugins.confluence-lookandfeel	4078	2021-03-10 06:59:58.026	i18nResolver
com.atlassian.confluence.plugins.confluence-mobile	4079	2021-03-10 06:59:58.026	pageBuilderService
com.atlassian.auiplugin	4080	2021-03-10 06:59:58.026	aui-experimental-page
com.atlassian.streams.confluence	4081	2021-03-10 06:59:58.026	date-hi-IN
com.atlassian.auiplugin	4082	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-dropdown2
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4083	2021-03-10 06:59:58.026	hipChatServerDiscovery
confluence.macros.advanced	4084	2021-03-10 06:59:58.026	include-servlet
com.atlassian.streams	4085	2021-03-10 06:59:58.026	feedParser
confluence.listeners.core	4086	2021-03-10 06:59:58.026	resetXStreamPluginListener
com.atlassian.confluence.plugins.confluence-content-property-storage	4087	2021-03-10 06:59:58.026	jsonExpressionEvaluator
com.atlassian.auiplugin	4088	2021-03-10 06:59:58.026	aui-experimental-soy-templates-legacy1
com.atlassian.applinks.applinks-plugin	4089	2021-03-10 06:59:58.026	fisheyeCrucibleRepository
com.atlassian.streams.confluence	4090	2021-03-10 06:59:58.026	date-se-NO
com.atlassian.confluence.plugins.confluence-email-resources	4091	2021-03-10 06:59:58.026	content-templates-content-deleted-lozenge-pattern-1.0.0
com.atlassian.confluence.editor	4092	2021-03-10 06:59:58.026	editor-featured-macro-info
com.atlassian.applinks.applinks-plugin	4093	2021-03-10 06:59:58.026	genericEntity
com.atlassian.confluence.plugins.confluence-space-ia	4094	2021-03-10 06:59:58.026	spacebar-profile
com.atlassian.confluence.plugins.confluence-files	4095	2021-03-10 06:59:58.026	permissionManager
confluence.sections.admin.header	4096	2021-03-10 06:59:58.026	conf-admin
com.atlassian.streams	4097	2021-03-10 06:59:58.026	date-tn-ZA
com.atlassian.plugin.notifications.notifications-module	4098	2021-03-10 06:59:58.026	notificationsMacroVariableHelp
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4099	2021-03-10 06:59:58.026	defaultNotificationPreferenceManager
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4100	2021-03-10 06:59:58.026	mailContentProcessor
confluence.web.panels	4101	2021-03-10 06:59:58.026	confluence-header-user-menu
com.atlassian.confluence.plugins.confluence-sal-plugin	4102	2021-03-10 06:59:58.026	searchQueryParser
com.atlassian.analytics.analytics-client	4103	2021-03-10 06:59:58.026	analyticsClientWhitelist
com.atlassian.confluence.extra.officeconnector	4104	2021-03-10 06:59:58.026	viewdoc
com.atlassian.streams.confluence	4105	2021-03-10 06:59:58.026	entryFactory
com.atlassian.support.stp	4106	2021-03-10 06:59:58.026	stp-confluence-link
com.atlassian.confluence.plugins.confluence-content-property-storage	4107	2021-03-10 06:59:58.026	contentPropertyService
com.atlassian.confluence.plugins.share-page	4108	2021-03-10 06:59:58.026	share-page-notification
com.atlassian.confluence.plugins.confluence-templates	4109	2021-03-10 06:59:58.026	space-templates-2
com.atlassian.confluence.plugins.confluence-view-file-macro	4110	2021-03-10 06:59:58.026	capabilityService
com.atlassian.confluence.plugins.confluence-create-content-plugin	4111	2021-03-10 06:59:58.026	requestResolver
com.atlassian.plugins.atlassian-whitelist-ui-plugin	4112	2021-03-10 06:59:58.026	webResourceManager
com.atlassian.confluence.extra.widgetconnector	4113	2021-03-10 06:59:58.026	httpRetrievalEmbedService
confluence.web.resources	4114	2021-03-10 06:59:58.026	defaults
com.atlassian.confluence.plugins.confluence-mobile	4115	2021-03-10 06:59:58.026	lib
com.atlassian.streams.confluence	4116	2021-03-10 06:59:58.026	date-en-GB
com.atlassian.confluence.plugins.view-storage-format	4117	2021-03-10 06:59:58.026	view-storage-resources
confluence.listeners.core	4118	2021-03-10 06:59:58.026	macroMetaDataListener
com.atlassian.confluence.extra.flyingpdf	4119	2021-03-10 06:59:58.026	betterpdf
com.atlassian.confluence.plugins.confluence-inline-tasks	4120	2021-03-10 06:59:58.026	hipchat-resources-2.0.0
com.atlassian.applinks.applinks-plugin	4121	2021-03-10 06:59:58.026	localeResolver
confluence.macros.advanced	4122	2021-03-10 06:59:58.026	favpages
com.atlassian.applinks.applinks-plugin	4123	2021-03-10 06:59:58.026	applinks-css
confluence.macros.dashboard	4124	2021-03-10 06:59:58.026	globalEntitiesContextProvider
com.atlassian.confluence.plugins.confluence-inline-comments	4125	2021-03-10 06:59:58.026	confluence-inline-new-mail-batching
com.atlassian.confluence.plugins.gadgets.spi	4126	2021-03-10 06:59:58.026	externalGadgetStore
com.atlassian.auiplugin	4127	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-vendor-jquery-plugins-jquery-select2
com.atlassian.analytics.analytics-client	4128	2021-03-10 06:59:58.026	applicationProperties
com.atlassian.mywork.mywork-common-plugin	4129	2021-03-10 06:59:58.026	my-work-client-rest
com.atlassian.applinks.applinks-trustedapps-plugin	4130	2021-03-10 06:59:58.026	webSudoManager
com.atlassian.confluence.editor	4131	2021-03-10 06:59:58.026	page-editor-css
com.atlassian.confluence.editor	4132	2021-03-10 06:59:58.026	editor-settings-panel
com.atlassian.confluence.plugins.confluence-quicknav	4133	2021-03-10 06:59:58.026	admin-section-provider
confluence.renderer.components	4134	2021-03-10 06:59:58.026	embedded
com.atlassian.confluence.plugins.confluence-page-banner	4135	2021-03-10 06:59:58.026	page-banner-common-resources
confluence.web.resources	4136	2021-03-10 06:59:58.026	date-time-formatting
com.atlassian.auiplugin	4137	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-escape
com.atlassian.confluence.plugins.confluence-email-resources	4138	2021-03-10 06:59:58.026	content-templates-inline-user-pattern-1.0.0
com.atlassian.confluence.plugins.confluence-mentions-plugin	4139	2021-03-10 06:59:58.026	mentionsExtractor
com.atlassian.confluence.extra.widgetconnector	4140	2021-03-10 06:59:58.026	flickr
com.atlassian.confluence.plugins.confluence-email-resources	4141	2021-03-10 06:59:58.026	content-templates-users-involved-pattern-1.0.0
com.atlassian.confluence.plugins.confluence-edge-index	4142	2021-03-10 06:59:58.026	blogpost.create
com.atlassian.applinks.applinks-plugin	4143	2021-03-10 06:59:58.026	confluence
confluence.filters.core	4144	2021-03-10 06:59:58.026	gzipFilter
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4145	2021-03-10 06:59:58.026	pluginUpdateCheckJob
confluence.web.resources	4146	2021-03-10 06:59:58.026	space-admin
com.atlassian.confluence.plugins.confluence-inline-comments	4147	2021-03-10 06:59:58.026	strip-inline-comment-marker
com.atlassian.analytics.analytics-client	4148	2021-03-10 06:59:58.026	confluenceLicenseCreationDateProvider
confluence.web.resources	4149	2021-03-10 06:59:58.026	breadcrumbs-jquery
com.atlassian.applinks.applinks-basicauth-plugin	4150	2021-03-10 06:59:58.026	basicContextFilter
com.atlassian.confluence.plugins.confluence-highlight-actions	4151	2021-03-10 06:59:58.026	tableSelectionModifier
com.atlassian.confluence.extra.officeconnector	4152	2021-03-10 06:59:58.026	editattachmentinworditem
com.atlassian.confluence.plugins.confluence-easyuser-admin	4153	2021-03-10 06:59:58.026	taskManager
com.atlassian.confluence.plugins.confluence-mentions-plugin	4154	2021-03-10 06:59:58.026	mentionsRest-filter
confluence.extra.confluencerpc	4155	2021-03-10 06:59:58.026	pagesSoapService
com.atlassian.querylang.confluence-cql-plugin	4156	2021-03-10 06:59:58.026	favourite-spaces-query-function
com.atlassian.confluence.extra.flyingpdf	4157	2021-03-10 06:59:58.026	globalconfigpdfstyle
com.atlassian.applinks.applinks-oauth-plugin	4158	2021-03-10 06:59:58.026	add-atlassian-service-provider
com.atlassian.mywork.mywork-common-plugin	4159	2021-03-10 06:59:58.026	config-service
com.atlassian.confluence.extra.flyingpdf	4160	2021-03-10 06:59:58.026	pdfexportpageop
confluence.extra.impresence2	4161	2021-03-10 06:59:58.026	reporter-aim
com.atlassian.confluence.plugins.confluence-mobile	4162	2021-03-10 06:59:58.026	mobile-resource-servlet
com.atlassian.confluence.plugins.confluence-file-notifications	4163	2021-03-10 06:59:58.026	file-content-remove-email-notification-template-body
com.atlassian.confluence.plugins.confluence-templates	4164	2021-03-10 06:59:58.026	list-global-templates-panel
com.atlassian.analytics.analytics-client	4165	2021-03-10 06:59:58.026	confluence-event-checklist-menu-item
com.atlassian.confluence.keyboardshortcuts	4166	2021-03-10 06:59:58.026	tinymce.h1
com.atlassian.confluence.plugins.confluence-software-project	4167	2021-03-10 06:59:58.026	sp-space-homepage-template
com.atlassian.healthcheck.atlassian-healthcheck	4168	2021-03-10 06:59:58.026	health-check
com.atlassian.confluence.keyboardshortcuts	4169	2021-03-10 06:59:58.026	tinymce.h2
com.atlassian.confluence.keyboardshortcuts	4170	2021-03-10 06:59:58.026	tinymce.h3
confluence.listeners.core	4171	2021-03-10 06:59:58.026	global-settings-audit-logging-listener
com.atlassian.confluence.keyboardshortcuts	4172	2021-03-10 06:59:58.026	tinymce.h4
com.atlassian.confluence.plugins.confluence-create-content-plugin	4173	2021-03-10 06:59:58.026	templateFinderFactory
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4174	2021-03-10 06:59:58.026	sysPersistedContextItem
com.atlassian.auiplugin	4175	2021-03-10 06:59:58.026	aui-experimental-navigation
com.atlassian.auiplugin	4176	2021-03-10 06:59:58.026	table
com.atlassian.applinks.applinks-cors-plugin	4177	2021-03-10 06:59:58.026	authenticationConfigurationManager
com.atlassian.confluence.plugins.confluence-like	4178	2021-03-10 06:59:58.026	i18nResolver
com.atlassian.confluence.plugins.confluence-email-resources	4179	2021-03-10 06:59:58.026	avatar-image-function
com.atlassian.confluence.keyboardshortcuts	4180	2021-03-10 06:59:58.026	tinymce.h5
com.atlassian.applinks.applinks-plugin	4181	2021-03-10 06:59:58.026	applinks-util-js
com.atlassian.confluence.keyboardshortcuts	4182	2021-03-10 06:59:58.026	tinymce.h6
com.atlassian.confluence.plugins.expand-macro	4183	2021-03-10 06:59:58.026	expand-macro-desktop-resources
com.atlassian.auiplugin	4184	2021-03-10 06:59:58.026	aui-buttons
com.atlassian.streams	4185	2021-03-10 06:59:58.026	date-ko-KR
com.atlassian.confluence.plugins.confluence-space-ia	4186	2021-03-10 06:59:58.026	spacesidebar
com.atlassian.querylang.confluence-cql-plugin	4187	2021-03-10 06:59:58.026	start-of-month-one-arg-function
com.atlassian.confluence.plugins.confluence-software-blueprints	4188	2021-03-10 06:59:58.026	jirareports-blueprint
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4189	2021-03-10 06:59:58.026	upm-audit-log-resources
com.atlassian.plugin.notifications.notifications-module	4190	2021-03-10 06:59:58.026	notificationServersServlet
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4191	2021-03-10 06:59:58.026	confluence-user-authentication-servlet
confluence.search.mappers.lucene	4192	2021-03-10 06:59:58.026	fullname
com.atlassian.querylang.confluence-cql-plugin	4193	2021-03-10 06:59:58.026	label-field
com.atlassian.streams.confluence	4194	2021-03-10 06:59:58.026	date-zh-HK
com.atlassian.confluence.plugins.confluence-like	4195	2021-03-10 06:59:58.026	like-created-notification-template
com.atlassian.confluence.keyboardshortcuts	4196	2021-03-10 06:59:58.026	tinymce.wikimarkup
org.randombits.confluence.toc	4197	2021-03-10 06:59:58.026	toc-old
com.atlassian.analytics.analytics-client	4198	2021-03-10 06:59:58.026	loginUriProvider
com.atlassian.oauth.consumer	4199	2021-03-10 06:59:58.026	consumerService
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4200	2021-03-10 06:59:58.026	pluginLicenseValidator
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4201	2021-03-10 06:59:58.026	upm-update-check-page
com.atlassian.confluence.plugins.expand-macro	4202	2021-03-10 06:59:58.026	expand-macro-mobile-resources
com.atlassian.labs.atlassian-bot-killer	4203	2021-03-10 06:59:58.026	BotKillerFilter
com.atlassian.applinks.applinks-cors-plugin	4204	2021-03-10 06:59:58.026	corsContextFilter
com.atlassian.confluence.rpc.confluence-axis-soap-plugin	4205	2021-03-10 06:59:58.026	transactionTemplate
com.atlassian.streams	4206	2021-03-10 06:59:58.026	date-ms-MY
com.atlassian.confluence.plugins.confluence-software-project	4207	2021-03-10 06:59:58.026	sp-space-product-requirements-template
com.atlassian.confluence.plugins.confluence-roadmap-plugin	4208	2021-03-10 06:59:58.026	rest
com.atlassian.plugins.rest.atlassian-rest-module	4209	2021-03-10 06:59:58.026	darkFeatureManager
com.atlassian.confluence.plugins.confluence-highlight-actions	4210	2021-03-10 06:59:58.026	highlighting-service
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4211	2021-03-10 06:59:58.026	darkFeatureManager
com.atlassian.confluence.plugins.confluence-files	4212	2021-03-10 06:59:58.026	filesUnresolvedCommentCount
com.atlassian.streams	4213	2021-03-10 06:59:58.026	date-en-ZW
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4214	2021-03-10 06:59:58.026	licenseEntityFactory
com.atlassian.confluence.extra.officeconnector	4215	2021-03-10 06:59:58.026	velocity.helper
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	4216	2021-03-10 06:59:58.026	tomcatHealthCheck
confluence.search.mappers.lucene	4217	2021-03-10 06:59:58.026	authorSearchFilter
confluence.sections.admin	4218	2021-03-10 06:59:58.026	customhtml
com.atlassian.applinks.applinks-plugin	4219	2021-03-10 06:59:58.026	jira-project
com.atlassian.querylang.confluence-cql-plugin	4220	2021-03-10 06:59:58.026	start-of-day-one-arg-function
com.atlassian.applinks.applinks-plugin	4221	2021-03-10 06:59:58.026	applinks-lib
confluence.sections.space.tools	4222	2021-03-10 06:59:58.026	choosetheme
confluence.extra.impresence2	4223	2021-03-10 06:59:58.026	gtalk-xhtml
com.atlassian.confluence.plugins.expand-macro	4224	2021-03-10 06:59:58.026	analytics-whitelist
com.atlassian.confluence.plugins.recently-viewed-plugin	4225	2021-03-10 06:59:58.026	recently-viewed-content-one-arg-function
com.atlassian.confluence.plugins.confluence-create-content-plugin	4226	2021-03-10 06:59:58.026	templateUpdater
com.atlassian.auiplugin	4227	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-internal-select-suggestions-model
com.atlassian.streams	4228	2021-03-10 06:59:58.026	date-en-ZA
com.atlassian.mywork.mywork-confluence-provider-plugin	4229	2021-03-10 06:59:58.026	xhtmlContent
confluence.sections.space.tools	4230	2021-03-10 06:59:58.026	custompagecontent
com.atlassian.crowd.embedded.admin	4231	2021-03-10 06:59:58.026	rest-filter
com.atlassian.confluence.plugins.confluence-ui-components	4232	2021-03-10 06:59:58.026	include-exclude-picker
com.atlassian.streams.confluence	4233	2021-03-10 06:59:58.026	date-en-JM
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4234	2021-03-10 06:59:58.026	plugin-finder-servlet
com.atlassian.confluence.plugins.system-templates	4235	2021-03-10 06:59:58.026	system-template-resources
com.atlassian.confluence.extra.officeconnector	4236	2021-03-10 06:59:58.026	tokenProvider-filter
com.atlassian.streams.confluence	4237	2021-03-10 06:59:58.026	date-se-SE
com.atlassian.confluence.keyboardshortcuts	4238	2021-03-10 06:59:58.026	favourite.page
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	4239	2021-03-10 06:59:58.026	follower-added-notification-transformer
com.atlassian.streams.streams-thirdparty-plugin	4240	2021-03-10 06:59:58.026	representationFactory
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	4241	2021-03-10 06:59:58.026	objectMapperFactory
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4242	2021-03-10 06:59:58.026	amd
com.atlassian.applinks.applinks-oauth-plugin	4243	2021-03-10 06:59:58.026	oAuthContextFilter
com.atlassian.confluence.plugins.drag-and-drop	4244	2021-03-10 06:59:58.026	drag-and-drop-for-editor
com.atlassian.confluence.plugins.confluence-sal-plugin	4245	2021-03-10 06:59:58.026	requestFactory
com.atlassian.confluence.plugins.confluence-file-notifications	4246	2021-03-10 06:59:58.026	file-content-update-notification
com.atlassian.plugins.atlassian-whitelist-ui-plugin	4247	2021-03-10 06:59:58.026	whitelistService
com.atlassian.streams.confluence	4248	2021-03-10 06:59:58.026	date-nb-NO
com.atlassian.confluence.plugins.gadgets	4249	2021-03-10 06:59:58.026	gadgetRequestContextFactory
com.atlassian.confluence.plugins.confluence-email-resources	4250	2021-03-10 06:59:58.026	content-templates-content-added-pattern-1.0.0
com.atlassian.auiplugin	4251	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-results-list
com.atlassian.plugins.atlassian-project-creation-plugin	4252	2021-03-10 06:59:58.026	project-linking-rest
confluence.macros.advanced	4253	2021-03-10 06:59:58.026	blogpost
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	4254	2021-03-10 06:59:58.026	innoDBLogFileSizeCheck
com.atlassian.streams.confluence	4255	2021-03-10 06:59:58.026	date-zh-CN
com.atlassian.confluence.plugins.confluence-inline-tasks	4256	2021-03-10 06:59:58.026	view-page-tasks-email-action-item
com.atlassian.confluence.plugins.confluence-create-content-plugin	4257	2021-03-10 06:59:58.026	contentBlueprintManager
confluence.extra.attachments	4258	2021-03-10 06:59:58.026	pluginAccessor
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4259	2021-03-10 06:59:58.026	applicationStatusService
com.atlassian.confluence.plugins.gadgets	4260	2021-03-10 06:59:58.026	macro-browser-for-gadgetsplugin
confluence.sections.admin	4261	2021-03-10 06:59:58.026	configurecaptcha
confluence.extra.information	4262	2021-03-10 06:59:58.026	information-plugin-adg-styles
com.atlassian.streams.confluence	4263	2021-03-10 06:59:58.026	date-en-IE
confluence.web.resources	4264	2021-03-10 06:59:58.026	aui-soy-resources
com.atlassian.streams.actions	4265	2021-03-10 06:59:58.026	inlineActionsJs
com.atlassian.confluence.plugins.confluence-mentions-plugin	4266	2021-03-10 06:59:58.026	transactionTemplate
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4267	2021-03-10 06:59:58.026	confluence-upm-purchased-addons-menu
com.atlassian.confluence.plugins.confluence-sal-plugin	4268	2021-03-10 06:59:58.026	vcacheRequestContextOperations
com.atlassian.confluence.image.effects.ImageEffectsPlugin	4269	2021-03-10 06:59:58.026	imageEffectsAnalyticsWhitelist
com.atlassian.confluence.plugins.confluence-feature-discovery-plugin	4270	2021-03-10 06:59:58.026	ao
com.atlassian.plugins.atlassian-whitelist-core-plugin	4271	2021-03-10 06:59:58.026	inboundWhitelist
com.atlassian.streams.confluence	4272	2021-03-10 06:59:58.026	spaceManager
com.atlassian.confluence.extra.widgetconnector	4273	2021-03-10 06:59:58.026	twitter-autoconvert-webresources
com.atlassian.streams.confluence	4274	2021-03-10 06:59:58.026	date-mk-MK
com.atlassian.confluence.plugins.gadgets.spi	4275	2021-03-10 06:59:58.026	pluginSettingsFactory
com.atlassian.confluence.plugins.gadgets	4276	2021-03-10 06:59:58.026	gadgetCounter
com.atlassian.applinks.applinks-oauth-plugin	4277	2021-03-10 06:59:58.026	oAuthOrphanedTrustDetector
com.atlassian.auiplugin	4278	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-internal-widget
confluence.editor.actions	4279	2021-03-10 06:59:58.026	edit-image
com.atlassian.auiplugin	4280	2021-03-10 06:59:58.026	aui-experimental-progress-indicator
com.atlassian.streams	4281	2021-03-10 06:59:58.026	date-sl-SI
confluence.sections.page.temp	4282	2021-03-10 06:59:58.026	view
com.atlassian.auiplugin	4283	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-inline-dialog2
com.atlassian.streams	4284	2021-03-10 06:59:58.026	formatPreferenceProvider
com.atlassian.auiplugin	4285	2021-03-10 06:59:58.026	internal-keyboardshortcuts
com.atlassian.confluence.plugins.confluence-inline-tasks	4286	2021-03-10 06:59:58.026	inline-tasks-pdf-export
com.atlassian.confluence.plugins.confluence-like	4287	2021-03-10 06:59:58.026	confluence-like-created-batching
com.atlassian.confluence.plugins.confluence-email-resources	4288	2021-03-10 06:59:58.026	template-utils-avatar-name-table-column-1.0.0
confluence.sections.space.admin	4289	2021-03-10 06:59:58.026	permissionedpages
com.atlassian.plugin.notifications.notifications-module	4290	2021-03-10 06:59:58.026	editNotificationServerServlet
confluence.macros.advanced	4291	2021-03-10 06:59:58.026	recently-updated
confluence.listeners.core	4292	2021-03-10 06:59:58.026	page-templates-logging-listener
com.atlassian.confluence.editor	4293	2021-03-10 06:59:58.026	placeholder-caching-filter
com.atlassian.mywork.mywork-common-plugin	4294	2021-03-10 06:59:58.026	authenticationConfigurationManager
confluence.sections.space.tools	4295	2021-03-10 06:59:58.026	spacedetails-personal
com.atlassian.confluence.plugins.confluence-create-content-plugin	4296	2021-03-10 06:59:58.026	promotedTemplateService
com.atlassian.confluence.plugins.confluence-email-resources	4297	2021-03-10 06:59:58.026	stop-watching-all-blogs-email-footer-item
com.atlassian.confluence.plugins.confluence-email-resources	4298	2021-03-10 06:59:58.026	content-templates-page-title-pattern-1.0.0
com.atlassian.confluence.plugins.confluence-space-ia	4299	2021-03-10 06:59:58.026	space-tools-browse-pages
com.atlassian.confluence.ext.newcode-macro-plugin	4300	2021-03-10 06:59:58.026	code
confluence.listeners.core	4301	2021-03-10 06:59:58.026	updateLabelsInChangeIndexListener
com.atlassian.streams.confluence	4302	2021-03-10 06:59:58.026	date-lt-LT
com.atlassian.analytics.analytics-client	4303	2021-03-10 06:59:58.026	timeoutChecker
com.atlassian.favicon.confluence-custom-favicon-plugin	4304	2021-03-10 06:59:58.026	favicon-soy
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4305	2021-03-10 06:59:58.026	localeResolver
com.atlassian.plugins.atlassian-nps-plugin	4306	2021-03-10 06:59:58.026	skate-shim
com.atlassian.confluence.editor	4307	2021-03-10 06:59:58.026	editor-restricted
com.atlassian.streams.streams-thirdparty-plugin	4308	2021-03-10 06:59:58.026	tx-processor
com.atlassian.streams.confluence	4309	2021-03-10 06:59:58.026	date-zh-MO
com.atlassian.auiplugin	4310	2021-03-10 06:59:58.026	aui-experimental-module
com.atlassian.mywork.mywork-common-plugin	4311	2021-03-10 06:59:58.026	task-service
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4312	2021-03-10 06:59:58.026	upm-audit-log
confluence.web.resources	4313	2021-03-10 06:59:58.026	aui-select2
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4314	2021-03-10 06:59:58.026	confluenceHipChatIntegrationAnalyticsWhitelist
com.atlassian.confluence.editor	4315	2021-03-10 06:59:58.026	tinymceeditor
com.atlassian.auiplugin	4316	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-checkbox-multiselect
confluence.search.mappers.lucene	4317	2021-03-10 06:59:58.026	none
com.atlassian.confluence.ext.newcode-macro-plugin	4318	2021-03-10 06:59:58.026	code-xhtml
com.atlassian.plugins.shortcuts.atlassian-shortcuts-plugin	4319	2021-03-10 06:59:58.026	keyboardshortcut-hash
com.atlassian.confluence.extra.officeconnector	4320	2021-03-10 06:59:58.026	downloadInEditor
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4321	2021-03-10 06:59:58.026	templateRender
confluence.sections.page	4322	2021-03-10 06:59:58.026	view
confluence.sections.page.operations	4323	2021-03-10 06:59:58.026	copy
confluence.macros.dashboard	4324	2021-03-10 06:59:58.026	recently-updated-dashboard
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	4325	2021-03-10 06:59:58.026	page-trashed-notification-template-body
com.atlassian.oauth.serviceprovider	4326	2021-03-10 06:59:58.026	unescaper
confluence.extra.attachments	4327	2021-03-10 06:59:58.026	space-attachments-xhtml
com.atlassian.plugin.notifications.notifications-module	4328	2021-03-10 06:59:58.026	notificationsIssueEventListener
com.atlassian.confluence.extra.officeconnector	4329	2021-03-10 06:59:58.026	importworditem
com.atlassian.plugin.notifications.notifications-module	4330	2021-03-10 06:59:58.026	templatePathResolver
com.atlassian.plugin.notifications.notifications-module	4331	2021-03-10 06:59:58.026	rendererComponentAccessor
com.atlassian.plugins.shortcuts.atlassian-shortcuts-plugin	4332	2021-03-10 06:59:58.026	i18nResolver
com.atlassian.confluence.plugins.confluence-create-content-plugin	4333	2021-03-10 06:59:58.026	i18nResolver
confluence.extra.jira	4334	2021-03-10 06:59:58.026	jira-issues-retriever
com.atlassian.querylang.confluence-cql-plugin	4335	2021-03-10 06:59:58.026	type-sort-mapper
confluence.user.menu.concise	4336	2021-03-10 06:59:58.026	user-concise
com.atlassian.mywork.mywork-common-plugin	4337	2021-03-10 06:59:58.026	helpPathResolver
com.atlassian.streams.actions	4338	2021-03-10 06:59:58.026	pluginAccessor
com.atlassian.streams.confluence	4339	2021-03-10 06:59:58.026	date-tr-TR
com.atlassian.confluence.plugins.profile-picture	4340	2021-03-10 06:59:58.026	profile-picture-editor_resources
com.atlassian.mywork.mywork-confluence-host-plugin	4341	2021-03-10 06:59:58.026	my-work-rest
com.atlassian.oauth.serviceprovider	4342	2021-03-10 06:59:58.026	oauthRequestTokenServlet
confluence.sections.admin	4343	2021-03-10 06:59:58.026	language
com.atlassian.confluence.plugins.confluence-mentions-plugin	4344	2021-03-10 06:59:58.026	mention-email-reply-link
confluence.web.resources	4345	2021-03-10 06:59:58.026	space-permissions-form
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4346	2021-03-10 06:59:58.026	is-room-notification-enabled-soy-function
confluence.sections.space.advanced	4347	2021-03-10 06:59:58.026	advanced
com.atlassian.streams	4348	2021-03-10 06:59:58.026	templateRenderer
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4349	2021-03-10 06:59:58.026	page-update-notification
com.atlassian.streams	4350	2021-03-10 06:59:58.026	date-es-AR
com.atlassian.confluence.plugins.confluence-mobile	4351	2021-03-10 06:59:58.026	legacyV2RendererContextInitialiser
com.atlassian.confluence.plugins.confluence-mobile	4352	2021-03-10 06:59:58.026	creatorsSearchFilter
com.atlassian.streams	4353	2021-03-10 06:59:58.026	sessionManager
com.atlassian.streams	4354	2021-03-10 06:59:58.026	date-sq-AL
com.atlassian.plugins.less-transformer-plugin	4355	2021-03-10 06:59:58.026	less-transformer
com.atlassian.confluence.plugins.dialog-wizard	4356	2021-03-10 06:59:58.026	dialogManager
com.atlassian.confluence.plugins.confluence-business-blueprints	4357	2021-03-10 06:59:58.026	meeting-notes-item
com.atlassian.confluence.plugins.confluence-link-browser	4358	2021-03-10 06:59:58.026	link-browser-tab-advanced
com.atlassian.querylang.confluence-cql-plugin	4359	2021-03-10 06:59:58.026	end-of-day-zero-arg-function
confluence.extra.impresence2	4360	2021-03-10 06:59:58.026	sametime-resources
com.atlassian.confluence.plugins.confluence-macro-browser	4361	2021-03-10 06:59:58.026	macro-browser-css
com.atlassian.confluence.plugins.confluence-email-resources	4362	2021-03-10 06:59:58.026	email-from-field-renderer
confluence.extra.impresence2	4363	2021-03-10 06:59:58.026	impresence.config
com.atlassian.confluence.plugins.confluence-email-resources	4364	2021-03-10 06:59:58.026	notification-templates-blog-edit-1.0.0
com.atlassian.auiplugin	4365	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-draw-logo
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4366	2021-03-10 06:59:58.026	audit-log-servlet
com.atlassian.confluence.plugins.confluence-email-resources	4367	2021-03-10 06:59:58.026	misc-icons
com.atlassian.applinks.applinks-plugin	4368	2021-03-10 06:59:58.026	applinksRestV2
com.atlassian.applinks.applinks-plugin	4369	2021-03-10 06:59:58.026	applinksRestV3
com.atlassian.confluence.plugins.confluence-inline-comments	4370	2021-03-10 06:59:58.026	confluence-inline-reply-batching
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	4371	2021-03-10 06:59:58.026	copy-resources
com.atlassian.plugins.atlassian-whitelist-core-plugin	4372	2021-03-10 06:59:58.026	bandanaManager
com.atlassian.querylang.confluence-cql-plugin	4373	2021-03-10 06:59:58.026	start-of-week-zero-arg-function
com.atlassian.confluence.plugins.soy	4374	2021-03-10 06:59:58.026	soy-items-for-section-soy-function
com.atlassian.confluence.plugins.confluence-create-content-plugin	4375	2021-03-10 06:59:58.026	ao-module
confluence.sections.news	4376	2021-03-10 06:59:58.026	view
com.atlassian.confluence.extra.officeconnector	4377	2021-03-10 06:59:58.026	excel97ContentExtractor
confluence.sections.help	4378	2021-03-10 06:59:58.026	confluence-help
com.atlassian.applinks.applinks-plugin	4379	2021-03-10 06:59:58.026	authenticatorAccessor
confluence.search.mappers.lucene	4380	2021-03-10 06:59:58.026	inSpaceSearchFilter
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4381	2021-03-10 06:59:58.026	pluginRequestFactory
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	4382	2021-03-10 06:59:58.026	templateRenderer
com.atlassian.confluence.plugins.confluence-inline-comments	4383	2021-03-10 06:59:58.026	view-resolved-comments
com.atlassian.confluence.plugins.recently-viewed-plugin	4384	2021-03-10 06:59:58.026	ao-module
com.atlassian.applinks.applinks-trustedapps-plugin	4385	2021-03-10 06:59:58.026	requestFactory
com.atlassian.confluence.plugins.confluence-default-space-content-plugin	4386	2021-03-10 06:59:58.026	spacecontent-global
com.atlassian.streams	4387	2021-03-10 06:59:58.026	date-es-CL
com.atlassian.confluence.plugins.soy	4388	2021-03-10 06:59:58.026	soy-version-number-function
com.atlassian.streams	4389	2021-03-10 06:59:58.026	date-es-CO
com.atlassian.confluence.plugins.confluence-lookandfeel	4390	2021-03-10 06:59:58.026	faviconManager
com.atlassian.mywork.mywork-confluence-provider-plugin	4391	2021-03-10 06:59:58.026	impersonationService
com.atlassian.applinks.applinks-cors-plugin	4392	2021-03-10 06:59:58.026	corsAuthServlet
com.atlassian.streams	4393	2021-03-10 06:59:58.026	date-es-CR
com.atlassian.streams.confluence	4394	2021-03-10 06:59:58.026	date-en-CA
com.atlassian.auiplugin	4395	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-label
com.atlassian.analytics.analytics-client	4396	2021-03-10 06:59:58.026	confluence-analytics-configuration-menu-item
com.atlassian.confluence.plugins.confluence-license-rest	4397	2021-03-10 06:59:58.026	licenseWebFacade
com.atlassian.applinks.applinks-plugin	4398	2021-03-10 06:59:58.026	pluginSettingsFactory
com.atlassian.support.stp	4399	2021-03-10 06:59:58.026	action-factory
com.atlassian.mywork.mywork-confluence-provider-plugin	4400	2021-03-10 06:59:58.026	registrationProvider
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	4401	2021-03-10 06:59:58.026	page-trashed-notification-template
confluence.extractors.core	4402	2021-03-10 06:59:58.026	attachmentMimeTypeChangeExtractor
tac.confluence.languages.fr_FR	4403	2021-03-10 06:59:58.026	fr_FR
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4404	2021-03-10 06:59:58.026	rest
com.atlassian.confluence.extra.flyingpdf	4405	2021-03-10 06:59:58.026	pdfExportSettingsManager
com.atlassian.confluence.plugins.confluence-roadmap-plugin	4406	2021-03-10 06:59:58.026	roadmap-analytics-resources
com.atlassian.confluence.plugins.confluence-roadmap-plugin	4407	2021-03-10 06:59:58.026	roadmap-editor-toolbar-view-resources
com.atlassian.auiplugin	4408	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-polyfills-custom-event
com.atlassian.confluence.plugins.confluence-inline-comments	4409	2021-03-10 06:59:58.026	confluence-inline-comments-rest-filter
confluence.extra.layout	4410	2021-03-10 06:59:58.026	resources
com.atlassian.confluence.plugins.confluence-mobile	4411	2021-03-10 06:59:58.026	darkFeaturesManager
org.randombits.confluence.toc	4412	2021-03-10 06:59:58.026	analytics-whitelist
com.atlassian.confluence.plugins.confluence-create-content-plugin	4413	2021-03-10 06:59:58.026	spaceLevelDisabledBlueprintsUpgradeTask
com.atlassian.confluence.plugins.confluence-quicknav	4414	2021-03-10 06:59:58.026	quicknav-admin-resources
com.atlassian.streams	4415	2021-03-10 06:59:58.026	date-es-BO
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4416	2021-03-10 06:59:58.026	hipchat-space-to-room-global
confluence.web.resources	4417	2021-03-10 06:59:58.026	mutation-observer
com.atlassian.plugins.atlassian-nav-links-plugin	4418	2021-03-10 06:59:58.026	locale-supporting-i18n-resolver
com.atlassian.confluence.plugins.confluence-roadmap-plugin	4419	2021-03-10 06:59:58.026	roadmap-editor-timeline-view-resources
com.atlassian.confluence.extra.flyingpdf	4420	2021-03-10 06:59:58.026	pdfexport
com.atlassian.gadgets.embedded	4421	2021-03-10 06:59:58.026	gadget-container-resources
confluence.extractors.core	4422	2021-03-10 06:59:58.026	pluginContentEntityObjectChangeExtractor
com.atlassian.confluence.plugins.confluence-previews	4423	2021-03-10 06:59:58.026	confluencePreviewsWhitelistFileViewer
com.atlassian.confluence.plugins.confluence-sal-plugin	4424	2021-03-10 06:59:58.026	componentLocator
com.atlassian.confluence.plugins.confluence-sal-plugin	4425	2021-03-10 06:59:58.026	confluenceConnectionProvider
confluence.extra.webdav	4426	2021-03-10 06:59:58.026	contentJobQueueExecutorJob
com.atlassian.streams.confluence	4427	2021-03-10 06:59:58.026	date-en-BZ
com.atlassian.analytics.analytics-client	4428	2021-03-10 06:59:58.026	analytics-rest-filter
confluence.renderer.components	4429	2021-03-10 06:59:58.026	superscript
com.atlassian.confluence.plugins.recently-viewed-plugin	4430	2021-03-10 06:59:58.026	main-resources
com.atlassian.confluence.plugins.confluence-like	4431	2021-03-10 06:59:58.026	like-email-soy-templates-2
com.atlassian.applinks.applinks-trustedapps-plugin	4432	2021-03-10 06:59:58.026	xsrfTokenAccessor
com.atlassian.crowd.embedded.admin	4433	2021-03-10 06:59:58.026	confluence-ldap-additional-config
com.atlassian.confluence.plugins.recently-viewed-plugin	4434	2021-03-10 06:59:58.026	mobile-resources
com.atlassian.plugins.atlassian-whitelist-ui-plugin	4435	2021-03-10 06:59:58.026	whitelist-soy-servlet
com.atlassian.querylang.confluence-cql-plugin	4436	2021-03-10 06:59:58.026	user-query-field-mapper
confluence.web.resources	4437	2021-03-10 06:59:58.026	contentnamesearch
com.atlassian.plugins.rest.atlassian-rest-module	4438	2021-03-10 06:59:58.026	rest-container-servlet-filter-INCLUDE
com.atlassian.auiplugin	4439	2021-03-10 06:59:58.026	aui-label
com.atlassian.streams	4440	2021-03-10 06:59:58.026	date-es-ES
com.atlassian.templaterenderer.api	4441	2021-03-10 06:59:58.026	webResourceUrlProviderContextItem
com.atlassian.confluence.plugins.confluence-onboarding	4442	2021-03-10 06:59:58.026	onboardingManager
com.atlassian.plugins.rest.atlassian-rest-module	4443	2021-03-10 06:59:58.026	rest-container-servlet-filter-ERROR
com.atlassian.auiplugin	4444	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-set-current
com.atlassian.confluence.plugins.gadgets	4445	2021-03-10 06:59:58.026	gadgetMacroMetadataProvider
confluence.extra.masterdetail	4446	2021-03-10 06:59:58.026	rest-caching-filter
com.atlassian.streams.confluence	4447	2021-03-10 06:59:58.026	date-en-AU
confluence.sections.space.tools	4448	2021-03-10 06:59:58.026	rss
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4449	2021-03-10 06:59:58.026	notification-templates
com.atlassian.confluence.plugins.confluence-daily-summary-email	4450	2021-03-10 06:59:58.026	dataSourceFactory
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	4451	2021-03-10 06:59:58.026	emoticonEditorMarshaller
com.atlassian.gadgets.opensocial	4452	2021-03-10 06:59:58.026	oauth-callback-servlet
com.atlassian.confluence.plugins.gadgets	4453	2021-03-10 06:59:58.026	transactionTemplate
confluence.comment.action	4454	2021-03-10 06:59:58.026	comment-permalink
com.atlassian.confluence.plugins.view-source	4455	2021-03-10 06:59:58.026	viewsourceActions
com.atlassian.confluence.plugins.confluence-file-notifications	4456	2021-03-10 06:59:58.026	fileContentEventListener
com.atlassian.auiplugin	4457	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-restful-table-row
com.atlassian.auiplugin	4458	2021-03-10 06:59:58.026	internal-jquery-ui-datepicker
com.atlassian.plugins.rest.atlassian-rest-module	4459	2021-03-10 06:59:58.026	xsrfRequestValidator
com.atlassian.confluence.plugins.confluence-nav-links	4460	2021-03-10 06:59:58.026	navlinksProjectPermissionManager
com.atlassian.streams	4461	2021-03-10 06:59:58.026	date-es-DO
confluence.extra.attachments	4462	2021-03-10 06:59:58.026	none
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4463	2021-03-10 06:59:58.026	confluenceMailer
com.atlassian.support.healthcheck.support-healthcheck-plugin	4464	2021-03-10 06:59:58.026	systemInformationService
com.atlassian.confluence.plugins.confluence-request-access-plugin	4465	2021-03-10 06:59:58.026	pagePermissionChecker
com.atlassian.auiplugin	4466	2021-03-10 06:59:58.026	jquery-progressbar
com.atlassian.streams.confluence	4467	2021-03-10 06:59:58.026	date-da-DK
confluence.extractors.core	4468	2021-03-10 06:59:58.026	versionNumberChangeExtractor
confluence.extra.dynamictasklist2	4469	2021-03-10 06:59:58.026	taskListManager
com.atlassian.confluence.extra.widgetconnector	4470	2021-03-10 06:59:58.026	viddler
com.atlassian.confluence.keyboardshortcuts	4471	2021-03-10 06:59:58.026	tinymce.strikethrough
com.atlassian.streams	4472	2021-03-10 06:59:58.026	date-es-EC
com.atlassian.confluence.plugins.recently-viewed-plugin	4473	2021-03-10 06:59:58.026	recently-viewed-rest
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4474	2021-03-10 06:59:58.026	pluginManagerHandler
com.atlassian.confluence.plugins.view-source	4475	2021-03-10 06:59:58.026	confluence-view-source-api-rest
confluence.macros.basic	4476	2021-03-10 06:59:58.026	loremipsum-xhtml
com.atlassian.confluence.keyboardshortcuts	4477	2021-03-10 06:59:58.026	tinymce.table.cut.row
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4478	2021-03-10 06:59:58.026	upm-marketplace-resources
com.atlassian.plugin.jslibs	4479	2021-03-10 06:59:58.026	marionette-1.4.1-factory
com.atlassian.applinks.applinks-basicauth-plugin	4480	2021-03-10 06:59:58.026	typeAccessor
confluence.filters.core	4481	2021-03-10 06:59:58.026	confluenceActivityFilter
com.atlassian.confluence.plugins.confluence-business-blueprints	4482	2021-03-10 06:59:58.026	sharelinks-index-page
com.atlassian.applinks.applinks-oauth-plugin	4483	2021-03-10 06:59:58.026	oAuthTokenRetriever
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4484	2021-03-10 06:59:58.026	clusterLockService
com.atlassian.confluence.plugins.pagetree	4485	2021-03-10 06:59:58.026	pagetree-xhtml
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	4486	2021-03-10 06:59:58.026	confluence-collaborative-editor-plugin-resources
com.atlassian.mywork.mywork-confluence-host-plugin	4487	2021-03-10 06:59:58.026	internalHostApplication
com.atlassian.confluence.plugins.confluence-inline-tasks	4488	2021-03-10 06:59:58.026	tasks-notification-payload-transformer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4489	2021-03-10 06:59:58.026	uriBuilderContextItem
confluence.listeners.core	4490	2021-03-10 06:59:58.026	thumbnailRemovingListener
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4491	2021-03-10 06:59:58.026	web-item-link
com.atlassian.auiplugin	4492	2021-03-10 06:59:58.026	internal-skatejs-0.13.17-lib-utils
com.atlassian.streams	4493	2021-03-10 06:59:58.026	date-ka-GE
confluence.extra.impresence2	4494	2021-03-10 06:59:58.026	skypeme
com.atlassian.confluence.plugins.gadgets	4495	2021-03-10 06:59:58.026	tokenStore
com.atlassian.confluence.plugins.confluence-mobile	4496	2021-03-10 06:59:58.026	removeApostropheEntityTransformer
confluence.search.mappers.lucene	4497	2021-03-10 06:59:58.026	inSpace
com.atlassian.confluence.plugins.confluence-files	4498	2021-03-10 06:59:58.026	confluenceFileManager
com.atlassian.confluence.plugins.confluence-rest-resources	4499	2021-03-10 06:59:58.026	view-page-api-link
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4500	2021-03-10 06:59:58.026	analyticsEventPublisher
com.atlassian.applinks.applinks-plugin	4501	2021-03-10 06:59:58.026	applicationProperties
confluence.sections.space.tools	4502	2021-03-10 06:59:58.026	lookandfeel
com.atlassian.confluence.plugins.confluence-create-content-plugin	4503	2021-03-10 06:59:58.026	userStorageService
com.atlassian.mywork.mywork-confluence-host-plugin	4504	2021-03-10 06:59:58.026	client-registration-event-listener
com.atlassian.applinks.applinks-plugin	4505	2021-03-10 06:59:58.026	confluence-inbound-oauth
com.atlassian.streams	4506	2021-03-10 06:59:58.026	date-is-IS
com.atlassian.auiplugin	4507	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-vendor-jquery-serializetoobject
com.atlassian.confluence.plugins.status-macro	4508	2021-03-10 06:59:58.026	imageGeneratorServlet
confluence.user.menu	4509	2021-03-10 06:59:58.026	logout
com.atlassian.confluence.plugins.confluence-sal-plugin	4510	2021-03-10 06:59:58.026	platformTransactionManager
com.atlassian.streams.confluence	4511	2021-03-10 06:59:58.026	date-quz-BO
confluence.sections.profile	4512	2021-03-10 06:59:58.026	favourite-user-personal-space
com.atlassian.plugins.base-hipchat-integration-plugin	4513	2021-03-10 06:59:58.026	rest-integration
com.atlassian.confluence.plugins.confluence-monitoring-console	4514	2021-03-10 06:59:58.026	monitoring-console-helper-servlet
com.atlassian.confluence.plugins.confluence-inline-tasks	4515	2021-03-10 06:59:58.026	tasks-report
confluence.web.resources	4516	2021-03-10 06:59:58.026	setup-eval-license
com.atlassian.webhooks.atlassian-webhooks-plugin	4517	2021-03-10 06:59:58.026	webhooks-admin-resources
confluence.macros.basic	4518	2021-03-10 06:59:58.026	anchor-xhtml
com.atlassian.plugins.atlassian-whitelist-ui-plugin	4519	2021-03-10 06:59:58.026	webSudoManager
com.atlassian.confluence.plugins.confluence-fixed-headers	4520	2021-03-10 06:59:58.026	confluence-fixed-headers-view-content-resources
com.atlassian.confluence.plugins.confluence-daily-summary-email	4521	2021-03-10 06:59:58.026	unsubscribeTokenManager
com.atlassian.streams.confluence	4522	2021-03-10 06:59:58.026	date-en-029
com.atlassian.mywork.mywork-confluence-provider-plugin	4523	2021-03-10 06:59:58.026	fieldHelper
com.atlassian.confluence.editor	4524	2021-03-10 06:59:58.026	contentPropertyService
com.atlassian.confluence.plugins.confluence-sal-plugin	4525	2021-03-10 06:59:58.026	xsrfTokenAccessor
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4526	2021-03-10 06:59:58.026	remoteAddonLicenseService
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4527	2021-03-10 06:59:58.026	hipchat-soy-server-resources
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	4528	2021-03-10 06:59:58.026	confluence-copy-page-hierarchy-plugin-loader
com.atlassian.confluence.plugins.quickreload	4529	2021-03-10 06:59:58.026	commentManager
confluence.macros.advanced	4530	2021-03-10 06:59:58.026	navmap-resources
confluence.macros.advanced	4531	2021-03-10 06:59:58.026	common-resources
com.atlassian.confluence.plugins.confluence-cache-management-plugin	4532	2021-03-10 06:59:58.026	server-resources
com.atlassian.plugin.jslibs	4533	2021-03-10 06:59:58.026	underscore-1.4.4
confluence.macros.advanced	4534	2021-03-10 06:59:58.026	related-labels
com.atlassian.confluence.plugins.confluence-view-file-macro	4535	2021-03-10 06:59:58.026	soyTemplateRenderer
com.atlassian.confluence.plugins.confluence-mobile	4536	2021-03-10 06:59:58.026	viewLinkMarshallerFactory
com.atlassian.confluence.extra.officeconnector	4537	2021-03-10 06:59:58.026	viewxls-legacy
confluence.editor.actions	4538	2021-03-10 06:59:58.026	editor-macro-browser
com.atlassian.confluence.extra.flyingpdf	4539	2021-03-10 06:59:58.026	configurepdflanguagesupport
com.atlassian.confluence.plugins.confluence-business-blueprints	4540	2021-03-10 06:59:58.026	sharelinksbookmarklet-decorator
com.atlassian.analytics.analytics-client	4541	2021-03-10 06:59:58.026	confluence-event-report-menu-item
com.atlassian.confluence.plugins.confluence-email-resources	4542	2021-03-10 06:59:58.026	chrome-template-footer-pattern-1.0.0
confluence.web.resources	4543	2021-03-10 06:59:58.026	jira-controls
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4544	2021-03-10 06:59:58.026	rest-compatibility
com.atlassian.auiplugin	4545	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-i18n
com.atlassian.mywork.mywork-common-plugin	4546	2021-03-10 06:59:58.026	application-link-service
com.atlassian.confluence.extra.officeconnector	4547	2021-03-10 06:59:58.026	viewfile
confluence.content.action.menu	4548	2021-03-10 06:59:58.026	copy-page
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4549	2021-03-10 06:59:58.026	templateLocator
confluence.macros.dashboard	4550	2021-03-10 06:59:58.026	dashboard-global-entity-resources
com.atlassian.auiplugin	4551	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-cookie
com.atlassian.confluence.plugins.confluence-browser-metrics	4552	2021-03-10 06:59:58.026	util
com.atlassian.confluence.plugins.confluence-email-resources	4553	2021-03-10 06:59:58.026	template-utils-2.0.0
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	4554	2021-03-10 06:59:58.026	rest
com.atlassian.applinks.applinks-plugin	4555	2021-03-10 06:59:58.026	confluence-space
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4556	2021-03-10 06:59:58.026	representationFactory
com.atlassian.oauth.serviceprovider	4557	2021-03-10 06:59:58.026	stringEscapeUtilContextItem
com.atlassian.plugins.atlassian-nav-links-plugin	4558	2021-03-10 06:59:58.026	rotp-menu
com.atlassian.auiplugin	4559	2021-03-10 06:59:58.026	aui-experimental-lozenge
com.atlassian.confluence.plugins.confluence-user-rest	4560	2021-03-10 06:59:58.026	crowd-aggregation-warning
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	4561	2021-03-10 06:59:58.026	helpPathResolver
confluence.web.resources	4562	2021-03-10 06:59:58.026	create-space
confluence.sections.attachments	4563	2021-03-10 06:59:58.026	remove
com.atlassian.support.stp	4564	2021-03-10 06:59:58.026	java-support-info
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4565	2021-03-10 06:59:58.026	permissionEnforcerContextItem
com.atlassian.auiplugin	4566	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-restful-table-throbber
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	4567	2021-03-10 06:59:58.026	batching-notification-recipients-provider
com.atlassian.confluence.plugins.confluence-sal-plugin	4568	2021-03-10 06:59:58.026	confluenceHttpContext
com.atlassian.streams.confluence	4569	2021-03-10 06:59:58.026	contentEntityRendererFactory
com.atlassian.confluence.editor	4570	2021-03-10 06:59:58.026	page-editor-quit-dialog
com.atlassian.confluence.plugins.confluence-inline-tasks	4571	2021-03-10 06:59:58.026	my-tasks-blank-exp-resources
com.atlassian.confluence.plugins.confluence-email-resources	4572	2021-03-10 06:59:58.026	template-utils-image-with-text-1.0.0
confluence.extra.jira	4573	2021-03-10 06:59:58.026	common
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4574	2021-03-10 06:59:58.026	confluenceNotificationSettings
com.atlassian.auiplugin	4575	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-to-init
com.atlassian.analytics.analytics-client	4576	2021-03-10 06:59:58.026	confluencePropertyExtractor
com.atlassian.confluence.plugins.confluence-roadmap-plugin	4577	2021-03-10 06:59:58.026	roadmap-macro
com.atlassian.plugin.notifications.notifications-module	4578	2021-03-10 06:59:58.026	taskComponents
com.atlassian.applinks.applinks-trustedapps-plugin	4579	2021-03-10 06:59:58.026	internalHostApplication
confluence.macros.advanced	4580	2021-03-10 06:59:58.026	get-more-helper
confluence.extra.confluencerpc	4581	2021-03-10 06:59:58.026	wikiRpcHandler
confluence.macros.dashboard	4582	2021-03-10 06:59:58.026	confluenceDashboardMacrosRest
com.atlassian.confluence.plugins.confluence-email-resources	4583	2021-03-10 06:59:58.026	user-full-name-function
com.atlassian.streams.confluence	4584	2021-03-10 06:59:58.026	date-zh-SG
com.atlassian.plugins.shortcuts.atlassian-shortcuts-plugin	4585	2021-03-10 06:59:58.026	keyboardShortcutsRest-filter
com.atlassian.auiplugin	4586	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-header
com.atlassian.confluence.plugins.confluence-lookandfeel	4587	2021-03-10 06:59:58.026	attachmentManager
com.atlassian.streams.confluence	4588	2021-03-10 06:59:58.026	date-gu-IN
confluence.macros.profile	4589	2021-03-10 06:59:58.026	network-resources
confluence.listeners.core	4590	2021-03-10 06:59:58.026	updateSpacesInChangeIndexListener
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4591	2021-03-10 06:59:58.026	pluginUpdateChecker
com.atlassian.confluence.plugins.confluence-previews	4592	2021-03-10 06:59:58.026	confluence-previews-jquery
com.atlassian.mywork.mywork-confluence-host-plugin	4593	2021-03-10 06:59:58.026	authenticationController
com.atlassian.confluence.keyboardshortcuts	4594	2021-03-10 06:59:58.026	quicksearch
com.atlassian.confluence.plugins.confluence-onboarding	4595	2021-03-10 06:59:58.026	onboardingSpaceCheckTrigger
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4596	2021-03-10 06:59:58.026	blog-create-notification
confluence.extra.jira	4597	2021-03-10 06:59:58.026	pdf-export-resources
com.atlassian.confluence.plugins.confluence-space-blueprints	4598	2021-03-10 06:59:58.026	team-space-blueprint
com.atlassian.auiplugin	4599	2021-03-10 06:59:58.026	aui-avatars
com.atlassian.confluence.extra.widgetconnector	4600	2021-03-10 06:59:58.026	googlespreadsheets
confluence.renderer.components	4601	2021-03-10 06:59:58.026	escape
com.atlassian.confluence.plugins.confluence-create-content-plugin	4602	2021-03-10 06:59:58.026	transactionTemplate
confluence.web.resources	4603	2021-03-10 06:59:58.026	memoir
com.atlassian.confluence.plugins.confluence-jira-metadata	4604	2021-03-10 06:59:58.026	content-metadata-jira
com.atlassian.support.healthcheck.support-healthcheck-plugin	4605	2021-03-10 06:59:58.026	support-health-check
com.atlassian.plugins.atlassian-nav-links-plugin	4606	2021-03-10 06:59:58.026	custom-apps-admin-ui-resources-old
confluence.macros.html	4607	2021-03-10 06:59:58.026	rss-xhtml
confluence.web.resources	4608	2021-03-10 06:59:58.026	setup-select-install-type
com.atlassian.confluence.plugins.soy	4609	2021-03-10 06:59:58.026	soy-base-url-function
confluence.search.mappers.lucene	4610	2021-03-10 06:59:58.026	contentPermissionsSearchFilter
com.atlassian.streams.confluence	4611	2021-03-10 06:59:58.026	date-uz-Cyrl-UZ
confluence.sections.space.tools	4612	2021-03-10 06:59:58.026	addons
com.atlassian.confluence.plugins.confluence-business-blueprints	4613	2021-03-10 06:59:58.026	decisions-blueprint-item
com.atlassian.confluence.plugins.dialog-wizard	4614	2021-03-10 06:59:58.026	rest-filter
com.atlassian.confluence.plugins.confluence-highlight-actions	4615	2021-03-10 06:59:58.026	markSelectionTransformer
com.atlassian.streams.confluence	4616	2021-03-10 06:59:58.026	date-zh-TW
com.atlassian.streams.confluence	4617	2021-03-10 06:59:58.026	date-quz-EC
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4618	2021-03-10 06:59:58.026	marketplaceClientManager
com.atlassian.auiplugin	4619	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-on-text-resize
confluence.macro.metadata.provider	4620	2021-03-10 06:59:58.026	macroMetadataProviders
com.atlassian.confluence.plugins.recently-viewed-plugin	4621	2021-03-10 06:59:58.026	recently-viewed-content-two-args-function
confluence.macros.advanced	4622	2021-03-10 06:59:58.026	editor_includemacro
com.atlassian.confluence.extra.flyingpdf	4623	2021-03-10 06:59:58.026	betterpdfpage
com.atlassian.gadgets.embedded	4624	2021-03-10 06:59:58.026	gadget-standalone-resources
confluence.web.resources	4625	2021-03-10 06:59:58.026	deferred-loaders
com.atlassian.oauth.serviceprovider	4626	2021-03-10 06:59:58.026	applicationPropertiesContextItem
com.atlassian.confluence.rpc.confluence-json-rpc-plugin	4627	2021-03-10 06:59:58.026	settingsManager
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	4628	2021-03-10 06:59:58.026	diffContextProvider
com.atlassian.auiplugin	4629	2021-03-10 06:59:58.026	aui-experimental-buttons
com.atlassian.streams	4630	2021-03-10 06:59:58.026	date-es-PA
confluence.extra.jira	4631	2021-03-10 06:59:58.026	mobileThreadLocalFilter
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4632	2021-03-10 06:59:58.026	notificationPageDataFactory
com.atlassian.streams	4633	2021-03-10 06:59:58.026	date-es-PE
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4634	2021-03-10 06:59:58.026	notificationFactoryImpl
com.atlassian.streams.confluence	4635	2021-03-10 06:59:58.026	confluence-rest
com.atlassian.plugins.atlassian-whitelist-core-plugin	4636	2021-03-10 06:59:58.026	whitelistBasedCorsDefaults
com.atlassian.support.stp	4637	2021-03-10 06:59:58.026	supportZipService
confluence.user.hover.menu	4638	2021-03-10 06:59:58.026	personal-space
com.atlassian.confluence.plugins.confluence-view-file-macro	4639	2021-03-10 06:59:58.026	attachedImageRenderHelper
com.atlassian.confluence.extra.officeconnector	4640	2021-03-10 06:59:58.026	officeconnector-editor-resources
com.atlassian.confluence.plugins.confluence-space-directory	4641	2021-03-10 06:59:58.026	pagination-resources
com.atlassian.confluence.plugins.confluence-highlight-actions	4642	2021-03-10 06:59:58.026	quote-comment
com.atlassian.webhooks.atlassian-webhooks-plugin	4643	2021-03-10 06:59:58.026	webhooks-resources
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4644	2021-03-10 06:59:58.026	settingsManager
com.atlassian.plugins.atlassian-project-creation-plugin	4645	2021-03-10 06:59:58.026	project-crud-rest
com.atlassian.streams	4646	2021-03-10 06:59:58.026	date-es-PR
com.atlassian.streams.confluence	4647	2021-03-10 06:59:58.026	localeManager
com.atlassian.confluence.plugins.confluence-daily-summary-email	4648	2021-03-10 06:59:58.026	taskManager
com.atlassian.mywork.mywork-confluence-provider-plugin	4649	2021-03-10 06:59:58.026	userAccessor
confluence.extra.confluencerpc	4650	2021-03-10 06:59:58.026	usersSoapService
com.atlassian.confluence.plugins.confluence-document-conversion-library	4651	2021-03-10 06:59:58.026	Confluence Document Conversion Library REST support-filter
com.atlassian.confluence.plugins.search.confluence-search	4652	2021-03-10 06:59:58.026	darkFeatureManager
confluence.macros.advanced	4653	2021-03-10 06:59:58.026	junitreport
com.atlassian.confluence.plugins.gadgets	4654	2021-03-10 06:59:58.026	oauth-access-tokens
com.atlassian.confluence.plugins.confluence-inline-comments	4655	2021-03-10 06:59:58.026	notification-template-resolve-body
com.atlassian.applinks.applinks-oauth-plugin	4656	2021-03-10 06:59:58.026	add-non-applinks-service-provider
com.atlassian.integration.jira.jira-integration-plugin	4657	2021-03-10 06:59:58.026	webResourceManager
com.atlassian.querylang.confluence-cql-plugin	4658	2021-03-10 06:59:58.026	end-of-month-zero-arg-function
com.atlassian.confluence.editor	4659	2021-03-10 06:59:58.026	atlassian-pdl-resources
com.atlassian.auiplugin	4660	2021-03-10 06:59:58.026	internal-skatejs-template-html-0.0.0-dist-template-html
confluence.extractors.core	4661	2021-03-10 06:59:58.026	defaultSearchableTextExtractor
com.atlassian.confluence.themes.default	4662	2021-03-10 06:59:58.026	styles
confluence.sections.profile	4663	2021-03-10 06:59:58.026	my-favourites
com.atlassian.confluence.plugins.confluence-view-file-macro	4664	2021-03-10 06:59:58.026	conversionManager
com.atlassian.confluence.extra.widgetconnector	4665	2021-03-10 06:59:58.026	youtube
com.atlassian.confluence.plugins.confluence-mobile	4666	2021-03-10 06:59:58.026	eventPublisher
com.atlassian.integration.jira.jira-integration-plugin	4667	2021-03-10 06:59:58.026	confluenceJiraSettings
com.atlassian.confluence.plugins.gadgets	4668	2021-03-10 06:59:58.026	cacheManager
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	4669	2021-03-10 06:59:58.026	lib
confluence.sections.create	4670	2021-03-10 06:59:58.026	create-attachment
com.atlassian.auiplugin	4671	2021-03-10 06:59:58.026	ajs-raf
com.atlassian.confluence.contributors	4672	2021-03-10 06:59:58.026	authorContributionExtractor
com.atlassian.confluence.plugins.confluence-like	4673	2021-03-10 06:59:58.026	like-created-notification
com.atlassian.confluence.plugins.confluence-browser-metrics	4674	2021-03-10 06:59:58.026	dashboard
com.atlassian.plugins.base-hipchat-integration-plugin	4675	2021-03-10 06:59:58.026	hipchat-glance
com.atlassian.mywork.mywork-confluence-host-plugin	4676	2021-03-10 06:59:58.026	service-selector-wrapper
confluence.search.mappers.lucene	4677	2021-03-10 06:59:58.026	relevance
confluence.listeners.core	4678	2021-03-10 06:59:58.026	luceneSearchMapperRegistryCacheUpdateListener
confluence.web.resources	4679	2021-03-10 06:59:58.026	page-history
com.atlassian.oauth.serviceprovider	4680	2021-03-10 06:59:58.026	clock
com.atlassian.confluence.extra.widgetconnector	4681	2021-03-10 06:59:58.026	blip
com.atlassian.support.healthcheck.support-healthcheck-plugin	4682	2021-03-10 06:59:58.026	salUserManager
com.atlassian.plugins.atlassian-nav-links-plugin	4683	2021-03-10 06:59:58.026	environment-soy-function
com.atlassian.confluence.plugins.confluence-like	4684	2021-03-10 06:59:58.026	like-created-notification-template-hipchat-body
com.atlassian.confluence.plugins.share-page	4685	2021-03-10 06:59:58.026	email-resources-2.0.0
com.atlassian.streams	4686	2021-03-10 06:59:58.026	date-ro-RO
com.atlassian.confluence.plugins.confluence-view-file-macro	4687	2021-03-10 06:59:58.026	view-file-macro-embedded-file-view-resources
com.atlassian.confluence.plugins.confluence-highlight-actions	4688	2021-03-10 06:59:58.026	appendToSelectionTransformer
com.atlassian.streams	4689	2021-03-10 06:59:58.026	date-es-PY
confluence.lifecycle.core	4690	2021-03-10 06:59:58.026	remigration
com.atlassian.plugins.atlassian-whitelist-core-plugin	4691	2021-03-10 06:59:58.026	activeObjects
com.atlassian.confluence.plugins.confluence-email-resources	4692	2021-03-10 06:59:58.026	notification-templates-page-test-1.0.0
com.atlassian.confluence.plugins.confluence-previews	4693	2021-03-10 06:59:58.026	feature-discovery-plugin
com.atlassian.auiplugin	4694	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-clone
com.atlassian.confluence.plugins.confluence-inline-comments	4695	2021-03-10 06:59:58.026	confirm-dialog-view
com.atlassian.analytics.analytics-client	4696	2021-03-10 06:59:58.026	pluginScheduler
com.atlassian.auiplugin	4697	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-form-validation
com.atlassian.plugins.atlassian-plugins-webresource-rest	4698	2021-03-10 06:59:58.026	web-resources
com.atlassian.confluence.keyboardshortcuts	4699	2021-03-10 06:59:58.026	add.comment
com.atlassian.confluence.plugins.confluence-email-resources	4700	2021-03-10 06:59:58.026	notification-templates-2.0.0
confluence.listeners.core	4701	2021-03-10 06:59:58.026	removeContentPropertiesOnRemoveContentListener
com.atlassian.streams.streams-thirdparty-plugin	4702	2021-03-10 06:59:58.026	rest
com.atlassian.confluence.plugins.pagetree	4703	2021-03-10 06:59:58.026	pagetree-mobile-resources
com.atlassian.activeobjects.confluence.spi	4704	2021-03-10 06:59:58.026	tenantContext
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4705	2021-03-10 06:59:58.026	pluginLicenseStore
com.atlassian.confluence.plugins.confluence-schedule-admin	4706	2021-03-10 06:59:58.026	none
com.atlassian.confluence.plugins.confluence-daily-summary-email	4707	2021-03-10 06:59:58.026	SummaryEmailTaskFactory
com.atlassian.confluence.plugins.drag-and-drop	4708	2021-03-10 06:59:58.026	drag-and-drop-resource
confluence.listeners.core	4709	2021-03-10 06:59:58.026	attachmentNotificationsListener
com.atlassian.confluence.plugins.confluence-daily-summary-email	4710	2021-03-10 06:59:58.026	rest-filter
com.atlassian.confluence.plugins.confluence-document-conversion-library	4711	2021-03-10 06:59:58.026	Confluence Document Conversion Library REST support
com.atlassian.confluence.plugins.confluence-rest-resources	4712	2021-03-10 06:59:58.026	rest-api
com.atlassian.auiplugin	4713	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-internal-select-suggestions-view
com.atlassian.plugins.base-hipchat-integration-plugin	4714	2021-03-10 06:59:58.026	view-oauth-servlet
com.atlassian.confluence.plugins.confluence-space-ia	4715	2021-03-10 06:59:58.026	left-ia-sidebar-panel
com.atlassian.confluence.plugins.confluence-create-content-plugin	4716	2021-03-10 06:59:58.026	spaceBlueprintManagerDelegate
confluence.search.mappers.lucene	4717	2021-03-10 06:59:58.026	fieldValueSearchFilter
com.atlassian.activeobjects.confluence.spi	4718	2021-03-10 06:59:58.026	tenantAwareDataSourceProvider
com.atlassian.mywork.mywork-confluence-provider-plugin	4719	2021-03-10 06:59:58.026	mentionFinder
com.atlassian.integration.jira.jira-integration-plugin	4720	2021-03-10 06:59:58.026	jira-icon-servlet
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4721	2021-03-10 06:59:58.026	txTemplate
com.atlassian.confluence.extra.widgetconnector	4722	2021-03-10 06:59:58.026	getsatisfaction
com.atlassian.support.healthcheck.support-healthcheck-plugin	4723	2021-03-10 06:59:58.026	support-healthcheck-plugin-resources
com.atlassian.confluence.plugins.confluence-email-resources	4724	2021-03-10 06:59:58.026	content-templates-inline-content-styles-1.0.0
com.atlassian.confluence.plugins.confluence-like	4725	2021-03-10 06:59:58.026	unlike-content-email-batch-item
com.atlassian.confluence.extra.officeconnector	4726	2021-03-10 06:59:58.026	ppt97ContentExtractor
confluence.extractors.core	4727	2021-03-10 06:59:58.026	spaceKeyAndNameChangeExtractor
com.atlassian.confluence.plugins.confluence-sal-plugin	4728	2021-03-10 06:59:58.026	userSettingsService
com.atlassian.confluence.plugins.confluence-email-resources	4729	2021-03-10 06:59:58.026	content-type-icons
com.atlassian.streams.confluence	4730	2021-03-10 06:59:58.026	date-sr-Cyrl-BA
com.atlassian.auiplugin	4731	2021-03-10 06:59:58.026	internal-skatejs-0.13.17-lib-globals
com.atlassian.confluence.plugins.confluence-edge-index	4732	2021-03-10 06:59:58.026	edgeIndexRebuildUpgradeTask
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4733	2021-03-10 06:59:58.026	asyncTaskRepresentationFactory
com.atlassian.confluence.plugins.confluence-daily-summary-email	4734	2021-03-10 06:59:58.026	i18NBeanFactory
confluence.sections.profile	4735	2021-03-10 06:59:58.026	follow
com.atlassian.plugins.atlassian-whitelist-core-plugin	4736	2021-03-10 06:59:58.026	clearHttpCacheAdapter
com.atlassian.querylang.confluence-cql-plugin	4737	2021-03-10 06:59:58.026	recently-modified-pages-blogs-by-user-three-arg-function
confluence.web.resources	4738	2021-03-10 06:59:58.026	page-loading-indicator
com.atlassian.crowd.embedded.admin	4739	2021-03-10 06:59:58.026	crowd-ldap-properties-helper
com.atlassian.auiplugin	4740	2021-03-10 06:59:58.026	internal-form-css
com.atlassian.analytics.analytics-client	4741	2021-03-10 06:59:58.026	licenseHandler
confluence.extra.jira	4742	2021-03-10 06:59:58.026	flexigrid-resources
com.atlassian.confluence.plugins.confluence-mentions-plugin	4743	2021-03-10 06:59:58.026	mention-icon
com.atlassian.plugin.notifications.notifications-module	4744	2021-03-10 06:59:58.026	notificationsRest-filter
com.atlassian.confluence.plugins.confluence-feature-discovery-plugin	4745	2021-03-10 06:59:58.026	featureDiscoveryService
com.atlassian.applinks.applinks-oauth-plugin	4746	2021-03-10 06:59:58.026	servletMessageFactory
com.atlassian.confluence.plugins.confluence-email-resources	4747	2021-03-10 06:59:58.026	content-templates-notification-comment-pattern-1.0.0
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4748	2021-03-10 06:59:58.026	locate
com.atlassian.confluence.plugins.confluence-email-resources	4749	2021-03-10 06:59:58.026	chrome-template-2.0.0
com.atlassian.confluence.plugins.confluence-create-content-plugin	4750	2021-03-10 06:59:58.026	rest-experimental
com.atlassian.soy.soy-template-plugin	4751	2021-03-10 06:59:58.026	jiraSoyTransformer
com.atlassian.streams	4752	2021-03-10 06:59:58.026	date-es-SV
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	4753	2021-03-10 06:59:58.026	css
confluence.user.menu.concise	4754	2021-03-10 06:59:58.026	administration
com.atlassian.confluence.plugins.confluence-cache-management-plugin	4755	2021-03-10 06:59:58.026	analytics-whitelist
com.atlassian.streams	4756	2021-03-10 06:59:58.026	date-es-VE
com.atlassian.confluence.plugins.quickreload	4757	2021-03-10 06:59:58.026	quick-reload-bootstrap
com.atlassian.streams.confluence	4758	2021-03-10 06:59:58.026	webResourceManager
com.atlassian.confluence.plugins.confluence-inline-tasks	4759	2021-03-10 06:59:58.026	task-report-blueprint-item
com.atlassian.oauth.serviceprovider.sal	4760	2021-03-10 06:59:58.026	userManager
com.atlassian.auiplugin	4761	2021-03-10 06:59:58.026	jquery-compatibility
com.atlassian.confluence.plugins.confluence-mentions-plugin	4762	2021-03-10 06:59:58.026	editor-autocomplete-mentions
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4763	2021-03-10 06:59:58.026	pluginRestartRequiredService
com.atlassian.plugins.atlassian-nav-links-plugin	4764	2021-03-10 06:59:58.026	locale-resolver
com.atlassian.streams.confluence	4765	2021-03-10 06:59:58.026	date-sr-Cyrl-CS
com.atlassian.confluence.plugins.gadgets	4766	2021-03-10 06:59:58.026	external-gadget
com.atlassian.confluence.extra.officeconnector	4767	2021-03-10 06:59:58.026	tokenProvider
com.atlassian.plugins.confluence-tdm-merger	4768	2021-03-10 06:59:58.026	xmlOutputFactoryProvider
com.atlassian.confluence.plugins.confluence-create-content-plugin	4769	2021-03-10 06:59:58.026	blueprintSorter
com.atlassian.confluence.plugins.confluence-browser-metrics	4770	2021-03-10 06:59:58.026	spa-transitions
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4771	2021-03-10 06:59:58.026	userAccessor
com.atlassian.streams.confluence	4772	2021-03-10 06:59:58.026	date-mn-MN
com.atlassian.streams	4773	2021-03-10 06:59:58.026	date-smj-NO
com.atlassian.confluence.plugins.confluence-like	4774	2021-03-10 06:59:58.026	mobile-content-like-resource
com.atlassian.streams	4775	2021-03-10 06:59:58.026	date-es-UY
com.atlassian.confluence.plugins.confluence-previews	4776	2021-03-10 06:59:58.026	confluence-previews-pdf-worker
com.atlassian.integration.jira.jira-integration-plugin	4777	2021-03-10 06:59:58.026	jira-create-issue-form
confluence.macros.basic	4778	2021-03-10 06:59:58.026	nl
com.atlassian.analytics.analytics-client	4779	2021-03-10 06:59:58.026	remoteFilterRead
com.atlassian.confluence.plugins.confluence-onboarding	4780	2021-03-10 06:59:58.026	onboarding-actions
com.atlassian.applinks.applinks-plugin	4781	2021-03-10 06:59:58.026	transactionTemplate
com.atlassian.streams	4782	2021-03-10 06:59:58.026	date-es-GT
com.atlassian.support.healthcheck.support-healthcheck-plugin	4783	2021-03-10 06:59:58.026	healthStatusPersistenceService
confluence.listeners.core	4784	2021-03-10 06:59:58.026	titleChangeListener
com.atlassian.crowd.embedded.admin	4785	2021-03-10 06:59:58.026	confluence-user-directories-web-item
com.atlassian.confluence.plugins.search.confluence-search	4786	2021-03-10 06:59:58.026	rest
confluence.content.action.menu	4787	2021-03-10 06:59:58.026	remove-page
com.atlassian.confluence.plugins.share-page	4788	2021-03-10 06:59:58.026	mail-page-resources
confluence.sections.space.admin	4789	2021-03-10 06:59:58.026	colorscheme
com.atlassian.applinks.applinks-basicauth-plugin	4790	2021-03-10 06:59:58.026	servletMessageFactory
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	4791	2021-03-10 06:59:58.026	pageManager
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4792	2021-03-10 06:59:58.026	notificationservers
com.atlassian.applinks.applinks-basicauth-plugin	4793	2021-03-10 06:59:58.026	xsrfTokenAccessor
confluence.macro.metadata.provider	4794	2021-03-10 06:59:58.026	userMacroMetadataProvider
confluence.sections.profile	4795	2021-03-10 06:59:58.026	settings
com.atlassian.plugin.notifications.notifications-module	4796	2021-03-10 06:59:58.026	notificationsRest
com.atlassian.confluence.plugins.confluence-space-blueprints	4797	2021-03-10 06:59:58.026	TeamSpaceBlueprintCreateEventListener
com.atlassian.confluence.plugins.confluence-like	4798	2021-03-10 06:59:58.026	cachedContentFinder
confluence.extra.jira	4799	2021-03-10 06:59:58.026	text-placeholders-jira
com.atlassian.confluence.plugins.confluence-space-blueprints	4800	2021-03-10 06:59:58.026	documentation-space-blueprint-item
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4801	2021-03-10 06:59:58.026	pacClient
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4802	2021-03-10 06:59:58.026	confluenceUserLists
com.atlassian.confluence.plugins.confluence-dashboard	4803	2021-03-10 06:59:58.026	recentlyViewedManager
com.atlassian.confluence.extra.flyingpdf	4804	2021-03-10 06:59:58.026	pdfExportSemaphore
com.atlassian.plugins.base-hipchat-integration-plugin-api	4805	2021-03-10 06:59:58.026	backbone-amd
com.atlassian.confluence.editor	4806	2021-03-10 06:59:58.026	rest
com.atlassian.auiplugin	4807	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-inline-dialog
com.atlassian.auiplugin	4808	2021-03-10 06:59:58.026	aui-labels
com.atlassian.confluence.plugins.confluence-license-rest	4809	2021-03-10 06:59:58.026	userCountService
com.atlassian.confluence.plugins.share-page	4810	2021-03-10 06:59:58.026	share-keyboard-shortcut-js-resources
confluence.web.resources	4811	2021-03-10 06:59:58.026	admin-styles
com.atlassian.analytics.analytics-client	4812	2021-03-10 06:59:58.026	confluenceSessionIdProvider
confluence.user.menu	4813	2021-03-10 06:59:58.026	user-content
com.atlassian.confluence.plugins.confluence-onboarding	4814	2021-03-10 06:59:58.026	welcome
confluence.web.resources	4815	2021-03-10 06:59:58.026	amd
com.atlassian.mywork.mywork-confluence-host-plugin	4816	2021-03-10 06:59:58.026	timeout-service
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4817	2021-03-10 06:59:58.026	upm-requests-resources
confluence.sections.space.tools	4818	2021-03-10 06:59:58.026	importpages
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	4819	2021-03-10 06:59:58.026	confluence-collaborative-editor-plugin-editor-content-resources
confluence.admin.user	4820	2021-03-10 06:59:58.026	browse-users-tab-invite
com.atlassian.applinks.applinks-oauth-plugin	4821	2021-03-10 06:59:58.026	applinksRestV2OAuth-filter
com.atlassian.confluence.plugins.confluence-easyuser-admin	4822	2021-03-10 06:59:58.026	easyuser-rest-filter
com.atlassian.confluence.plugins.confluence-email-resources	4823	2021-03-10 06:59:58.026	content-templates-actions-pattern-2.0.0
com.atlassian.confluence.plugins.confluence-page-banner	4824	2021-03-10 06:59:58.026	content-metadata-page-restrictions
com.atlassian.mywork.mywork-confluence-host-plugin	4825	2021-03-10 06:59:58.026	clusterLockService
com.atlassian.confluence.plugins.confluence-email-resources	4826	2021-03-10 06:59:58.026	view-page-email-adg-footer-item
com.atlassian.mywork.mywork-confluence-provider-plugin	4827	2021-03-10 06:59:58.026	likeManager
com.atlassian.confluence.plugins.confluence-business-blueprints	4828	2021-03-10 06:59:58.026	blueprintsTemplateHelper
com.atlassian.streams	4829	2021-03-10 06:59:58.026	activityProviders
confluence.sections.admin	4830	2021-03-10 06:59:58.026	custompagecontent
com.atlassian.applinks.applinks-plugin	4831	2021-03-10 06:59:58.026	list-entity-links
com.atlassian.oauth.serviceprovider	4832	2021-03-10 06:59:58.026	randomizer
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	4833	2021-03-10 06:59:58.026	page-edited-hipchat-notification-template
com.atlassian.confluence.plugins.confluence-mentions-plugin	4834	2021-03-10 06:59:58.026	confluenceMentionsFinder
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4835	2021-03-10 06:59:58.026	hipchatSpaceToRoomAO
confluence.extra.jira	4836	2021-03-10 06:59:58.026	jira-issues-view-mode-resources
com.atlassian.confluence.plugins.confluence-jira-content	4837	2021-03-10 06:59:58.026	create-JIRA-issue-summary
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4838	2021-03-10 06:59:58.026	clusterLockServiceFactory
com.atlassian.confluence.plugins.confluence-dashboard	4839	2021-03-10 06:59:58.026	onboarding-dialog
com.atlassian.applinks.applinks-trustedapps-plugin	4840	2021-03-10 06:59:58.026	trustConfigurator
com.atlassian.streams.confluence	4841	2021-03-10 06:59:58.026	date-quz-PE
confluence.extractors.core	4842	2021-03-10 06:59:58.026	attachmentOwnerContentTypeExtractor
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	4843	2021-03-10 06:59:58.026	homeDirectoryHealthCheck
confluence.sections.browse	4844	2021-03-10 06:59:58.026	global
com.atlassian.confluence.plugins.confluence-software-blueprints	4845	2021-03-10 06:59:58.026	retrospectives-item
confluence.macros.html	4846	2021-03-10 06:59:58.026	rss
confluence.sections.admin.indexing	4847	2021-03-10 06:59:58.026	mainIndexRecoverer
com.atlassian.confluence.plugins.search.confluence-search	4848	2021-03-10 06:59:58.026	nonViewableContentTypeFilterFactory
confluence.search.mappers.lucene	4849	2021-03-10 06:59:58.026	contributor
com.atlassian.streams	4850	2021-03-10 06:59:58.026	date-es-HN
com.atlassian.plugins.less-transformer-plugin	4851	2021-03-10 06:59:58.026	webstaticUriResolver
com.atlassian.auiplugin	4852	2021-03-10 06:59:58.026	aui-toolbar2
com.atlassian.confluence.plugins.confluence-edge-index	4853	2021-03-10 06:59:58.026	userDtoFactory
com.atlassian.support.stp	4854	2021-03-10 06:59:58.026	confluence-mail-utility
com.atlassian.streams	4855	2021-03-10 06:59:58.026	date-gl-ES
com.atlassian.confluence.plugins.confluence-create-content-plugin	4856	2021-03-10 06:59:58.026	localeManager
com.atlassian.confluence.plugins.search.confluence-search	4857	2021-03-10 06:59:58.026	blank
com.atlassian.streams	4858	2021-03-10 06:59:58.026	date-hy-AM
com.atlassian.confluence.plugins.confluence-email-resources	4859	2021-03-10 06:59:58.026	template-utils-anonymous-user-link-1.0.0
com.atlassian.confluence.extra.widgetconnector	4860	2021-03-10 06:59:58.026	statusImagegenerator
confluence.web.resources	4861	2021-03-10 06:59:58.026	vmI18n
confluence.sections.space.advanced	4862	2021-03-10 06:59:58.026	orphan
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	4863	2021-03-10 06:59:58.026	confluence-blogpost-edited-batching
com.atlassian.plugins.atlassian-nav-links-plugin	4864	2021-03-10 06:59:58.026	customAppService
com.atlassian.auiplugin	4865	2021-03-10 06:59:58.026	internal-css.escape-1.5.0-css-escape
com.atlassian.auiplugin	4866	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-restful-table-events
confluence.macros.advanced	4867	2021-03-10 06:59:58.026	contentbylabel-excerpt-migrator
com.atlassian.streams.core	4868	2021-03-10 06:59:58.026	userManager
com.atlassian.plugin.notifications.notifications-module	4869	2021-03-10 06:59:58.026	serverFactory
com.atlassian.plugins.atlassian-nav-links-plugin	4870	2021-03-10 06:59:58.026	module-factory
confluence.search.mappers.lucene	4871	2021-03-10 06:59:58.026	boolean
com.atlassian.confluence.plugins.confluence-create-content-plugin	4872	2021-03-10 06:59:58.026	blueprintManager
com.atlassian.confluence.extra.widgetconnector	4873	2021-03-10 06:59:58.026	metacafe
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4874	2021-03-10 06:59:58.026	mailServerManager
com.atlassian.plugins.atlassian-nav-links-plugin	4875	2021-03-10 06:59:58.026	http-client-factory
confluence.web.resources	4876	2021-03-10 06:59:58.026	ajs
com.atlassian.confluence.plugins.confluence-create-content-plugin	4877	2021-03-10 06:59:58.026	create-blog-post
confluence.listeners.core	4878	2021-03-10 06:59:58.026	velocityPluginListener
confluence.listeners.core	4879	2021-03-10 06:59:58.026	flushUserCheckerOnLicenseUpdate
com.atlassian.streams	4880	2021-03-10 06:59:58.026	date-smj-SE
com.atlassian.confluence.plugins.confluence-inline-comments	4881	2021-03-10 06:59:58.026	display-comment-view
com.atlassian.confluence.extra.flyingpdf	4882	2021-03-10 06:59:58.026	pdfexport-soap
com.atlassian.plugins.atlassian-nav-links-plugin	4883	2021-03-10 06:59:58.026	mutatingEntityLinkService
com.atlassian.plugins.atlassian-whitelist-core-plugin	4884	2021-03-10 06:59:58.026	aoWhitelistRulesDao
confluence.web.resources	4885	2021-03-10 06:59:58.026	jsUri
com.atlassian.confluence.plugins.confluence-inline-tasks	4886	2021-03-10 06:59:58.026	email-resources
com.atlassian.confluence.plugins.confluence-mentions-plugin	4887	2021-03-10 06:59:58.026	i18nResolver
com.atlassian.analytics.analytics-client	4888	2021-03-10 06:59:58.026	serverIdProvider
com.atlassian.confluence.ext.newcode-macro-plugin	4889	2021-03-10 06:59:58.026	macro-icons
com.atlassian.streams.confluence	4890	2021-03-10 06:59:58.026	templateRendererFactory
com.atlassian.auiplugin	4891	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-internal-animation
confluence.sections.page.temp	4892	2021-03-10 06:59:58.026	edit-page
com.atlassian.confluence.plugins.gadgets	4893	2021-03-10 06:59:58.026	outboundWhitelist
confluence.user.menu	4894	2021-03-10 06:59:58.026	settings
com.atlassian.confluence.plugins.search.confluence-search	4895	2021-03-10 06:59:58.026	searchv3Filter
com.atlassian.confluence.plugins.confluence-create-content-plugin	4896	2021-03-10 06:59:58.026	globalBlueprintsUpgradeTask
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4897	2021-03-10 06:59:58.026	integrations
com.atlassian.support.stp	4898	2021-03-10 06:59:58.026	licenseStatusService
com.atlassian.applinks.applinks-trustedapps-plugin	4899	2021-03-10 06:59:58.026	servletMessageFactory
com.atlassian.auiplugin	4900	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-debounce
com.atlassian.confluence.plugins.search.confluence-search	4901	2021-03-10 06:59:58.026	filterFactory
confluence.extra.impresence2	4902	2021-03-10 06:59:58.026	aim
confluence.listeners.core	4903	2021-03-10 06:59:58.026	asyncPageNotificationsListener
com.atlassian.confluence.plugins.confluence-mobile	4904	2021-03-10 06:59:58.026	mobileViewRenderer
com.atlassian.querylang.confluence-cql-plugin	4905	2021-03-10 06:59:58.026	end-of-week-one-arg-function
com.atlassian.streams.actions	4906	2021-03-10 06:59:58.026	moduleFactory
com.atlassian.mywork.mywork-confluence-host-plugin	4907	2021-03-10 06:59:58.026	task-cleaner-scheduler
com.atlassian.crowd.embedded.admin	4908	2021-03-10 06:59:58.026	rest
com.atlassian.confluence.plugins.confluence-daily-summary-email	4909	2021-03-10 06:59:58.026	salUserManager
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	4910	2021-03-10 06:59:58.026	confluenceEmoticonService
com.atlassian.confluence.image.effects.ImageEffectsPlugin	4911	2021-03-10 06:59:58.026	config-resource-filter
com.atlassian.streams	4912	2021-03-10 06:59:58.026	date-es-MX
com.atlassian.confluence.ext.newcode-macro-plugin	4913	2021-03-10 06:59:58.026	sh-theme-confluence
com.atlassian.crowd.embedded.admin	4914	2021-03-10 06:59:58.026	dispatcher-servlet
com.atlassian.confluence.plugins.confluence-inline-comments	4915	2021-03-10 06:59:58.026	inlineCommentExtensions
confluence.content.action.menu	4916	2021-03-10 06:59:58.026	view-attachments
com.atlassian.applinks.applinks-plugin	4917	2021-03-10 06:59:58.026	compatibility-css
confluence.sections.profile	4918	2021-03-10 06:59:58.026	view-profile
com.atlassian.analytics.analytics-client	4919	2021-03-10 06:59:58.026	events-logged
com.atlassian.auiplugin	4920	2021-03-10 06:59:58.026	jquery-throbber
com.atlassian.streams	4921	2021-03-10 06:59:58.026	date-es-NI
com.atlassian.confluence.plugins.confluence-knowledge-base	4922	2021-03-10 06:59:58.026	kb-troubleshooting-item
com.atlassian.confluence.plugins.confluence-inline-comments	4923	2021-03-10 06:59:58.026	inline-comment-email-soy-templates-2
com.atlassian.confluence.plugins.confluence-software-blueprints	4924	2021-03-10 06:59:58.026	requirements-resources
confluence.extra.attachments	4925	2021-03-10 06:59:58.026	space-attachments
com.atlassian.confluence.plugins.expand-macro	4926	2021-03-10 06:59:58.026	expand-macro-soy-templates
com.atlassian.confluence.plugins.gadgets	4927	2021-03-10 06:59:58.026	gadget
com.atlassian.analytics.analytics-client	4928	2021-03-10 06:59:58.026	analytics-configuration-servlet
com.atlassian.auiplugin	4929	2021-03-10 06:59:58.026	modernizr-touch
com.atlassian.confluence.plugins.confluence-knowledge-base	4930	2021-03-10 06:59:58.026	confluenceAccessManager
com.atlassian.confluence.editor	4931	2021-03-10 06:59:58.026	table-resizable-plugin
com.atlassian.confluence.ext.newcode-macro-plugin	4932	2021-03-10 06:59:58.026	sh-theme-fadetogrey
com.atlassian.confluence.plugins.confluence-edge-index	4933	2021-03-10 06:59:58.026	edgeTypeRepository
com.atlassian.applinks.applinks-plugin	4934	2021-03-10 06:59:58.026	bamboo
com.atlassian.querylang.confluence-cql-plugin	4935	2021-03-10 06:59:58.026	end-of-year-zero-arg-function
confluence.web.resources	4936	2021-03-10 06:59:58.026	login
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	4937	2021-03-10 06:59:58.026	batching-notification
com.atlassian.confluence.extra.officeconnector	4938	2021-03-10 06:59:58.026	excel2k7ContentExtractor
com.atlassian.auiplugin	4939	2021-03-10 06:59:58.026	internal-inline-dialog-common
confluence.web.resources	4940	2021-03-10 06:59:58.026	dashboard-resources
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	4941	2021-03-10 06:59:58.026	storageEngineCheck
com.atlassian.streams.confluence	4942	2021-03-10 06:59:58.026	date-ns-ZA
com.atlassian.plugins.atlassian-nav-links-plugin	4943	2021-03-10 06:59:58.026	content-links-rest-filter
com.atlassian.confluence.plugins.confluence-email-resources	4944	2021-03-10 06:59:58.026	view-comment-email-batch-item
confluence.listeners.core	4945	2021-03-10 06:59:58.026	searchResultRendererCache
confluence.sections.admin	4946	2021-03-10 06:59:58.026	users
com.atlassian.applinks.applinks-plugin	4947	2021-03-10 06:59:58.026	internalHostApplication
com.atlassian.streams	4948	2021-03-10 06:59:58.026	date-fr-FR
com.atlassian.plugin.jslibs	4949	2021-03-10 06:59:58.026	d3-3.3.13
com.atlassian.auiplugin	4950	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-internal-amdify
com.atlassian.streams	4951	2021-03-10 06:59:58.026	date-syr-SY
confluence.extra.confluencerpc	4952	2021-03-10 06:59:58.026	confluence-xmlrpc-2
com.atlassian.confluence.plugins.confluence-space-ia	4953	2021-03-10 06:59:58.026	spacebar-blogs
com.atlassian.confluence.plugins.confluence-onboarding	4954	2021-03-10 06:59:58.026	notification-template-less-users-body
com.atlassian.confluence.plugins.confluence-request-access-plugin	4955	2021-03-10 06:59:58.026	grantAccessRequestValidator
com.atlassian.plugins.atlassian-whitelist-core-plugin	4956	2021-03-10 06:59:58.026	defaultPermissionChecker
com.atlassian.confluence.plugins.drag-and-drop	4957	2021-03-10 06:59:58.026	drop-zone-for-image-dialog
confluence.sections.space.pages	4958	2021-03-10 06:59:58.026	list-content-tree
com.atlassian.confluence.plugins.confluence-user-profile	4959	2021-03-10 06:59:58.026	editprofilepicture
org.randombits.confluence.toc	4960	2021-03-10 06:59:58.026	toc-plugin-styles
com.atlassian.auiplugin	4961	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-is-visible
com.atlassian.analytics.analytics-client	4962	2021-03-10 06:59:58.026	analyticConfig
com.atlassian.confluence.plugins.confluence-mentions-plugin	4963	2021-03-10 06:59:58.026	dateEntityFactory
com.atlassian.gadgets.opensocial	4964	2021-03-10 06:59:58.026	directory-checking-servlet-filter
com.atlassian.confluence.plugins.confluence-email-resources	4965	2021-03-10 06:59:58.026	reply-to-comment-email-footer-item
com.atlassian.plugins.atlassian-plugins-webresource-plugin	4966	2021-03-10 06:59:58.026	context-path
com.atlassian.applinks.applinks-plugin	4967	2021-03-10 06:59:58.026	bitbucketProject
confluence.web.resources	4968	2021-03-10 06:59:58.026	rss-feed-builder
com.atlassian.confluence.plugins.pagetree	4969	2021-03-10 06:59:58.026	pagetreesearch
confluence.sections.space.browse	4970	2021-03-10 06:59:58.026	browse-space
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4971	2021-03-10 06:59:58.026	featureDiscovery
confluence.extra.jira	4972	2021-03-10 06:59:58.026	jiraissues
com.atlassian.crowd.embedded.admin	4973	2021-03-10 06:59:58.026	supported-directory-permission-options
com.atlassian.applinks.applinks-plugin	4974	2021-03-10 06:59:58.026	bitbucket
com.atlassian.confluence.plugins.confluence-page-banner	4975	2021-03-10 06:59:58.026	page-banner-panel
confluence.search.mappers.lucene	4976	2021-03-10 06:59:58.026	attachmentType
com.atlassian.auiplugin	4977	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-flag
com.atlassian.confluence.editor	4978	2021-03-10 06:59:58.026	editor-insert-files
com.atlassian.confluence.plugins.confluence-dashboard	4979	2021-03-10 06:59:58.026	spa-friendly-metadata-provider
com.atlassian.confluence.plugins.confluence-nav-links	4980	2021-03-10 06:59:58.026	admin
confluence.macros.basic	4981	2021-03-10 06:59:58.026	anchor
com.atlassian.oauth.serviceprovider	4982	2021-03-10 06:59:58.026	loginUriProvider
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4983	2021-03-10 06:59:58.026	confluenceHostLicenseEventReader
com.atlassian.oauth.serviceprovider	4984	2021-03-10 06:59:58.026	templateRenderer
com.atlassian.analytics.analytics-client	4985	2021-03-10 06:59:58.026	lastPrivacyPolicyUpdateDateProvider
com.atlassian.analytics.analytics-client	4986	2021-03-10 06:59:58.026	confluenceSystemShutdownDetector
com.atlassian.confluence.plugins.confluence-easyuser-admin	4987	2021-03-10 06:59:58.026	confluence-easyuser-mailServerDeletedListener
com.atlassian.confluence.plugins.confluence-knowledge-base	4988	2021-03-10 06:59:58.026	kb-serviceDeskExternalCustomerServletFilter-component
com.atlassian.templaterenderer.api	4989	2021-03-10 06:59:58.026	templateContextFactory
com.atlassian.confluence.plugins.dashboard-actions	4990	2021-03-10 06:59:58.026	add-space
confluence.lifecycle.core	4991	2021-03-10 06:59:58.026	removeindexwritelock
com.atlassian.auiplugin	4992	2021-03-10 06:59:58.026	internal-ajs-no-context-path
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	4993	2021-03-10 06:59:58.026	collab-xwork
com.atlassian.confluence.plugins.confluence-business-blueprints	4994	2021-03-10 06:59:58.026	sharelinks-service
org.randombits.confluence.toc	4995	2021-03-10 06:59:58.026	toc
com.atlassian.confluence.plugins.recently-viewed-plugin	4996	2021-03-10 06:59:58.026	open.recent
confluence.macros.advanced	4997	2021-03-10 06:59:58.026	content-by-label-resources
com.atlassian.streams.confluence	4998	2021-03-10 06:59:58.026	date-ta-IN
com.atlassian.streams	4999	2021-03-10 06:59:58.026	date-te-IN
com.atlassian.streams.confluence	5000	2021-03-10 06:59:58.026	date-kok-IN
com.atlassian.analytics.analytics-client	5001	2021-03-10 06:59:58.026	confluence-logged-events-servlet
com.atlassian.confluence.plugins.confluence-sal-plugin	5002	2021-03-10 06:59:58.026	xsrfRequestValidator
com.atlassian.plugins.rest.atlassian-rest-module	5003	2021-03-10 06:59:58.026	pluginEventManager
com.atlassian.applinks.applinks-plugin	5004	2021-03-10 06:59:58.026	manifestRetriever
com.atlassian.plugins.atlassian-nav-links-plugin	5005	2021-03-10 06:59:58.026	initialiseCustomOrderFlagUpgradeTask
com.atlassian.applinks.applinks-plugin	5006	2021-03-10 06:59:58.026	propertyService
com.atlassian.confluence.plugins.share-page	5007	2021-03-10 06:59:58.026	share-page-hipchat-notification-template-body
com.atlassian.confluence.plugins.confluence-ui-components	5008	2021-03-10 06:59:58.026	pagination
com.atlassian.confluence.plugins.confluence-create-content-plugin	5009	2021-03-10 06:59:58.026	create-dialog-init-params
confluence.extra.webdav	5010	2021-03-10 06:59:58.026	confluenceDavSessionStore
confluence.sections.admin	5011	2021-03-10 06:59:58.026	managereferers
com.atlassian.confluence.plugins.confluence-onboarding	5012	2021-03-10 06:59:58.026	notification-template-no-spaces
com.atlassian.plugin.notifications.notifications-module	5013	2021-03-10 06:59:58.026	chosen
com.atlassian.streams	5014	2021-03-10 06:59:58.026	applicationProperties
com.atlassian.confluence.plugins.confluence-browser-metrics	5015	2021-03-10 06:59:58.026	defer-js
com.atlassian.confluence.plugins.confluence-paste	5016	2021-03-10 06:59:58.026	autoconvert-youtu.be-rewrite
confluence.renderer.components	5017	2021-03-10 06:59:58.026	force-newline
confluence.search.mappers.lucene	5018	2021-03-10 06:59:58.026	chainedSearchFilter
com.atlassian.confluence.plugins.confluence-email-resources	5019	2021-03-10 06:59:58.026	notification-templates-page-moved-2.0.0
confluence.extra.dynamictasklist2	5020	2021-03-10 06:59:58.026	tasklist-servlet
com.atlassian.mywork.mywork-confluence-host-plugin	5021	2021-03-10 06:59:58.026	mw-header-anchor
com.atlassian.auiplugin	5022	2021-03-10 06:59:58.026	aui-header-unresponsive
com.atlassian.applinks.applinks-basicauth-plugin	5023	2021-03-10 06:59:58.026	webSudoManager
com.atlassian.confluence.plugins.pagetree	5024	2021-03-10 06:59:58.026	pagetreesearchactions
com.atlassian.mywork.mywork-confluence-provider-plugin	5025	2021-03-10 06:59:58.026	taskService
com.atlassian.confluence.plugins.search.confluence-search	5026	2021-03-10 06:59:58.026	es-siteSearch-query-mapper
confluence.sections.space.advanced	5027	2021-03-10 06:59:58.026	undefined
com.atlassian.confluence.plugins.confluence-mobile	5028	2021-03-10 06:59:58.026	mobile-dashboard-redirect-filter
confluence.extra.webdav	5029	2021-03-10 06:59:58.026	webdav-servlet
com.atlassian.confluence.plugins.xmlrpc.bloggingrpc	5030	2021-03-10 06:59:58.026	metaWeblog-xmlrpc
com.atlassian.auiplugin	5031	2021-03-10 06:59:58.026	internal-aui-is-input
com.atlassian.confluence.plugins.confluence-mobile	5032	2021-03-10 06:59:58.026	viewLinkSubMarshallerFactory
com.atlassian.auiplugin	5033	2021-03-10 06:59:58.026	aui-dropdown2
com.atlassian.gadgets.oauth.serviceprovider	5034	2021-03-10 06:59:58.026	helpLinkResolverContextItem
com.atlassian.confluence.plugins.confluence-file-notifications	5035	2021-03-10 06:59:58.026	file-content-email-soy-templates
com.atlassian.applinks.applinks-plugin	5036	2021-03-10 06:59:58.026	confluence-inbound-basic
confluence.sections.admin	5037	2021-03-10 06:59:58.026	quickpipesettings
com.atlassian.mywork.mywork-confluence-host-plugin	5038	2021-03-10 06:59:58.026	notification-dao
confluence.extra.masterdetail	5039	2021-03-10 06:59:58.026	detailssummary-migrator
com.atlassian.mywork.mywork-confluence-host-plugin	5040	2021-03-10 06:59:58.026	notificationRendererService
com.atlassian.confluence.plugins.confluence-daily-summary-email	5041	2021-03-10 06:59:58.026	summaryEmailTrackingServlet
com.atlassian.confluence.plugins.confluence-file-notifications	5042	2021-03-10 06:59:58.026	notificationUserService
com.atlassian.applinks.applinks-plugin	5043	2021-03-10 06:59:58.026	refappCharlie
com.atlassian.confluence.plugins.confluence-darkfeatures-rest	5044	2021-03-10 06:59:58.026	darkFeaturesManager
com.atlassian.analytics.analytics-client	5045	2021-03-10 06:59:58.026	confluenceBaseDataLogger
com.atlassian.confluence.plugins.quickreload	5046	2021-03-10 06:59:58.026	vcacheFactory
com.atlassian.confluence.plugins.confluence-jira-metadata	5047	2021-03-10 06:59:58.026	jira-metadata-cache-config
com.atlassian.auiplugin	5048	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-events
confluence.web.resources	5049	2021-03-10 06:59:58.026	constants
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5050	2021-03-10 06:59:58.026	settingsService
com.atlassian.confluence.plugins.confluence-create-content-plugin	5051	2021-03-10 06:59:58.026	blueprintDiscoverer
com.atlassian.confluence.plugins.confluence-mentions-plugin	5052	2021-03-10 06:59:58.026	mentions-styling
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5053	2021-03-10 06:59:58.026	pluginLicenseRepository
com.atlassian.streams.core	5054	2021-03-10 06:59:58.026	streamsEntryRendererFactory
confluence.search.mappers.lucene	5055	2021-03-10 06:59:58.026	favouriteSort
com.atlassian.plugins.atlassian-whitelist-ui-plugin	5056	2021-03-10 06:59:58.026	soyTemplateRenderer
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	5057	2021-03-10 06:59:58.026	hipChatIntegrationDiscoveryService
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	5058	2021-03-10 06:59:58.026	confluenceNotificationPreferenceManager
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	5059	2021-03-10 06:59:58.026	ao-module
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	5060	2021-03-10 06:59:58.026	blogpost-created-notification-transformer
com.atlassian.confluence.plugins.confluence-space-ia	5061	2021-03-10 06:59:58.026	header-sidebar-styles-panel
com.atlassian.confluence.plugins.confluence-email-tracker	5062	2021-03-10 06:59:58.026	contentEntityManager
confluence.extractors.core	5063	2021-03-10 06:59:58.026	homePageChangeExtractor
com.atlassian.confluence.plugins.confluence-like	5064	2021-03-10 06:59:58.026	liked-page-action-view-blog-post-link
com.atlassian.confluence.extra.widgetconnector	5065	2021-03-10 06:59:58.026	xwork-actions
confluence.macro.metadata.provider	5066	2021-03-10 06:59:58.026	allMacroMetadataCache
com.atlassian.confluence.plugins.confluence-like	5067	2021-03-10 06:59:58.026	rest
com.atlassian.confluence.plugins.confluence-business-blueprints	5068	2021-03-10 06:59:58.026	sharelinks-urlmacro-resources
com.atlassian.auiplugin	5069	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-select2
com.atlassian.streams	5070	2021-03-10 06:59:58.026	date-ca-ES
com.atlassian.confluence.tinymceplugin	5071	2021-03-10 06:59:58.026	editor-resources
com.atlassian.streams	5072	2021-03-10 06:59:58.026	date-xh-ZA
confluence.extra.impresence2	5073	2021-03-10 06:59:58.026	reporter-icq
com.atlassian.confluence.contributors	5074	2021-03-10 06:59:58.026	watchiContributionExtractor
com.atlassian.streams	5075	2021-03-10 06:59:58.026	date-fr-LU
com.atlassian.confluence.plugins.confluence-email-resources	5076	2021-03-10 06:59:58.026	notification-templates-content-created-2.0.0
com.atlassian.confluence.plugins.confluence-inline-tasks	5077	2021-03-10 06:59:58.026	view-all-my-tasks-email-action-item
confluence.sections.space.tools	5078	2021-03-10 06:59:58.026	browse
com.atlassian.auiplugin	5079	2021-03-10 06:59:58.026	aui-table-sortable
com.atlassian.confluence.editor	5080	2021-03-10 06:59:58.026	charmap-resources
com.atlassian.mywork.mywork-confluence-provider-plugin	5081	2021-03-10 06:59:58.026	eventListener
confluence.macros.advanced	5082	2021-03-10 06:59:58.026	contentbylabel
confluence.renderer.components	5083	2021-03-10 06:59:58.026	camelcase
confluence.macros.multimedia	5084	2021-03-10 06:59:58.026	audio
com.atlassian.plugin.notifications.notifications-module	5085	2021-03-10 06:59:58.026	notification-server
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	5086	2021-03-10 06:59:58.026	blogpost-trashed-notification-template-body
com.atlassian.confluence.extra.widgetconnector	5087	2021-03-10 06:59:58.026	outboundWhitelist
com.atlassian.streams	5088	2021-03-10 06:59:58.026	date-fr-MC
com.atlassian.auiplugin	5089	2021-03-10 06:59:58.026	aui-progress-indicator
com.atlassian.confluence.plugins.confluence-like	5090	2021-03-10 06:59:58.026	liked-page-action-view-page-link
com.atlassian.confluence.plugins.confluence-browser-metrics	5091	2021-03-10 06:59:58.026	legacy-browser-metrics
com.atlassian.confluence.plugins.confluence-software-blueprints	5092	2021-03-10 06:59:58.026	common-resources
confluence.listeners.core	5093	2021-03-10 06:59:58.026	cdn-cache-flush-listener
confluence.sections.profile.view	5094	2021-03-10 06:59:58.026	profile-js
confluence.macros.multimedia	5095	2021-03-10 06:59:58.026	multimedia
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5096	2021-03-10 06:59:58.026	salWebSudoManager
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	5097	2021-03-10 06:59:58.026	forgot-password-notification-template
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5098	2021-03-10 06:59:58.026	pluginRestUninstaller
com.atlassian.confluence.plugins.gadgets	5099	2021-03-10 06:59:58.026	core-services
com.atlassian.confluence.plugins.confluence-mentions-plugin	5100	2021-03-10 06:59:58.026	mention-email-like-link
com.atlassian.plugins.atlassian-nav-links-plugin	5101	2021-03-10 06:59:58.026	custom-apps-admin-ui
com.atlassian.mywork.mywork-confluence-provider-plugin	5102	2021-03-10 06:59:58.026	locale-service
com.atlassian.confluence.plugins.confluence-user-rest	5103	2021-03-10 06:59:58.026	pluginsSettingsFactory
com.atlassian.applinks.applinks-oauth-plugin	5104	2021-03-10 06:59:58.026	applinksRestV2OAuth
com.atlassian.confluence.plugins.editor-loader	5105	2021-03-10 06:59:58.026	editor-loader-actions
com.atlassian.confluence.plugins.share-page	5106	2021-03-10 06:59:58.026	share
confluence.extractors.core	5107	2021-03-10 06:59:58.026	contentPermissionsExtractor
confluence.macros.multimedia	5108	2021-03-10 06:59:58.026	macro-browser-smart-fields
confluence.macros.advanced	5109	2021-03-10 06:59:58.026	excerpt-include
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	5110	2021-03-10 06:59:58.026	hipChatContextProvider
com.atlassian.confluence.plugins.confluence-inline-comments	5111	2021-03-10 06:59:58.026	models
com.atlassian.confluence.plugins.confluence-email-resources	5112	2021-03-10 06:59:58.026	content-templates-page-link-pattern-2.0.0
confluence.listeners.core	5113	2021-03-10 06:59:58.026	confluenceCachingBandanaListener
com.atlassian.confluence.plugins.confluence-knowledge-base	5114	2021-03-10 06:59:58.026	space-kb-web-resource
com.atlassian.plugins.issue-status-plugin	5115	2021-03-10 06:59:58.026	issue-status-resources
confluence.renderer.components	5116	2021-03-10 06:59:58.026	link
com.atlassian.confluence.plugins.confluence-nav-links	5117	2021-03-10 06:59:58.026	rotp.project.shortcuts
com.atlassian.confluence.plugins.confluence-email-resources	5118	2021-03-10 06:59:58.026	notification-templates-comment-add-1.0.0
com.atlassian.support.stp	5119	2021-03-10 06:59:58.026	pluginEventManager
com.atlassian.streams.confluence	5120	2021-03-10 06:59:58.026	date-et-EE
confluence.extra.impresence2	5121	2021-03-10 06:59:58.026	skypeme-migrator
com.atlassian.confluence.plugins.confluence-email-resources	5122	2021-03-10 06:59:58.026	stop-watching-space-blogs-email-adg-footer-item
com.atlassian.confluence.plugins.confluence-files	5123	2021-03-10 06:59:58.026	fileVersionsById
com.atlassian.streams.actions	5124	2021-03-10 06:59:58.026	streams-action-handlers
confluence.macros.basic	5125	2021-03-10 06:59:58.026	panel
org.randombits.confluence.toc	5126	2021-03-10 06:59:58.026	client-side-toc-resources
com.atlassian.auiplugin	5127	2021-03-10 06:59:58.026	aui-experimental-expander
com.atlassian.auiplugin	5128	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-firebug
com.atlassian.confluence.plugins.confluence-ui-components	5129	2021-03-10 06:59:58.026	blank-placeholder-box
confluence.web.resources	5130	2021-03-10 06:59:58.026	console-instrumentation
com.atlassian.oauth.serviceprovider	5131	2021-03-10 06:59:58.026	pluginScheduler
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	5132	2021-03-10 06:59:58.026	ao-module
confluence.getting-started	5133	2021-03-10 06:59:58.026	getting-started-resources
com.atlassian.confluence.extra.flyingpdf	5134	2021-03-10 06:59:58.026	configpdfstyle-2
com.atlassian.plugins.atlassian-nav-links-plugin	5135	2021-03-10 06:59:58.026	capability-service
org.randombits.confluence.toc	5136	2021-03-10 06:59:58.026	toc-zone-regex-migrator
com.atlassian.confluence.plugins.gadgets	5137	2021-03-10 06:59:58.026	eventPublisher
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	5138	2021-03-10 06:59:58.026	system-monitoring
com.atlassian.confluence.plugins.confluence-request-access-plugin	5139	2021-03-10 06:59:58.026	userService
com.atlassian.confluence.plugins.confluence-email-resources	5140	2021-03-10 06:59:58.026	content-templates-2.0.0
com.atlassian.confluence.plugins.confluence-feature-discovery-plugin	5141	2021-03-10 06:59:58.026	confluence-feature-discovery-plugin-resources
com.atlassian.plugins.base-hipchat-integration-plugin	5142	2021-03-10 06:59:58.026	hipchat-dialog
com.atlassian.confluence.plugins.soy	5143	2021-03-10 06:59:58.026	soy-static-resource-url-prefix-function
com.atlassian.plugins.jquery	5144	2021-03-10 06:59:58.026	jquery
com.atlassian.analytics.analytics-client	5145	2021-03-10 06:59:58.026	renderer
com.atlassian.confluence.plugins.confluence-inline-tasks	5146	2021-03-10 06:59:58.026	task-hipchat-notification-template
com.atlassian.integration.jira.jira-integration-plugin	5147	2021-03-10 06:59:58.026	jiraConfig
com.atlassian.confluence.plugins.soy	5148	2021-03-10 06:59:58.026	confluenceSoyTemplateRenderer
com.atlassian.confluence.editor	5149	2021-03-10 06:59:58.026	i18nResolver
com.atlassian.confluence.plugins.recently-viewed-plugin	5150	2021-03-10 06:59:58.026	threadLocalDelegateExecutorFactory
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5151	2021-03-10 06:59:58.026	atlassianAnalyticsPublisher
com.atlassian.confluence.editor	5152	2021-03-10 06:59:58.026	mailServerExistsCriteria
com.atlassian.confluence.plugins.confluence-templates	5153	2021-03-10 06:59:58.026	confluenceTemplateWhiteList
com.atlassian.plugin.notifications.notifications-module	5154	2021-03-10 06:59:58.026	notification-handler
confluence.macros.advanced	5155	2021-03-10 06:59:58.026	gallery-resources
com.atlassian.auiplugin	5156	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-jquery-jquery-hotkeys
com.atlassian.confluence.plugins.confluence-paste	5157	2021-03-10 06:59:58.026	autoconvert-cloudapp
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5158	2021-03-10 06:59:58.026	mpacAnalyticsPublisher
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	5159	2021-03-10 06:59:58.026	emoticonStorageToEditorTransformer
com.atlassian.auiplugin	5160	2021-03-10 06:59:58.026	aui-lozenge
com.atlassian.confluence.plugins.confluence-daily-summary-email	5161	2021-03-10 06:59:58.026	recommendedUpdatesTrackingListener
confluence.extra.layout	5162	2021-03-10 06:59:58.026	xhtml-column
com.atlassian.confluence.plugins.confluence-templates	5163	2021-03-10 06:59:58.026	space-templates
com.atlassian.plugins.base-hipchat-integration-plugin-api	5164	2021-03-10 06:59:58.026	amd
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5165	2021-03-10 06:59:58.026	analyticsWhitelist
com.atlassian.auiplugin	5166	2021-03-10 06:59:58.026	aui-sidebar
com.atlassian.confluence.plugins.confluence-file-notifications	5167	2021-03-10 06:59:58.026	file-content-remove-email-notification-template
com.atlassian.auiplugin	5168	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-button
com.atlassian.querylang.confluence-cql-plugin	5169	2021-03-10 06:59:58.026	start-of-month-zero-arg-function
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	5170	2021-03-10 06:59:58.026	synchronizationManager
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	5171	2021-03-10 06:59:58.026	forgot-password-recipients-provider
com.atlassian.confluence.plugins.pagetree	5172	2021-03-10 06:59:58.026	pagetree
com.atlassian.confluence.plugins.confluence-rest-resources	5173	2021-03-10 06:59:58.026	content-properties-metadata-provider
com.atlassian.analytics.analytics-client	5174	2021-03-10 06:59:58.026	confluenceOnDemandDetector
com.atlassian.confluence.plugins.pagetree	5175	2021-03-10 06:59:58.026	naturalchildrenaction
confluence.extra.impresence2	5176	2021-03-10 06:59:58.026	msn-xhtml
com.atlassian.confluence.plugins.sticky-table-headers	5177	2021-03-10 06:59:58.026	stickytableheaders-resources
confluence.sections.create	5178	2021-03-10 06:59:58.026	create-space
com.atlassian.confluence.plugins.confluence-email-resources	5179	2021-03-10 06:59:58.026	template-utils-attached-image-1.0.0
confluence.extra.webdav	5180	2021-03-10 06:59:58.026	reverseProxyCopyAndMoveDestinationFix
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	5181	2021-03-10 06:59:58.026	copy-soy
com.atlassian.auiplugin	5182	2021-03-10 06:59:58.026	aui-header-async
com.atlassian.auiplugin	5183	2021-03-10 06:59:58.026	aui-experimental-iconfont
com.atlassian.confluence.plugins.confluence-software-project	5184	2021-03-10 06:59:58.026	sp-space-decisions-template
com.atlassian.analytics.analytics-client	5185	2021-03-10 06:59:58.026	enable-analytics
com.atlassian.auiplugin	5186	2021-03-10 06:59:58.026	internal-aui-animation
com.atlassian.plugins.atlassian-whitelist-core-plugin	5187	2021-03-10 06:59:58.026	applicationLinksMigration
com.atlassian.confluence.plugins.confluence-macro-browser	5188	2021-03-10 06:59:58.026	macro-browser-resources
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	5189	2021-03-10 06:59:58.026	userManager
confluence.sections.space.advanced	5190	2021-03-10 06:59:58.026	startwatchingall
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5191	2021-03-10 06:59:58.026	pluginRequestStore
confluence.renderer.components	5192	2021-03-10 06:59:58.026	dash
com.atlassian.applinks.applinks-trustedapps-plugin	5193	2021-03-10 06:59:58.026	pluginAccessor
confluence.extra.impresence2	5194	2021-03-10 06:59:58.026	presenceManager
com.atlassian.mywork.mywork-confluence-host-plugin	5195	2021-03-10 06:59:58.026	clientRegistrationService
com.atlassian.confluence.plugins.dialog-wizard	5196	2021-03-10 06:59:58.026	rest
com.atlassian.oauth.serviceprovider	5197	2021-03-10 06:59:58.026	unescaperContextItem
com.atlassian.confluence.editor	5198	2021-03-10 06:59:58.026	editor-labels
com.atlassian.integration.jira.jira-integration-plugin	5199	2021-03-10 06:59:58.026	jira-issues-dialog-trigger
com.atlassian.confluence.plugins.confluence-nav-links	5200	2021-03-10 06:59:58.026	settingsManager
com.atlassian.oauth.serviceprovider	5201	2021-03-10 06:59:58.026	accessTokensServlet
com.atlassian.confluence.plugins.confluence-business-blueprints	5202	2021-03-10 06:59:58.026	file-list-resources
com.atlassian.confluence.plugins.confluence-email-tracker	5203	2021-03-10 06:59:58.026	eventPublisher
com.atlassian.auiplugin	5204	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-layer-manager
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	5205	2021-03-10 06:59:58.026	i18nResolver
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	5206	2021-03-10 06:59:58.026	batchingJobConfig
com.atlassian.streams	5207	2021-03-10 06:59:58.026	date-fr-BE
com.atlassian.confluence.plugins.confluence-daily-summary-email	5208	2021-03-10 06:59:58.026	popular-content-template
com.atlassian.streams	5209	2021-03-10 06:59:58.026	date-fr-CA
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	5210	2021-03-10 06:59:58.026	page-moved-notification
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5211	2021-03-10 06:59:58.026	loginUriProvider
com.atlassian.confluence.plugins.confluence-inline-tasks	5212	2021-03-10 06:59:58.026	date-helper-js-resources
confluence.web.resources	5213	2021-03-10 06:59:58.026	bigpipe
com.atlassian.confluence.plugins.confluence-email-resources	5214	2021-03-10 06:59:58.026	manage-notifications-email-adg-footer-item
com.atlassian.streams.confluence	5215	2021-03-10 06:59:58.026	date-pa-IN
confluence.admin.user	5216	2021-03-10 06:59:58.026	browsegroups
com.atlassian.auiplugin	5217	2021-03-10 06:59:58.026	internal-src-js-aui-fancy-file-input
com.atlassian.confluence.plugins.confluence-inline-tasks	5218	2021-03-10 06:59:58.026	editor-autocomplete-date-css
com.atlassian.applinks.applinks-oauth-plugin	5219	2021-03-10 06:59:58.026	oauth-2lo-config
com.atlassian.auiplugin	5220	2021-03-10 06:59:58.026	jquery-ui-position
com.atlassian.confluence.plugins.confluence-file-notifications	5221	2021-03-10 06:59:58.026	file-notifications-file-details-file-comments
com.atlassian.confluence.plugins.confluence-inline-tasks	5222	2021-03-10 06:59:58.026	view-blog-tasks-email-action-item
com.atlassian.confluence.plugins.confluence-files	5223	2021-03-10 06:59:58.026	confluenceFileService
com.atlassian.streams	5224	2021-03-10 06:59:58.026	date-sr-Latn-BA
com.atlassian.confluence.plugins.confluence-space-directory	5225	2021-03-10 06:59:58.026	dateFormatterFactory
confluence.user.menu	5226	2021-03-10 06:59:58.026	follow
com.atlassian.confluence.plugins.confluence-link-browser	5227	2021-03-10 06:59:58.026	link-browser-tab-search
com.atlassian.gadgets.directory	5228	2021-03-10 06:59:58.026	gadget-directory-admin-client
com.atlassian.confluence.plugins.confluence-user-rest	5229	2021-03-10 06:59:58.026	confluenceUserManagementRest-filter
confluence.extra.userlister	5230	2021-03-10 06:59:58.026	confluence.extra.userlister.xwork
com.atlassian.confluence.extra.flyingpdf	5231	2021-03-10 06:59:58.026	configpdfstyle
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	5232	2021-03-10 06:59:58.026	rest-filter
com.atlassian.confluence.plugins.confluence-software-project	5233	2021-03-10 06:59:58.026	SoftwareProjectSpaceEventListener
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	5234	2021-03-10 06:59:58.026	renderer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5235	2021-03-10 06:59:58.026	velocityEscapeTool
com.atlassian.plugin.notifications.notifications-module	5236	2021-03-10 06:59:58.026	backbone
confluence.web.components	5237	2021-03-10 06:59:58.026	property-panel
com.atlassian.streams.streams-thirdparty-plugin	5238	2021-03-10 06:59:58.026	webResourceManager
confluence.extractors.core	5239	2021-03-10 06:59:58.026	contentEntityMetadataChangeExtractor
com.atlassian.confluence.plugins.confluence-inline-comments	5240	2021-03-10 06:59:58.026	likes
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	5241	2021-03-10 06:59:58.026	tomcatHelper
com.atlassian.integration.jira.jira-integration-plugin	5242	2021-03-10 06:59:58.026	jira-resource-filter
com.atlassian.confluence.plugins.confluence-page-banner	5243	2021-03-10 06:59:58.026	content-metadata-page-restrictions-none
confluence.extra.jira	5244	2021-03-10 06:59:58.026	created-content-jira-remote-link-callback
com.atlassian.applinks.applinks-trustedapps-plugin	5245	2021-03-10 06:59:58.026	typeAccessor
com.atlassian.confluence.plugins.confluence-email-resources	5246	2021-03-10 06:59:58.026	reply-to-comment-email-adg-footer-item
com.atlassian.support.stp	5247	2021-03-10 06:59:58.026	webResourceManager
confluence.sections.admin.upgrade	5248	2021-03-10 06:59:58.026	resources
com.atlassian.mywork.mywork-common-plugin	5249	2021-03-10 06:59:58.026	loginUriProvider
com.atlassian.auiplugin	5250	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-result-set
com.atlassian.streams.confluence	5251	2021-03-10 06:59:58.026	xhtmlRenderer
com.atlassian.applinks.applinks-basicauth-plugin	5252	2021-03-10 06:59:58.026	requestFactory
com.atlassian.confluence.plugins.confluence-mobile	5253	2021-03-10 06:59:58.026	mobile-super-batch-exclusion-filter
confluence.filters.core	5254	2021-03-10 06:59:58.026	httpRequestStatsFilter
com.atlassian.confluence.plugins.confluence-inline-tasks	5255	2021-03-10 06:59:58.026	tasks-recipients-provider
com.atlassian.plugin.notifications.notifications-module	5256	2021-03-10 06:59:58.026	userRole
com.atlassian.streams.confluence	5257	2021-03-10 06:59:58.026	date-smn-FI
com.atlassian.analytics.analytics-client	5258	2021-03-10 06:59:58.026	analyticsEmailHasher
com.atlassian.confluence.plugins.confluence-dashboard	5259	2021-03-10 06:59:58.026	pluginHibernateSessionFactory
com.atlassian.confluence.plugins.expand-macro	5260	2021-03-10 06:59:58.026	expand-macro-css-only
com.atlassian.plugins.atlassian-nav-links-plugin	5261	2021-03-10 06:59:58.026	projectManager
com.atlassian.streams	5262	2021-03-10 06:59:58.026	appLinkServiceExtensions
com.atlassian.streams	5263	2021-03-10 06:59:58.026	date-th-TH
com.atlassian.confluence.editor	5264	2021-03-10 06:59:58.026	macroParameterTypeParser
com.atlassian.streams	5265	2021-03-10 06:59:58.026	date-sr-Latn-CS
com.atlassian.auiplugin	5266	2021-03-10 06:59:58.026	internal-@atlassian-aui-src-js-aui-restful-table-class-names
com.atlassian.confluence.plugins.confluence-jira-metadata	5267	2021-03-10 06:59:58.026	confluence-jira-metadata-rest
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5268	2021-03-10 06:59:58.026	userManagerContextItem
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	5269	2021-03-10 06:59:58.026	transactionTemplate
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5270	2021-03-10 06:59:58.026	confluence-upm-osgi-menu
confluence.listeners.core	5271	2021-03-10 06:59:58.026	pluginCounterInvalidator
com.atlassian.confluence.tinymceplugin	5272	2021-03-10 06:59:58.026	editor-autocomplete-resources
com.atlassian.oauth.consumer.sal	5273	2021-03-10 06:59:58.026	tokenStore
com.atlassian.plugin.notifications.notifications-module	5274	2021-03-10 06:59:58.026	userServerManager
com.atlassian.streams	5275	2021-03-10 06:59:58.026	date-lv-LV
com.atlassian.confluence.plugins.confluence-inline-comments	5276	2021-03-10 06:59:58.026	display-reply-view
com.atlassian.streams	5277	2021-03-10 06:59:58.026	date-fr-CH
confluence.web.resources	5278	2021-03-10 06:59:58.026	aui-experimental
com.atlassian.confluence.extra.widgetconnector	5279	2021-03-10 06:59:58.026	web-widget-xhtml
com.atlassian.confluence.plugins.confluence-email-resources	5280	2021-03-10 06:59:58.026	content-templates-contextual-excerpt-pattern-1.0.0
com.atlassian.applinks.applinks-plugin	5281	2021-03-10 06:59:58.026	velocityContextFactory
com.atlassian.auiplugin	5282	2021-03-10 06:59:58.026	aui-select
com.atlassian.applinks.applinks-trustedapps-plugin	5283	2021-03-10 06:59:58.026	webResourceUrlProvider
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	5284	2021-03-10 06:59:58.026	bandanaToAoMigrationController
com.atlassian.support.stp	5285	2021-03-10 06:59:58.026	supportZipFileServerServlet
com.atlassian.querylang.confluence-cql-plugin	5286	2021-03-10 06:59:58.026	now-zero-arg-function
com.atlassian.confluence.plugins.confluence-dashboard	5287	2021-03-10 06:59:58.026	confluenceDashboardWhiteList
com.atlassian.applinks.applinks-oauth-plugin	5288	2021-03-10 06:59:58.026	applinks-oauth-ui
com.atlassian.plugins.atlassian-nps-plugin	5289	2021-03-10 06:59:58.026	nps-amd-shims
com.atlassian.plugin.jslibs	5290	2021-03-10 06:59:58.026	uri-1.14.1
com.atlassian.integration.jira.jira-integration-plugin	5291	2021-03-10 06:59:58.026	i18nResolver
com.atlassian.confluence.keyboardshortcuts	5292	2021-03-10 06:59:58.026	tinymce.p
\.


--
-- Data for Name: AO_7CDE43_EVENT; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public."AO_7CDE43_EVENT" ("EVENT_KEY", "ID", "NOTIFICATION_ID") FROM stdin;
\.


--
-- Data for Name: AO_7CDE43_FILTER_PARAM; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public."AO_7CDE43_FILTER_PARAM" ("ID", "NOTIFICATION_ID", "PARAM_KEY", "PARAM_VALUE") FROM stdin;
\.


--
-- Data for Name: AO_7CDE43_NOTIFICATION; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public."AO_7CDE43_NOTIFICATION" ("ID", "NOTIFICATION_SCHEME_ID") FROM stdin;
\.


--
-- Data for Name: AO_7CDE43_NOTIFICATION_SCHEME; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public."AO_7CDE43_NOTIFICATION_SCHEME" ("DESCRIPTION", "ID", "SCHEME_NAME") FROM stdin;
\.


--
-- Data for Name: AO_7CDE43_RECIPIENT; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public."AO_7CDE43_RECIPIENT" ("ID", "INDIVIDUAL", "NOTIFICATION_ID", "PARAM_DISPLAY", "PARAM_VALUE", "SERVER_ID", "TYPE") FROM stdin;
\.


--
-- Data for Name: AO_7CDE43_SERVER_CONFIG; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public."AO_7CDE43_SERVER_CONFIG" ("CUSTOM_TEMPLATE_PATH", "DEFAULT_USER_ID_TEMPLATE", "ENABLED_FOR_ALL_USERS", "GROUPS_WITH_ACCESS", "ID", "NOTIFICATION_MEDIUM_KEY", "SERVER_NAME") FROM stdin;
\.


--
-- Data for Name: AO_7CDE43_SERVER_PARAM; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public."AO_7CDE43_SERVER_PARAM" ("ID", "PARAM_KEY", "PARAM_VALUE", "SERVER_CONFIG_ID") FROM stdin;
\.


--
-- Data for Name: AO_88263F_HEALTH_CHECK_STATUS; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public."AO_88263F_HEALTH_CHECK_STATUS" ("APPLICATION_NAME", "COMPLETE_KEY", "DESCRIPTION", "FAILED_DATE", "FAILURE_REASON", "ID", "IS_HEALTHY", "IS_RESOLVED", "RESOLVED_DATE", "SEVERITY", "STATUS_NAME") FROM stdin;
Confluence	com.atlassian.confluence.plugins.confluence-healthcheck-plugin:eolHealthCheck	Checks if the running version of Confluence is approaching, or has reached End of Life.	2021-03-10 07:02:26.388	Confluence version 6.0 has reached End of Life. Please upgrade Confluence to a supported version.	1	f	f	\N	MAJOR	End of Life
Confluence	com.atlassian.confluence.plugins.confluence-healthcheck-plugin:jdkHealthCheck	Checks if your JDK / JRE version and vendor are supported.	2021-03-10 07:02:26.388	OpenJDK Runtime Environment is not a supported Java distribution.	2	f	f	\N	CRITICAL	Java Version and Vendor
\.


--
-- Data for Name: AO_88263F_PROPERTIES; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public."AO_88263F_PROPERTIES" ("ID", "PROPERTY_NAME", "PROPERTY_VALUE") FROM stdin;
1	last-run	1615359746479
\.


--
-- Data for Name: AO_88263F_READ_NOTIFICATIONS; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public."AO_88263F_READ_NOTIFICATIONS" ("ID", "IS_SNOOZED", "NOTIFICATION_ID", "SNOOZE_COUNT", "SNOOZE_DATE", "USER_KEY") FROM stdin;
1	t	1	1	2021-03-10 07:03:14.71	2c948084781aef2b01781af03f920000
2	t	2	1	2021-03-10 07:03:15.417	2c948084781aef2b01781af03f920000
\.


--
-- Data for Name: AO_88BB94_BATCH_NOTIFICATION; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public."AO_88BB94_BATCH_NOTIFICATION" ("BATCHING_COLUMN", "CONTENT_TYPE", "ID", "NOTIFICATION_KEY", "PAYLOAD") FROM stdin;
\.


--
-- Data for Name: AO_92296B_AORECENTLY_VIEWED; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public."AO_92296B_AORECENTLY_VIEWED" ("CONTENT_ID", "CONTENT_TYPE", "ID", "LAST_VIEW_DATE", "SPACE_KEY", "USER_KEY") FROM stdin;
\.


--
-- Data for Name: AO_9412A1_AONOTIFICATION; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public."AO_9412A1_AONOTIFICATION" ("ACTION", "ACTION_ICON_URL", "APPLICATION", "APPLICATION_LINK_ID", "CREATED", "DESCRIPTION", "ENTITY", "GLOBAL_ID", "GROUPING_ID", "ICON_URL", "ID", "ITEM_ICON_URL", "ITEM_TITLE", "ITEM_URL", "METADATA", "PINNED", "READ", "STATUS", "TITLE", "UPDATED", "URL", "USER") FROM stdin;
\.


--
-- Data for Name: AO_9412A1_AOREGISTRATION; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public."AO_9412A1_AOREGISTRATION" ("DATA", "ID", "UPDATED") FROM stdin;
\.


--
-- Data for Name: AO_9412A1_AOTASK; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public."AO_9412A1_AOTASK" ("APPLICATION", "APPLICATION_LINK_ID", "CREATED", "DESCRIPTION", "ENTITY", "GLOBAL_ID", "ID", "ITEM_ICON_URL", "ITEM_TITLE", "METADATA", "STATUS", "TITLE", "UPDATED", "URL", "USER") FROM stdin;
\.


--
-- Data for Name: AO_9412A1_AOUSER; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public."AO_9412A1_AOUSER" ("CREATED", "ID", "LAST_READ_NOTIFICATION_ID", "TASK_ORDERING", "UPDATED", "USERNAME") FROM stdin;
\.


--
-- Data for Name: AO_9412A1_USER_APP_LINK; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public."AO_9412A1_USER_APP_LINK" ("APPLICATION_LINK_ID", "AUTH_VERIFIED", "CREATED", "ID", "UPDATED", "USER_ID") FROM stdin;
\.


--
-- Data for Name: AO_A0B856_WEB_HOOK_LISTENER_AO; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public."AO_A0B856_WEB_HOOK_LISTENER_AO" ("DESCRIPTION", "ENABLED", "EVENTS", "EXCLUDE_BODY", "FILTERS", "ID", "LAST_UPDATED", "LAST_UPDATED_USER", "NAME", "PARAMETERS", "REGISTRATION_METHOD", "URL") FROM stdin;
\.


--
-- Data for Name: AO_BAF3AA_AOINLINE_TASK; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public."AO_BAF3AA_AOINLINE_TASK" ("ASSIGNEE_USER_KEY", "BODY", "COMPLETE_DATE", "COMPLETE_USER_KEY", "CONTENT_ID", "CREATE_DATE", "CREATOR_USER_KEY", "DUE_DATE", "GLOBAL_ID", "ID", "TASK_STATUS", "UPDATE_DATE") FROM stdin;
\.


--
-- Data for Name: AO_DC98AE_AOHELP_TIP; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public."AO_DC98AE_AOHELP_TIP" ("DISMISSED_HELP_TIP", "ID", "USER_KEY") FROM stdin;
\.


--
-- Data for Name: EVENTS; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public."EVENTS" (rev, history, partition, sequence, event) FROM stdin;
\.


--
-- Data for Name: SECRETS; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public."SECRETS" (key, value) FROM stdin;
\.


--
-- Data for Name: SNAPSHOTS; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public."SNAPSHOTS" (key, value) FROM stdin;
\.


--
-- Data for Name: attachmentdata; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.attachmentdata (attachmentdataid, hibernateversion, attversion, data, attachmentid) FROM stdin;
\.


--
-- Data for Name: audit_affected_object; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.audit_affected_object (id, name, type, auditrecordid) FROM stdin;
786433	test	Space	720899
786434	test	Space	720900
786435	test	Space	720901
786436	test	Space	720902
786437	test	Space	720903
786438	test	Space	720904
786439	test	Space	720905
786440	test	Space	720906
786441	test	Space	720907
786442	test	Space	720908
786443	test	Space	720909
786444	test	Space	720910
786445	test	Space	720911
786446	test	Space	720912
786447	test	Space	720913
786448	test	Space	720914
786449	test	Space	720915
786450	test	Space	720916
786451	test	Space	720917
786452	test	Space	720918
786453	test	Space	720919
786454	test	Space	720920
786455	test	Space	720921
786456	test	Space	720922
786457	test	Space	720923
786458	test	Space	720924
786459	test	Space	720925
786460	test	Space	720926
786461	test	Space	720927
786462	test	Space	720928
786463	test	Space	720929
786464	test	Space	720930
786465	test	Space	720931
786466	test	Space	720932
786467	test	Space	720933
786468	test	Space	720934
786469	test	Space	720935
786470	test	Space	720936
786471	test	Space	720937
786472	test	Space	720938
786473	test	Space	720939
786474	test	Space	720940
786475	test	Space	720941
786476	test	Space	720942
786477	test	Space	720943
786478	test	Space	720944
786479	test	Space	720945
786480	test	Space	720946
786481	test	Space	720947
786482	test	Space	720948
786483	test	Space	720949
786484	test	Space	720950
786485	test	Space	720951
786486	test	Space	720952
786487	test	Space	720953
786488	test	Space	720954
786489	test	Space	720955
786490	test	Space	720956
786491	test	Space	720957
786492	test	Space	720958
786493	test	Space	720959
786494	test	Space	720960
786495	test	Space	720961
786496	test	Space	720962
786497	test	Space	720963
786498	test	Space	720964
786499	test	Space	720965
786500	test	Space	720966
786501	test	Space	720967
786502	test	Space	720968
786503	test	Space	720969
786504	test	Space	720970
786505	test	Space	720971
786506	test	Space	720972
786507	test	Space	720973
786508	test	Space	720974
786509	test	Space	720975
786510	test	Space	720976
786511	test	Space	720977
786512	test	Space	720978
786513	test	Space	720979
786514	test	Space	720980
786515	test	Space	720981
786516	test	Space	720982
786517	test	Space	720983
786518	test	Space	720984
786519	test	Space	720985
786520	test	Space	720986
786521	test	Space	720987
786522	test	Space	720988
786523	test	Space	720989
786524	test	Space	720990
786525	test	Space	720991
786526	test	Space	720992
786527	test	Space	720993
786528	test	Space	720994
786529	test	Space	720995
786530	test	Space	720996
786531	test	Space	720997
786532	test	Space	720998
786533	test	Space	720999
786534	test	Space	721000
786535	test	Space	721001
786536	test	Space	721002
786537	test	Space	721003
786538	test	Space	721004
786539	test	Space	721005
786540	test	Space	721006
786541	test	Space	721007
786542	test	Space	721008
\.


--
-- Data for Name: audit_changed_value; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.audit_changed_value (id, name, oldvalue, newvalue, auditrecordid) FROM stdin;
753665	Space type		global	720897
753666	Space status		CURRENT	720897
753667	Name		test	720897
753668	Space key		TEST	720897
753669	Home page		page: test v.1 (327683)	720897
753670	Group	confluence-users		720899
753671	Type	VIEWSPACE		720899
753672	Type	VIEWSPACE		720900
753673	User	admin		720900
753674	Group	confluence-administrators		720901
753675	Type	VIEWSPACE		720901
753676	Group	confluence-users		720902
753677	Type	COMMENT		720902
753678	Type	COMMENT		720903
753679	User	admin		720903
753680	Group	confluence-administrators		720904
753681	Type	COMMENT		720904
753682	Type	VIEWSPACE		720905
753683	Group	confluence-administrators		720906
753684	Type	SETPAGEPERMISSIONS		720906
753685	Type	REMOVEMAIL		720907
753686	Group	confluence-users		720908
753687	Type	REMOVEMAIL		720908
753688	Type	REMOVEMAIL		720909
753689	User	admin		720909
753690	Group	confluence-users		720910
753691	Type	SETPAGEPERMISSIONS		720910
753692	Type	SETPAGEPERMISSIONS		720911
753693	User	admin		720911
753694	Group	confluence-administrators		720912
753695	Type	EXPORTSPACE		720912
753696	Type	EXPORTPAGE		720913
753697	Group	confluence-users		720914
753698	Type	EXPORTPAGE		720914
753699	Type	EXPORTPAGE		720915
753700	User	admin		720915
753701	Group	confluence-administrators		720916
753702	Type	REMOVEMAIL		720916
753703	Type	EXPORTSPACE		720917
753704	Group	confluence-users		720918
753705	Type	EXPORTSPACE		720918
753706	Type	EXPORTSPACE		720919
753707	User	admin		720919
753708	Group	confluence-administrators		720920
753709	Type	EDITBLOG		720920
753710	Type	REMOVEATTACHMENT		720921
753711	Group	confluence-users		720922
753712	Type	REMOVEATTACHMENT		720922
753713	Type	REMOVEATTACHMENT		720923
753714	User	admin		720923
753715	Group	confluence-administrators		720924
753716	Type	EXPORTPAGE		720924
753717	Type	EDITBLOG		720925
753718	Group	confluence-users		720926
753719	Type	EDITBLOG		720926
753720	Type	EDITBLOG		720927
753721	User	admin		720927
753722	Group	confluence-administrators		720928
753723	Type	CREATEATTACHMENT		720928
753724	Type	REMOVEBLOG		720929
753725	Group	confluence-users		720930
753726	Type	REMOVEBLOG		720930
753727	Type	REMOVEBLOG		720931
753728	User	admin		720931
753729	Group	confluence-administrators		720932
753730	Type	REMOVEATTACHMENT		720932
753731	Type	CREATEATTACHMENT		720933
753732	Group	confluence-users		720934
753733	Type	CREATEATTACHMENT		720934
753734	Type	CREATEATTACHMENT		720935
753735	User	admin		720935
753736	Group	confluence-administrators		720936
753737	Type	REMOVECOMMENT		720936
753738	Type	REMOVEPAGE		720937
753739	Group	confluence-users		720938
753740	Type	REMOVEPAGE		720938
753741	Type	REMOVEPAGE		720939
753742	User	admin		720939
753743	Group	confluence-administrators		720940
753744	Type	REMOVEBLOG		720940
753745	Type	REMOVECOMMENT		720941
753746	Group	confluence-users		720942
753747	Type	REMOVECOMMENT		720942
753748	Type	REMOVECOMMENT		720943
753749	User	admin		720943
753750	Group	confluence-users		720944
753751	Type	EDITSPACE		720944
753752	Type	EDITSPACE		720945
753753	User	admin		720945
753754	Group	confluence-administrators		720946
753755	Type	EDITSPACE		720946
753756	Type	COMMENT		720947
753757	Group	confluence-administrators		720948
753758	Type	REMOVEPAGE		720948
753759	Type	SETSPACEPERMISSIONS		720949
753760	User	admin		720949
753761	Group	confluence-administrators		720950
753762	Type	SETSPACEPERMISSIONS		720950
753763	Type	EDITSPACE		720951
753764	Group		confluence-administrators	720952
753765	Type		VIEWSPACE	720952
753766	Space		TEST	720952
753767	Type		VIEWSPACE	720953
753768	Space		TEST	720953
753769	User		admin	720953
753770	Group		confluence-users	720954
753771	Type		VIEWSPACE	720954
753772	Space		TEST	720954
753773	Type		VIEWSPACE	720955
753774	Space		TEST	720955
753775	Group		confluence-administrators	720956
753776	Type		REMOVEOWNCONTENT	720956
753777	Space		TEST	720956
753778	Type		REMOVEOWNCONTENT	720957
753779	Space		TEST	720957
753780	User		admin	720957
753781	Group		confluence-users	720958
753782	Type		REMOVEOWNCONTENT	720958
753783	Space		TEST	720958
753784	Type		REMOVEOWNCONTENT	720959
753785	Space		TEST	720959
753786	Group		confluence-administrators	720960
753787	Type		COMMENT	720960
753788	Space		TEST	720960
753789	Type		COMMENT	720961
753790	Space		TEST	720961
753791	User		admin	720961
753792	Group		confluence-users	720962
753793	Type		COMMENT	720962
753794	Space		TEST	720962
753795	Type		COMMENT	720963
753796	Space		TEST	720963
753797	Group		confluence-administrators	720964
753798	Type		EDITSPACE	720964
753799	Space		TEST	720964
753800	Type		EDITSPACE	720965
753801	Space		TEST	720965
753802	User		admin	720965
753803	Group		confluence-users	720966
753804	Type		EDITSPACE	720966
753805	Space		TEST	720966
753806	Type		EDITSPACE	720967
753807	Space		TEST	720967
753808	Group		confluence-administrators	720968
753809	Type		SETSPACEPERMISSIONS	720968
753810	Space		TEST	720968
753811	Type		SETSPACEPERMISSIONS	720969
753812	Space		TEST	720969
753813	User		admin	720969
753814	Group		confluence-administrators	720970
753815	Type		REMOVEPAGE	720970
753816	Space		TEST	720970
753817	Type		REMOVEPAGE	720971
753818	Space		TEST	720971
753819	User		admin	720971
753820	Group		confluence-users	720972
753821	Type		REMOVEPAGE	720972
753822	Space		TEST	720972
753823	Type		REMOVEPAGE	720973
753824	Space		TEST	720973
753825	Group		confluence-administrators	720974
753826	Type		REMOVECOMMENT	720974
753827	Space		TEST	720974
753828	Type		REMOVECOMMENT	720975
753829	Space		TEST	720975
753830	User		admin	720975
753831	Group		confluence-users	720976
753832	Type		REMOVECOMMENT	720976
753833	Space		TEST	720976
753834	Type		REMOVECOMMENT	720977
753835	Space		TEST	720977
753836	Group		confluence-administrators	720978
753837	Type		REMOVEBLOG	720978
753838	Space		TEST	720978
753839	Type		REMOVEBLOG	720979
753840	Space		TEST	720979
753841	User		admin	720979
753842	Group		confluence-users	720980
753843	Type		REMOVEBLOG	720980
753844	Space		TEST	720980
753845	Type		REMOVEBLOG	720981
753846	Space		TEST	720981
753847	Group		confluence-administrators	720982
753848	Type		CREATEATTACHMENT	720982
753849	Space		TEST	720982
753850	Type		CREATEATTACHMENT	720983
753851	Space		TEST	720983
753852	User		admin	720983
753853	Group		confluence-users	720984
753854	Type		CREATEATTACHMENT	720984
753855	Space		TEST	720984
753856	Type		CREATEATTACHMENT	720985
753857	Space		TEST	720985
753858	Group		confluence-administrators	720986
753859	Type		REMOVEATTACHMENT	720986
753860	Space		TEST	720986
753861	Type		REMOVEATTACHMENT	720987
753862	Space		TEST	720987
753863	User		admin	720987
753864	Group		confluence-users	720988
753865	Type		REMOVEATTACHMENT	720988
753866	Space		TEST	720988
753867	Type		REMOVEATTACHMENT	720989
753868	Space		TEST	720989
753869	Group		confluence-administrators	720990
753870	Type		EDITBLOG	720990
753871	Space		TEST	720990
753872	Type		EDITBLOG	720991
753873	Space		TEST	720991
753874	User		admin	720991
753875	Group		confluence-users	720992
753876	Type		EDITBLOG	720992
753877	Space		TEST	720992
753878	Type		EDITBLOG	720993
753879	Space		TEST	720993
753880	Group		confluence-administrators	720994
753881	Type		EXPORTPAGE	720994
753882	Space		TEST	720994
753883	Type		EXPORTPAGE	720995
753884	Space		TEST	720995
753885	User		admin	720995
753886	Group		confluence-users	720996
753887	Type		EXPORTPAGE	720996
753888	Space		TEST	720996
753889	Type		EXPORTPAGE	720997
753890	Space		TEST	720997
753891	Group		confluence-administrators	720998
753892	Type		EXPORTSPACE	720998
753893	Space		TEST	720998
753894	Type		EXPORTSPACE	720999
753895	Space		TEST	720999
753896	User		admin	720999
753897	Group		confluence-users	721000
753898	Type		EXPORTSPACE	721000
753899	Space		TEST	721000
753900	Type		EXPORTSPACE	721001
753901	Space		TEST	721001
753902	Group		confluence-administrators	721002
753903	Type		REMOVEMAIL	721002
753904	Space		TEST	721002
753905	Type		REMOVEMAIL	721003
753906	Space		TEST	721003
753907	User		admin	721003
753908	Group		confluence-users	721004
753909	Type		REMOVEMAIL	721004
753910	Space		TEST	721004
753911	Type		REMOVEMAIL	721005
753912	Space		TEST	721005
753913	Group		confluence-administrators	721006
753914	Type		SETPAGEPERMISSIONS	721006
753915	Space		TEST	721006
753916	Type		SETPAGEPERMISSIONS	721007
753917	Space		TEST	721007
753918	User		admin	721007
753919	Group		confluence-users	721008
753920	Type		SETPAGEPERMISSIONS	721008
753921	Space		TEST	721008
\.


--
-- Data for Name: auditrecord; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.auditrecord (auditrecordid, summary, description, category, address, sysamdin, authorname, authorfullname, authorkey, objectname, objecttype, searchstring, creationdate) FROM stdin;
720898	Space import		Import/Export	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	TEST	Space	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space import import/export test	1615359801700
720897	Space configuration updated		Spaces	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	test	Space	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space configuration updated spaces test type global status current name key home page page: v.1 (327683)	1615359801751
720899	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-users	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions confluence-users group test type viewspace	1615359804555
720900	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	admin	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions user test type viewspace	1615359804605
720901	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-administrators	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions confluence-administrators group test type viewspace	1615359804621
720902	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-users	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions confluence-users group test type comment	1615359804637
720903	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	admin	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions user test type comment	1615359804651
720904	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-administrators	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions confluence-administrators group test type comment	1615359804662
720905	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	anonymous	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions anonymous user test type viewspace	1615359804673
720906	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-administrators	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions confluence-administrators group test type setpagepermissions	1615359804685
720907	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	anonymous	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions anonymous user test type removemail	1615359804694
720908	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-users	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions confluence-users group test type removemail	1615359804703
720909	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	admin	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions user test type removemail	1615359804712
720910	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-users	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions confluence-users group test type setpagepermissions	1615359804721
720911	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	admin	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions user test type setpagepermissions	1615359804730
720912	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-administrators	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions confluence-administrators group test type exportspace	1615359804739
720913	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	anonymous	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions anonymous user test type exportpage	1615359804758
720914	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-users	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions confluence-users group test type exportpage	1615359804767
720915	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	admin	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions user test type exportpage	1615359804779
720916	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-administrators	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions confluence-administrators group test type removemail	1615359804790
720917	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	anonymous	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions anonymous user test type exportspace	1615359804799
720918	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-users	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions confluence-users group test type exportspace	1615359804806
720919	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	admin	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions user test type exportspace	1615359804815
720920	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-administrators	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions confluence-administrators group test type editblog	1615359804825
720921	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	anonymous	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions anonymous user test type removeattachment	1615359804834
720922	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-users	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions confluence-users group test type removeattachment	1615359804841
720923	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	admin	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions user test type removeattachment	1615359804849
720951	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	anonymous	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions anonymous user test type editspace	1615359805092
720924	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-administrators	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions confluence-administrators group test type exportpage	1615359804857
720925	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	anonymous	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions anonymous user test type editblog	1615359804866
720926	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-users	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions confluence-users group test type editblog	1615359804874
720927	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	admin	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions user test type editblog	1615359804890
720928	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-administrators	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions confluence-administrators group test type createattachment	1615359804898
720929	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	anonymous	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions anonymous user test type removeblog	1615359804906
720930	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-users	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions confluence-users group test type removeblog	1615359804914
720931	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	admin	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions user test type removeblog	1615359804923
720932	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-administrators	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions confluence-administrators group test type removeattachment	1615359804932
720933	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	anonymous	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions anonymous user test type createattachment	1615359804942
720934	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-users	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions confluence-users group test type createattachment	1615359804952
720935	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	admin	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions user test type createattachment	1615359804960
720936	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-administrators	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions confluence-administrators group test type removecomment	1615359804968
720937	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	anonymous	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions anonymous user test type removepage	1615359804976
720938	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-users	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions confluence-users group test type removepage	1615359804983
720939	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	admin	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions user test type removepage	1615359804991
720940	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-administrators	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions confluence-administrators group test type removeblog	1615359805004
720941	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	anonymous	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions anonymous user test type removecomment	1615359805012
720942	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-users	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions confluence-users group test type removecomment	1615359805019
720943	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	admin	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions user test type removecomment	1615359805026
720944	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-users	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions confluence-users group test type editspace	1615359805035
720945	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	admin	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions user test type editspace	1615359805042
720946	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-administrators	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions confluence-administrators group test type editspace	1615359805049
720947	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	anonymous	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions anonymous user test type comment	1615359805058
720948	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-administrators	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions confluence-administrators group test type removepage	1615359805068
720949	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	admin	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions user test type setspacepermissions	1615359805077
720950	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-administrators	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission removed permissions confluence-administrators group test type setspacepermissions	1615359805084
720952	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-administrators	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions confluence-administrators group test type viewspace	1615359805103
720953	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	admin	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions user test type viewspace	1615359805120
720954	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-users	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions confluence-users group test type viewspace	1615359805131
720955	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	anonymous	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions anonymous user test type viewspace	1615359805142
720956	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-administrators	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions confluence-administrators group test type removeowncontent	1615359805152
720957	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	admin	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions user test type removeowncontent	1615359805163
720958	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-users	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions confluence-users group test type removeowncontent	1615359805173
720959	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	anonymous	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions anonymous user test type removeowncontent	1615359805185
720960	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-administrators	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions confluence-administrators group test type comment	1615359805196
720961	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	admin	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions user test type comment	1615359805207
720962	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-users	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions confluence-users group test type comment	1615359805220
720963	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	anonymous	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions anonymous user test type comment	1615359805232
720964	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-administrators	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions confluence-administrators group test type editspace	1615359805240
720965	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	admin	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions user test type editspace	1615359805250
720966	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-users	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions confluence-users group test type editspace	1615359805260
720967	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	anonymous	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions anonymous user test type editspace	1615359805270
720968	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-administrators	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions confluence-administrators group test type setspacepermissions	1615359805278
720969	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	admin	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions user test type setspacepermissions	1615359805287
720970	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-administrators	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions confluence-administrators group test type removepage	1615359805297
720971	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	admin	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions user test type removepage	1615359805306
720972	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-users	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions confluence-users group test type removepage	1615359805316
720973	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	anonymous	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions anonymous user test type removepage	1615359805325
720974	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-administrators	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions confluence-administrators group test type removecomment	1615359805334
720975	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	admin	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions user test type removecomment	1615359805344
720976	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-users	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions confluence-users group test type removecomment	1615359805354
720977	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	anonymous	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions anonymous user test type removecomment	1615359805364
720978	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-administrators	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions confluence-administrators group test type removeblog	1615359805372
720979	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	admin	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions user test type removeblog	1615359805381
720980	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-users	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions confluence-users group test type removeblog	1615359805391
720981	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	anonymous	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions anonymous user test type removeblog	1615359805401
720982	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-administrators	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions confluence-administrators group test type createattachment	1615359805411
720983	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	admin	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions user test type createattachment	1615359805421
720984	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-users	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions confluence-users group test type createattachment	1615359805432
720985	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	anonymous	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions anonymous user test type createattachment	1615359805442
720986	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-administrators	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions confluence-administrators group test type removeattachment	1615359805450
720987	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	admin	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions user test type removeattachment	1615359805463
720988	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-users	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions confluence-users group test type removeattachment	1615359805470
720989	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	anonymous	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions anonymous user test type removeattachment	1615359805478
720990	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-administrators	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions confluence-administrators group test type editblog	1615359805486
720991	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	admin	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions user test type editblog	1615359805495
720992	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-users	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions confluence-users group test type editblog	1615359805504
720993	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	anonymous	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions anonymous user test type editblog	1615359805514
720994	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-administrators	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions confluence-administrators group test type exportpage	1615359805523
720995	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	admin	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions user test type exportpage	1615359805532
720996	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-users	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions confluence-users group test type exportpage	1615359805541
720997	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	anonymous	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions anonymous user test type exportpage	1615359805550
720998	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-administrators	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions confluence-administrators group test type exportspace	1615359805559
720999	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	admin	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions user test type exportspace	1615359805568
721000	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-users	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions confluence-users group test type exportspace	1615359805577
721001	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	anonymous	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions anonymous user test type exportspace	1615359805587
721002	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-administrators	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions confluence-administrators group test type removemail	1615359805597
721003	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	admin	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions user test type removemail	1615359805606
721004	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-users	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions confluence-users group test type removemail	1615359805616
721005	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	anonymous	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions anonymous user test type removemail	1615359805626
721006	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-administrators	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions confluence-administrators group test type setpagepermissions	1615359805635
721007	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	admin	User	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions user test type setpagepermissions	1615359805644
721008	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c948084781aef2b01781af03f920000	confluence-users	Group	admin 2c948084781aef2b01781af03f920000 172.20.0.1 space permission added permissions confluence-users group test type setpagepermissions	1615359805655
\.


--
-- Data for Name: bandana; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.bandana (bandanaid, bandanacontext, bandanakey, bandanavalue) FROM stdin;
1	_GLOBAL	confluence.server.id	<string>BUCZ-PDGX-RIGQ-YC69</string>
2	_GLOBAL	confluence.server.installation.date	<date>2021-03-10 06:59:58.26 GMT</date>
4	_GLOBAL	synchrony_collaborative_editor_UUID	<string>6193203f-da63-4971-b26a-677fb2c58216</string>
5	com.atlassian.confluence.efi.store.GlobalStorageServiceImpl	efi.store.onboarding.plugin-installed-date-in-millis	<string>1615359598211</string>
6	_GLOBAL	AO_9412A1_#	<string>8</string>
7	_GLOBAL	AO_26DB7F_#	<string>1</string>
8	_GLOBAL	plugin.manager.state.Map	<map/>
9	_GLOBAL	atlassian.confluence.plugin.resource.counter	<int>2</int>
10	_GLOBAL	com.atlassian.confluence.plugins.confluence-edge-index:build	<string>1</string>
11	_GLOBAL	com.atlassian.crowd.embedded.admin:build	<string>3</string>
12	_GLOBAL	c.a.c.plugins:confluence-user-rest:firstCheckDateMs	<string>1615359662574</string>
13	_GLOBAL	c.a.c.plugins:confluence-user-rest:hadHadASingleDirectory	<string>true</string>
14	_GLOBAL	com.atlassian.confluence.plugins.confluence-healthcheck-plugin:build	<string>1</string>
15	_GLOBAL	com.atlassian.plugins.atlassian-whitelist-core-plugin:build	<string>3</string>
16	_GLOBAL	com.atlassian.plugins.custom_apps.hasCustomOrder	<string>false</string>
17	_GLOBAL	com.atlassian.plugins.atlassian-nav-links-plugin:build	<string>1</string>
18	_GLOBAL	com.atlassian.confluence.plugins.confluence-inline-tasks:build	<string>3</string>
19	_GLOBAL	com.atlassian.confluence.plugins.confluence-document-conversion-library:build	<string>1</string>
20	_GLOBAL	confluence.extra.masterdetail:build	<string>2</string>
21	_GLOBAL	com.atlassian.confluence.plugins.confluence-inline-comments:build	<string>1</string>
22	_GLOBAL	com.atlassian.confluence.plugins.confluence-space-ia:build	<string>1</string>
23	_GLOBAL	com.atlassian.confluence.plugins.confluence-roadmap-plugin:build	<string>6</string>
27	_GLOBAL	com.atlassian.upm:notifications:dismissal-plugin.request	<list/>
29	_GLOBAL	com.atlassian.upm:notifications:dismissal-evaluation.expired	<list/>
30	_GLOBAL	com.atlassian.upm:notifications:dismissal-evaluation.nearlyexpired	<list/>
31	_GLOBAL	com.atlassian.upm:notifications:dismissal-edition.mismatch	<list/>
32	_GLOBAL	com.atlassian.upm:notifications:dismissal-maintenance.expired	<list/>
33	_GLOBAL	com.atlassian.upm:notifications:dismissal-maintenance.nearlyexpired	<list/>
34	_GLOBAL	com.atlassian.upm:notifications:dismissal-auto.updated.plugin	<list/>
35	_GLOBAL	com.atlassian.upm:notifications:dismissal-auto.updated.upm	<list/>
36	_GLOBAL	com.atlassian.upm.request.PluginSettingsPluginRequestStore:requests:requests_v2	<list/>
24	_GLOBAL	com.atlassian.upm.atlassian-universal-plugin-manager-plugin:build	<string>5</string>
37	_GLOBAL	com.atlassian.support.stp:build	<string>1</string>
38	_GLOBAL	com.atlassian.confluence.plugins.confluence-create-content-plugin:build	<string>4</string>
39	_GLOBAL	com.atlassian.analytics.client.configuration..policy_acknowledged	<string>true</string>
40	_GLOBAL	gadget.counter	<int>2</int>
41	_GLOBAL	com.atlassian.analytics.client.configuration.uuid	<string>2ba366a9-b057-490d-a1a7-eedce0547dec</string>
42	_GLOBAL	com.atlassian.analytics.client.configuration.serverid	<string>BUCZ-PDGX-RIGQ-YC69</string>
43	_GLOBAL	com.atlassian.analytics.client.configuration..analytics_enabled	<string>true</string>
25	_GLOBAL	com.atlassian.upm.log.PluginSettingsAuditLogService:log:upm_audit_log_v3	<list>\n  <string>{&quot;userKey&quot;:&quot;Confluence&quot;,&quot;date&quot;:1615359671391,&quot;i18nKey&quot;:&quot;upm.auditLog.upm.startup&quot;,&quot;entryType&quot;:&quot;UPM_STARTUP&quot;,&quot;params&quot;:[]}</string>\n</list>
44	_GLOBAL	synchrony_collaborative_editor_app_base_url	<string>http://localhost:8090/synchrony-proxy</string>
45	_GLOBAL	synchrony_collaborative_editor_app_passphrase	<string>WYiCabGMXhc3j9rxLMSXcZuzrCJYDexvVvxUX56pH7w=</string>
46	_GLOBAL	com.atlassian.upm:notifications:notification-update	<list>\n  <string>com.atlassian.confluence.ext.newcode-macro-plugin</string>\n  <string>com.atlassian.support.stp</string>\n</list>
47	_GLOBAL	synchrony_collaborative_editor_app_id	<string>Atlassian-56b21ed4-8510-3ffc-9378-6c79da6c7548</string>
48	_GLOBAL	synchrony_collaborative_editor_app_secret	<string>0N7fUc/0HK5R0EfF61mZBoxUmDSY2XxXLxIMWNIgHZo=</string>
49	_GLOBAL	confluence.darkfeature	<string>site-wide.shared-drafts,site-wide.synchrony</string>
3	_GLOBAL	atlassian.confluence.settings	<settings>\n  <doNotSave>false</doNotSave>\n  <allowCamelCase>false</allowCamelCase>\n  <allowTrackbacks>false</allowTrackbacks>\n  <allowThreadedComments>true</allowThreadedComments>\n  <externalUserManagement>false</externalUserManagement>\n  <denyPublicSignup>true</denyPublicSignup>\n  <emailAdminMessageOff>false</emailAdminMessageOff>\n  <almostSupportPeriodEndMessageOff>false</almostSupportPeriodEndMessageOff>\n  <senMissingInLicenseMessageOff>true</senMissingInLicenseMessageOff>\n  <baseUrlAdminMessageOff>false</baseUrlAdminMessageOff>\n  <allowRemoteApi>false</allowRemoteApi>\n  <allowRemoteApiAnonymous>false</allowRemoteApiAnonymous>\n  <antiXssMode>true</antiXssMode>\n  <gzippingResponse>true</gzippingResponse>\n  <disableLogo>false</disableLogo>\n  <sharedMode>false</sharedMode>\n  <enableDidYouMean>false</enableDidYouMean>\n  <enableQuickNav>true</enableQuickNav>\n  <enableSpaceStyles>false</enableSpaceStyles>\n  <enableOpenSearch>true</enableOpenSearch>\n  <showSystemInfoIn500Page>false</showSystemInfoIn500Page>\n  <showApplicationTitle>false</showApplicationTitle>\n  <referrerSettings>\n    <collectReferrerData>true</collectReferrerData>\n    <excludedReferrers/>\n    <hideExternalReferrers>false</hideExternalReferrers>\n  </referrerSettings>\n  <captchaSettings>\n    <enableCaptcha>false</enableCaptcha>\n    <enableDebug>false</enableDebug>\n    <captchaGroups class="list"/>\n    <exclude>registered</exclude>\n  </captchaSettings>\n  <customHtmlSettings>\n    <beforeHeadEnd></beforeHeadEnd>\n    <afterBodyStart></afterBodyStart>\n    <beforeBodyEnd></beforeBodyEnd>\n  </customHtmlSettings>\n  <colourSchemesSettings>\n    <colourSchemeType>custom</colourSchemeType>\n  </colourSchemesSettings>\n  <loginManagerSettings>\n    <enableElevatedSecurityCheck>true</enableElevatedSecurityCheck>\n    <loginAttemptsThreshold>3</loginAttemptsThreshold>\n  </loginManagerSettings>\n  <confluenceHttpParameters>\n    <connectionTimeout>10000</connectionTimeout>\n    <socketTimeout>10000</socketTimeout>\n    <enabled>true</enabled>\n  </confluenceHttpParameters>\n  <attachmentMaxSize>104857600</attachmentMaxSize>\n  <auditLogRetentionNumber>3</auditLogRetentionNumber>\n  <auditLogRetentionUnit>Years</auditLogRetentionUnit>\n  <draftSaveInterval>30000</draftSaveInterval>\n  <maxAttachmentsInUI>5</maxAttachmentsInUI>\n  <siteTitle>Confluence</siteTitle>\n  <documentationUrlPattern>http://docs.atlassian.com/confluence/docs-{0}/{1}</documentationUrlPattern>\n  <showContactAdministratorsForm>true</showContactAdministratorsForm>\n  <emailAddressVisibility>email.address.public</emailAddressVisibility>\n  <defaultEncoding>UTF-8</defaultEncoding>\n  <maxThumbHeight>300</maxThumbHeight>\n  <maxThumbWidth>300</maxThumbWidth>\n  <backupAttachmentsDaily>true</backupAttachmentsDaily>\n  <backupDaily>true</backupDaily>\n  <backupPath>/var/atlassian/application-data/confluence/backups</backupPath>\n  <nofollowExternalLinks>true</nofollowExternalLinks>\n  <indexingLanguage>english</indexingLanguage>\n  <globalDefaultLocale>en_GB</globalDefaultLocale>\n  <dailyBackupFilePrefix>backup-</dailyBackupFilePrefix>\n  <dailyBackupDateFormatPattern>yyyy_MM_dd</dailyBackupDateFormatPattern>\n  <supportRequestEmail>confluence-autosupportrequests@atlassian.com</supportRequestEmail>\n  <defaultSpaceHomepageTitle>Home</defaultSpaceHomepageTitle>\n  <baseUrl>http://localhost:8090/confluence</baseUrl>\n  <attachmentDataStore>file.system.based.attachments.storage</attachmentDataStore>\n  <displayLinkIcons>false</displayLinkIcons>\n  <addWildcardsToUserAndGroupSearches>true</addWildcardsToUserAndGroupSearches>\n  <xsrfAddComments>true</xsrfAddComments>\n  <webSudoTimeout>10</webSudoTimeout>\n  <webSudoEnabled>true</webSudoEnabled>\n  <defaultUsersGroup>confluence-users</defaultUsersGroup>\n  <attachmentSecurityLevel>smart</attachmentSecurityLevel>\n  <enableJavascriptTop>true</enableJavascriptTop>\n  <supportPeriodEndMessageOff>false</supportPeriodEndMessageOff>\n  <enableWysiwyg>true</enableWysiwyg>\n  <useWysiwygByDefault>true</useWysiwygByDefault>\n  <numberOfBreadcrumbAncestors>1</numberOfBreadcrumbAncestors>\n  <viewSpaceGoesToSpaceSummary>false</viewSpaceGoesToSpaceSummary>\n  <maxSimultaneousQuickNavRequests>40</maxSimultaneousQuickNavRequests>\n  <maxRssItems>200</maxRssItems>\n  <rssTimeout>60</rssTimeout>\n  <pageTimeout>120</pageTimeout>\n</settings>
50	com.atlassian.confluence.content.render.xhtml.migration.macro.MacroMigrationService	migration.required	<boolean>false</boolean>
51	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#LocalTaskQueueFlushJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
52	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#AuditLogCleaner	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
53	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#CleanTempDirectoryJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
54	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#EhCacheCompactionJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
55	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#TaskQueueFlushJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
56	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#ClusterCacheCompactionJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
57	com.atlassian.confluence.schedule.ScheduledJobHistory	DEFAULT#EhCacheCompactionJob	<list>\n  <com.atlassian.confluence.schedule.ScheduledJobHistory>\n    <startDate>2021-03-10 07:02:26.119 GMT</startDate>\n    <endDate>2021-03-10 07:02:26.139 GMT</endDate>\n  </com.atlassian.confluence.schedule.ScheduledJobHistory>\n</list>
58	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#LaasPerformanceLoggingJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
59	com.atlassian.confluence.schedule.ScheduledJobHistory	DEFAULT#LaasPerformanceLoggingJob	<list>\n  <com.atlassian.confluence.schedule.ScheduledJobHistory>\n    <startDate>2021-03-10 07:02:26.161 GMT</startDate>\n    <endDate>2021-03-10 07:02:26.166 GMT</endDate>\n  </com.atlassian.confluence.schedule.ScheduledJobHistory>\n</list>
60	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#ClusterSafetyJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
61	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#ClearExpiredRememberMeTokensJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
62	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#JournalCleaner	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
63	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#MailQueueFlushJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
64	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#clearOldMailErrorsJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
79	com.atlassian.confluence.efi.store.GlobalStorageServiceImpl	efi.store.onboarding.onboardingSpaceCheckJob	<string>JOB_FIRST_EXECUTE</string>
65	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#DeferredFileDeletionJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
66	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#BackupJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
67	com.atlassian.confluence.schedule.ScheduledJobHistory	DEFAULT#DeferredFileDeletionJob	<list>\n  <com.atlassian.confluence.schedule.ScheduledJobHistory>\n    <startDate>2021-03-10 07:02:26.261 GMT</startDate>\n    <endDate>2021-03-10 07:02:26.267 GMT</endDate>\n  </com.atlassian.confluence.schedule.ScheduledJobHistory>\n</list>
68	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#DailyReportJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
69	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#ESIndexJournalVerifierJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
70	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#batchingJobConfig	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
71	com.atlassian.confluence.schedule.ScheduledJobConfiguration	com.atlassian.confluence.plugins.confluence-onboarding#onboardingSpaceCheckJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
72	com.atlassian.confluence.schedule.ScheduledJobConfiguration	com.atlassian.confluence.plugins.confluence-daily-summary-email#summaryEmail	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
73	com.atlassian.confluence.schedule.ScheduledJobConfiguration	com.atlassian.confluence.plugins.recently-viewed-plugin#purgeHistoryJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
74	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#flushEdgeIndexQueue	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
75	com.atlassian.confluence.schedule.ScheduledJobConfiguration	com.atlassian.confluence.plugins.confluence-jira-metadata#jira-metadata-cache-config	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
76	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#conversionQueueMonitor	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
77	com.atlassian.confluence.schedule.ScheduledJobConfiguration	com.atlassian.confluence.plugins.confluence-onboarding#onboardingNumberOfUsersCheckJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
78	com.atlassian.confluence.efi.store.GlobalStorageServiceImpl	efi.store.onboarding.onboardingNumberOfUsersCheckJob	<string>JOB_FIRST_EXECUTE</string>
80	com.atlassian.confluence.schedule.ScheduledJobHistory	com.atlassian.confluence.plugins.confluence-onboarding#onboardingNumberOfUsersCheckJob	<list>\n  <com.atlassian.confluence.schedule.ScheduledJobHistory>\n    <startDate>2021-03-10 07:02:26.530 GMT</startDate>\n    <endDate>2021-03-10 07:02:26.581 GMT</endDate>\n  </com.atlassian.confluence.schedule.ScheduledJobHistory>\n</list>
82	_GLOBAL	plugin.settings.com.atlassian.confluence.bigpipe.BigPipeSettingsManager	<com.atlassian.confluence.internal.bigpipe.BigPipeSettingsManager-BigPipeSettings>\n  <pluginSettings>\n    <entry>\n      <string>com.atlassian.confluence.plugins.confluence-content-report-plugin:content-report-table</string>\n      <boolean>false</boolean>\n    </entry>\n    <entry>\n      <string>com.gliffy.integration.confluence:gliffy</string>\n      <boolean>true</boolean>\n    </entry>\n    <entry>\n      <string>com.atlassian.confluence.plugins.confluence-inline-tasks:tasks-report-macro</string>\n      <boolean>false</boolean>\n    </entry>\n    <entry>\n      <string>confluence.macros.advanced:blog-posts</string>\n      <boolean>false</boolean>\n    </entry>\n    <entry>\n      <string>confluence.macros.advanced:children</string>\n      <boolean>true</boolean>\n    </entry>\n    <entry>\n      <string>confluence.extra.jira:jira</string>\n      <boolean>true</boolean>\n    </entry>\n    <entry>\n      <string>confluence.extra.jira:jirachart</string>\n      <boolean>true</boolean>\n    </entry>\n    <entry>\n      <string>confluence.macros.advanced:include</string>\n      <boolean>false</boolean>\n    </entry>\n    <entry>\n      <string>confluence.macros.advanced:excerpt-include</string>\n      <boolean>false</boolean>\n    </entry>\n    <entry>\n      <string>confluence.extra.chart:chart</string>\n      <boolean>true</boolean>\n    </entry>\n    <entry>\n      <string>org.randombits.confluence.toc:toc</string>\n      <boolean>false</boolean>\n    </entry>\n    <entry>\n      <string>confluence.extra.masterdetail:detailssummary</string>\n      <boolean>true</boolean>\n    </entry>\n    <entry>\n      <string>com.atlassian.confluence.contributors:contributors</string>\n      <boolean>false</boolean>\n    </entry>\n    <entry>\n      <string>com.atlassian.confluence.contributors:contributors-summary</string>\n      <boolean>false</boolean>\n    </entry>\n    <entry>\n      <string>confluence.macros.advanced:recently-updated</string>\n      <boolean>true</boolean>\n    </entry>\n    <entry>\n      <string>confluence.extra.jira:jiraissues</string>\n      <boolean>false</boolean>\n    </entry>\n  </pluginSettings>\n</com.atlassian.confluence.internal.bigpipe.BigPipeSettingsManager-BigPipeSettings>
81	com.atlassian.confluence.schedule.ScheduledJobHistory	com.atlassian.confluence.plugins.confluence-onboarding#onboardingSpaceCheckJob	<list>\n  <com.atlassian.confluence.schedule.ScheduledJobHistory>\n    <startDate>2021-03-10 07:02:26.530 GMT</startDate>\n    <endDate>2021-03-10 07:02:26.586 GMT</endDate>\n  </com.atlassian.confluence.schedule.ScheduledJobHistory>\n</list>
84	com.atlassian.confluence.efi.store.GlobalStorageServiceImpl	efi.store.onboarding.is-first-space-created	<string>true</string>
83	com.atlassian.confluence.schedule.ScheduledJobHistory	DEFAULT#conversionQueueMonitor	<list>\n  <com.atlassian.confluence.schedule.ScheduledJobHistory>\n    <startDate>2021-03-10 07:02:30.0 GMT</startDate>\n    <endDate>2021-03-10 07:02:30.3 GMT</endDate>\n  </com.atlassian.confluence.schedule.ScheduledJobHistory>\n  <com.atlassian.confluence.schedule.ScheduledJobHistory>\n    <startDate>2021-03-10 07:02:45.0 GMT</startDate>\n    <endDate>2021-03-10 07:02:45.4 GMT</endDate>\n  </com.atlassian.confluence.schedule.ScheduledJobHistory>\n  <com.atlassian.confluence.schedule.ScheduledJobHistory>\n    <startDate>2021-03-10 07:03:00.3 GMT</startDate>\n    <endDate>2021-03-10 07:03:00.9 GMT</endDate>\n  </com.atlassian.confluence.schedule.ScheduledJobHistory>\n  <com.atlassian.confluence.schedule.ScheduledJobHistory>\n    <startDate>2021-03-10 07:03:15.0 GMT</startDate>\n    <endDate>2021-03-10 07:03:15.2 GMT</endDate>\n  </com.atlassian.confluence.schedule.ScheduledJobHistory>\n  <com.atlassian.confluence.schedule.ScheduledJobHistory>\n    <startDate>2021-03-10 07:03:30.0 GMT</startDate>\n    <endDate>2021-03-10 07:03:30.7 GMT</endDate>\n  </com.atlassian.confluence.schedule.ScheduledJobHistory>\n  <com.atlassian.confluence.schedule.ScheduledJobHistory>\n    <startDate>2021-03-10 07:03:45.0 GMT</startDate>\n    <endDate>2021-03-10 07:03:45.3 GMT</endDate>\n  </com.atlassian.confluence.schedule.ScheduledJobHistory>\n  <com.atlassian.confluence.schedule.ScheduledJobHistory>\n    <startDate>2021-03-10 07:04:00.2 GMT</startDate>\n    <endDate>2021-03-10 07:04:00.5 GMT</endDate>\n  </com.atlassian.confluence.schedule.ScheduledJobHistory>\n  <com.atlassian.confluence.schedule.ScheduledJobHistory>\n    <startDate>2021-03-10 07:04:15.0 GMT</startDate>\n    <endDate>2021-03-10 07:04:15.3 GMT</endDate>\n  </com.atlassian.confluence.schedule.ScheduledJobHistory>\n  <com.atlassian.confluence.schedule.ScheduledJobHistory>\n    <startDate>2021-03-10 07:04:30.0 GMT</startDate>\n    <endDate>2021-03-10 07:04:30.15 GMT</endDate>\n  </com.atlassian.confluence.schedule.ScheduledJobHistory>\n  <com.atlassian.confluence.schedule.ScheduledJobHistory>\n    <startDate>2021-03-10 07:04:45.1 GMT</startDate>\n    <endDate>2021-03-10 07:04:45.4 GMT</endDate>\n  </com.atlassian.confluence.schedule.ScheduledJobHistory>\n  <com.atlassian.confluence.schedule.ScheduledJobHistory>\n    <startDate>2021-03-10 07:05:00.0 GMT</startDate>\n    <endDate>2021-03-10 07:05:00.3 GMT</endDate>\n  </com.atlassian.confluence.schedule.ScheduledJobHistory>\n  <com.atlassian.confluence.schedule.ScheduledJobHistory>\n    <startDate>2021-03-10 07:05:15.0 GMT</startDate>\n    <endDate>2021-03-10 07:05:15.3 GMT</endDate>\n  </com.atlassian.confluence.schedule.ScheduledJobHistory>\n  <com.atlassian.confluence.schedule.ScheduledJobHistory>\n    <startDate>2021-03-10 07:05:30.0 GMT</startDate>\n    <endDate>2021-03-10 07:05:30.2 GMT</endDate>\n  </com.atlassian.confluence.schedule.ScheduledJobHistory>\n  <com.atlassian.confluence.schedule.ScheduledJobHistory>\n    <startDate>2021-03-10 07:05:45.1 GMT</startDate>\n    <endDate>2021-03-10 07:05:45.6 GMT</endDate>\n  </com.atlassian.confluence.schedule.ScheduledJobHistory>\n  <com.atlassian.confluence.schedule.ScheduledJobHistory>\n    <startDate>2021-03-10 07:06:00.1 GMT</startDate>\n    <endDate>2021-03-10 07:06:00.5 GMT</endDate>\n  </com.atlassian.confluence.schedule.ScheduledJobHistory>\n</list>
\.


--
-- Data for Name: bodycontent; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.bodycontent (bodycontentid, body, contentid, bodytypeid) FROM stdin;
589825	<ac:layout><ac:layout-section ac:type="single"><ac:layout-cell><ac:structured-macro ac:macro-id="5da7fd26-ee1a-4fe5-a582-dcf9bfaf8f45" ac:name="tip" ac:schema-version="1"><ac:rich-text-body><p>Welcome to your first space. Go ahead, edit and customize this home page any way you like. We've added some sample content to get you started.</p></ac:rich-text-body></ac:structured-macro></ac:layout-cell></ac:layout-section><ac:layout-section ac:type="single"><ac:layout-cell><p><ac:image><ri:attachment ri:filename="peak.jpeg" /></ac:image></p><p>&nbsp;</p></ac:layout-cell></ac:layout-section><ac:layout-section ac:type="two_right_sidebar"><ac:layout-cell><hr /><h1><strong>Goal</strong></h1><h2><em>Your space homepage should summarize what the space is for, and provide links to key resources for your team.&nbsp;</em></h2><hr /><p>&nbsp;</p><h1><strong>Core team</strong></h1><table><tbody><tr><td><p style="text-align: center;"><ac:image ac:thumbnail="true" ac:width="100"><ri:attachment ri:filename="Harvey.jpg" /></ac:image></p><p style="text-align: center;"><strong>Harvey Honner-white<br /></strong>Team Lead<strong>&nbsp;</strong></p></td><td><p style="text-align: center;"><ac:image ac:thumbnail="true" ac:width="100"><ri:attachment ri:filename="Alana.jpg" /></ac:image></p><p style="text-align: center;"><strong>Alana Baczewski<br />&nbsp;</strong>Tech Lead</p></td><td><p style="text-align: center;"><ac:image ac:thumbnail="true" ac:width="100"><ri:attachment ri:filename="Sameer.jpg" /></ac:image></p><p style="text-align: center;"><strong>Sameer Farrell<br />&nbsp;</strong>Marketing</p></td><td><p style="text-align: center;"><ac:image ac:thumbnail="true" ac:width="100"><ri:attachment ri:filename="Cassie.jpg" /></ac:image></p><p style="text-align: center;"><strong>Mia Bednarczyk<br />&nbsp;</strong>Recruitment</p></td></tr></tbody></table><p>&nbsp;</p><h1><strong>Roadmap</strong></h1><p>You can edit this roadmap or create a new one by adding the Roadmap Planner macro from the Insert menu. Link your Confluence pages to each bar to add visibility, and find more tips by reading the Atlassian blog:&nbsp;<a href="http://blogs.atlassian.com/2015/01/roadmap-planner-macro/">Plan better in 2015 with the Roadmap Planner macro</a>.</p><p><ac:structured-macro ac:macro-id="acab4a3d-dde3-4e22-a912-ce9f886e3e91" ac:name="roadmap" ac:schema-version="1"><ac:parameter ac:name="maplinks" /><ac:parameter ac:name="timeline">true</ac:parameter><ac:parameter ac:name="pagelinks" /><ac:parameter ac:name="source">%7B%22title%22%3A%22Roadmap%20Planner%22%2C%22timeline%22%3A%7B%22startDate%22%3A%222015-06-01%2000%3A00%3A00%22%2C%22endDate%22%3A%222015-12-31%2000%3A00%3A00%22%2C%22displayOption%22%3A%22MONTH%22%7D%2C%22lanes%22%3A%5B%7B%22title%22%3A%22Marketing%22%2C%22color%22%3A%7B%22lane%22%3A%22%23f15c75%22%2C%22bar%22%3A%22%23f58598%22%2C%22text%22%3A%22%23ffffff%22%2C%22count%22%3A1%7D%2C%22bars%22%3A%5B%7B%22title%22%3A%22Social%20campaign%22%2C%22description%22%3A%22Add%20a%20description%20to%20your%20bars%20here.%22%2C%22startDate%22%3A%222015-07-30%2011%3A10%3A05%22%2C%22duration%22%3A3.6435643564356437%2C%22rowIndex%22%3A0%2C%22id%22%3A%22e703c6a8-1649-4d20-9ccf-2c7a8698e385%22%2C%22pageLink%22%3A%7B%7D%7D%2C%7B%22title%22%3A%22Website%20development%22%2C%22description%22%3A%22Add%20a%20description%20to%20your%20bars%20here.%22%2C%22startDate%22%3A%222015-07-17%2006%3A24%3A57%22%2C%22duration%22%3A3.3069306930693068%2C%22rowIndex%22%3A1%2C%22id%22%3A%22655d454d-b701-4584-a301-9ea0bb86ed32%22%2C%22pageLink%22%3A%7B%7D%7D%2C%7B%22rowIndex%22%3A2%2C%22startDate%22%3A%222015-06-01%2000%3A00%3A00%22%2C%22id%22%3A%22c420ef33-ae28-4828-958f-8a9d793153b3%22%2C%22title%22%3A%22Crowdfunding%20campaign%22%2C%22description%22%3A%22Add%20a%20description%20to%20your%20bars%20here.%22%2C%22duration%22%3A2.5544554455445545%2C%22pageLink%22%3A%7B%7D%7D%5D%7D%2C%7B%22title%22%3A%22People%22%2C%22color%22%3A%7B%22lane%22%3A%22%23654982%22%2C%22bar%22%3A%22%238c77a1%22%2C%22text%22%3A%22%23ffffff%22%2C%22count%22%3A1%7D%2C%22bars%22%3A%5B%7B%22title%22%3A%22Recruitment%22%2C%22description%22%3A%22%22%2C%22startDate%22%3A%222015-06-01%2000%3A00%3A00%22%2C%22duration%22%3A2.5%2C%22rowIndex%22%3A0%2C%22id%22%3A%221230bab8-718c-47da-903a-2cbdcb220d97%22%2C%22pageLink%22%3A%7B%7D%7D%2C%7B%22rowIndex%22%3A0%2C%22startDate%22%3A%222015-08-17%2013%3A46%3A55%22%2C%22id%22%3A%228639d09c-59d1-4d1f-ad91-c78f04b20135%22%2C%22title%22%3A%22Assessment%20Period%22%2C%22description%22%3A%22%22%2C%22duration%22%3A2.910891089108911%2C%22pageLink%22%3A%7B%7D%7D%2C%7B%22rowIndex%22%3A1%2C%22startDate%22%3A%222015-09-01%2021%3A23%3A10%22%2C%22id%22%3A%22802b53f7-ba66-4415-984d-efef93b4caec%22%2C%22title%22%3A%22Training%22%2C%22description%22%3A%22%22%2C%22duration%22%3A2.5841584158415842%2C%22pageLink%22%3A%7B%7D%7D%2C%7B%22rowIndex%22%3A0%2C%22startDate%22%3A%222015-11-15%2006%3A10%3A41%22%2C%22id%22%3A%22502fac56-3849-415f-b412-af27c39229b7%22%2C%22title%22%3A%22Finalisation%22%2C%22description%22%3A%22%22%2C%22duration%22%3A1.4356435643564356%2C%22pageLink%22%3A%7B%7D%7D%5D%7D%2C%7B%22title%22%3A%22Product%22%2C%22color%22%3A%7B%22lane%22%3A%22%233b7fc4%22%2C%22bar%22%3A%22%236c9fd3%22%2C%22text%22%3A%22%23ffffff%22%2C%22count%22%3A1%7D%2C%22bars%22%3A%5B%7B%22rowIndex%22%3A0%2C%22startDate%22%3A%222015-06-24%2004%3A02%3A22%22%2C%22id%22%3A%2200ada54b-0998-41a5-aa98-712ecdec8c7f%22%2C%22title%22%3A%22Planning%22%2C%22description%22%3A%22%22%2C%22duration%22%3A2.1782178217821784%2C%22pageLink%22%3A%7B%7D%7D%2C%7B%22rowIndex%22%3A0%2C%22startDate%22%3A%222015-08-31%2001%3A54%3A03%22%2C%22id%22%3A%2271967f2c-f3ab-4871-aaf5-7cf31389e62f%22%2C%22title%22%3A%22Development%22%2C%22description%22%3A%22%22%2C%22duration%22%3A1.9207920792079207%2C%22pageLink%22%3A%7B%7D%7D%2C%7B%22rowIndex%22%3A0%2C%22startDate%22%3A%222015-10-29%2013%3A04%3A09%22%2C%22id%22%3A%22d76ac773-3ee7-495b-9d7f-1daf267dc58c%22%2C%22title%22%3A%22Testing%22%2C%22description%22%3A%22%22%2C%22duration%22%3A1%2C%22pageLink%22%3A%7B%7D%7D%2C%7B%22rowIndex%22%3A0%2C%22startDate%22%3A%222015-11-30%2002%3A36%3A49%22%2C%22id%22%3A%224f584dc6-63b8-4efa-a98e-a5d7bbe9910e%22%2C%22title%22%3A%22Deploy%22%2C%22description%22%3A%22%22%2C%22duration%22%3A1.0297029702970297%2C%22pageLink%22%3A%7B%7D%7D%5D%7D%5D%2C%22markers%22%3A%5B%7B%22title%22%3A%22Yearly%20Finalisation%22%2C%22markerDate%22%3A%222015-11-29%2012%3A21%3A23%22%7D%5D%7D</ac:parameter><ac:parameter ac:name="title">Roadmap%20Planner</ac:parameter><ac:parameter ac:name="hash">f0477dfac6f6ca380d8c5f2f44041947</ac:parameter></ac:structured-macro></p><p>&nbsp;</p><h1><strong>Know your spaces</strong>&nbsp;</h1><p>Everything your team is working on - meeting notes and agendas, project plans and timelines, technical documentation and more - is located in a space; it's home base for your team.</p><p>A small team should plan to have a space for the team, and a space for each big project. If you'll be working in Confluence with several other teams and departments, we recommend a space for each team as well as a space for each major cross-team project. The key is to think of a space as the container that holds all the important stuff - like pages, files, and blog posts - a team, group, or project needs to work.</p><h1><strong>Know your pages</strong></h1><p>If you're working on something related to your team - project plans, product requirements, blog posts, internal communications, you name it - create and store it in a Confluence page. Confluence pages offer a lot of flexibility in creating and storing information, and there are a number of useful page templates included to get you started, like the&nbsp;meeting notes template. Your spaces should be filled with pages that document your business processes, outline your plans, contain your files, and report on your progress. The more you learn to do in Confluence (adding tables and graphs, or embedding video and links are great places to start), the more engaging and helpful your pages will become.</p><p>Learn more by reading&nbsp;<a href="https://www.atlassian.com/collaboration/confluence-organize-work-in-spaces">Confluence 101: organize your work in spaces</a></p><p>&nbsp;</p><hr /></ac:layout-cell><ac:layout-cell><h1><strong>Quick navigation</strong></h1><p>When you create new pages in this space, they'll appear here automatically.</p><p><ac:structured-macro ac:macro-id="8ca379f2-ea2a-4fbb-bf4a-77619f9875ed" ac:name="children" ac:schema-version="2" /></p><h1><strong>Useful links</strong></h1><table><tbody><tr><th>Link</th><th>Description</th></tr><tr><td><a href="https://www.atlassian.com/collaboration/confluence-organize-work-in-spaces">Confluence 101: organize your work in spaces</a><a href="https://www.atlassian.com/collaboration/confluence-organize-work-in-spaces"></a></td><td><p>Chances are, the information you need to do your job lives in multiple places. Word docs, Evernote files, email, PDFs, even Post-it notes. It's scattered among different systems. And to make matters worse,&nbsp;<em>the stuff your teammates need is equally siloed</em>. If information had feelings, it would be lonely.</p><p>But with&nbsp;Confluence, you can bring all that information into one place.</p></td></tr><tr><td><a href="https://www.atlassian.com/collaboration/confluence-discuss-work-with-your-team">Confluence 101: discuss work with your team</a></td><td>Getting a project outlined and adding the right content are just the first steps. Now it's time for your team to weigh in.&nbsp;Confluence&nbsp;makes it easy to discuss your work - with your team, your boss, or your entire company - in the same place where you organized and created it.</td></tr><tr><td colspan="1"><a href="https://www.atlassian.com/collaboration/confluence-create-content-with-pages">Confluence 101: create content with pages</a></td><td colspan="1">Think of pages as a New Age &quot;document.&quot; If Word docs were rotary phones, Confluence pages would be smart phones. A smart phone still makes calls (like their rotary counterparts), but it can do so much more than that</td></tr></tbody></table><p><strong style="font-size: 24.0px;line-height: 1.25;"><br /></strong></p><p><strong style="font-size: 24.0px;line-height: 1.25;">Tasks</strong></p><table><tbody><tr><td><ac:task-list>\n<ac:task>\n<ac:task-id>59</ac:task-id>\n<ac:task-status>incomplete</ac:task-status>\n<ac:task-body><a href="https://confluence.atlassian.com/x/NgszKw">Customize the name, colour, and icon of Confluence</a>.</ac:task-body>\n</ac:task>\n<ac:task>\n<ac:task-id>56</ac:task-id>\n<ac:task-status>incomplete</ac:task-status>\n<ac:task-body>Decide who can see and edit this space or a specific page by clicking the <ac:image><ri:attachment ri:filename="lock-icon.png" /></ac:image> icon. Learn more about <a href="https://confluence.atlassian.com/x/liAC">Page Restrictions</a> and <a href="https://confluence.atlassian.com/x/ASEC">Space Permissions</a>.</ac:task-body>\n</ac:task>\n<ac:task>\n<ac:task-id>57</ac:task-id>\n<ac:task-status>incomplete</ac:task-status>\n<ac:task-body>Try adding an <a href="https://confluence.atlassian.com/x/2yAC">inline comment</a> by highlighting some text and click the comment icon.</ac:task-body>\n</ac:task>\n<ac:task>\n<ac:task-id>58</ac:task-id>\n<ac:task-status>incomplete</ac:task-status>\n<ac:task-body>Learn more about <a href="https://confluence.atlassian.com/x/SRwC">inviting your team to Confluence</a>.</ac:task-body>\n</ac:task>\n</ac:task-list>\n</td></tr></tbody></table></ac:layout-cell></ac:layout-section></ac:layout>	327683	2
589826		327684	0
589827	<p><span>You can add comments directly to images. Use file comments to review designs, add feedback, or just start a conversation.</span></p>	327691	2
589828	efionboardingspace	327692	0
\.


--
-- Data for Name: clustersafety; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.clustersafety (clustersafetyid, safetynumber) FROM stdin;
458753	-693162794
\.


--
-- Data for Name: confancestors; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.confancestors (descendentid, ancestorid, ancestorposition) FROM stdin;
\.


--
-- Data for Name: confversion; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.confversion (confversionid, buildnumber, installdate, versiontag, creationdate, lastmoddate) FROM stdin;
393217	7101	2021-03-10 07:00:56.315	\N	\N	\N
\.


--
-- Data for Name: content; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.content (contentid, contenttype, hibernateversion, title, lowertitle, version, creator, creationdate, lastmodifier, lastmoddate, versioncomment, prevver, content_status, pageid, spaceid, child_position, parentid, messageid, pluginkey, pluginver, parentccid, draftpageid, draftspacekey, drafttype, draftpageversion, parentcommentid, username) FROM stdin;
327681	USERINFO	1	\N	\N	1	\N	2021-03-10 07:00:55.993	\N	2021-03-10 07:00:55.993		\N	current	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2c948084781aef2b01781af03f920000
327682	GLOBALDESCRIPTION	1	\N	\N	1	\N	2021-03-10 07:00:56.307	\N	2021-03-10 07:00:56.307		\N	current	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
327683	PAGE	24	test	test	1	\N	2021-03-10 07:03:19.622	\N	2021-03-10 07:03:19.622		\N	current	\N	491521	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
327687	ATTACHMENT	2	Alana.jpg	alana.jpg	1	\N	2021-03-10 07:03:19.622	\N	2021-03-10 07:03:19.622		\N	current	327683	491521	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
327688	ATTACHMENT	3	peak.jpeg	peak.jpeg	1	\N	2021-03-10 07:03:19.622	\N	2021-03-10 07:03:19.622		\N	current	327683	491521	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
327689	ATTACHMENT	2	Harvey.jpg	harvey.jpg	1	\N	2021-03-10 07:03:19.622	\N	2021-03-10 07:03:19.622		\N	current	327683	491521	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
327690	ATTACHMENT	2	Cassie.jpg	cassie.jpg	1	\N	2021-03-10 07:03:19.622	\N	2021-03-10 07:03:19.622		\N	current	327683	491521	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
327685	ATTACHMENT	3	lock-icon.png	lock-icon.png	1	\N	2021-03-10 07:03:19.622	\N	2021-03-10 07:03:19.622		\N	current	327683	491521	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
327686	ATTACHMENT	3	Sameer.jpg	sameer.jpg	1	\N	2021-03-10 07:03:19.622	\N	2021-03-10 07:03:19.622		\N	current	327683	491521	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
327691	COMMENT	4	\N	\N	1	\N	2021-03-10 07:03:19.622	\N	2021-03-10 07:03:19.622		\N	current	327688	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
327692	SPACEDESCRIPTION	10	\N	\N	1	2c948084781aef2b01781af274e60001	2015-08-12 17:14:17.61	2c948084781aef2b01781af03f920000	2015-11-03 13:10:49.552		327684	current	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
327684	SPACEDESCRIPTION	13	\N	\N	2	2c948084781aef2b01781af274e60001	2015-08-12 17:14:17.61	2c948084781aef2b01781af03f920000	2021-03-10 07:03:21.731		\N	current	\N	491521	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
327693	PAGE	1	\N	\N	1	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.703	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.703		\N	draft	\N	491521	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
327694	ATTACHMENT	1	mobile_activity_screen.png	mobile_activity_screen.png	1	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.74	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.74		\N	current	327693	491521	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
327695	ATTACHMENT	1	mobile_login_screen.png	mobile_login_screen.png	1	2c948084781aef2b01781af03f920000	2021-03-10 07:03:26.08	2c948084781aef2b01781af03f920000	2021-03-10 07:03:26.08		\N	current	327693	491521	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
327696	ATTACHMENT	1	design_feedback.jpg	design_feedback.jpg	1	2c948084781aef2b01781af03f920000	2021-03-10 07:03:26.143	2c948084781aef2b01781af03f920000	2021-03-10 07:03:26.143		\N	current	327693	491521	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
327697	ATTACHMENT	1	cake.jpg	cake.jpg	1	2c948084781aef2b01781af03f920000	2021-03-10 07:03:26.229	2c948084781aef2b01781af03f920000	2021-03-10 07:03:26.229		\N	current	327693	491521	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
327698	ATTACHMENT	1	pie.png	pie.png	1	2c948084781aef2b01781af03f920000	2021-03-10 07:03:26.319	2c948084781aef2b01781af03f920000	2021-03-10 07:03:26.319		\N	current	327693	491521	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\.


--
-- Data for Name: content_label; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.content_label (id, labelid, contentid, pagetemplateid, owner, creationdate, lastmoddate, labelableid, labelabletype) FROM stdin;
688129	655361	327684	\N	2c948084781aef2b01781af03f920000	2015-09-21 12:19:53.445	2015-09-21 12:19:53.445	1998863	CONTENT
\.


--
-- Data for Name: content_perm; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.content_perm (id, cp_type, username, groupname, cps_id, creator, creationdate, lastmodifier, lastmoddate) FROM stdin;
\.


--
-- Data for Name: content_perm_set; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.content_perm_set (id, cont_perm_type, content_id, creationdate, lastmoddate) FROM stdin;
\.


--
-- Data for Name: content_relation; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.content_relation (relationid, targetcontentid, sourcecontentid, targettype, sourcetype, relationname, creationdate, lastmoddate, creator, lastmodifier) FROM stdin;
\.


--
-- Data for Name: contentproperties; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.contentproperties (propertyid, propertyname, stringval, longval, dateval, contentid) FROM stdin;
524289	macro-count.tip	2-1	\N	\N	327683
524290	macro-count.recently-updated	1-1	\N	\N	327683
524291	macro-count.contributors	1-1	\N	\N	327683
524292	macro-count.roadmap	2-1	\N	\N	327683
524293	macro-create-events-published-for-version	\N	2	\N	327683
524294	macro-count.children	2-1	\N	\N	327683
524303	MEDIA_TYPE	image/png	\N	\N	327685
524309	FILESIZE	\N	3448	\N	327685
524298	FILESIZE	\N	17681	\N	327686
524301	MINOR_EDIT	\N	1	\N	327686
524295	FILESIZE	\N	19306	\N	327687
524300	MEDIA_TYPE	image/jpeg	\N	\N	327687
524304	MINOR_EDIT	\N	1	\N	327687
524297	FILESIZE	\N	43498	\N	327688
524302	MINOR_EDIT	\N	1	\N	327688
524310	MEDIA_TYPE	image/jpeg	\N	\N	327688
524299	MINOR_EDIT	\N	1	\N	327689
524305	FILESIZE	\N	18662	\N	327689
524306	MEDIA_TYPE	image/jpeg	\N	\N	327689
524296	MINOR_EDIT	\N	1	\N	327690
524307	FILESIZE	\N	19123	\N	327690
524308	MEDIA_TYPE	image/jpeg	\N	\N	327690
524311	MINOR_EDIT	\N	1	\N	327685
524312	MEDIA_TYPE	image/jpeg	\N	\N	327686
524313	status	open	\N	\N	327691
524314	ANCHOR	{"type":"pin","page":1,"x":0.5071428571428571,"y":0.6082474226804123}	\N	\N	327691
524315	sync-rev-source	synchrony	\N	\N	327693
524316	share-id	049a493b-6eaf-4451-a860-f19e6fd0db5f	\N	\N	327693
524317	MEDIA_TYPE	image/png	\N	\N	327694
524318	FILESIZE	\N	94904	\N	327694
524319	MINOR_EDIT	\N	0	\N	327694
524320	HIDDEN	\N	0	\N	327694
524321	MEDIA_TYPE	image/png	\N	\N	327695
524322	FILESIZE	\N	53204	\N	327695
524323	MINOR_EDIT	\N	0	\N	327695
524324	HIDDEN	\N	0	\N	327695
524325	MEDIA_TYPE	image/jpeg	\N	\N	327696
524326	FILESIZE	\N	91912	\N	327696
524327	MINOR_EDIT	\N	0	\N	327696
524328	HIDDEN	\N	0	\N	327696
524329	MEDIA_TYPE	image/jpeg	\N	\N	327697
524330	FILESIZE	\N	14638	\N	327697
524331	MINOR_EDIT	\N	0	\N	327697
524332	HIDDEN	\N	0	\N	327697
524333	MEDIA_TYPE	image/png	\N	\N	327698
524334	FILESIZE	\N	23216	\N	327698
524335	MINOR_EDIT	\N	0	\N	327698
524336	HIDDEN	\N	0	\N	327698
\.


--
-- Data for Name: cwd_app_dir_group_mapping; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.cwd_app_dir_group_mapping (id, app_dir_mapping_id, application_id, directory_id, group_name) FROM stdin;
\.


--
-- Data for Name: cwd_app_dir_mapping; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.cwd_app_dir_mapping (id, application_id, directory_id, allow_all, list_index) FROM stdin;
131073	65537	98305	T	0
\.


--
-- Data for Name: cwd_app_dir_operation; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.cwd_app_dir_operation (app_dir_mapping_id, operation_type) FROM stdin;
131073	CREATE_ROLE
131073	UPDATE_GROUP
131073	UPDATE_USER_ATTRIBUTE
131073	CREATE_GROUP
131073	CREATE_USER
131073	UPDATE_GROUP_ATTRIBUTE
131073	UPDATE_USER
131073	DELETE_USER
131073	UPDATE_ROLE_ATTRIBUTE
131073	DELETE_ROLE
131073	UPDATE_ROLE
131073	DELETE_GROUP
\.


--
-- Data for Name: cwd_application; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.cwd_application (id, application_name, lower_application_name, created_date, updated_date, active, description, application_type, credential) FROM stdin;
65537	crowd-embedded	crowd-embedded	2021-03-10 07:00:55.436	2021-03-10 07:00:55.548	T	\N	GENERIC_APPLICATION	X
\.


--
-- Data for Name: cwd_application_address; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.cwd_application_address (application_id, remote_address) FROM stdin;
\.


--
-- Data for Name: cwd_application_attribute; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.cwd_application_attribute (application_id, attribute_value, attribute_name) FROM stdin;
65537	1	com.sun.jndi.ldap.connect.pool.initsize
65537	true	atlassian_sha1_applied
65537	30000	com.sun.jndi.ldap.connect.pool.timeout
65537	simple	com.sun.jndi.ldap.connect.pool.authentication
65537	0	com.sun.jndi.ldap.connect.pool.maxsize
65537	10	com.sun.jndi.ldap.connect.pool.prefsize
65537	true	aggregateMemberships
65537	plain ssl	com.sun.jndi.ldap.connect.pool.protocol
\.


--
-- Data for Name: cwd_directory; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.cwd_directory (id, directory_name, lower_directory_name, created_date, updated_date, active, description, impl_class, lower_impl_class, directory_type) FROM stdin;
98305	Confluence Internal Directory	confluence internal directory	2021-03-10 07:00:55.494	2021-03-10 07:00:55.494	T	Confluence default internal directory	com.atlassian.crowd.directory.InternalDirectory	com.atlassian.crowd.directory.internaldirectory	INTERNAL
\.


--
-- Data for Name: cwd_directory_attribute; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.cwd_directory_attribute (directory_id, attribute_value, attribute_name) FROM stdin;
98305	atlassian-security	user_encryption_method
\.


--
-- Data for Name: cwd_directory_operation; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.cwd_directory_operation (directory_id, operation_type) FROM stdin;
98305	CREATE_ROLE
98305	UPDATE_GROUP
98305	UPDATE_USER_ATTRIBUTE
98305	CREATE_USER
98305	CREATE_GROUP
98305	UPDATE_GROUP_ATTRIBUTE
98305	UPDATE_USER
98305	UPDATE_ROLE_ATTRIBUTE
98305	DELETE_USER
98305	DELETE_ROLE
98305	UPDATE_ROLE
98305	DELETE_GROUP
\.


--
-- Data for Name: cwd_group; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.cwd_group (id, group_name, lower_group_name, active, local, created_date, updated_date, description, group_type, directory_id) FROM stdin;
163841	confluence-administrators	confluence-administrators	T	F	2021-03-10 07:00:55.59	2021-03-10 07:00:55.59	\N	GROUP	98305
163842	confluence-users	confluence-users	T	F	2021-03-10 07:00:55.649	2021-03-10 07:00:55.649	\N	GROUP	98305
\.


--
-- Data for Name: cwd_group_attribute; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.cwd_group_attribute (id, group_id, directory_id, attribute_name, attribute_value, attribute_lower_value) FROM stdin;
\.


--
-- Data for Name: cwd_membership; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.cwd_membership (id, parent_id, child_group_id, child_user_id) FROM stdin;
294913	163842	\N	229377
294914	163841	\N	229377
\.


--
-- Data for Name: cwd_user; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.cwd_user (id, user_name, lower_user_name, active, created_date, updated_date, first_name, lower_first_name, last_name, lower_last_name, display_name, lower_display_name, email_address, lower_email_address, external_id, directory_id, credential) FROM stdin;
229377	admin	admin	T	2021-03-10 07:00:55.815	2021-03-10 07:00:55.815			admin	admin	admin	admin	admin@admin.com	admin@admin.com	8ecc4253-d62d-43d2-ba3f-0dcbd554b75b	98305	{PKCS5S2}saCZBmI9vkO9FPGMNFChAHcKLQBvUOl22Zacj3+c98nvkq93+Yc0uCnUZ+OIkIi2
\.


--
-- Data for Name: cwd_user_attribute; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.cwd_user_attribute (id, user_id, directory_id, attribute_name, attribute_value, attribute_lower_value) FROM stdin;
262145	229377	98305	passwordLastChanged	1615359655828	1615359655828
262146	229377	98305	requiresPasswordChange	false	false
262147	229377	98305	invalidPasswordAttempts	0	0
262148	229377	98305	lastAuthenticated	1615359656132	1615359656132
\.


--
-- Data for Name: cwd_user_credential_record; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.cwd_user_credential_record (id, user_id, password_hash, list_index) FROM stdin;
\.


--
-- Data for Name: decorator; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.decorator (decoratorid, spacekey, decoratorname, body, lastmoddate) FROM stdin;
\.


--
-- Data for Name: external_entities; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.external_entities (id, name, type) FROM stdin;
\.


--
-- Data for Name: external_members; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.external_members (extentityid, groupid) FROM stdin;
\.


--
-- Data for Name: extrnlnks; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.extrnlnks (linkid, contenttype, viewcount, url, lowerurl, contentid, creator, creationdate, lastmodifier, lastmoddate) FROM stdin;
\.


--
-- Data for Name: follow_connections; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.follow_connections (connectionid, follower, followee) FROM stdin;
\.


--
-- Data for Name: groups; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.groups (id, groupname) FROM stdin;
\.


--
-- Data for Name: hibernate_unique_key; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.hibernate_unique_key (next_hi) FROM stdin;
25
\.


--
-- Data for Name: imagedetails; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.imagedetails (attachmentid, height, width, mimetype) FROM stdin;
327694	793	385	image/png
327695	796	389	image/png
327696	360	640	image/pjpeg
327697	295	319	image/jpeg
327698	159	300	image/png
\.


--
-- Data for Name: indexqueueentries; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.indexqueueentries (entryid, creationdate, type, handle) FROM stdin;
\.


--
-- Data for Name: journalentry; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.journalentry (entry_id, journal_name, creationdate, type, message) FROM stdin;
1	main_index	2021-03-10 07:00:55.676	REINDEX_USERS_IN_GROUP	confluence-administrators
2	main_index	2021-03-10 07:00:55.684	REINDEX_USERS_IN_GROUP	confluence-users
3	main_index	2021-03-10 07:00:56.007	UPDATE_DOCUMENT	com.atlassian.confluence.user.PersonalInformation-327681
4	main_index	2021-03-10 07:00:56.062	UPDATE_DOCUMENT	com.atlassian.confluence.user.PersonalInformation-327681
5	main_index	2021-03-10 07:03:21.743	ADD_CHANGE_DOCUMENT	com.atlassian.confluence.spaces.SpaceDescription-327684
6	main_index	2021-03-10 07:03:21.744	UPDATE_DOCUMENT	com.atlassian.confluence.spaces.SpaceDescription-327684
\.


--
-- Data for Name: keystore; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.keystore (keyid, alias, type, algorithm, keyspec) FROM stdin;
32769	confluence:713051	public	RSA	MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAzuvxCz8mpf6wDhcula0CQSeW+bQ98JmjGRlgL8+0SiDhO2TFp7UH9nI20NEBG2MYxyGcruT8dVqFWaGfOAHb0UoLqtA8o3U+Bp4cdcQSkGDppfP1fzYNQo+4Vz5NGdR/ybtT/bJkKqhzRuc+fGkqsTp35+OY8b7x4fSlzUIM+X4yJ0FsWUn42G6qcXjgC8MfCsC6ImfMEFjlzvCHnF/Lhi3wb7vYadA8qyY+lI8uQglLHKK8Ll/iFSNx/CmPcbaX5rDCOe/SwCn7o477dMx8q7ODz0XaVJwAzicsLv0yoWCNA9eX/zuL2GH8csV4qZwfSEG7YQqk/SZVrJtD4vGdvQIDAQAB
32770	confluence:713051	private	RSA	MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDO6/ELPyal/rAOFy6VrQJBJ5b5tD3wmaMZGWAvz7RKIOE7ZMWntQf2cjbQ0QEbYxjHIZyu5Px1WoVZoZ84AdvRSguq0DyjdT4Gnhx1xBKQYOml8/V/Ng1Cj7hXPk0Z1H/Ju1P9smQqqHNG5z58aSqxOnfn45jxvvHh9KXNQgz5fjInQWxZSfjYbqpxeOALwx8KwLoiZ8wQWOXO8IecX8uGLfBvu9hp0DyrJj6Ujy5CCUscorwuX+IVI3H8KY9xtpfmsMI579LAKfujjvt0zHyrs4PPRdpUnADOJywu/TKhYI0D15f/O4vYYfxyxXipnB9IQbthCqT9JlWsm0Pi8Z29AgMBAAECggEABHtqCfvo9CeyEWgRT1bYnufYNm9KooN4G93SbnlcYXkDWp7qRMxK0HI1EO0KDgQQQBX7YnLIK37rDF/lcULhtk+ZNO6+9YJ0thN8MH/aBWxtUIsvhOfQkzcblNuJs4FzGtVMMoldRUBHWPXpgwE11nIasU2bMpdX1B9mwlgH1xVJpQDn82pbtR4W+JnXugY7ycHjYvujzKI0IWxUv0RNe1NBc8bcxvt9TReI09wLP9UYqKrs8I+tfcXVW/x1yVjJG9JypWrkQPlJ0Eo8pVft0pg3CZ6lMP0cgl7KoEJf/B1CeMNBH3kswqHiTpcwMGepXEIXrycfDTbDKfHXF/jcYQKBgQDuBPikAGUeu1aF1g8oPMDlcxCYIWwC98XQQzibl4z+FnXe6dKe0LpitffGa7covpisnZj3qltDj6AIEPAdGAKXkrcxFpYWbtRi1VaRLb3w9z+a4drPjeGB2sj1O59ttBz0prRZRNZCG4RKy5Vy2RMYvtdswSysJfi9SLkYH1+inQKBgQDejZMDeBTIp9aXJTEvI5Pots8cADo0ncQh83KkiynrXSlvENjhQxPoIR9lWUWV0YXHq4zxE2SXxJY/+n7H/8Nl2h5cZkNMUvrWNdvLenvX95cvwOrrGngpxqLJnRdN99CKjJXDWmtBzsiD/OhRv6u8uCFjH5Q9CWef/KvWlvXtoQKBgQCkrK/R16webQJZqlXmQtI6bTeH6WevTfmAM2HQ1DNp/+QhC6j60/KAJOF+WDvqZqN+mbKhdy2ZOp8/tWhK2LfCYnF39uZ0Ms2ia3NvEjSdqJJK+APJIaJpkxMCB/QvlDOMWGHieSu7pQoMLXoCcYkyz6Z/yc68c7D6VHwq4lnqSQKBgDWxDC3DE6iRLWlLlMEdoTp8mBzWRTSad04FkLv3wwZAdJWSB/DYoP3Yt91YmzwYz2Crl5Y1qoge6mzG/z07DCYPaFG8bjIEtvVlCwDdLPGejv/7V/Geci0J+g4P8yZhShOS9TKrJsM6ow+MvXOzfThLZ+qlHLtZAIINkFt2EiDhAoGAXjS6a/aCbFCU2sAqfj3xgCJiHzMgUZOgcnJlRLbNxiEwmuM1ZTllE3AlcQlCUZQp+jG2FgeTMx8Rr5y6/Cq7jgbR6s9He8St7vZ5OE6+FwoaJ8QVTjKwsOvzHJxIGBOaejkYiQdELeWEDpIAxzLF4An/jbfADGH+u9HOQbldqdQ=
\.


--
-- Data for Name: label; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.label (labelid, name, owner, namespace, creationdate, lastmoddate) FROM stdin;
655361	favourite	2c948084781aef2b01781af03f920000	my	2015-09-15 16:59:33.517	2015-09-15 16:59:33.517
\.


--
-- Data for Name: likes; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.likes (id, contentid, username, creationdate) FROM stdin;
\.


--
-- Data for Name: links; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.links (linkid, destpagetitle, lowerdestpagetitle, destspacekey, lowerdestspacekey, contentid, creator, creationdate, lastmodifier, lastmoddate) FROM stdin;
557059	//confluence.atlassian.com/x/SRwC	//confluence.atlassian.com/x/srwc	https	https	327683	2c948084781aef2b01781af03f920000	2015-09-21 12:31:34.257	2c948084781aef2b01781af03f920000	2015-09-21 12:31:34.257
557060	//confluence.atlassian.com/x/2yAC	//confluence.atlassian.com/x/2yac	https	https	327683	2c948084781aef2b01781af03f920000	2015-09-21 12:31:34.257	2c948084781aef2b01781af03f920000	2015-09-21 12:31:34.257
557061	ob	ob	OB	ob	327683	2c948084781aef2b01781af03f920000	2015-09-21 12:31:34.257	2c948084781aef2b01781af03f920000	2015-09-21 12:31:34.257
557062	//blogs.atlassian.com/2015/01/roadmap-planner-macro/	//blogs.atlassian.com/2015/01/roadmap-planner-macro/	http	http	327683	2c948084781aef2b01781af03f920000	2015-09-21 12:31:34.257	2c948084781aef2b01781af03f920000	2015-09-21 12:31:34.257
557063	//confluence.atlassian.com/x/NgszKw	//confluence.atlassian.com/x/ngszkw	https	https	327683	2c948084781aef2b01781af03f920000	2015-09-21 12:31:34.257	2c948084781aef2b01781af03f920000	2015-09-21 12:31:34.257
557064	//www.atlassian.com/collaboration/confluence-organize-work-in-spaces	//www.atlassian.com/collaboration/confluence-organize-work-in-spaces	https	https	327683	2c948084781aef2b01781af03f920000	2015-09-21 12:31:34.257	2c948084781aef2b01781af03f920000	2015-09-21 12:31:34.257
557065	//www.atlassian.com/collaboration/confluence-create-content-with-pages	//www.atlassian.com/collaboration/confluence-create-content-with-pages	https	https	327683	2c948084781aef2b01781af03f920000	2015-09-21 12:31:34.257	2c948084781aef2b01781af03f920000	2015-09-21 12:31:34.257
557066	//www.atlassian.com/collaboration/confluence-discuss-work-with-your-team	//www.atlassian.com/collaboration/confluence-discuss-work-with-your-team	https	https	327683	2c948084781aef2b01781af03f920000	2015-09-21 12:31:34.257	2c948084781aef2b01781af03f920000	2015-09-21 12:31:34.257
557057	//confluence.atlassian.com/x/liAC	//confluence.atlassian.com/x/liac	https	https	327683	2c948084781aef2b01781af03f920000	2015-09-21 12:31:34.257	2c948084781aef2b01781af03f920000	2015-09-21 12:31:34.257
557058	//confluence.atlassian.com/x/ASEC	//confluence.atlassian.com/x/asec	https	https	327683	2c948084781aef2b01781af03f920000	2015-09-21 12:31:34.257	2c948084781aef2b01781af03f920000	2015-09-21 12:31:34.257
\.


--
-- Data for Name: local_members; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.local_members (userid, groupid) FROM stdin;
\.


--
-- Data for Name: logininfo; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.logininfo (id, curfailed, totalfailed, successdate, prevsuccessdate, faileddate, username) FROM stdin;
\.


--
-- Data for Name: notifications; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.notifications (notificationid, contentid, labelid, spaceid, username, creator, creationdate, lastmodifier, lastmoddate, digest, network, contenttype) FROM stdin;
622593	327683	\N	\N	2c948084781aef2b01781af274e60001	2c948084781aef2b01781af274e60001	2015-08-12 17:14:17.637	2c948084781aef2b01781af274e60001	2015-08-12 17:14:17.637	f	f	page
622594	327693	\N	\N	2c948084781aef2b01781af03f920000	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.805	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.805	f	f	page
\.


--
-- Data for Name: os_group; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.os_group (id, groupname) FROM stdin;
\.


--
-- Data for Name: os_propertyentry; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.os_propertyentry (entity_name, entity_id, entity_key, key_type, boolean_val, double_val, string_val, text_val, long_val, int_val, date_val) FROM stdin;
confluence_ContentEntityObject	327683	confluence.inline.tasks.sequence.last	5	f	0	13		0	0	\N
USERPROPS-2c948084781aef2b01781af03f920000	0	efi.store.onboarding.onboarding-state:introWorkflow	5	f	0	__complete__		0	0	\N
USERPROPS-2c948084781aef2b01781af03f920000	0	confluence.macros.dashboard.selected.tab	5	f	0	all		0	0	\N
USERPROPS-2c948084781aef2b01781af03f920000	0	confluence.user.runtime.recent-changes.size	2	f	0	\N		0	40	\N
\.


--
-- Data for Name: os_user; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.os_user (id, username, passwd) FROM stdin;
\.


--
-- Data for Name: os_user_group; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.os_user_group (group_id, user_id) FROM stdin;
\.


--
-- Data for Name: pagetemplates; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.pagetemplates (templateid, hibernateversion, templatename, templatedesc, pluginkey, modulekey, refpluginkey, refmodulekey, content, spaceid, prevver, version, creator, creationdate, lastmodifier, lastmoddate, bodytypeid) FROM stdin;
\.


--
-- Data for Name: plugindata; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.plugindata (plugindataid, pluginkey, filename, lastmoddate, data) FROM stdin;
\.


--
-- Data for Name: remembermetoken; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.remembermetoken (id, username, created, token) FROM stdin;
360449	admin	1615359656157	b7814236579338007feed0059200f372e2e70ba7
\.


--
-- Data for Name: scheduler_clustered_jobs; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.scheduler_clustered_jobs (id, job_id, next_run_time, version, job_runner_key, raw_parameters, sched_type, cron_expression, cron_time_zone, interval_first_run_time, interval_millis) FROM stdin;
\.


--
-- Data for Name: scheduler_run_details; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.scheduler_run_details (id, job_id, start_time, duration, outcome, message) FROM stdin;
425985	ReferralQueueFlushJob	2021-03-10 07:02:25.894	36	S	Executed tasks for queue com.atlassian.confluence.links.ReferralTaskQueue@41cbb5f4
425986	synchronyStatusCheck	2021-03-10 07:02:25.894	66	S	
425987	CompatibilityPluginScheduler.JobId.BundledUpdateCheckJob-job	2021-03-10 07:02:25.978	5	A	Job has unexpected run mode RUN_LOCALLY
425988	CompatibilityPluginScheduler.JobId.LocalPluginLicenseNotificationJob-job	2021-03-10 07:02:25.978	6	A	Job has unexpected run mode RUN_LOCALLY
425989	CompatibilityPluginScheduler.JobId.PluginRequestCheckJob-job	2021-03-10 07:02:25.992	4	A	Job has unexpected run mode RUN_LOCALLY
425990	DefaultPluginScheduler:com.atlassian.mywork.host.batch.CleanerScheduler:job	2021-03-10 07:02:26.004	23	S	
425991	LocalTaskQueueFlushJob	2021-03-10 07:02:26.034	37	S	Executed tasks for queue com.atlassian.core.task.DefaultTaskQueue@5aa970db
425992	EhCacheCompactionJob	2021-03-10 07:02:26.119	29	S	
425993	TaskQueueFlushJob	2021-03-10 07:02:26.154	3	S	Executed tasks for queue com.atlassian.core.task.DefaultTaskQueue@4b2a5de4
425994	LaasPerformanceLoggingJob	2021-03-10 07:02:26.161	22	A	LaaS performance logging is turned off
425995	ClusterSafetyJob	2021-03-10 07:02:26.205	26	S	
425996	MailQueueFlushJob	2021-03-10 07:02:26.242	4	S	Executed tasks for queue com.atlassian.core.task.ErrorQueuedTaskQueue@71b39f73
425997	DeferredFileDeletionJob	2021-03-10 07:02:26.261	14	S	
425998	ESIndexJournalVerifierJob	2021-03-10 07:02:26.302	5	A	Dark feature es.indexing disabled
425999	DefaultPluginScheduler:com.atlassian.support.healthcheck.scheduler.HealthCheckRunnerImpl:job	2021-03-10 07:02:25.995	496	S	
426000	flushEdgeIndexQueue	2021-03-10 07:02:26.468	48	S	
426001	LuceneIndexFlusher	2021-03-10 07:02:25.926	1972	S	Flush done
426002	conversionQueueMonitor	2021-03-10 07:02:30	485	S	
426003	conversionLoader	2021-03-10 07:02:25.894	7418	S	
426004	conversionQueueMonitor	2021-03-10 07:02:45	12	S	
426005	synchronyStatusCheck	2021-03-10 07:02:55.896	20	S	
426006	ClusterSafetyJob	2021-03-10 07:02:56.206	15	S	
426007	flushEdgeIndexQueue	2021-03-10 07:02:56.47	12	S	
426008	conversionQueueMonitor	2021-03-10 07:03:00.003	16	S	
426009	DefaultPluginScheduler:com.atlassian.mywork.host.batch.NotificationCleanerTask:job	2021-03-10 07:03:11.411	15	S	
426010	conversionQueueMonitor	2021-03-10 07:03:15	8	S	
426011	ReferralQueueFlushJob	2021-03-10 07:03:25.894	1	S	Executed tasks for queue com.atlassian.confluence.links.ReferralTaskQueue@41cbb5f4
426012	synchronyStatusCheck	2021-03-10 07:03:25.896	11	S	
426013	LocalTaskQueueFlushJob	2021-03-10 07:03:26.034	13	S	Executed tasks for queue com.atlassian.core.task.DefaultTaskQueue@5aa970db
426014	TaskQueueFlushJob	2021-03-10 07:03:26.155	13	S	Executed tasks for queue com.atlassian.core.task.DefaultTaskQueue@4b2a5de4
426015	ClusterSafetyJob	2021-03-10 07:03:26.206	19	S	
426016	MailQueueFlushJob	2021-03-10 07:03:26.243	18	S	Executed tasks for queue com.atlassian.core.task.ErrorQueuedTaskQueue@71b39f73
426017	flushEdgeIndexQueue	2021-03-10 07:03:26.47	9	S	
426018	LuceneIndexFlusher	2021-03-10 07:03:29.523	249	S	Flush done
426019	conversionQueueMonitor	2021-03-10 07:03:30	12	S	
426020	conversionQueueMonitor	2021-03-10 07:03:45	11	S	
426021	synchronyStatusCheck	2021-03-10 07:03:55.896	17	S	
426022	ClusterSafetyJob	2021-03-10 07:03:56.208	12	S	
426023	flushEdgeIndexQueue	2021-03-10 07:03:56.471	8	S	
426024	conversionQueueMonitor	2021-03-10 07:04:00.002	8	S	
426025	conversionQueueMonitor	2021-03-10 07:04:15	12	S	
426026	ReferralQueueFlushJob	2021-03-10 07:04:25.896	5	S	Executed tasks for queue com.atlassian.confluence.links.ReferralTaskQueue@41cbb5f4
426027	synchronyStatusCheck	2021-03-10 07:04:25.896	21	S	
426028	LocalTaskQueueFlushJob	2021-03-10 07:04:26.034	3	S	Executed tasks for queue com.atlassian.core.task.DefaultTaskQueue@5aa970db
426029	TaskQueueFlushJob	2021-03-10 07:04:26.156	4	S	Executed tasks for queue com.atlassian.core.task.DefaultTaskQueue@4b2a5de4
426030	ClusterSafetyJob	2021-03-10 07:04:26.208	13	S	
426031	MailQueueFlushJob	2021-03-10 07:04:26.243	3	S	Executed tasks for queue com.atlassian.core.task.ErrorQueuedTaskQueue@71b39f73
426032	ESIndexJournalVerifierJob	2021-03-10 07:04:26.302	26	A	Dark feature es.indexing disabled
426033	flushEdgeIndexQueue	2021-03-10 07:04:26.472	9	S	
426034	conversionQueueMonitor	2021-03-10 07:04:30	35	S	
426035	conversionQueueMonitor	2021-03-10 07:04:45.001	12	S	
426036	synchronyStatusCheck	2021-03-10 07:04:55.898	16	S	
426037	ClusterSafetyJob	2021-03-10 07:04:56.21	9	S	
426038	flushEdgeIndexQueue	2021-03-10 07:04:56.474	8	S	
426039	conversionQueueMonitor	2021-03-10 07:05:00	11	S	
426040	conversionQueueMonitor	2021-03-10 07:05:15	13	S	
426041	ReferralQueueFlushJob	2021-03-10 07:05:25.896	13	S	Executed tasks for queue com.atlassian.confluence.links.ReferralTaskQueue@41cbb5f4
426042	synchronyStatusCheck	2021-03-10 07:05:25.898	18	S	
426043	LocalTaskQueueFlushJob	2021-03-10 07:05:26.035	4	S	Executed tasks for queue com.atlassian.core.task.DefaultTaskQueue@5aa970db
426044	TaskQueueFlushJob	2021-03-10 07:05:26.156	3	S	Executed tasks for queue com.atlassian.core.task.DefaultTaskQueue@4b2a5de4
426045	ClusterSafetyJob	2021-03-10 07:05:26.211	9	S	
426046	MailQueueFlushJob	2021-03-10 07:05:26.243	2	S	Executed tasks for queue com.atlassian.core.task.ErrorQueuedTaskQueue@71b39f73
426047	flushEdgeIndexQueue	2021-03-10 07:05:26.474	8	S	
426048	conversionQueueMonitor	2021-03-10 07:05:30	6	S	
426049	conversionQueueMonitor	2021-03-10 07:05:45.001	12	S	
426050	synchronyStatusCheck	2021-03-10 07:05:55.9	11	S	
426051	ClusterSafetyJob	2021-03-10 07:05:56.211	7	S	
426052	flushEdgeIndexQueue	2021-03-10 07:05:56.475	10	S	
426053	conversionQueueMonitor	2021-03-10 07:06:00.001	10	S	
\.


--
-- Data for Name: spacepermissions; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.spacepermissions (permid, spaceid, permtype, permgroupname, permusername, permalluserssubject, creator, creationdate, lastmodifier, lastmoddate) FROM stdin;
196609	\N	USECONFLUENCE	confluence-administrators	\N	\N	\N	2021-03-10 07:00:55.658	\N	2021-03-10 07:00:55.658
196610	\N	PERSONALSPACE	confluence-users	\N	\N	\N	2021-03-10 07:00:55.683	\N	2021-03-10 07:00:55.683
196611	\N	ADMINISTRATECONFLUENCE	confluence-administrators	\N	\N	\N	2021-03-10 07:00:55.683	\N	2021-03-10 07:00:55.683
196612	\N	USECONFLUENCE	confluence-users	\N	\N	\N	2021-03-10 07:00:55.684	\N	2021-03-10 07:00:55.684
196613	\N	SYSTEMADMINISTRATOR	confluence-administrators	\N	\N	\N	2021-03-10 07:00:55.685	\N	2021-03-10 07:00:55.685
196614	\N	PERSONALSPACE	confluence-administrators	\N	\N	\N	2021-03-10 07:00:55.686	\N	2021-03-10 07:00:55.686
196615	\N	CREATESPACE	confluence-users	\N	\N	\N	2021-03-10 07:00:55.688	\N	2021-03-10 07:00:55.688
196616	\N	CREATESPACE	confluence-administrators	\N	\N	\N	2021-03-10 07:00:55.688	\N	2021-03-10 07:00:55.688
196670	491521	VIEWSPACE	confluence-administrators	\N	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.1	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.1
196671	491521	VIEWSPACE	\N	2c948084781aef2b01781af03f920000	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.119	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.119
196672	491521	VIEWSPACE	confluence-users	\N	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.131	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.131
196673	491521	VIEWSPACE	\N	\N	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.142	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.142
196674	491521	REMOVEOWNCONTENT	confluence-administrators	\N	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.152	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.152
196675	491521	REMOVEOWNCONTENT	\N	2c948084781aef2b01781af03f920000	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.162	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.162
196676	491521	REMOVEOWNCONTENT	confluence-users	\N	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.172	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.172
196677	491521	REMOVEOWNCONTENT	\N	\N	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.184	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.184
196678	491521	COMMENT	confluence-administrators	\N	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.195	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.195
196679	491521	COMMENT	\N	2c948084781aef2b01781af03f920000	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.207	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.207
196680	491521	COMMENT	confluence-users	\N	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.22	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.22
196681	491521	COMMENT	\N	\N	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.231	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.231
196682	491521	EDITSPACE	confluence-administrators	\N	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.239	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.239
196683	491521	EDITSPACE	\N	2c948084781aef2b01781af03f920000	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.25	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.25
196684	491521	EDITSPACE	confluence-users	\N	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.259	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.259
196685	491521	EDITSPACE	\N	\N	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.268	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.268
196686	491521	SETSPACEPERMISSIONS	confluence-administrators	\N	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.278	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.278
196687	491521	SETSPACEPERMISSIONS	\N	2c948084781aef2b01781af03f920000	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.287	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.287
196688	491521	REMOVEPAGE	confluence-administrators	\N	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.296	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.296
196689	491521	REMOVEPAGE	\N	2c948084781aef2b01781af03f920000	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.305	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.305
196690	491521	REMOVEPAGE	confluence-users	\N	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.315	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.315
196691	491521	REMOVEPAGE	\N	\N	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.324	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.324
196692	491521	REMOVECOMMENT	confluence-administrators	\N	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.333	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.333
196693	491521	REMOVECOMMENT	\N	2c948084781aef2b01781af03f920000	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.343	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.343
196694	491521	REMOVECOMMENT	confluence-users	\N	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.353	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.353
196695	491521	REMOVECOMMENT	\N	\N	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.363	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.363
196696	491521	REMOVEBLOG	confluence-administrators	\N	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.372	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.372
196697	491521	REMOVEBLOG	\N	2c948084781aef2b01781af03f920000	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.381	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.381
196698	491521	REMOVEBLOG	confluence-users	\N	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.39	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.39
196699	491521	REMOVEBLOG	\N	\N	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.4	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.4
196700	491521	CREATEATTACHMENT	confluence-administrators	\N	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.41	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.41
196701	491521	CREATEATTACHMENT	\N	2c948084781aef2b01781af03f920000	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.42	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.42
196702	491521	CREATEATTACHMENT	confluence-users	\N	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.431	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.431
196703	491521	CREATEATTACHMENT	\N	\N	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.441	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.441
196704	491521	REMOVEATTACHMENT	confluence-administrators	\N	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.45	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.45
196705	491521	REMOVEATTACHMENT	\N	2c948084781aef2b01781af03f920000	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.462	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.462
196706	491521	REMOVEATTACHMENT	confluence-users	\N	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.47	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.47
196707	491521	REMOVEATTACHMENT	\N	\N	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.478	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.478
196708	491521	EDITBLOG	confluence-administrators	\N	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.485	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.485
196709	491521	EDITBLOG	\N	2c948084781aef2b01781af03f920000	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.494	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.494
196710	491521	EDITBLOG	confluence-users	\N	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.504	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.504
196711	491521	EDITBLOG	\N	\N	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.513	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.513
196712	491521	EXPORTPAGE	confluence-administrators	\N	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.522	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.522
196713	491521	EXPORTPAGE	\N	2c948084781aef2b01781af03f920000	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.531	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.531
196714	491521	EXPORTPAGE	confluence-users	\N	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.54	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.54
196715	491521	EXPORTPAGE	\N	\N	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.55	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.55
196716	491521	EXPORTSPACE	confluence-administrators	\N	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.559	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.559
196717	491521	EXPORTSPACE	\N	2c948084781aef2b01781af03f920000	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.567	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.567
196718	491521	EXPORTSPACE	confluence-users	\N	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.577	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.577
196719	491521	EXPORTSPACE	\N	\N	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.586	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.586
196720	491521	REMOVEMAIL	confluence-administrators	\N	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.596	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.596
196721	491521	REMOVEMAIL	\N	2c948084781aef2b01781af03f920000	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.606	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.606
196722	491521	REMOVEMAIL	confluence-users	\N	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.616	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.616
196723	491521	REMOVEMAIL	\N	\N	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.625	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.625
196724	491521	SETPAGEPERMISSIONS	confluence-administrators	\N	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.634	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.634
196725	491521	SETPAGEPERMISSIONS	\N	2c948084781aef2b01781af03f920000	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.644	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.644
196726	491521	SETPAGEPERMISSIONS	confluence-users	\N	\N	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.654	2c948084781aef2b01781af03f920000	2021-03-10 07:03:25.654
\.


--
-- Data for Name: spaces; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.spaces (spaceid, spacename, spacekey, lowerspacekey, spacedescid, homepage, creator, creationdate, lastmodifier, lastmoddate, spacetype, spacestatus) FROM stdin;
491521	test	TEST	test	327684	327683	2c948084781aef2b01781af03f920000	2021-03-10 07:03:19.622	2c948084781aef2b01781af03f920000	2021-03-10 07:03:21.75	global	CURRENT
\.


--
-- Data for Name: trackbacklinks; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.trackbacklinks (linkid, contenttype, viewcount, url, lowerurl, title, blogname, excerpt, contentid, creator, creationdate, lastmodifier, lastmoddate) FROM stdin;
\.


--
-- Data for Name: trustedapp; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.trustedapp (trustedappid, name, timeout, public_key_id) FROM stdin;
\.


--
-- Data for Name: trustedapprestriction; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.trustedapprestriction (trustedapprestrictionid, type, restriction, trustedappid) FROM stdin;
\.


--
-- Data for Name: user_mapping; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.user_mapping (user_key, username, lower_username) FROM stdin;
2c948084781aef2b01781af03f920000	admin	admin
2c948084781aef2b01781af274e60001	exporter	exporter
\.


--
-- Data for Name: user_relation; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.user_relation (relationid, sourceuser, targetuser, relationname, creationdate, lastmoddate, creator, lastmodifier) FROM stdin;
\.


--
-- Data for Name: usercontent_relation; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.usercontent_relation (relationid, targetcontentid, sourceuser, targettype, relationname, creationdate, lastmoddate, creator, lastmodifier) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY public.users (id, name, password, email, created, fullname) FROM stdin;
\.


--
-- Name: AO_187CCC_SIDEBAR_LINK_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('public."AO_187CCC_SIDEBAR_LINK_ID_seq"', 1, false);


--
-- Name: AO_21D670_WHITELIST_RULES_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('public."AO_21D670_WHITELIST_RULES_ID_seq"', 1, false);


--
-- Name: AO_26DB7F_ENTITIES_TO_ROOMS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('public."AO_26DB7F_ENTITIES_TO_ROOMS_ID_seq"', 1, false);


--
-- Name: AO_26DB7F_ENTITIES_TO_ROOM_CFG_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('public."AO_26DB7F_ENTITIES_TO_ROOM_CFG_ID_seq"', 1, false);


--
-- Name: AO_38321B_CUSTOM_CONTENT_LINK_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('public."AO_38321B_CUSTOM_CONTENT_LINK_ID_seq"', 1, false);


--
-- Name: AO_42E351_HEALTH_CHECK_ENTITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('public."AO_42E351_HEALTH_CHECK_ENTITY_ID_seq"', 1, false);


--
-- Name: AO_54C900_CONTENT_BLUEPRINT_AO_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('public."AO_54C900_CONTENT_BLUEPRINT_AO_ID_seq"', 1, false);


--
-- Name: AO_54C900_C_TEMPLATE_REF_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('public."AO_54C900_C_TEMPLATE_REF_ID_seq"', 1, false);


--
-- Name: AO_54C900_SPACE_BLUEPRINT_AO_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('public."AO_54C900_SPACE_BLUEPRINT_AO_ID_seq"', 1, false);


--
-- Name: AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('public."AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq"', 1, false);


--
-- Name: AO_563AEE_ACTOR_ENTITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('public."AO_563AEE_ACTOR_ENTITY_ID_seq"', 1, false);


--
-- Name: AO_563AEE_MEDIA_LINK_ENTITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('public."AO_563AEE_MEDIA_LINK_ENTITY_ID_seq"', 1, false);


--
-- Name: AO_563AEE_OBJECT_ENTITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('public."AO_563AEE_OBJECT_ENTITY_ID_seq"', 1, false);


--
-- Name: AO_563AEE_TARGET_ENTITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('public."AO_563AEE_TARGET_ENTITY_ID_seq"', 1, false);


--
-- Name: AO_5F3884_FEATURE_DISCOVERY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('public."AO_5F3884_FEATURE_DISCOVERY_ID_seq"', 1, false);


--
-- Name: AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('public."AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq"', 1, false);


--
-- Name: AO_5FB9D7_AOHIP_CHAT_USER_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('public."AO_5FB9D7_AOHIP_CHAT_USER_ID_seq"', 1, false);


--
-- Name: AO_6384AB_DISCOVERED_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('public."AO_6384AB_DISCOVERED_ID_seq"', 1, true);


--
-- Name: AO_6384AB_FEATURE_METADATA_AO_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('public."AO_6384AB_FEATURE_METADATA_AO_ID_seq"', 5292, true);


--
-- Name: AO_7CDE43_EVENT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('public."AO_7CDE43_EVENT_ID_seq"', 1, false);


--
-- Name: AO_7CDE43_FILTER_PARAM_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('public."AO_7CDE43_FILTER_PARAM_ID_seq"', 1, false);


--
-- Name: AO_7CDE43_NOTIFICATION_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('public."AO_7CDE43_NOTIFICATION_ID_seq"', 1, false);


--
-- Name: AO_7CDE43_NOTIFICATION_SCHEME_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('public."AO_7CDE43_NOTIFICATION_SCHEME_ID_seq"', 1, false);


--
-- Name: AO_7CDE43_RECIPIENT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('public."AO_7CDE43_RECIPIENT_ID_seq"', 1, false);


--
-- Name: AO_7CDE43_SERVER_CONFIG_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('public."AO_7CDE43_SERVER_CONFIG_ID_seq"', 1, false);


--
-- Name: AO_7CDE43_SERVER_PARAM_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('public."AO_7CDE43_SERVER_PARAM_ID_seq"', 1, false);


--
-- Name: AO_88263F_HEALTH_CHECK_STATUS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('public."AO_88263F_HEALTH_CHECK_STATUS_ID_seq"', 2, true);


--
-- Name: AO_88263F_PROPERTIES_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('public."AO_88263F_PROPERTIES_ID_seq"', 1, true);


--
-- Name: AO_88263F_READ_NOTIFICATIONS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('public."AO_88263F_READ_NOTIFICATIONS_ID_seq"', 2, true);


--
-- Name: AO_88BB94_BATCH_NOTIFICATION_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('public."AO_88BB94_BATCH_NOTIFICATION_ID_seq"', 1, false);


--
-- Name: AO_92296B_AORECENTLY_VIEWED_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('public."AO_92296B_AORECENTLY_VIEWED_ID_seq"', 1, false);


--
-- Name: AO_9412A1_AONOTIFICATION_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('public."AO_9412A1_AONOTIFICATION_ID_seq"', 1, false);


--
-- Name: AO_9412A1_AOTASK_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('public."AO_9412A1_AOTASK_ID_seq"', 1, false);


--
-- Name: AO_9412A1_AOUSER_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('public."AO_9412A1_AOUSER_ID_seq"', 1, false);


--
-- Name: AO_9412A1_USER_APP_LINK_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('public."AO_9412A1_USER_APP_LINK_ID_seq"', 1, false);


--
-- Name: AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('public."AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq"', 1, false);


--
-- Name: AO_BAF3AA_AOINLINE_TASK_GLOBAL_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('public."AO_BAF3AA_AOINLINE_TASK_GLOBAL_ID_seq"', 1, false);


--
-- Name: AO_DC98AE_AOHELP_TIP_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('public."AO_DC98AE_AOHELP_TIP_ID_seq"', 1, false);


--
-- Name: seq_journal_entry_id; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('public.seq_journal_entry_id', 6, true);


--
-- Name: AO_187CCC_SIDEBAR_LINK AO_187CCC_SIDEBAR_LINK_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_187CCC_SIDEBAR_LINK"
    ADD CONSTRAINT "AO_187CCC_SIDEBAR_LINK_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_21D670_WHITELIST_RULES AO_21D670_WHITELIST_RULES_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_21D670_WHITELIST_RULES"
    ADD CONSTRAINT "AO_21D670_WHITELIST_RULES_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_26DB7F_ENTITIES_TO_ROOMS AO_26DB7F_ENTITIES_TO_ROOMS_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_26DB7F_ENTITIES_TO_ROOMS"
    ADD CONSTRAINT "AO_26DB7F_ENTITIES_TO_ROOMS_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_26DB7F_ENTITIES_TO_ROOM_CFG AO_26DB7F_ENTITIES_TO_ROOM_CFG_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_26DB7F_ENTITIES_TO_ROOM_CFG"
    ADD CONSTRAINT "AO_26DB7F_ENTITIES_TO_ROOM_CFG_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_38321B_CUSTOM_CONTENT_LINK AO_38321B_CUSTOM_CONTENT_LINK_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_38321B_CUSTOM_CONTENT_LINK"
    ADD CONSTRAINT "AO_38321B_CUSTOM_CONTENT_LINK_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_42E351_HEALTH_CHECK_ENTITY AO_42E351_HEALTH_CHECK_ENTITY_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_42E351_HEALTH_CHECK_ENTITY"
    ADD CONSTRAINT "AO_42E351_HEALTH_CHECK_ENTITY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_54C900_CONTENT_BLUEPRINT_AO AO_54C900_CONTENT_BLUEPRINT_AO_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_54C900_CONTENT_BLUEPRINT_AO"
    ADD CONSTRAINT "AO_54C900_CONTENT_BLUEPRINT_AO_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_54C900_C_TEMPLATE_REF AO_54C900_C_TEMPLATE_REF_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_54C900_C_TEMPLATE_REF"
    ADD CONSTRAINT "AO_54C900_C_TEMPLATE_REF_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_54C900_SPACE_BLUEPRINT_AO AO_54C900_SPACE_BLUEPRINT_AO_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_54C900_SPACE_BLUEPRINT_AO"
    ADD CONSTRAINT "AO_54C900_SPACE_BLUEPRINT_AO_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_563AEE_ACTIVITY_ENTITY AO_563AEE_ACTIVITY_ENTITY_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_563AEE_ACTIVITY_ENTITY"
    ADD CONSTRAINT "AO_563AEE_ACTIVITY_ENTITY_pkey" PRIMARY KEY ("ACTIVITY_ID");


--
-- Name: AO_563AEE_ACTOR_ENTITY AO_563AEE_ACTOR_ENTITY_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_563AEE_ACTOR_ENTITY"
    ADD CONSTRAINT "AO_563AEE_ACTOR_ENTITY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_563AEE_MEDIA_LINK_ENTITY AO_563AEE_MEDIA_LINK_ENTITY_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_563AEE_MEDIA_LINK_ENTITY"
    ADD CONSTRAINT "AO_563AEE_MEDIA_LINK_ENTITY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_563AEE_OBJECT_ENTITY AO_563AEE_OBJECT_ENTITY_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_563AEE_OBJECT_ENTITY"
    ADD CONSTRAINT "AO_563AEE_OBJECT_ENTITY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_563AEE_TARGET_ENTITY AO_563AEE_TARGET_ENTITY_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_563AEE_TARGET_ENTITY"
    ADD CONSTRAINT "AO_563AEE_TARGET_ENTITY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_5F3884_FEATURE_DISCOVERY AO_5F3884_FEATURE_DISCOVERY_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_5F3884_FEATURE_DISCOVERY"
    ADD CONSTRAINT "AO_5F3884_FEATURE_DISCOVERY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_5FB9D7_AOHIP_CHAT_LINK AO_5FB9D7_AOHIP_CHAT_LINK_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_5FB9D7_AOHIP_CHAT_LINK"
    ADD CONSTRAINT "AO_5FB9D7_AOHIP_CHAT_LINK_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_5FB9D7_AOHIP_CHAT_USER AO_5FB9D7_AOHIP_CHAT_USER_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_5FB9D7_AOHIP_CHAT_USER"
    ADD CONSTRAINT "AO_5FB9D7_AOHIP_CHAT_USER_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_6384AB_DISCOVERED AO_6384AB_DISCOVERED_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_6384AB_DISCOVERED"
    ADD CONSTRAINT "AO_6384AB_DISCOVERED_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_6384AB_FEATURE_METADATA_AO AO_6384AB_FEATURE_METADATA_AO_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_6384AB_FEATURE_METADATA_AO"
    ADD CONSTRAINT "AO_6384AB_FEATURE_METADATA_AO_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_7CDE43_EVENT AO_7CDE43_EVENT_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_7CDE43_EVENT"
    ADD CONSTRAINT "AO_7CDE43_EVENT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_7CDE43_FILTER_PARAM AO_7CDE43_FILTER_PARAM_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_7CDE43_FILTER_PARAM"
    ADD CONSTRAINT "AO_7CDE43_FILTER_PARAM_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_7CDE43_NOTIFICATION_SCHEME AO_7CDE43_NOTIFICATION_SCHEME_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_7CDE43_NOTIFICATION_SCHEME"
    ADD CONSTRAINT "AO_7CDE43_NOTIFICATION_SCHEME_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_7CDE43_NOTIFICATION AO_7CDE43_NOTIFICATION_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_7CDE43_NOTIFICATION"
    ADD CONSTRAINT "AO_7CDE43_NOTIFICATION_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_7CDE43_RECIPIENT AO_7CDE43_RECIPIENT_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_7CDE43_RECIPIENT"
    ADD CONSTRAINT "AO_7CDE43_RECIPIENT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_7CDE43_SERVER_CONFIG AO_7CDE43_SERVER_CONFIG_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_7CDE43_SERVER_CONFIG"
    ADD CONSTRAINT "AO_7CDE43_SERVER_CONFIG_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_7CDE43_SERVER_PARAM AO_7CDE43_SERVER_PARAM_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_7CDE43_SERVER_PARAM"
    ADD CONSTRAINT "AO_7CDE43_SERVER_PARAM_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_88263F_HEALTH_CHECK_STATUS AO_88263F_HEALTH_CHECK_STATUS_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_88263F_HEALTH_CHECK_STATUS"
    ADD CONSTRAINT "AO_88263F_HEALTH_CHECK_STATUS_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_88263F_PROPERTIES AO_88263F_PROPERTIES_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_88263F_PROPERTIES"
    ADD CONSTRAINT "AO_88263F_PROPERTIES_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_88263F_READ_NOTIFICATIONS AO_88263F_READ_NOTIFICATIONS_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_88263F_READ_NOTIFICATIONS"
    ADD CONSTRAINT "AO_88263F_READ_NOTIFICATIONS_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_88BB94_BATCH_NOTIFICATION AO_88BB94_BATCH_NOTIFICATION_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_88BB94_BATCH_NOTIFICATION"
    ADD CONSTRAINT "AO_88BB94_BATCH_NOTIFICATION_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_92296B_AORECENTLY_VIEWED AO_92296B_AORECENTLY_VIEWED_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_92296B_AORECENTLY_VIEWED"
    ADD CONSTRAINT "AO_92296B_AORECENTLY_VIEWED_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_9412A1_AONOTIFICATION AO_9412A1_AONOTIFICATION_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_9412A1_AONOTIFICATION"
    ADD CONSTRAINT "AO_9412A1_AONOTIFICATION_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_9412A1_AOREGISTRATION AO_9412A1_AOREGISTRATION_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_9412A1_AOREGISTRATION"
    ADD CONSTRAINT "AO_9412A1_AOREGISTRATION_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_9412A1_AOTASK AO_9412A1_AOTASK_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_9412A1_AOTASK"
    ADD CONSTRAINT "AO_9412A1_AOTASK_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_9412A1_AOUSER AO_9412A1_AOUSER_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_9412A1_AOUSER"
    ADD CONSTRAINT "AO_9412A1_AOUSER_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_9412A1_USER_APP_LINK AO_9412A1_USER_APP_LINK_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_9412A1_USER_APP_LINK"
    ADD CONSTRAINT "AO_9412A1_USER_APP_LINK_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_A0B856_WEB_HOOK_LISTENER_AO AO_A0B856_WEB_HOOK_LISTENER_AO_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_A0B856_WEB_HOOK_LISTENER_AO"
    ADD CONSTRAINT "AO_A0B856_WEB_HOOK_LISTENER_AO_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_BAF3AA_AOINLINE_TASK AO_BAF3AA_AOINLINE_TASK_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_BAF3AA_AOINLINE_TASK"
    ADD CONSTRAINT "AO_BAF3AA_AOINLINE_TASK_pkey" PRIMARY KEY ("GLOBAL_ID");


--
-- Name: AO_DC98AE_AOHELP_TIP AO_DC98AE_AOHELP_TIP_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_DC98AE_AOHELP_TIP"
    ADD CONSTRAINT "AO_DC98AE_AOHELP_TIP_pkey" PRIMARY KEY ("ID");


--
-- Name: EVENTS EVENTS_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."EVENTS"
    ADD CONSTRAINT "EVENTS_pkey" PRIMARY KEY (rev, history);


--
-- Name: SECRETS SECRETS_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."SECRETS"
    ADD CONSTRAINT "SECRETS_pkey" PRIMARY KEY (key);


--
-- Name: SNAPSHOTS SNAPSHOTS_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."SNAPSHOTS"
    ADD CONSTRAINT "SNAPSHOTS_pkey" PRIMARY KEY (key);


--
-- Name: attachmentdata attachmentdata_attachmentid_key; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.attachmentdata
    ADD CONSTRAINT attachmentdata_attachmentid_key UNIQUE (attachmentid);


--
-- Name: attachmentdata attachmentdata_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.attachmentdata
    ADD CONSTRAINT attachmentdata_pkey PRIMARY KEY (attachmentdataid);


--
-- Name: audit_affected_object audit_affected_object_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.audit_affected_object
    ADD CONSTRAINT audit_affected_object_pkey PRIMARY KEY (id);


--
-- Name: audit_changed_value audit_changed_value_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.audit_changed_value
    ADD CONSTRAINT audit_changed_value_pkey PRIMARY KEY (id);


--
-- Name: auditrecord auditrecord_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.auditrecord
    ADD CONSTRAINT auditrecord_pkey PRIMARY KEY (auditrecordid);


--
-- Name: bandana bandana_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.bandana
    ADD CONSTRAINT bandana_pkey PRIMARY KEY (bandanaid);


--
-- Name: bandana bandana_unique_key; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.bandana
    ADD CONSTRAINT bandana_unique_key UNIQUE (bandanacontext, bandanakey);


--
-- Name: bodycontent bodycontent_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.bodycontent
    ADD CONSTRAINT bodycontent_pkey PRIMARY KEY (bodycontentid);


--
-- Name: content_relation c2c_relation_unique; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.content_relation
    ADD CONSTRAINT c2c_relation_unique UNIQUE (targetcontentid, sourcecontentid, relationname);


--
-- Name: clustersafety clustersafety_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.clustersafety
    ADD CONSTRAINT clustersafety_pkey PRIMARY KEY (clustersafetyid);


--
-- Name: confancestors confancestors_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.confancestors
    ADD CONSTRAINT confancestors_pkey PRIMARY KEY (descendentid, ancestorposition);


--
-- Name: confversion confversion_buildnumber_key; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.confversion
    ADD CONSTRAINT confversion_buildnumber_key UNIQUE (buildnumber);


--
-- Name: confversion confversion_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.confversion
    ADD CONSTRAINT confversion_pkey PRIMARY KEY (confversionid);


--
-- Name: content_label content_label_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.content_label
    ADD CONSTRAINT content_label_pkey PRIMARY KEY (id);


--
-- Name: content_perm content_perm_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.content_perm
    ADD CONSTRAINT content_perm_pkey PRIMARY KEY (id);


--
-- Name: content_perm_set content_perm_set_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.content_perm_set
    ADD CONSTRAINT content_perm_set_pkey PRIMARY KEY (id);


--
-- Name: content content_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.content
    ADD CONSTRAINT content_pkey PRIMARY KEY (contentid);


--
-- Name: content_relation content_relation_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.content_relation
    ADD CONSTRAINT content_relation_pkey PRIMARY KEY (relationid);


--
-- Name: contentproperties contentproperties_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.contentproperties
    ADD CONSTRAINT contentproperties_pkey PRIMARY KEY (propertyid);


--
-- Name: content_perm cp_unique_group; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.content_perm
    ADD CONSTRAINT cp_unique_group UNIQUE (cps_id, cp_type, groupname);


--
-- Name: content_perm cp_unique_user; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.content_perm
    ADD CONSTRAINT cp_unique_user UNIQUE (cps_id, cp_type, username);


--
-- Name: content_perm_set cps_unique_type; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.content_perm_set
    ADD CONSTRAINT cps_unique_type UNIQUE (content_id, cont_perm_type);


--
-- Name: cwd_app_dir_group_mapping cwd_app_dir_group_mapping_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.cwd_app_dir_group_mapping
    ADD CONSTRAINT cwd_app_dir_group_mapping_pkey PRIMARY KEY (id);


--
-- Name: cwd_app_dir_mapping cwd_app_dir_mapping_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.cwd_app_dir_mapping
    ADD CONSTRAINT cwd_app_dir_mapping_pkey PRIMARY KEY (id);


--
-- Name: cwd_app_dir_operation cwd_app_dir_operation_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.cwd_app_dir_operation
    ADD CONSTRAINT cwd_app_dir_operation_pkey PRIMARY KEY (app_dir_mapping_id, operation_type);


--
-- Name: cwd_application_address cwd_application_address_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.cwd_application_address
    ADD CONSTRAINT cwd_application_address_pkey PRIMARY KEY (application_id, remote_address);


--
-- Name: cwd_application_attribute cwd_application_attribute_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.cwd_application_attribute
    ADD CONSTRAINT cwd_application_attribute_pkey PRIMARY KEY (application_id, attribute_name);


--
-- Name: cwd_application cwd_application_lower_application_name_key; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.cwd_application
    ADD CONSTRAINT cwd_application_lower_application_name_key UNIQUE (lower_application_name);


--
-- Name: cwd_application cwd_application_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.cwd_application
    ADD CONSTRAINT cwd_application_pkey PRIMARY KEY (id);


--
-- Name: cwd_directory_attribute cwd_directory_attribute_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.cwd_directory_attribute
    ADD CONSTRAINT cwd_directory_attribute_pkey PRIMARY KEY (directory_id, attribute_name);


--
-- Name: cwd_directory cwd_directory_lower_directory_name_key; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.cwd_directory
    ADD CONSTRAINT cwd_directory_lower_directory_name_key UNIQUE (lower_directory_name);


--
-- Name: cwd_directory_operation cwd_directory_operation_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.cwd_directory_operation
    ADD CONSTRAINT cwd_directory_operation_pkey PRIMARY KEY (directory_id, operation_type);


--
-- Name: cwd_directory cwd_directory_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.cwd_directory
    ADD CONSTRAINT cwd_directory_pkey PRIMARY KEY (id);


--
-- Name: cwd_group_attribute cwd_group_attribute_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.cwd_group_attribute
    ADD CONSTRAINT cwd_group_attribute_pkey PRIMARY KEY (id);


--
-- Name: cwd_group cwd_group_name_dir_id; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.cwd_group
    ADD CONSTRAINT cwd_group_name_dir_id UNIQUE (lower_group_name, directory_id);


--
-- Name: cwd_group cwd_group_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.cwd_group
    ADD CONSTRAINT cwd_group_pkey PRIMARY KEY (id);


--
-- Name: cwd_membership cwd_membership_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.cwd_membership
    ADD CONSTRAINT cwd_membership_pkey PRIMARY KEY (id);


--
-- Name: cwd_membership cwd_unique_group_membership; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.cwd_membership
    ADD CONSTRAINT cwd_unique_group_membership UNIQUE (parent_id, child_group_id);


--
-- Name: cwd_group_attribute cwd_unique_grp_attr; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.cwd_group_attribute
    ADD CONSTRAINT cwd_unique_grp_attr UNIQUE (directory_id, group_id, attribute_name, attribute_lower_value);


--
-- Name: cwd_membership cwd_unique_user_membership; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.cwd_membership
    ADD CONSTRAINT cwd_unique_user_membership UNIQUE (parent_id, child_user_id);


--
-- Name: cwd_user_attribute cwd_unique_usr_attr; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.cwd_user_attribute
    ADD CONSTRAINT cwd_unique_usr_attr UNIQUE (directory_id, user_id, attribute_name, attribute_lower_value);


--
-- Name: cwd_user_attribute cwd_user_attribute_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.cwd_user_attribute
    ADD CONSTRAINT cwd_user_attribute_pkey PRIMARY KEY (id);


--
-- Name: cwd_user_credential_record cwd_user_credential_record_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.cwd_user_credential_record
    ADD CONSTRAINT cwd_user_credential_record_pkey PRIMARY KEY (id);


--
-- Name: cwd_user cwd_user_name_dir_id; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.cwd_user
    ADD CONSTRAINT cwd_user_name_dir_id UNIQUE (lower_user_name, directory_id);


--
-- Name: cwd_user cwd_user_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.cwd_user
    ADD CONSTRAINT cwd_user_pkey PRIMARY KEY (id);


--
-- Name: decorator decorator_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.decorator
    ADD CONSTRAINT decorator_pkey PRIMARY KEY (decoratorid);


--
-- Name: external_entities external_entities_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.external_entities
    ADD CONSTRAINT external_entities_pkey PRIMARY KEY (id);


--
-- Name: external_members external_members_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.external_members
    ADD CONSTRAINT external_members_pkey PRIMARY KEY (groupid, extentityid);


--
-- Name: extrnlnks extrnlnks_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.extrnlnks
    ADD CONSTRAINT extrnlnks_pkey PRIMARY KEY (linkid);


--
-- Name: follow_connections follow_connections_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.follow_connections
    ADD CONSTRAINT follow_connections_pkey PRIMARY KEY (connectionid);


--
-- Name: groups groups_groupname_key; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_groupname_key UNIQUE (groupname);


--
-- Name: groups groups_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_pkey PRIMARY KEY (id);


--
-- Name: imagedetails imagedetails_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.imagedetails
    ADD CONSTRAINT imagedetails_pkey PRIMARY KEY (attachmentid);


--
-- Name: indexqueueentries indexqueueentries_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.indexqueueentries
    ADD CONSTRAINT indexqueueentries_pkey PRIMARY KEY (entryid);


--
-- Name: journalentry journalentry_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.journalentry
    ADD CONSTRAINT journalentry_pkey PRIMARY KEY (entry_id);


--
-- Name: keystore keystore_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.keystore
    ADD CONSTRAINT keystore_pkey PRIMARY KEY (keyid);


--
-- Name: label label_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.label
    ADD CONSTRAINT label_pkey PRIMARY KEY (labelid);


--
-- Name: likes likes_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_pkey PRIMARY KEY (id);


--
-- Name: links links_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.links
    ADD CONSTRAINT links_pkey PRIMARY KEY (linkid);


--
-- Name: local_members local_members_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.local_members
    ADD CONSTRAINT local_members_pkey PRIMARY KEY (groupid, userid);


--
-- Name: logininfo logininfo_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.logininfo
    ADD CONSTRAINT logininfo_pkey PRIMARY KEY (id);


--
-- Name: logininfo logininfo_username_key; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.logininfo
    ADD CONSTRAINT logininfo_username_key UNIQUE (username);


--
-- Name: notifications notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (notificationid);


--
-- Name: os_group os_group_groupname_key; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.os_group
    ADD CONSTRAINT os_group_groupname_key UNIQUE (groupname);


--
-- Name: os_group os_group_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.os_group
    ADD CONSTRAINT os_group_pkey PRIMARY KEY (id);


--
-- Name: os_propertyentry os_propertyentry_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.os_propertyentry
    ADD CONSTRAINT os_propertyentry_pkey PRIMARY KEY (entity_name, entity_id, entity_key);


--
-- Name: os_user_group os_user_group_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.os_user_group
    ADD CONSTRAINT os_user_group_pkey PRIMARY KEY (user_id, group_id);


--
-- Name: os_user os_user_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.os_user
    ADD CONSTRAINT os_user_pkey PRIMARY KEY (id);


--
-- Name: os_user os_user_username_key; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.os_user
    ADD CONSTRAINT os_user_username_key UNIQUE (username);


--
-- Name: pagetemplates pagetemplates_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.pagetemplates
    ADD CONSTRAINT pagetemplates_pkey PRIMARY KEY (templateid);


--
-- Name: plugindata plugindata_filename_key; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.plugindata
    ADD CONSTRAINT plugindata_filename_key UNIQUE (filename);


--
-- Name: plugindata plugindata_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.plugindata
    ADD CONSTRAINT plugindata_pkey PRIMARY KEY (plugindataid);


--
-- Name: plugindata plugindata_pluginkey_key; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.plugindata
    ADD CONSTRAINT plugindata_pluginkey_key UNIQUE (pluginkey);


--
-- Name: remembermetoken remembermetoken_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.remembermetoken
    ADD CONSTRAINT remembermetoken_pkey PRIMARY KEY (id);


--
-- Name: scheduler_clustered_jobs scheduler_clustered_jobs_job_id_key; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.scheduler_clustered_jobs
    ADD CONSTRAINT scheduler_clustered_jobs_job_id_key UNIQUE (job_id);


--
-- Name: scheduler_clustered_jobs scheduler_clustered_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.scheduler_clustered_jobs
    ADD CONSTRAINT scheduler_clustered_jobs_pkey PRIMARY KEY (id);


--
-- Name: scheduler_run_details scheduler_run_details_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.scheduler_run_details
    ADD CONSTRAINT scheduler_run_details_pkey PRIMARY KEY (id);


--
-- Name: spacepermissions spacepermissions_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.spacepermissions
    ADD CONSTRAINT spacepermissions_pkey PRIMARY KEY (permid);


--
-- Name: spaces spaces_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.spaces
    ADD CONSTRAINT spaces_pkey PRIMARY KEY (spaceid);


--
-- Name: spaces spaces_spacekey_key; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.spaces
    ADD CONSTRAINT spaces_spacekey_key UNIQUE (spacekey);


--
-- Name: trackbacklinks trackbacklinks_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.trackbacklinks
    ADD CONSTRAINT trackbacklinks_pkey PRIMARY KEY (linkid);


--
-- Name: trustedapp trustedapp_name_key; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.trustedapp
    ADD CONSTRAINT trustedapp_name_key UNIQUE (name);


--
-- Name: trustedapp trustedapp_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.trustedapp
    ADD CONSTRAINT trustedapp_pkey PRIMARY KEY (trustedappid);


--
-- Name: trustedapp trustedapp_public_key_id_key; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.trustedapp
    ADD CONSTRAINT trustedapp_public_key_id_key UNIQUE (public_key_id);


--
-- Name: trustedapprestriction trustedapprestriction_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.trustedapprestriction
    ADD CONSTRAINT trustedapprestriction_pkey PRIMARY KEY (trustedapprestrictionid);


--
-- Name: usercontent_relation u2c_relation_unique; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.usercontent_relation
    ADD CONSTRAINT u2c_relation_unique UNIQUE (targetcontentid, sourceuser, relationname);


--
-- Name: user_relation u2u_relation_unique; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.user_relation
    ADD CONSTRAINT u2u_relation_unique UNIQUE (sourceuser, targetuser, relationname);


--
-- Name: AO_9412A1_AOUSER u_ao_9412a1_aouser_username; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_9412A1_AOUSER"
    ADD CONSTRAINT u_ao_9412a1_aouser_username UNIQUE ("USERNAME");


--
-- Name: user_mapping unq_lwr_username; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.user_mapping
    ADD CONSTRAINT unq_lwr_username UNIQUE (lower_username);


--
-- Name: user_mapping user_mapping_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.user_mapping
    ADD CONSTRAINT user_mapping_pkey PRIMARY KEY (user_key);


--
-- Name: user_relation user_relation_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.user_relation
    ADD CONSTRAINT user_relation_pkey PRIMARY KEY (relationid);


--
-- Name: usercontent_relation usercontent_relation_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.usercontent_relation
    ADD CONSTRAINT usercontent_relation_pkey PRIMARY KEY (relationid);


--
-- Name: users users_name_key; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_name_key UNIQUE (name);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: a_author_key_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX a_author_key_idx ON public.auditrecord USING btree (authorkey);


--
-- Name: a_category_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX a_category_idx ON public.auditrecord USING btree (category);


--
-- Name: a_date_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX a_date_idx ON public.auditrecord USING btree (creationdate);


--
-- Name: a_objects_parent_index; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX a_objects_parent_index ON public.audit_affected_object USING btree (auditrecordid);


--
-- Name: a_values_parent_index; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX a_values_parent_index ON public.audit_changed_value USING btree (auditrecordid);


--
-- Name: attch_idver_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX attch_idver_idx ON public.attachmentdata USING btree (attversion, attachmentid);


--
-- Name: band_cont_key_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX band_cont_key_idx ON public.bandana USING btree (bandanacontext, bandanakey);


--
-- Name: band_context_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX band_context_idx ON public.bandana USING btree (bandanacontext);


--
-- Name: body_content_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX body_content_idx ON public.bodycontent USING btree (contentid);


--
-- Name: c_ancestorid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX c_ancestorid_idx ON public.confancestors USING btree (ancestorid);


--
-- Name: c_contentproperties_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX c_contentproperties_idx ON public.contentproperties USING btree (contentid);


--
-- Name: c_contenttype_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX c_contenttype_idx ON public.content USING btree (contenttype);


--
-- Name: c_creator_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX c_creator_idx ON public.content USING btree (creator);


--
-- Name: c_draftpageid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX c_draftpageid_idx ON public.content USING btree (draftpageid);


--
-- Name: c_drafttype_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX c_drafttype_idx ON public.content USING btree (drafttype);


--
-- Name: c_extentityid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX c_extentityid_idx ON public.external_members USING btree (extentityid);


--
-- Name: c_groupdid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX c_groupdid_idx ON public.os_user_group USING btree (group_id);


--
-- Name: c_lastmodifier_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX c_lastmodifier_idx ON public.content USING btree (lastmodifier);


--
-- Name: c_ltitle_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX c_ltitle_idx ON public.content USING btree (lowertitle);


--
-- Name: c_messageid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX c_messageid_idx ON public.content USING btree (messageid);


--
-- Name: c_pageid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX c_pageid_idx ON public.content USING btree (pageid);


--
-- Name: c_parentccid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX c_parentccid_idx ON public.content USING btree (parentccid);


--
-- Name: c_parentcommid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX c_parentcommid_idx ON public.content USING btree (parentcommentid);


--
-- Name: c_parentid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX c_parentid_idx ON public.content USING btree (parentid);


--
-- Name: c_prevver_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX c_prevver_idx ON public.content USING btree (prevver);


--
-- Name: c_si_ct_pv_cs_cd_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX c_si_ct_pv_cs_cd_idx ON public.content USING btree (spaceid, contenttype, prevver, content_status, creationdate);


--
-- Name: c_spaceid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX c_spaceid_idx ON public.content USING btree (spaceid);


--
-- Name: c_status_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX c_status_idx ON public.content USING btree (content_status);


--
-- Name: c_title_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX c_title_idx ON public.content USING btree (title);


--
-- Name: c_trustedappid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX c_trustedappid_idx ON public.trustedapprestriction USING btree (trustedappid);


--
-- Name: c_userid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX c_userid_idx ON public.local_members USING btree (userid);


--
-- Name: c_username_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX c_username_idx ON public.content USING btree (username);


--
-- Name: cl_contentid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX cl_contentid_idx ON public.content_label USING btree (contentid);


--
-- Name: cl_labelable_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX cl_labelable_idx ON public.content_label USING btree (labelableid, labelabletype);


--
-- Name: cl_labelid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX cl_labelid_idx ON public.content_label USING btree (labelid);


--
-- Name: cl_lastmoddate_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX cl_lastmoddate_idx ON public.content_label USING btree (lastmoddate);


--
-- Name: cl_owner_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX cl_owner_idx ON public.content_label USING btree (owner);


--
-- Name: cl_pagetemplateid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX cl_pagetemplateid_idx ON public.content_label USING btree (pagetemplateid);


--
-- Name: cn_followee_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX cn_followee_idx ON public.follow_connections USING btree (followee);


--
-- Name: cn_follower_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX cn_follower_idx ON public.follow_connections USING btree (follower);


--
-- Name: content_prop_date_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX content_prop_date_idx ON public.contentproperties USING btree (dateval);


--
-- Name: content_prop_long_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX content_prop_long_idx ON public.contentproperties USING btree (longval);


--
-- Name: content_prop_name_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX content_prop_name_idx ON public.contentproperties USING btree (propertyname);


--
-- Name: content_prop_str_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX content_prop_str_idx ON public.contentproperties USING btree (stringval);


--
-- Name: cp_creator_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX cp_creator_idx ON public.content_perm USING btree (creator);


--
-- Name: cp_gn_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX cp_gn_idx ON public.content_perm USING btree (groupname);


--
-- Name: cp_lastmodifier_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX cp_lastmodifier_idx ON public.content_perm USING btree (lastmodifier);


--
-- Name: cp_os_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX cp_os_idx ON public.content_perm USING btree (cps_id);


--
-- Name: cp_un_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX cp_un_idx ON public.content_perm USING btree (username);


--
-- Name: cps_content_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX cps_content_idx ON public.content_perm_set USING btree (content_id);


--
-- Name: cps_permtype_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX cps_permtype_idx ON public.content_perm_set USING btree (cont_perm_type);


--
-- Name: dec_key_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX dec_key_idx ON public.decorator USING btree (spacekey);


--
-- Name: dec_name_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX dec_name_idx ON public.decorator USING btree (decoratorname);


--
-- Name: e_h_p_s_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE UNIQUE INDEX e_h_p_s_idx ON public."EVENTS" USING btree (history, partition, sequence);


--
-- Name: e_r_h_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE UNIQUE INDEX e_r_h_idx ON public."EVENTS" USING btree (rev, history);


--
-- Name: el_contentid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX el_contentid_idx ON public.extrnlnks USING btree (contentid);


--
-- Name: el_creator_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX el_creator_idx ON public.extrnlnks USING btree (creator);


--
-- Name: el_lastmodifier_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX el_lastmodifier_idx ON public.extrnlnks USING btree (lastmodifier);


--
-- Name: ext_ent_name; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX ext_ent_name ON public.external_entities USING btree (name);


--
-- Name: idx_app_active; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_app_active ON public.cwd_application USING btree (active);


--
-- Name: idx_app_dir_app; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_app_dir_app ON public.cwd_app_dir_mapping USING btree (application_id);


--
-- Name: idx_app_dir_dir; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_app_dir_dir ON public.cwd_app_dir_mapping USING btree (directory_id);


--
-- Name: idx_app_dir_group_app; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_app_dir_group_app ON public.cwd_app_dir_group_mapping USING btree (application_id);


--
-- Name: idx_app_dir_group_group_dir; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_app_dir_group_group_dir ON public.cwd_app_dir_group_mapping USING btree (directory_id, group_name);


--
-- Name: idx_app_dir_group_mapping; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_app_dir_group_mapping ON public.cwd_app_dir_group_mapping USING btree (app_dir_mapping_id);


--
-- Name: idx_app_type; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_app_type ON public.cwd_application USING btree (application_type);


--
-- Name: idx_dir_active; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_dir_active ON public.cwd_directory USING btree (active);


--
-- Name: idx_dir_l_impl_class; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_dir_l_impl_class ON public.cwd_directory USING btree (lower_impl_class);


--
-- Name: idx_dir_type; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_dir_type ON public.cwd_directory USING btree (directory_type);


--
-- Name: idx_group_active; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_group_active ON public.cwd_group USING btree (active, directory_id);


--
-- Name: idx_group_attr_dir_name_lval; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_group_attr_dir_name_lval ON public.cwd_group_attribute USING btree (directory_id, attribute_name, attribute_lower_value);


--
-- Name: idx_group_attr_group_id; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_group_attr_group_id ON public.cwd_group_attribute USING btree (group_id);


--
-- Name: idx_group_dir_id; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_group_dir_id ON public.cwd_group USING btree (directory_id);


--
-- Name: idx_mem_dir_child; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_mem_dir_child ON public.cwd_membership USING btree (child_group_id, child_user_id);


--
-- Name: idx_mem_dir_child_user; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_mem_dir_child_user ON public.cwd_membership USING btree (child_user_id);


--
-- Name: idx_mem_dir_parent; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_mem_dir_parent ON public.cwd_membership USING btree (parent_id);


--
-- Name: idx_mem_dir_parent_child; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_mem_dir_parent_child ON public.cwd_membership USING btree (parent_id, child_group_id, child_user_id);


--
-- Name: idx_user_active; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_user_active ON public.cwd_user USING btree (active, directory_id);


--
-- Name: idx_user_attr_dir_name_lval; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_user_attr_dir_name_lval ON public.cwd_user_attribute USING btree (directory_id, attribute_name, attribute_lower_value);


--
-- Name: idx_user_attr_user_id; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_user_attr_user_id ON public.cwd_user_attribute USING btree (user_id);


--
-- Name: idx_user_cred_record_user_id; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_user_cred_record_user_id ON public.cwd_user_credential_record USING btree (user_id);


--
-- Name: idx_user_external_id; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_user_external_id ON public.cwd_user USING btree (external_id);


--
-- Name: idx_user_lower_display_name; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_user_lower_display_name ON public.cwd_user USING btree (lower_display_name, directory_id);


--
-- Name: idx_user_lower_email_address; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_user_lower_email_address ON public.cwd_user USING btree (lower_email_address, directory_id);


--
-- Name: idx_user_lower_first_name; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_user_lower_first_name ON public.cwd_user USING btree (lower_first_name, directory_id);


--
-- Name: idx_user_lower_last_name; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_user_lower_last_name ON public.cwd_user USING btree (lower_last_name, directory_id);


--
-- Name: idx_user_name_dir_id; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_user_name_dir_id ON public.cwd_user USING btree (directory_id);


--
-- Name: index_ao_26db7f_ent1247500752; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_26db7f_ent1247500752 ON public."AO_26DB7F_ENTITIES_TO_ROOM_CFG" USING btree ("ROOM_ID");


--
-- Name: index_ao_26db7f_ent1609287474; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_26db7f_ent1609287474 ON public."AO_26DB7F_ENTITIES_TO_ROOM_CFG" USING btree ("ENTITY_KEY");


--
-- Name: index_ao_26db7f_ent831223480; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_26db7f_ent831223480 ON public."AO_26DB7F_ENTITIES_TO_ROOMS" USING btree ("ROOM_ID");


--
-- Name: index_ao_26db7f_ent940053222; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_26db7f_ent940053222 ON public."AO_26DB7F_ENTITIES_TO_ROOMS" USING btree ("ENTITY_KEY");


--
-- Name: index_ao_38321b_cus1828044926; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_38321b_cus1828044926 ON public."AO_38321B_CUSTOM_CONTENT_LINK" USING btree ("CONTENT_KEY");


--
-- Name: index_ao_54c900_c_t667820477; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_54c900_c_t667820477 ON public."AO_54C900_C_TEMPLATE_REF" USING btree ("CB_INDEX_PARENTID");


--
-- Name: index_ao_54c900_c_t757546442; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_54c900_c_t757546442 ON public."AO_54C900_C_TEMPLATE_REF" USING btree ("CB_PARENTID");


--
-- Name: index_ao_54c900_c_t852152353; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_54c900_c_t852152353 ON public."AO_54C900_C_TEMPLATE_REF" USING btree ("PARENT_ID");


--
-- Name: index_ao_54c900_spa357134289; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_54c900_spa357134289 ON public."AO_54C900_SPACE_BLUEPRINT_AO" USING btree ("HOME_PAGE_ID");


--
-- Name: index_ao_563aee_act1642652291; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_563aee_act1642652291 ON public."AO_563AEE_ACTIVITY_ENTITY" USING btree ("OBJECT_ID");


--
-- Name: index_ao_563aee_act1978295567; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_563aee_act1978295567 ON public."AO_563AEE_ACTIVITY_ENTITY" USING btree ("TARGET_ID");


--
-- Name: index_ao_563aee_act972488439; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_563aee_act972488439 ON public."AO_563AEE_ACTIVITY_ENTITY" USING btree ("ICON_ID");


--
-- Name: index_ao_563aee_act995325379; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_563aee_act995325379 ON public."AO_563AEE_ACTIVITY_ENTITY" USING btree ("ACTOR_ID");


--
-- Name: index_ao_563aee_obj696886343; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_563aee_obj696886343 ON public."AO_563AEE_OBJECT_ENTITY" USING btree ("IMAGE_ID");


--
-- Name: index_ao_563aee_tar521440921; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_563aee_tar521440921 ON public."AO_563AEE_TARGET_ENTITY" USING btree ("IMAGE_ID");


--
-- Name: index_ao_5fb9d7_aoh1981563178; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_5fb9d7_aoh1981563178 ON public."AO_5FB9D7_AOHIP_CHAT_USER" USING btree ("USER_KEY");


--
-- Name: index_ao_5fb9d7_aoh49772492; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_5fb9d7_aoh49772492 ON public."AO_5FB9D7_AOHIP_CHAT_USER" USING btree ("HIP_CHAT_LINK_ID");


--
-- Name: index_ao_7cde43_eve1433596955; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_7cde43_eve1433596955 ON public."AO_7CDE43_EVENT" USING btree ("NOTIFICATION_ID");


--
-- Name: index_ao_7cde43_fil1140550715; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_7cde43_fil1140550715 ON public."AO_7CDE43_FILTER_PARAM" USING btree ("NOTIFICATION_ID");


--
-- Name: index_ao_7cde43_not7362182; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_7cde43_not7362182 ON public."AO_7CDE43_NOTIFICATION" USING btree ("NOTIFICATION_SCHEME_ID");


--
-- Name: index_ao_7cde43_rec1271577318; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_7cde43_rec1271577318 ON public."AO_7CDE43_RECIPIENT" USING btree ("NOTIFICATION_ID");


--
-- Name: index_ao_7cde43_ser828034299; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_7cde43_ser828034299 ON public."AO_7CDE43_SERVER_PARAM" USING btree ("SERVER_CONFIG_ID");


--
-- Name: index_ao_92296b_aor1216492770; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_92296b_aor1216492770 ON public."AO_92296B_AORECENTLY_VIEWED" USING btree ("CONTENT_ID");


--
-- Name: index_ao_92296b_aor1615591099; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_92296b_aor1615591099 ON public."AO_92296B_AORECENTLY_VIEWED" USING btree ("SPACE_KEY");


--
-- Name: index_ao_92296b_aor205355936; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_92296b_aor205355936 ON public."AO_92296B_AORECENTLY_VIEWED" USING btree ("LAST_VIEW_DATE");


--
-- Name: index_ao_92296b_aor426054036; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_92296b_aor426054036 ON public."AO_92296B_AORECENTLY_VIEWED" USING btree ("USER_KEY");


--
-- Name: index_ao_92296b_aor818798913; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_92296b_aor818798913 ON public."AO_92296B_AORECENTLY_VIEWED" USING btree ("CONTENT_TYPE");


--
-- Name: index_ao_9412a1_aon1547032463; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_9412a1_aon1547032463 ON public."AO_9412A1_AONOTIFICATION" USING btree ("CREATED");


--
-- Name: index_ao_9412a1_aon648423710; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_9412a1_aon648423710 ON public."AO_9412A1_AONOTIFICATION" USING btree ("USER");


--
-- Name: index_ao_9412a1_aon849931648; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_9412a1_aon849931648 ON public."AO_9412A1_AONOTIFICATION" USING btree ("GLOBAL_ID");


--
-- Name: index_ao_9412a1_aot1465568358; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_9412a1_aot1465568358 ON public."AO_9412A1_AOTASK" USING btree ("GLOBAL_ID");


--
-- Name: index_ao_9412a1_aotask_user; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_9412a1_aotask_user ON public."AO_9412A1_AOTASK" USING btree ("USER");


--
-- Name: index_ao_9412a1_use1222319987; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_9412a1_use1222319987 ON public."AO_9412A1_USER_APP_LINK" USING btree ("USER_ID");


--
-- Name: index_ao_9412a1_use643533071; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_9412a1_use643533071 ON public."AO_9412A1_USER_APP_LINK" USING btree ("APPLICATION_LINK_ID");


--
-- Name: index_ao_baf3aa_aoi1066945234; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_baf3aa_aoi1066945234 ON public."AO_BAF3AA_AOINLINE_TASK" USING btree ("CONTENT_ID");


--
-- Name: index_ao_baf3aa_aoi1143751131; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_baf3aa_aoi1143751131 ON public."AO_BAF3AA_AOINLINE_TASK" USING btree ("TASK_STATUS");


--
-- Name: index_ao_baf3aa_aoi1389674752; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_baf3aa_aoi1389674752 ON public."AO_BAF3AA_AOINLINE_TASK" USING btree ("CREATE_DATE");


--
-- Name: index_ao_baf3aa_aoi1395974671; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_baf3aa_aoi1395974671 ON public."AO_BAF3AA_AOINLINE_TASK" USING btree ("CREATOR_USER_KEY");


--
-- Name: index_ao_baf3aa_aoi1978441610; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_baf3aa_aoi1978441610 ON public."AO_BAF3AA_AOINLINE_TASK" USING btree ("DUE_DATE");


--
-- Name: index_ao_baf3aa_aoi866493194; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_baf3aa_aoi866493194 ON public."AO_BAF3AA_AOINLINE_TASK" USING btree ("ASSIGNEE_USER_KEY");


--
-- Name: index_ao_dc98ae_aoh1533992358; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_dc98ae_aoh1533992358 ON public."AO_DC98AE_AOHELP_TIP" USING btree ("USER_KEY");


--
-- Name: index_ao_dc98ae_aoh411805038; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_dc98ae_aoh411805038 ON public."AO_DC98AE_AOHELP_TIP" USING btree ("DISMISSED_HELP_TIP");


--
-- Name: j_creationdate_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX j_creationdate_idx ON public.journalentry USING btree (creationdate);


--
-- Name: j_j_name_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX j_j_name_idx ON public.journalentry USING btree (journal_name);


--
-- Name: job_id_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX job_id_idx ON public.scheduler_run_details USING btree (job_id);


--
-- Name: job_runner_key_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX job_runner_key_idx ON public.scheduler_clustered_jobs USING btree (job_runner_key);


--
-- Name: l_contentid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX l_contentid_idx ON public.links USING btree (contentid);


--
-- Name: l_destpgtitle_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX l_destpgtitle_idx ON public.links USING btree (destpagetitle);


--
-- Name: l_destspacekey_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX l_destspacekey_idx ON public.links USING btree (destspacekey);


--
-- Name: l_ldestpgtitle_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX l_ldestpgtitle_idx ON public.links USING btree (lowerdestpagetitle);


--
-- Name: l_ldestspacekey_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX l_ldestspacekey_idx ON public.links USING btree (lowerdestspacekey);


--
-- Name: l_name_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX l_name_idx ON public.label USING btree (name);


--
-- Name: l_namespace_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX l_namespace_idx ON public.label USING btree (namespace);


--
-- Name: l_owner_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX l_owner_idx ON public.label USING btree (owner);


--
-- Name: like_cdate_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX like_cdate_idx ON public.likes USING btree (creationdate);


--
-- Name: like_cid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX like_cid_idx ON public.likes USING btree (contentid);


--
-- Name: like_username_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX like_username_idx ON public.likes USING btree (username);


--
-- Name: links_creator_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX links_creator_idx ON public.links USING btree (creator);


--
-- Name: links_lastmodifier_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX links_lastmodifier_idx ON public.links USING btree (lastmodifier);


--
-- Name: n_contentid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX n_contentid_idx ON public.notifications USING btree (contentid);


--
-- Name: n_creator_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX n_creator_idx ON public.notifications USING btree (creator);


--
-- Name: n_labelid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX n_labelid_idx ON public.notifications USING btree (labelid);


--
-- Name: n_lastmodifier_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX n_lastmodifier_idx ON public.notifications USING btree (lastmodifier);


--
-- Name: n_spaceid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX n_spaceid_idx ON public.notifications USING btree (spaceid);


--
-- Name: n_username_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX n_username_idx ON public.notifications USING btree (username);


--
-- Name: next_run_time_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX next_run_time_idx ON public.scheduler_clustered_jobs USING btree (next_run_time);


--
-- Name: ospe_entityid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX ospe_entityid_idx ON public.os_propertyentry USING btree (entity_id);


--
-- Name: pt_creator_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX pt_creator_idx ON public.pagetemplates USING btree (creator);


--
-- Name: pt_lastmodifier_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX pt_lastmodifier_idx ON public.pagetemplates USING btree (lastmodifier);


--
-- Name: pt_prevver_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX pt_prevver_idx ON public.pagetemplates USING btree (prevver);


--
-- Name: pt_spaceid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX pt_spaceid_idx ON public.pagetemplates USING btree (spaceid);


--
-- Name: r_c2c_creator_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX r_c2c_creator_idx ON public.content_relation USING btree (creator);


--
-- Name: r_c2c_lastmodifier_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX r_c2c_lastmodifier_idx ON public.content_relation USING btree (lastmodifier);


--
-- Name: r_u2c_creator_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX r_u2c_creator_idx ON public.usercontent_relation USING btree (creator);


--
-- Name: r_u2c_lastmodifier_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX r_u2c_lastmodifier_idx ON public.usercontent_relation USING btree (lastmodifier);


--
-- Name: r_u2u_creator_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX r_u2u_creator_idx ON public.user_relation USING btree (creator);


--
-- Name: r_u2u_lastmodifier_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX r_u2u_lastmodifier_idx ON public.user_relation USING btree (lastmodifier);


--
-- Name: relation_c2c_cdate_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX relation_c2c_cdate_idx ON public.content_relation USING btree (creationdate);


--
-- Name: relation_c2c_relationname_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX relation_c2c_relationname_idx ON public.content_relation USING btree (relationname);


--
-- Name: relation_c2c_sourcecontent_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX relation_c2c_sourcecontent_idx ON public.content_relation USING btree (sourcecontentid);


--
-- Name: relation_c2c_sourcetype_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX relation_c2c_sourcetype_idx ON public.content_relation USING btree (sourcetype);


--
-- Name: relation_c2c_targetcontent_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX relation_c2c_targetcontent_idx ON public.content_relation USING btree (targetcontentid);


--
-- Name: relation_c2c_targettype_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX relation_c2c_targettype_idx ON public.content_relation USING btree (targettype);


--
-- Name: relation_u2c_cdate_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX relation_u2c_cdate_idx ON public.usercontent_relation USING btree (creationdate);


--
-- Name: relation_u2c_relationname_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX relation_u2c_relationname_idx ON public.usercontent_relation USING btree (relationname);


--
-- Name: relation_u2c_sourceuser_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX relation_u2c_sourceuser_idx ON public.usercontent_relation USING btree (sourceuser);


--
-- Name: relation_u2c_targetcontent_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX relation_u2c_targetcontent_idx ON public.usercontent_relation USING btree (targetcontentid);


--
-- Name: relation_u2c_targettype_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX relation_u2c_targettype_idx ON public.usercontent_relation USING btree (targettype);


--
-- Name: relation_u2u_cdate_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX relation_u2u_cdate_idx ON public.user_relation USING btree (creationdate);


--
-- Name: relation_u2u_relationname_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX relation_u2u_relationname_idx ON public.user_relation USING btree (relationname);


--
-- Name: relation_u2u_sourceuser_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX relation_u2u_sourceuser_idx ON public.user_relation USING btree (sourceuser);


--
-- Name: relation_u2u_targetuser_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX relation_u2u_targetuser_idx ON public.user_relation USING btree (targetuser);


--
-- Name: rmt_username_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX rmt_username_idx ON public.remembermetoken USING btree (username);


--
-- Name: s_creationdate_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX s_creationdate_idx ON public.spaces USING btree (creationdate);


--
-- Name: s_creator_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX s_creator_idx ON public.spaces USING btree (creator);


--
-- Name: s_homepage_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX s_homepage_idx ON public.spaces USING btree (homepage);


--
-- Name: s_lastmodifier_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX s_lastmodifier_idx ON public.spaces USING btree (lastmodifier);


--
-- Name: s_lspacekey_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX s_lspacekey_idx ON public.spaces USING btree (lowerspacekey);


--
-- Name: s_spacedescid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX s_spacedescid_idx ON public.spaces USING btree (spacedescid);


--
-- Name: s_spacestatus_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX s_spacestatus_idx ON public.spaces USING btree (spacestatus);


--
-- Name: sp_comp_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX sp_comp_idx ON public.spacepermissions USING btree (permtype, permgroupname);


--
-- Name: sp_creator_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX sp_creator_idx ON public.spacepermissions USING btree (creator);


--
-- Name: sp_lastmodifier_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX sp_lastmodifier_idx ON public.spacepermissions USING btree (lastmodifier);


--
-- Name: sp_permtype_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX sp_permtype_idx ON public.spacepermissions USING btree (permtype);


--
-- Name: sp_pgname_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX sp_pgname_idx ON public.spacepermissions USING btree (permgroupname);


--
-- Name: sp_puname_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX sp_puname_idx ON public.spacepermissions USING btree (permusername);


--
-- Name: sp_spaceid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX sp_spaceid_idx ON public.spacepermissions USING btree (spaceid);


--
-- Name: start_time_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX start_time_idx ON public.scheduler_run_details USING btree (start_time);


--
-- Name: tbl_contentid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX tbl_contentid_idx ON public.trackbacklinks USING btree (contentid);


--
-- Name: tbl_creator_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX tbl_creator_idx ON public.trackbacklinks USING btree (creator);


--
-- Name: tbl_lastmodifier_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX tbl_lastmodifier_idx ON public.trackbacklinks USING btree (lastmodifier);


--
-- Name: likes fk4514b9c8dd41734; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT fk4514b9c8dd41734 FOREIGN KEY (contentid) REFERENCES public.content(contentid);


--
-- Name: links fk45157998dd41734; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.links
    ADD CONSTRAINT fk45157998dd41734 FOREIGN KEY (contentid) REFERENCES public.content(contentid);


--
-- Name: cwd_app_dir_mapping fk52050e2fb347aa6a; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.cwd_app_dir_mapping
    ADD CONSTRAINT fk52050e2fb347aa6a FOREIGN KEY (application_id) REFERENCES public.cwd_application(id);


--
-- Name: notifications fk594acc827072aef; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT fk594acc827072aef FOREIGN KEY (labelid) REFERENCES public.label(labelid);


--
-- Name: notifications fk594acc8b2dc6081; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT fk594acc8b2dc6081 FOREIGN KEY (spaceid) REFERENCES public.spaces(spaceid);


--
-- Name: content fk6382c05917d4a070; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.content
    ADD CONSTRAINT fk6382c05917d4a070 FOREIGN KEY (prevver) REFERENCES public.content(contentid);


--
-- Name: content fk6382c05974b18345; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.content
    ADD CONSTRAINT fk6382c05974b18345 FOREIGN KEY (parentid) REFERENCES public.content(contentid);


--
-- Name: content fk6382c0598c38fbea; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.content
    ADD CONSTRAINT fk6382c0598c38fbea FOREIGN KEY (pageid) REFERENCES public.content(contentid);


--
-- Name: content fk6382c059b2dc6081; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.content
    ADD CONSTRAINT fk6382c059b2dc6081 FOREIGN KEY (spaceid) REFERENCES public.spaces(spaceid);


--
-- Name: content fk6382c059b97e9230; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.content
    ADD CONSTRAINT fk6382c059b97e9230 FOREIGN KEY (parentcommentid) REFERENCES public.content(contentid);


--
-- Name: content fk6382c059e5b1125; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.content
    ADD CONSTRAINT fk6382c059e5b1125 FOREIGN KEY (parentccid) REFERENCES public.content(contentid);


--
-- Name: local_members fk6b8fb445117d5fda; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.local_members
    ADD CONSTRAINT fk6b8fb445117d5fda FOREIGN KEY (groupid) REFERENCES public.groups(id);


--
-- Name: local_members fk6b8fb445ce2b3226; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.local_members
    ADD CONSTRAINT fk6b8fb445ce2b3226 FOREIGN KEY (userid) REFERENCES public.users(id);


--
-- Name: cwd_user_credential_record fk76f874f73aee0f; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.cwd_user_credential_record
    ADD CONSTRAINT fk76f874f73aee0f FOREIGN KEY (user_id) REFERENCES public.cwd_user(id);


--
-- Name: content_relation fk841caf22351d64c3; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.content_relation
    ADD CONSTRAINT fk841caf22351d64c3 FOREIGN KEY (targetcontentid) REFERENCES public.content(contentid);


--
-- Name: content_relation fk841caf22db772979; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.content_relation
    ADD CONSTRAINT fk841caf22db772979 FOREIGN KEY (sourcecontentid) REFERENCES public.content(contentid);


--
-- Name: spaces fk9228242d11b7bfee; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.spaces
    ADD CONSTRAINT fk9228242d11b7bfee FOREIGN KEY (homepage) REFERENCES public.content(contentid);


--
-- Name: spaces fk9228242d2c72d3d2; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.spaces
    ADD CONSTRAINT fk9228242d2c72d3d2 FOREIGN KEY (spacedescid) REFERENCES public.content(contentid);


--
-- Name: os_user_group fk932472461e2e76db; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.os_user_group
    ADD CONSTRAINT fk932472461e2e76db FOREIGN KEY (group_id) REFERENCES public.os_group(id);


--
-- Name: os_user_group fk93247246f73aee0f; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.os_user_group
    ADD CONSTRAINT fk93247246f73aee0f FOREIGN KEY (user_id) REFERENCES public.os_user(id);


--
-- Name: confancestors fk9494e23c37e35a2e; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.confancestors
    ADD CONSTRAINT fk9494e23c37e35a2e FOREIGN KEY (ancestorid) REFERENCES public.content(contentid);


--
-- Name: confancestors fk9494e23cc45e94dc; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.confancestors
    ADD CONSTRAINT fk9494e23cc45e94dc FOREIGN KEY (descendentid) REFERENCES public.content(contentid);


--
-- Name: extrnlnks fk97c10fe78dd41734; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.extrnlnks
    ADD CONSTRAINT fk97c10fe78dd41734 FOREIGN KEY (contentid) REFERENCES public.content(contentid);


--
-- Name: contentproperties fk984c5e4c8dd41734; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.contentproperties
    ADD CONSTRAINT fk984c5e4c8dd41734 FOREIGN KEY (contentid) REFERENCES public.content(contentid);


--
-- Name: attachmentdata fk9dc3e34d34a4917e; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.attachmentdata
    ADD CONSTRAINT fk9dc3e34d34a4917e FOREIGN KEY (attachmentid) REFERENCES public.content(contentid);


--
-- Name: audit_affected_object fk_affected_object_record; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.audit_affected_object
    ADD CONSTRAINT fk_affected_object_record FOREIGN KEY (auditrecordid) REFERENCES public.auditrecord(auditrecordid);


--
-- Name: AO_54C900_C_TEMPLATE_REF fk_ao_54c900_c_template_ref_cb_index_parentid; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_54C900_C_TEMPLATE_REF"
    ADD CONSTRAINT fk_ao_54c900_c_template_ref_cb_index_parentid FOREIGN KEY ("CB_INDEX_PARENTID") REFERENCES public."AO_54C900_CONTENT_BLUEPRINT_AO"("ID");


--
-- Name: AO_54C900_C_TEMPLATE_REF fk_ao_54c900_c_template_ref_cb_parentid; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_54C900_C_TEMPLATE_REF"
    ADD CONSTRAINT fk_ao_54c900_c_template_ref_cb_parentid FOREIGN KEY ("CB_PARENTID") REFERENCES public."AO_54C900_CONTENT_BLUEPRINT_AO"("ID");


--
-- Name: AO_54C900_C_TEMPLATE_REF fk_ao_54c900_c_template_ref_parent_id; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_54C900_C_TEMPLATE_REF"
    ADD CONSTRAINT fk_ao_54c900_c_template_ref_parent_id FOREIGN KEY ("PARENT_ID") REFERENCES public."AO_54C900_C_TEMPLATE_REF"("ID");


--
-- Name: AO_54C900_SPACE_BLUEPRINT_AO fk_ao_54c900_space_blueprint_ao_home_page_id; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_54C900_SPACE_BLUEPRINT_AO"
    ADD CONSTRAINT fk_ao_54c900_space_blueprint_ao_home_page_id FOREIGN KEY ("HOME_PAGE_ID") REFERENCES public."AO_54C900_C_TEMPLATE_REF"("ID");


--
-- Name: AO_563AEE_ACTIVITY_ENTITY fk_ao_563aee_activity_entity_actor_id; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_563AEE_ACTIVITY_ENTITY"
    ADD CONSTRAINT fk_ao_563aee_activity_entity_actor_id FOREIGN KEY ("ACTOR_ID") REFERENCES public."AO_563AEE_ACTOR_ENTITY"("ID");


--
-- Name: AO_563AEE_ACTIVITY_ENTITY fk_ao_563aee_activity_entity_icon_id; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_563AEE_ACTIVITY_ENTITY"
    ADD CONSTRAINT fk_ao_563aee_activity_entity_icon_id FOREIGN KEY ("ICON_ID") REFERENCES public."AO_563AEE_MEDIA_LINK_ENTITY"("ID");


--
-- Name: AO_563AEE_ACTIVITY_ENTITY fk_ao_563aee_activity_entity_object_id; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_563AEE_ACTIVITY_ENTITY"
    ADD CONSTRAINT fk_ao_563aee_activity_entity_object_id FOREIGN KEY ("OBJECT_ID") REFERENCES public."AO_563AEE_OBJECT_ENTITY"("ID");


--
-- Name: AO_563AEE_ACTIVITY_ENTITY fk_ao_563aee_activity_entity_target_id; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_563AEE_ACTIVITY_ENTITY"
    ADD CONSTRAINT fk_ao_563aee_activity_entity_target_id FOREIGN KEY ("TARGET_ID") REFERENCES public."AO_563AEE_TARGET_ENTITY"("ID");


--
-- Name: AO_563AEE_OBJECT_ENTITY fk_ao_563aee_object_entity_image_id; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_563AEE_OBJECT_ENTITY"
    ADD CONSTRAINT fk_ao_563aee_object_entity_image_id FOREIGN KEY ("IMAGE_ID") REFERENCES public."AO_563AEE_MEDIA_LINK_ENTITY"("ID");


--
-- Name: AO_563AEE_TARGET_ENTITY fk_ao_563aee_target_entity_image_id; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_563AEE_TARGET_ENTITY"
    ADD CONSTRAINT fk_ao_563aee_target_entity_image_id FOREIGN KEY ("IMAGE_ID") REFERENCES public."AO_563AEE_MEDIA_LINK_ENTITY"("ID");


--
-- Name: AO_5FB9D7_AOHIP_CHAT_USER fk_ao_5fb9d7_aohip_chat_user_hip_chat_link_id; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_5FB9D7_AOHIP_CHAT_USER"
    ADD CONSTRAINT fk_ao_5fb9d7_aohip_chat_user_hip_chat_link_id FOREIGN KEY ("HIP_CHAT_LINK_ID") REFERENCES public."AO_5FB9D7_AOHIP_CHAT_LINK"("ID");


--
-- Name: AO_7CDE43_EVENT fk_ao_7cde43_event_notification_id; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_7CDE43_EVENT"
    ADD CONSTRAINT fk_ao_7cde43_event_notification_id FOREIGN KEY ("NOTIFICATION_ID") REFERENCES public."AO_7CDE43_NOTIFICATION"("ID");


--
-- Name: AO_7CDE43_FILTER_PARAM fk_ao_7cde43_filter_param_notification_id; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_7CDE43_FILTER_PARAM"
    ADD CONSTRAINT fk_ao_7cde43_filter_param_notification_id FOREIGN KEY ("NOTIFICATION_ID") REFERENCES public."AO_7CDE43_NOTIFICATION"("ID");


--
-- Name: AO_7CDE43_NOTIFICATION fk_ao_7cde43_notification_notification_scheme_id; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_7CDE43_NOTIFICATION"
    ADD CONSTRAINT fk_ao_7cde43_notification_notification_scheme_id FOREIGN KEY ("NOTIFICATION_SCHEME_ID") REFERENCES public."AO_7CDE43_NOTIFICATION_SCHEME"("ID");


--
-- Name: AO_7CDE43_RECIPIENT fk_ao_7cde43_recipient_notification_id; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_7CDE43_RECIPIENT"
    ADD CONSTRAINT fk_ao_7cde43_recipient_notification_id FOREIGN KEY ("NOTIFICATION_ID") REFERENCES public."AO_7CDE43_NOTIFICATION"("ID");


--
-- Name: AO_7CDE43_SERVER_PARAM fk_ao_7cde43_server_param_server_config_id; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_7CDE43_SERVER_PARAM"
    ADD CONSTRAINT fk_ao_7cde43_server_param_server_config_id FOREIGN KEY ("SERVER_CONFIG_ID") REFERENCES public."AO_7CDE43_SERVER_CONFIG"("ID");


--
-- Name: AO_9412A1_USER_APP_LINK fk_ao_9412a1_user_app_link_user_id; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public."AO_9412A1_USER_APP_LINK"
    ADD CONSTRAINT fk_ao_9412a1_user_app_link_user_id FOREIGN KEY ("USER_ID") REFERENCES public."AO_9412A1_AOUSER"("ID");


--
-- Name: cwd_app_dir_mapping fk_app_dir_dir; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.cwd_app_dir_mapping
    ADD CONSTRAINT fk_app_dir_dir FOREIGN KEY (directory_id) REFERENCES public.cwd_directory(id);


--
-- Name: cwd_app_dir_group_mapping fk_app_dir_group_app; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.cwd_app_dir_group_mapping
    ADD CONSTRAINT fk_app_dir_group_app FOREIGN KEY (application_id) REFERENCES public.cwd_application(id);


--
-- Name: cwd_app_dir_group_mapping fk_app_dir_group_dir; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.cwd_app_dir_group_mapping
    ADD CONSTRAINT fk_app_dir_group_dir FOREIGN KEY (directory_id) REFERENCES public.cwd_directory(id);


--
-- Name: cwd_app_dir_group_mapping fk_app_dir_group_mapping; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.cwd_app_dir_group_mapping
    ADD CONSTRAINT fk_app_dir_group_mapping FOREIGN KEY (app_dir_mapping_id) REFERENCES public.cwd_app_dir_mapping(id);


--
-- Name: cwd_app_dir_operation fk_app_dir_mapping; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.cwd_app_dir_operation
    ADD CONSTRAINT fk_app_dir_mapping FOREIGN KEY (app_dir_mapping_id) REFERENCES public.cwd_app_dir_mapping(id);


--
-- Name: cwd_application_address fk_application_address; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.cwd_application_address
    ADD CONSTRAINT fk_application_address FOREIGN KEY (application_id) REFERENCES public.cwd_application(id);


--
-- Name: cwd_application_attribute fk_application_attribute; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.cwd_application_attribute
    ADD CONSTRAINT fk_application_attribute FOREIGN KEY (application_id) REFERENCES public.cwd_application(id);


--
-- Name: content_relation fk_c2crelation_creator; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.content_relation
    ADD CONSTRAINT fk_c2crelation_creator FOREIGN KEY (creator) REFERENCES public.user_mapping(user_key);


--
-- Name: content_relation fk_c2crelation_lastmodifier; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.content_relation
    ADD CONSTRAINT fk_c2crelation_lastmodifier FOREIGN KEY (lastmodifier) REFERENCES public.user_mapping(user_key);


--
-- Name: audit_changed_value fk_changed_value_record; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.audit_changed_value
    ADD CONSTRAINT fk_changed_value_record FOREIGN KEY (auditrecordid) REFERENCES public.auditrecord(auditrecordid);


--
-- Name: cwd_membership fk_child_grp; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.cwd_membership
    ADD CONSTRAINT fk_child_grp FOREIGN KEY (child_group_id) REFERENCES public.cwd_group(id);


--
-- Name: cwd_membership fk_child_user; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.cwd_membership
    ADD CONSTRAINT fk_child_user FOREIGN KEY (child_user_id) REFERENCES public.cwd_user(id);


--
-- Name: content fk_content_creator; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.content
    ADD CONSTRAINT fk_content_creator FOREIGN KEY (creator) REFERENCES public.user_mapping(user_key);


--
-- Name: content_label fk_content_label_owner; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.content_label
    ADD CONSTRAINT fk_content_label_owner FOREIGN KEY (owner) REFERENCES public.user_mapping(user_key);


--
-- Name: content fk_content_lastmodifier; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.content
    ADD CONSTRAINT fk_content_lastmodifier FOREIGN KEY (lastmodifier) REFERENCES public.user_mapping(user_key);


--
-- Name: content_perm fk_content_perm_creator; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.content_perm
    ADD CONSTRAINT fk_content_perm_creator FOREIGN KEY (creator) REFERENCES public.user_mapping(user_key);


--
-- Name: content_perm fk_content_perm_lastmodifier; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.content_perm
    ADD CONSTRAINT fk_content_perm_lastmodifier FOREIGN KEY (lastmodifier) REFERENCES public.user_mapping(user_key);


--
-- Name: content_perm fk_content_perm_username; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.content_perm
    ADD CONSTRAINT fk_content_perm_username FOREIGN KEY (username) REFERENCES public.user_mapping(user_key);


--
-- Name: content fk_content_username; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.content
    ADD CONSTRAINT fk_content_username FOREIGN KEY (username) REFERENCES public.user_mapping(user_key);


--
-- Name: cwd_directory_attribute fk_directory_attribute; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.cwd_directory_attribute
    ADD CONSTRAINT fk_directory_attribute FOREIGN KEY (directory_id) REFERENCES public.cwd_directory(id);


--
-- Name: cwd_group fk_directory_id; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.cwd_group
    ADD CONSTRAINT fk_directory_id FOREIGN KEY (directory_id) REFERENCES public.cwd_directory(id);


--
-- Name: cwd_directory_operation fk_directory_operation; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.cwd_directory_operation
    ADD CONSTRAINT fk_directory_operation FOREIGN KEY (directory_id) REFERENCES public.cwd_directory(id);


--
-- Name: extrnlnks fk_extrnlnks_creator; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.extrnlnks
    ADD CONSTRAINT fk_extrnlnks_creator FOREIGN KEY (creator) REFERENCES public.user_mapping(user_key);


--
-- Name: extrnlnks fk_extrnlnks_lastmodifier; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.extrnlnks
    ADD CONSTRAINT fk_extrnlnks_lastmodifier FOREIGN KEY (lastmodifier) REFERENCES public.user_mapping(user_key);


--
-- Name: follow_connections fk_follow_connections_followee; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.follow_connections
    ADD CONSTRAINT fk_follow_connections_followee FOREIGN KEY (followee) REFERENCES public.user_mapping(user_key);


--
-- Name: follow_connections fk_follow_connections_follower; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.follow_connections
    ADD CONSTRAINT fk_follow_connections_follower FOREIGN KEY (follower) REFERENCES public.user_mapping(user_key);


--
-- Name: cwd_group_attribute fk_group_attr_dir_id; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.cwd_group_attribute
    ADD CONSTRAINT fk_group_attr_dir_id FOREIGN KEY (directory_id) REFERENCES public.cwd_directory(id);


--
-- Name: cwd_group_attribute fk_group_attr_id_group_id; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.cwd_group_attribute
    ADD CONSTRAINT fk_group_attr_id_group_id FOREIGN KEY (group_id) REFERENCES public.cwd_group(id);


--
-- Name: label fk_label_owner; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.label
    ADD CONSTRAINT fk_label_owner FOREIGN KEY (owner) REFERENCES public.user_mapping(user_key);


--
-- Name: likes fk_likes_username; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT fk_likes_username FOREIGN KEY (username) REFERENCES public.user_mapping(user_key);


--
-- Name: links fk_links_creator; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.links
    ADD CONSTRAINT fk_links_creator FOREIGN KEY (creator) REFERENCES public.user_mapping(user_key);


--
-- Name: links fk_links_lastmodifier; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.links
    ADD CONSTRAINT fk_links_lastmodifier FOREIGN KEY (lastmodifier) REFERENCES public.user_mapping(user_key);


--
-- Name: logininfo fk_logininfo_username; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.logininfo
    ADD CONSTRAINT fk_logininfo_username FOREIGN KEY (username) REFERENCES public.user_mapping(user_key);


--
-- Name: notifications fk_notifications_content; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT fk_notifications_content FOREIGN KEY (contentid) REFERENCES public.content(contentid);


--
-- Name: notifications fk_notifications_creator; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT fk_notifications_creator FOREIGN KEY (creator) REFERENCES public.user_mapping(user_key);


--
-- Name: notifications fk_notifications_lastmodifier; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT fk_notifications_lastmodifier FOREIGN KEY (lastmodifier) REFERENCES public.user_mapping(user_key);


--
-- Name: notifications fk_notifications_username; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT fk_notifications_username FOREIGN KEY (username) REFERENCES public.user_mapping(user_key);


--
-- Name: pagetemplates fk_pagetemplates_creator; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.pagetemplates
    ADD CONSTRAINT fk_pagetemplates_creator FOREIGN KEY (creator) REFERENCES public.user_mapping(user_key);


--
-- Name: pagetemplates fk_pagetemplates_lastmodifier; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.pagetemplates
    ADD CONSTRAINT fk_pagetemplates_lastmodifier FOREIGN KEY (lastmodifier) REFERENCES public.user_mapping(user_key);


--
-- Name: cwd_membership fk_parent_grp; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.cwd_membership
    ADD CONSTRAINT fk_parent_grp FOREIGN KEY (parent_id) REFERENCES public.cwd_group(id);


--
-- Name: usercontent_relation fk_relation_u2cuser; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.usercontent_relation
    ADD CONSTRAINT fk_relation_u2cuser FOREIGN KEY (sourceuser) REFERENCES public.user_mapping(user_key);


--
-- Name: user_relation fk_relation_u2ususer; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.user_relation
    ADD CONSTRAINT fk_relation_u2ususer FOREIGN KEY (sourceuser) REFERENCES public.user_mapping(user_key);


--
-- Name: user_relation fk_relation_u2utuser; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.user_relation
    ADD CONSTRAINT fk_relation_u2utuser FOREIGN KEY (targetuser) REFERENCES public.user_mapping(user_key);


--
-- Name: spacepermissions fk_spacepermissions_creator; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.spacepermissions
    ADD CONSTRAINT fk_spacepermissions_creator FOREIGN KEY (creator) REFERENCES public.user_mapping(user_key);


--
-- Name: spacepermissions fk_spacepermissions_lastmodifi; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.spacepermissions
    ADD CONSTRAINT fk_spacepermissions_lastmodifi FOREIGN KEY (lastmodifier) REFERENCES public.user_mapping(user_key);


--
-- Name: spacepermissions fk_spacepermissions_permuserna; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.spacepermissions
    ADD CONSTRAINT fk_spacepermissions_permuserna FOREIGN KEY (permusername) REFERENCES public.user_mapping(user_key);


--
-- Name: spaces fk_spaces_creator; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.spaces
    ADD CONSTRAINT fk_spaces_creator FOREIGN KEY (creator) REFERENCES public.user_mapping(user_key);


--
-- Name: spaces fk_spaces_lastmodifier; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.spaces
    ADD CONSTRAINT fk_spaces_lastmodifier FOREIGN KEY (lastmodifier) REFERENCES public.user_mapping(user_key);


--
-- Name: trackbacklinks fk_trackbacklinks_creator; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.trackbacklinks
    ADD CONSTRAINT fk_trackbacklinks_creator FOREIGN KEY (creator) REFERENCES public.user_mapping(user_key);


--
-- Name: trackbacklinks fk_trackbacklinks_lastmodifier; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.trackbacklinks
    ADD CONSTRAINT fk_trackbacklinks_lastmodifier FOREIGN KEY (lastmodifier) REFERENCES public.user_mapping(user_key);


--
-- Name: usercontent_relation fk_u2crelation_creator; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.usercontent_relation
    ADD CONSTRAINT fk_u2crelation_creator FOREIGN KEY (creator) REFERENCES public.user_mapping(user_key);


--
-- Name: usercontent_relation fk_u2crelation_lastmodifier; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.usercontent_relation
    ADD CONSTRAINT fk_u2crelation_lastmodifier FOREIGN KEY (lastmodifier) REFERENCES public.user_mapping(user_key);


--
-- Name: user_relation fk_u2urelation_creator; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.user_relation
    ADD CONSTRAINT fk_u2urelation_creator FOREIGN KEY (creator) REFERENCES public.user_mapping(user_key);


--
-- Name: user_relation fk_u2urelation_lastmodifier; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.user_relation
    ADD CONSTRAINT fk_u2urelation_lastmodifier FOREIGN KEY (lastmodifier) REFERENCES public.user_mapping(user_key);


--
-- Name: cwd_user_attribute fk_user_attr_dir_id; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.cwd_user_attribute
    ADD CONSTRAINT fk_user_attr_dir_id FOREIGN KEY (directory_id) REFERENCES public.cwd_directory(id);


--
-- Name: cwd_user_attribute fk_user_attribute_id_user_id; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.cwd_user_attribute
    ADD CONSTRAINT fk_user_attribute_id_user_id FOREIGN KEY (user_id) REFERENCES public.cwd_user(id);


--
-- Name: cwd_user fk_user_dir_id; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.cwd_user
    ADD CONSTRAINT fk_user_dir_id FOREIGN KEY (directory_id) REFERENCES public.cwd_directory(id);


--
-- Name: imagedetails fka768048734a4917e; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.imagedetails
    ADD CONSTRAINT fka768048734a4917e FOREIGN KEY (attachmentid) REFERENCES public.content(contentid);


--
-- Name: bodycontent fka898d4778dd41734; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.bodycontent
    ADD CONSTRAINT fka898d4778dd41734 FOREIGN KEY (contentid) REFERENCES public.content(contentid);


--
-- Name: pagetemplates fkbc7ce96a17d4a070; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.pagetemplates
    ADD CONSTRAINT fkbc7ce96a17d4a070 FOREIGN KEY (prevver) REFERENCES public.pagetemplates(templateid);


--
-- Name: pagetemplates fkbc7ce96ab2dc6081; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.pagetemplates
    ADD CONSTRAINT fkbc7ce96ab2dc6081 FOREIGN KEY (spaceid) REFERENCES public.spaces(spaceid);


--
-- Name: content_perm fkbd74b31676e33274; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.content_perm
    ADD CONSTRAINT fkbd74b31676e33274 FOREIGN KEY (cps_id) REFERENCES public.content_perm_set(id);


--
-- Name: content_perm_set fkbf45a7992caf22c1; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.content_perm_set
    ADD CONSTRAINT fkbf45a7992caf22c1 FOREIGN KEY (content_id) REFERENCES public.content(contentid);


--
-- Name: spacepermissions fkd33f23beb2dc6081; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.spacepermissions
    ADD CONSTRAINT fkd33f23beb2dc6081 FOREIGN KEY (spaceid) REFERENCES public.spaces(spaceid);


--
-- Name: external_members fkd8c8d8a5117d5fda; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.external_members
    ADD CONSTRAINT fkd8c8d8a5117d5fda FOREIGN KEY (groupid) REFERENCES public.groups(id);


--
-- Name: external_members fkd8c8d8a5f25e5d5f; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.external_members
    ADD CONSTRAINT fkd8c8d8a5f25e5d5f FOREIGN KEY (extentityid) REFERENCES public.external_entities(id);


--
-- Name: trustedapp fkddb119ca9c85adb1; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.trustedapp
    ADD CONSTRAINT fkddb119ca9c85adb1 FOREIGN KEY (public_key_id) REFERENCES public.keystore(keyid);


--
-- Name: trustedapprestriction fke8496ba235d1d865; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.trustedapprestriction
    ADD CONSTRAINT fke8496ba235d1d865 FOREIGN KEY (trustedappid) REFERENCES public.trustedapp(trustedappid);


--
-- Name: usercontent_relation fkecd19ced351d64c3; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.usercontent_relation
    ADD CONSTRAINT fkecd19ced351d64c3 FOREIGN KEY (targetcontentid) REFERENCES public.content(contentid);


--
-- Name: content_label fkf0e7436e27072aef; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.content_label
    ADD CONSTRAINT fkf0e7436e27072aef FOREIGN KEY (labelid) REFERENCES public.label(labelid);


--
-- Name: content_label fkf0e7436e8dd41734; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.content_label
    ADD CONSTRAINT fkf0e7436e8dd41734 FOREIGN KEY (contentid) REFERENCES public.content(contentid);


--
-- Name: content_label fkf0e7436ed32042e4; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.content_label
    ADD CONSTRAINT fkf0e7436ed32042e4 FOREIGN KEY (pagetemplateid) REFERENCES public.pagetemplates(templateid);


--
-- Name: trackbacklinks fkf6977a478dd41734; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY public.trackbacklinks
    ADD CONSTRAINT fkf6977a478dd41734 FOREIGN KEY (contentid) REFERENCES public.content(contentid);


--
-- PostgreSQL database dump complete
--


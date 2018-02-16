--
-- PostgreSQL database dump
--

-- Dumped from database version 10.0
-- Dumped by pg_dump version 10.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: apiotics_settings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE apiotics_settings (
    id bigint NOT NULL,
    key text,
    value text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ar_internal_metadata (
    key text NOT NULL,
    value text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


--
-- Name: node_button_safe_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE node_button_safe_logs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: node_button_safe_logs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE node_button_safe_logs (
    id bigint DEFAULT nextval('node_button_safe_logs_id_seq'::regclass) NOT NULL,
    safe boolean,
    safe_ack boolean,
    safe_complete boolean,
    safe_timestamp text,
    safe_status text,
    safe_action text,
    button_id bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


--
-- Name: node_buttons_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE node_buttons_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: node_buttons; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE node_buttons (
    id bigint DEFAULT nextval('node_buttons_id_seq'::regclass) NOT NULL,
    safe boolean,
    safe_ack boolean,
    safe_complete boolean,
    safe_timestamp text,
    safe_status text,
    safe_action text,
    node_id bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


--
-- Name: node_led_led_state_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE node_led_led_state_logs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: node_led_led_state_logs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE node_led_led_state_logs (
    id bigint DEFAULT nextval('node_led_led_state_logs_id_seq'::regclass) NOT NULL,
    led_state boolean,
    led_state_ack boolean,
    led_state_complete boolean,
    led_state_timestamp text,
    led_state_status text,
    led_state_action text,
    led_id bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


--
-- Name: node_leds_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE node_leds_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: node_leds; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE node_leds (
    id bigint DEFAULT nextval('node_leds_id_seq'::regclass) NOT NULL,
    led_state boolean,
    led_state_ack boolean,
    led_state_complete boolean,
    led_state_timestamp text,
    led_state_status text,
    led_state_action text,
    node_id bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


--
-- Name: node_neo_pixel_stick_eight_led_color_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE node_neo_pixel_stick_eight_led_color_logs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: node_neo_pixel_stick_eight_led_color_logs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE node_neo_pixel_stick_eight_led_color_logs (
    id bigint DEFAULT nextval('node_neo_pixel_stick_eight_led_color_logs_id_seq'::regclass) NOT NULL,
    led_color bigint,
    led_color_ack boolean,
    led_color_complete boolean,
    led_color_timestamp text,
    led_color_status text,
    led_color_action text,
    neo_pixel_stick_eight_id bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


--
-- Name: node_neo_pixel_stick_eight_led_index_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE node_neo_pixel_stick_eight_led_index_logs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: node_neo_pixel_stick_eight_led_index_logs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE node_neo_pixel_stick_eight_led_index_logs (
    id bigint DEFAULT nextval('node_neo_pixel_stick_eight_led_index_logs_id_seq'::regclass) NOT NULL,
    led_index bigint,
    led_index_ack boolean,
    led_index_complete boolean,
    led_index_timestamp text,
    led_index_status text,
    led_index_action text,
    neo_pixel_stick_eight_id bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


--
-- Name: node_neo_pixel_stick_eights_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE node_neo_pixel_stick_eights_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: node_neo_pixel_stick_eights; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE node_neo_pixel_stick_eights (
    id bigint DEFAULT nextval('node_neo_pixel_stick_eights_id_seq'::regclass) NOT NULL,
    led_color bigint,
    led_color_ack boolean,
    led_color_complete boolean,
    led_color_timestamp text,
    led_color_status text,
    led_color_action text,
    led_index bigint,
    led_index_ack boolean,
    led_index_complete boolean,
    led_index_timestamp text,
    led_index_status text,
    led_index_action text,
    node_id bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


--
-- Name: node_nodes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE node_nodes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: node_nodes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE node_nodes (
    id bigint DEFAULT nextval('node_nodes_id_seq'::regclass) NOT NULL,
    apiotics_instance text,
    name text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE schema_migrations (
    version text NOT NULL
);


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip inet,
    last_sign_in_ip inet,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: apiotics_settings; Type: TABLE DATA; Schema: public; Owner: -
--

COPY apiotics_settings (id, key, value, created_at, updated_at) FROM stdin;
1	key_cipher	OpenSSL::Cipher.new 'AES-128-CBC'	2017-11-10 01:47:14.703873-05	2017-11-10 01:47:14.703873-05
2	key_pass_phrase	simbiotes	2017-11-10 01:47:14.70893-05	2017-11-10 01:47:14.70893-05
3	public_key	-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAw3hVMzq/13UwPvYglE/0\nCXIKIetQ72Z8TH/CspupEbehXUnZY3gVBV6DkgNJcG7rtCLmmNZMdg48P5cSM/0z\nfSzSU3HvkxtN4KSHOhwJM4VFtlbxW+Jc+TGdXHUMMSSkkXu56iC+qUlZZWn9NncD\nRruBDaXYEJT1Ww3SLFd6i8Q0BVi4RNKvQ3tdEBNY+zFazZO95dzHXDbyTjc1iR90\n0V97rqizKyQM0mZSbXlFXfOAY8WGvkGd34uij2OWAtxf6Noisp65l2HNn5oyZ51e\nZjEmpQuSFph5keaNd1VlJo4sLqaWn6Ta+Vkkcoo8bL8tsveqbmrVwUqcywIlAunO\nkwIDAQAB\n-----END PUBLIC KEY-----\n	2017-11-10 01:47:14.712624-05	2017-11-10 01:47:14.712624-05
4	key	-----BEGIN RSA PRIVATE KEY-----\nProc-Type: 4,ENCRYPTED\nDEK-Info: AES-128-CBC,BB0E0A694BC715CDB373814A49DED00A\n\niLyjUhGHCS87muNlJ6hqFW91+5TnxrzDJovU+izPX2d6Len6xVoahv3qYqcV9ShV\n7AZJHBq3i30X/2DPibcYKB/Ks21WiWKUAU59uWfyRleqOOrwmRPmRprmwbJFtv3W\na7Af9OqNtOEHihhb8f3J5LeGQ7d92GsXwCTTfyqjzvwWlLgcFdP3MfDrAFFDeO6X\n0Ussg7DtEe4zxfvTm5ulOTYasZyDb4rdW7M9wXp31UMmaTRrKS+Gn9ABzAwegdJP\n7dHIC/+YHEafhKFrKfqravMRbKLU7wsSVvRczZZ3RhStaTKeGjCXmYVH/WbBBLm3\ndTKHqleVkZ0PGHKET/ruhWmO6FlGtozV6B/hZuaRk55a3IdPiWoJLmIpS902FpbC\nKvRYET8Yz5ECxsY6694FgTxnNYZusyhkvkAyfacAXvhYasMfT/5wW1A0v06UO1rX\nNI+yxJ+KR82XqilqQsNAFBd5Rt8+6gfAxWeeDF2beYHxCzFolHnODfLGCiJ+PQtg\nG8Uvd8IqXuQTsZNkNFA2TPzUzwqTV20/Z948IBTxUWCfVFmSr439ziP1ukCo2DtY\nxQkKcRuKH5cbCTwqaWGxszFs/GTBplW564iNVcHKCKFtYuUXidtQN6NhAnHemxjY\nz5EyTCdqcY6w3L9yP/TXqmAFqkE0nQnPLBbzwpBC93Cy0LWJWFQYIRm1y4d4YE60\ntcnyJXdgoteHWQPnF33JXMLF4IME6TiaP+KpdZd4G+r/bMIXskUAGlb0qqEptyCa\n5G4LoEmj+1xZtWUZvr5hbYhDTz6QADpEN73YK65DGJNYnfbmXrceVQ36nuweCLfO\n3HsjtrmBLr1qxkDZRtmzy7ZPOcgnYXuKuEAhf7lnt7ANT/Z6dR5rnzGBFyDWCx0v\nvTEbRMGcPMIIBwsZylPURZmKRLVw9JMT8lb0WG+s9G1qKfqRujuOAB8e93dmkDqF\nDGY7XlHcNuDKHGGeaGI1f2SYE6s1mtNA64WGQObu7X7lwL2AS0epivG8HQe234m9\ny9y085i0R3HYrOv/xPCSmXGWwZ2sk/DqlSe7QzMnVvBWmioYbHg8gvetVtKu8CFT\nF2Miq82T7Rp8TnY1sx20/Gkx29ic8skfZY01XoE2Bq9fApZGNYZMiaNI9eXR1d90\n14q6Uvt5dO4QHLWZ35phVxYqZLu6rL6T0SYwF2XijcD4nhgI9YbQVMh2LCw6+QLS\n8hZ8kjFqGvR8h9mtQ//FrR77HWLETMJYDSaJ6Dd4UEXLXAIWpxAEQuvTkBCebZwO\nOP9FxVBUWlb9cCBK7P97CFscPM0rwzoULUMHznjVproMwrozqmHk5M78O77dS10M\nev4LMQT+GckQNb5/1Lm+NgVJy8Hmjv3ymMWQiA6TE8ZxZ6Tw5LIppmEgncIFt4vE\nZjYDsvH+PWd+B1jsZN4SP4VxpKCUq2D5gtRI1ky2q50TN76PwPOBhvx+qxeCMS8d\n8sUsIUdLK2ayIWkAQQrCA4evUKh70U+wltB4K2dfljRgZnHhv06Ew+36ddPmfdZf\nqVXOWMEfRJzbAeHjls4WJN6zF25RZBkQaRzSH5PdFsZ6uBAzCLic0pYmGEJXIMty\n-----END RSA PRIVATE KEY-----\n	2017-11-10 01:47:14.715844-05	2017-11-10 01:47:14.715844-05
5	cert	-----BEGIN CERTIFICATE-----\nMIIDezCCAmOgAwIBAgIBADANBgkqhkiG9w0BAQUFADAYMRYwFAYDVQQDDA1zaW1i\naW90ZXMuY29tMB4XDTE3MTExMDAxNDcxNFoXDTE4MTExMDAxNDcxNFowga4xFjAU\nBgNVBAMMDXNpbWJpb3Rlcy5jb20xSTBHBgNVBAoMQDYxNDg3NTY2YWNjZmI5YzZl\nNjQ1NWQzZWQwNjAwZTBkOWJiOWFmNTFjYmY0YzBkNzRjYmZjZWUxZjY1YTY4MTMx\nSTBHBgNVBAsMQDA2MzM4YzFlN2Q5MTNiZDM2NDhiNTVhNDdiNDJkNTBmNzM4YTcx\nY2QzNTZkNDE0ZjczZTlkMmQ3YmJhNmUyMjUwggEiMA0GCSqGSIb3DQEBAQUAA4IB\nDwAwggEKAoIBAQDDeFUzOr/XdTA+9iCUT/QJcgoh61DvZnxMf8Kym6kRt6FdSdlj\neBUFXoOSA0lwbuu0IuaY1kx2Djw/lxIz/TN9LNJTce+TG03gpIc6HAkzhUW2VvFb\n4lz5MZ1cdQwxJKSRe7nqIL6pSVllaf02dwNGu4ENpdgQlPVbDdIsV3qLxDQFWLhE\n0q9De10QE1j7MVrNk73l3MdcNvJONzWJH3TRX3uuqLMrJAzSZlJteUVd84BjxYa+\nQZ3fi6KPY5YC3F/o2iKynrmXYc2fmjJnnV5mMSalC5IWmHmR5o13VWUmjiwuppaf\npNr5WSRyijxsvy2y96puatXBSpzLAiUC6c6TAgMBAAGjOTA3MAkGA1UdEwQCMAAw\nCwYDVR0PBAQDAgSwMB0GA1UdDgQWBBSNds3Edh25c+duxy6EWNQu006Y5DANBgkq\nhkiG9w0BAQUFAAOCAQEAUBDVhjI4Ikc0VCYZQYK6gftxIqkAhE1EoMZeyW0dQ3++\nm3pnX53eEJt4BAkyGHOZ1GFFxtBCKN+dmix92d6+1aqT61PlY/PbNdv5QAp1MOdU\nZLLZGlsZNYqFVWuyhkypQDmS9oRtwvYHq4WjeAvD2ZWjpQGYRxf8KakRu35fBqZk\neA7+2siO0xNsCaClrXHVyIlLeg+IgoqLP1fnqqwExeDZtRQMXzhEKsF2LKNSHJXV\nVeu10FxBUjcCrwsHcrY3Z3pECj4P7GqCzrOUD8ttJxfYjLwNQw8Kre9oU2gbHHDN\nv2gY3BXThr+6NtBt8IRCAs6X/EfSwyBur7ishn38Ag==\n-----END CERTIFICATE-----\n	2017-11-10 01:47:15.002965-05	2017-11-10 01:47:15.002965-05
6	ca_cert	-----BEGIN CERTIFICATE-----\nMIIC7TCCAdWgAwIBAgIBATANBgkqhkiG9w0BAQUFADAYMRYwFAYDVQQDDA1zaW1i\naW90ZXMuY29tMB4XDTE3MDYzMDAxMDExN1oXDTI3MDYzMDAxMDExN1owGDEWMBQG\nA1UEAwwNc2ltYmlvdGVzLmNvbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoC\nggEBAPJOy7LnxrorBelAQWJrbCX4CmyC25BfyRshmkMBe/3X4wJhq9FXgIrWrZ+P\neYX1LFKh8EmZ8I4FjJVkhknpPD0XWJg8JPrB+A/xmgUAqdgrpMJEz54IUoUo+iFX\nYPMyQr5JFYEuKU0L9oedRSSmlVc+tnkA4m4KH4IQ5/MyiFZLChSVAOSyxh0Vyslo\nN2+IdsGikagxuWXQ+moHBJAW5TApKMVRMgRdgwAv98mdvryjr4SMKKT6S3eS+chj\nRJrETGyLm80/+ouSLUDsQaatr0s+FqaWbytXStME5MRUDwxPMe8RHO6df1MMu4LZ\n13Xw3ev2odLekiRd+soO/wJtBtcCAwEAAaNCMEAwHQYDVR0OBBYEFPBUrINJp30R\nsls6FljfBBN4CvHTMA8GA1UdEwEB/wQFMAMBAf8wDgYDVR0PAQH/BAQDAgEGMA0G\nCSqGSIb3DQEBBQUAA4IBAQAMYWrxxE26AggpKusqhstX/mlpAmXaGfskThHP2T7/\nELcgBUyyOCa0BIJk6USLc47JL7P4vDPcPamLVJRXxvEOMpFwV4qyihFEKqlG1HID\nvX3ttCTP2H3qhgzMkvjEre9jvU3D02e3jUEakrzt+zOdQqTXHYmSczIswq7InQXL\nrqxCmFnFMmSNW63z0LeG9k/i3D4eu8gJ7IG60CZMW21tU6fjSDImjWWeOG87I2Lm\nnwYu6KDZzVkoiBfzhzo5x6Ijj/ljWyQk6Yjts+8h9YWHstAlXCltru73dsqwwXq0\nzKT/GZOIUUO6J0hLxrU/mtAOB5pesfXZG89bR2nTmw+2\n-----END CERTIFICATE-----\n	2017-11-10 01:47:15.157286-05	2017-11-10 01:47:15.157286-05
7	server	104.130.23.221	2017-11-10 01:47:15.336003-05	2017-11-10 01:47:15.336003-05
8	port	5000	2017-11-10 01:47:15.339002-05	2017-11-10 01:47:15.339002-05
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2017-11-10 01:45:42.695589-05	2017-11-10 01:45:42.695589-05
\.


--
-- Data for Name: node_button_safe_logs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY node_button_safe_logs (id, safe, safe_ack, safe_complete, safe_timestamp, safe_status, safe_action, button_id, created_at, updated_at) FROM stdin;
1	\N	f	f	\N	\N	get	1	2017-11-24 17:40:03.531782-05	2017-11-24 17:40:03.531782-05
2	f	f	f	\N	\N	set-request	1	2017-11-24 17:41:06.232817-05	2017-11-24 17:41:06.232817-05
3	f	t	f	1511563266237835	\N	set-request-ack	1	2017-11-24 17:41:06.419956-05	2017-11-24 17:41:06.419956-05
\.


--
-- Data for Name: node_buttons; Type: TABLE DATA; Schema: public; Owner: -
--

COPY node_buttons (id, safe, safe_ack, safe_complete, safe_timestamp, safe_status, safe_action, node_id, created_at, updated_at) FROM stdin;
1	f	t	f	1511563266237835	\N	set-request-ack	3	2017-11-24 17:40:03.506885-05	2017-11-24 17:41:06.372048-05
\.


--
-- Data for Name: node_led_led_state_logs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY node_led_led_state_logs (id, led_state, led_state_ack, led_state_complete, led_state_timestamp, led_state_status, led_state_action, led_id, created_at, updated_at) FROM stdin;
1	\N	f	f	\N	\N	get	2	2017-11-24 17:40:03.483839-05	2017-11-24 17:40:03.483839-05
2	f	f	f	\N	\N	set-request	2	2017-11-24 17:41:06.204121-05	2017-11-24 17:41:06.204121-05
3	f	t	f	1511563266208468	\N	set-request-ack	2	2017-11-24 17:41:06.318891-05	2017-11-24 17:41:06.318891-05
\.


--
-- Data for Name: node_leds; Type: TABLE DATA; Schema: public; Owner: -
--

COPY node_leds (id, led_state, led_state_ack, led_state_complete, led_state_timestamp, led_state_status, led_state_action, node_id, created_at, updated_at) FROM stdin;
2	f	t	f	1511563266208468	\N	set-request-ack	3	2017-11-24 17:40:03.458017-05	2017-11-24 17:41:06.290137-05
\.


--
-- Data for Name: node_neo_pixel_stick_eight_led_color_logs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY node_neo_pixel_stick_eight_led_color_logs (id, led_color, led_color_ack, led_color_complete, led_color_timestamp, led_color_status, led_color_action, neo_pixel_stick_eight_id, created_at, updated_at) FROM stdin;
1	5	f	f	\N	\N	set-request	1	2017-11-24 17:41:06.263521-05	2017-11-24 17:41:06.263521-05
2	5	t	f	1511563266267416	\N	set-request-ack	1	2017-11-24 17:41:06.486446-05	2017-11-24 17:41:06.486446-05
3	9699539	f	f	\N	\N	set-request	1	2017-11-24 17:41:18.314482-05	2017-11-24 17:41:18.314482-05
4	9699539	t	f	1511563278338919	\N	set-request-ack	1	2017-11-24 17:41:18.348418-05	2017-11-24 17:41:18.348418-05
5	4915330	f	f	\N	\N	set-request	1	2017-11-24 17:41:18.437827-05	2017-11-24 17:41:18.437827-05
6	255	f	f	\N	\N	set-request	1	2017-11-24 17:41:18.559409-05	2017-11-24 17:41:18.559409-05
7	65280	f	f	\N	\N	set-request	1	2017-11-24 17:41:18.686521-05	2017-11-24 17:41:18.686521-05
8	16776960	f	f	\N	\N	set-request	1	2017-11-24 17:41:18.810747-05	2017-11-24 17:41:18.810747-05
9	16744192	f	f	\N	\N	set-request	1	2017-11-24 17:41:18.936534-05	2017-11-24 17:41:18.936534-05
10	16711680	f	f	\N	\N	set-request	1	2017-11-24 17:41:19.064682-05	2017-11-24 17:41:19.064682-05
11	9699539	f	f	\N	\N	set-request	1	2017-11-24 17:41:19.185977-05	2017-11-24 17:41:19.185977-05
12	4915330	f	f	\N	\N	set-request	1	2017-11-24 17:41:19.312291-05	2017-11-24 17:41:19.312291-05
13	255	f	f	\N	\N	set-request	1	2017-11-24 17:41:19.436253-05	2017-11-24 17:41:19.436253-05
14	65280	f	f	\N	\N	set-request	1	2017-11-24 17:41:19.562241-05	2017-11-24 17:41:19.562241-05
15	16776960	f	f	\N	\N	set-request	1	2017-11-24 17:41:19.68858-05	2017-11-24 17:41:19.68858-05
16	16744192	f	f	\N	\N	set-request	1	2017-11-24 17:41:19.811464-05	2017-11-24 17:41:19.811464-05
17	16711680	f	f	\N	\N	set-request	1	2017-11-24 17:41:19.938117-05	2017-11-24 17:41:19.938117-05
18	9699539	f	f	\N	\N	set-request	1	2017-11-24 17:41:20.065468-05	2017-11-24 17:41:20.065468-05
19	4915330	f	f	\N	\N	set-request	1	2017-11-24 17:41:20.187676-05	2017-11-24 17:41:20.187676-05
20	255	f	f	\N	\N	set-request	1	2017-11-24 17:41:20.313137-05	2017-11-24 17:41:20.313137-05
21	65280	f	f	\N	\N	set-request	1	2017-11-24 17:41:20.4401-05	2017-11-24 17:41:20.4401-05
22	16776960	f	f	\N	\N	set-request	1	2017-11-24 17:41:20.566792-05	2017-11-24 17:41:20.566792-05
23	16744192	f	f	\N	\N	set-request	1	2017-11-24 17:41:20.688163-05	2017-11-24 17:41:20.688163-05
24	16711680	f	f	\N	\N	set-request	1	2017-11-24 17:41:20.816867-05	2017-11-24 17:41:20.816867-05
25	9699539	f	f	\N	\N	set-request	1	2017-11-24 17:41:20.940593-05	2017-11-24 17:41:20.940593-05
26	4915330	f	f	\N	\N	set-request	1	2017-11-24 17:41:21.070709-05	2017-11-24 17:41:21.070709-05
27	255	f	f	\N	\N	set-request	1	2017-11-24 17:41:21.192724-05	2017-11-24 17:41:21.192724-05
28	65280	f	f	\N	\N	set-request	1	2017-11-24 17:41:21.317707-05	2017-11-24 17:41:21.317707-05
29	16776960	f	f	\N	\N	set-request	1	2017-11-24 17:41:21.438399-05	2017-11-24 17:41:21.438399-05
30	16744192	f	f	\N	\N	set-request	1	2017-11-24 17:41:21.565418-05	2017-11-24 17:41:21.565418-05
31	16711680	f	f	\N	\N	set-request	1	2017-11-24 17:41:21.687601-05	2017-11-24 17:41:21.687601-05
32	9699539	f	f	\N	\N	set-request	1	2017-11-24 17:41:21.816972-05	2017-11-24 17:41:21.816972-05
33	4915330	f	f	\N	\N	set-request	1	2017-11-24 17:41:21.938409-05	2017-11-24 17:41:21.938409-05
34	255	f	f	\N	\N	set-request	1	2017-11-24 17:41:22.062711-05	2017-11-24 17:41:22.062711-05
35	65280	f	f	\N	\N	set-request	1	2017-11-24 17:41:22.188841-05	2017-11-24 17:41:22.188841-05
36	16776960	f	f	\N	\N	set-request	1	2017-11-24 17:41:22.314358-05	2017-11-24 17:41:22.314358-05
37	16744192	f	f	\N	\N	set-request	1	2017-11-24 17:41:22.438613-05	2017-11-24 17:41:22.438613-05
38	16711680	f	f	\N	\N	set-request	1	2017-11-24 17:41:22.567491-05	2017-11-24 17:41:22.567491-05
39	9699539	f	f	\N	\N	set-request	1	2017-11-24 17:41:22.698205-05	2017-11-24 17:41:22.698205-05
40	4915330	f	f	\N	\N	set-request	1	2017-11-24 17:41:22.8238-05	2017-11-24 17:41:22.8238-05
41	255	f	f	\N	\N	set-request	1	2017-11-24 17:41:22.952136-05	2017-11-24 17:41:22.952136-05
42	65280	f	f	\N	\N	set-request	1	2017-11-24 17:41:23.079385-05	2017-11-24 17:41:23.079385-05
43	16776960	f	f	\N	\N	set-request	1	2017-11-24 17:41:23.207673-05	2017-11-24 17:41:23.207673-05
44	16744192	f	f	\N	\N	set-request	1	2017-11-24 17:41:23.333663-05	2017-11-24 17:41:23.333663-05
45	16711680	f	f	\N	\N	set-request	1	2017-11-24 17:41:23.454127-05	2017-11-24 17:41:23.454127-05
46	9699539	f	f	\N	\N	set-request	1	2017-11-24 17:41:23.577974-05	2017-11-24 17:41:23.577974-05
47	4915330	f	f	\N	\N	set-request	1	2017-11-24 17:41:23.699871-05	2017-11-24 17:41:23.699871-05
48	255	f	f	\N	\N	set-request	1	2017-11-24 17:41:23.823584-05	2017-11-24 17:41:23.823584-05
49	65280	f	f	\N	\N	set-request	1	2017-11-24 17:41:23.951776-05	2017-11-24 17:41:23.951776-05
50	16776960	f	f	\N	\N	set-request	1	2017-11-24 17:41:24.080764-05	2017-11-24 17:41:24.080764-05
51	16744192	f	f	\N	\N	set-request	1	2017-11-24 17:41:24.204972-05	2017-11-24 17:41:24.204972-05
52	16711680	f	f	\N	\N	set-request	1	2017-11-24 17:41:24.324213-05	2017-11-24 17:41:24.324213-05
53	9699539	f	f	\N	\N	set-request	1	2017-11-24 17:41:24.443297-05	2017-11-24 17:41:24.443297-05
54	4915330	f	f	\N	\N	set-request	1	2017-11-24 17:41:24.564361-05	2017-11-24 17:41:24.564361-05
55	65280	f	f	\N	\N	set-request	1	2017-11-24 17:41:43.271648-05	2017-11-24 17:41:43.271648-05
56	65280	t	f	1511563303296669	\N	set-request-ack	1	2017-11-24 17:41:43.309469-05	2017-11-24 17:41:43.309469-05
57	255	f	f	\N	\N	set-request	1	2017-11-24 17:41:43.394288-05	2017-11-24 17:41:43.394288-05
58	255	t	f	1511563303453851	\N	set-request-ack	1	2017-11-24 17:41:43.464284-05	2017-11-24 17:41:43.464284-05
59	65280	f	f	\N	\N	set-request	1	2017-11-24 17:41:43.517347-05	2017-11-24 17:41:43.517347-05
60	255	f	f	\N	\N	set-request	1	2017-11-24 17:41:43.641828-05	2017-11-24 17:41:43.641828-05
61	65280	t	f	1511563303631376	\N	set-request-ack	1	2017-11-24 17:41:43.646057-05	2017-11-24 17:41:43.646057-05
62	65280	f	f	\N	\N	set-request	1	2017-11-24 17:41:43.767165-05	2017-11-24 17:41:43.767165-05
63	255	t	f	1511563303660611	\N	set-request-ack	1	2017-11-24 17:41:43.786643-05	2017-11-24 17:41:43.786643-05
64	255	f	f	\N	\N	set-request	1	2017-11-24 17:41:43.893335-05	2017-11-24 17:41:43.893335-05
65	65280	t	f	1511563303799100	\N	set-request-ack	1	2017-11-24 17:41:43.909567-05	2017-11-24 17:41:43.909567-05
66	255	t	f	1511563303927100	\N	set-request-ack	1	2017-11-24 17:41:43.935237-05	2017-11-24 17:41:43.935237-05
67	65280	f	f	\N	\N	set-request	1	2017-11-24 17:41:44.015721-05	2017-11-24 17:41:44.015721-05
68	65280	t	f	1511563304094493	\N	set-request-ack	1	2017-11-24 17:41:44.103808-05	2017-11-24 17:41:44.103808-05
69	255	f	f	\N	\N	set-request	1	2017-11-24 17:41:44.141731-05	2017-11-24 17:41:44.141731-05
70	65280	f	f	\N	\N	set-request	1	2017-11-24 17:41:44.26704-05	2017-11-24 17:41:44.26704-05
71	255	t	f	1511563304261156	\N	set-request-ack	1	2017-11-24 17:41:44.27162-05	2017-11-24 17:41:44.27162-05
72	255	f	f	\N	\N	set-request	1	2017-11-24 17:41:44.390318-05	2017-11-24 17:41:44.390318-05
73	65280	t	f	1511563304290899	\N	set-request-ack	1	2017-11-24 17:41:44.41475-05	2017-11-24 17:41:44.41475-05
74	255	t	f	1511563304428936	\N	set-request-ack	1	2017-11-24 17:41:44.440887-05	2017-11-24 17:41:44.440887-05
75	65280	f	f	\N	\N	set-request	1	2017-11-24 17:41:44.515596-05	2017-11-24 17:41:44.515596-05
76	65280	t	f	1511563304596195	\N	set-request-ack	1	2017-11-24 17:41:44.607633-05	2017-11-24 17:41:44.607633-05
77	255	f	f	\N	\N	set-request	1	2017-11-24 17:41:44.635849-05	2017-11-24 17:41:44.635849-05
78	65280	f	f	\N	\N	set-request	1	2017-11-24 17:41:44.755898-05	2017-11-24 17:41:44.755898-05
79	255	f	f	\N	\N	set-request	1	2017-11-24 17:41:44.87722-05	2017-11-24 17:41:44.87722-05
80	255	t	f	1511563304763640	\N	set-request-ack	1	2017-11-24 17:41:44.882493-05	2017-11-24 17:41:44.882493-05
81	65280	t	f	1511563304891607	\N	set-request-ack	1	2017-11-24 17:41:44.900786-05	2017-11-24 17:41:44.900786-05
82	65280	f	f	\N	\N	set-request	1	2017-11-24 17:41:44.997891-05	2017-11-24 17:41:44.997891-05
83	255	t	f	1511563304921436	\N	set-request-ack	1	2017-11-24 17:41:45.049169-05	2017-11-24 17:41:45.049169-05
84	65280	t	f	1511563305069148	\N	set-request-ack	1	2017-11-24 17:41:45.082398-05	2017-11-24 17:41:45.082398-05
85	0	f	f	\N	\N	set-request	1	2017-11-24 17:42:02.391223-05	2017-11-24 17:42:02.391223-05
86	0	t	f	1511563322407704	\N	set-request-ack	1	2017-11-24 17:42:02.418209-05	2017-11-24 17:42:02.418209-05
87	65280	f	f	\N	\N	set-request	1	2017-11-25 16:36:47.767202-05	2017-11-25 16:36:47.767202-05
88	65280	t	f	1511645807774378	\N	set-request-ack	1	2017-11-25 16:36:47.87244-05	2017-11-25 16:36:47.87244-05
89	255	f	f	\N	\N	set-request	1	2017-11-25 16:36:47.885202-05	2017-11-25 16:36:47.885202-05
90	255	t	f	1511645807912558	\N	set-request-ack	1	2017-11-25 16:36:47.92327-05	2017-11-25 16:36:47.92327-05
91	65280	f	f	\N	\N	set-request	1	2017-11-25 16:36:48.028979-05	2017-11-25 16:36:48.028979-05
92	65280	t	f	1511645808049969	\N	set-request-ack	1	2017-11-25 16:36:48.056872-05	2017-11-25 16:36:48.056872-05
93	255	f	f	\N	\N	set-request	1	2017-11-25 16:36:48.150226-05	2017-11-25 16:36:48.150226-05
94	255	t	f	1511645808168532	\N	set-request-ack	1	2017-11-25 16:36:48.1724-05	2017-11-25 16:36:48.1724-05
95	65280	f	f	\N	\N	set-request	1	2017-11-25 16:36:48.273026-05	2017-11-25 16:36:48.273026-05
96	65280	t	f	1511645808297042	\N	set-request-ack	1	2017-11-25 16:36:48.308758-05	2017-11-25 16:36:48.308758-05
97	255	f	f	\N	\N	set-request	1	2017-11-25 16:36:48.397329-05	2017-11-25 16:36:48.397329-05
98	255	t	f	1511645808424687	\N	set-request-ack	1	2017-11-25 16:36:48.436922-05	2017-11-25 16:36:48.436922-05
99	65280	f	f	\N	\N	set-request	1	2017-11-25 16:36:48.521562-05	2017-11-25 16:36:48.521562-05
100	65280	t	f	1511645808542289	\N	set-request-ack	1	2017-11-25 16:36:48.548242-05	2017-11-25 16:36:48.548242-05
101	255	f	f	\N	\N	set-request	1	2017-11-25 16:36:48.643093-05	2017-11-25 16:36:48.643093-05
102	255	t	f	1511645808670166	\N	set-request-ack	1	2017-11-25 16:36:48.677686-05	2017-11-25 16:36:48.677686-05
103	65280	f	f	\N	\N	set-request	1	2017-11-25 16:36:48.765853-05	2017-11-25 16:36:48.765853-05
104	65280	t	f	1511645808787906	\N	set-request-ack	1	2017-11-25 16:36:48.793821-05	2017-11-25 16:36:48.793821-05
105	255	f	f	\N	\N	set-request	1	2017-11-25 16:36:48.889592-05	2017-11-25 16:36:48.889592-05
106	255	t	f	1511645808916161	\N	set-request-ack	1	2017-11-25 16:36:48.924031-05	2017-11-25 16:36:48.924031-05
107	65280	f	f	\N	\N	set-request	1	2017-11-25 16:36:49.014185-05	2017-11-25 16:36:49.014185-05
108	65280	t	f	1511645809034167	\N	set-request-ack	1	2017-11-25 16:36:49.039416-05	2017-11-25 16:36:49.039416-05
109	255	f	f	\N	\N	set-request	1	2017-11-25 16:36:49.133553-05	2017-11-25 16:36:49.133553-05
110	255	t	f	1511645809162200	\N	set-request-ack	1	2017-11-25 16:36:49.167403-05	2017-11-25 16:36:49.167403-05
111	65280	f	f	\N	\N	set-request	1	2017-11-25 16:36:49.255377-05	2017-11-25 16:36:49.255377-05
112	65280	t	f	1511645809280040	\N	set-request-ack	1	2017-11-25 16:36:49.285819-05	2017-11-25 16:36:49.285819-05
113	255	f	f	\N	\N	set-request	1	2017-11-25 16:36:49.377202-05	2017-11-25 16:36:49.377202-05
114	255	t	f	1511645809398316	\N	set-request-ack	1	2017-11-25 16:36:49.404857-05	2017-11-25 16:36:49.404857-05
115	65280	f	f	\N	\N	set-request	1	2017-11-25 16:36:49.5004-05	2017-11-25 16:36:49.5004-05
116	65280	t	f	1511645809526239	\N	set-request-ack	1	2017-11-25 16:36:49.533434-05	2017-11-25 16:36:49.533434-05
\.


--
-- Data for Name: node_neo_pixel_stick_eight_led_index_logs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY node_neo_pixel_stick_eight_led_index_logs (id, led_index, led_index_ack, led_index_complete, led_index_timestamp, led_index_status, led_index_action, neo_pixel_stick_eight_id, created_at, updated_at) FROM stdin;
1	0	f	f	\N	\N	set-request	1	2017-11-24 17:41:06.287365-05	2017-11-24 17:41:06.287365-05
2	1	f	f	\N	\N	set-request	1	2017-11-24 17:41:18.431956-05	2017-11-24 17:41:18.431956-05
3	1	t	f	1511563278457023	\N	set-request-ack	1	2017-11-24 17:41:18.488196-05	2017-11-24 17:41:18.488196-05
4	2	f	f	\N	\N	set-request	1	2017-11-24 17:41:18.554578-05	2017-11-24 17:41:18.554578-05
5	2	t	f	1511563278585118	\N	set-request-ack	1	2017-11-24 17:41:18.607445-05	2017-11-24 17:41:18.607445-05
6	3	f	f	\N	\N	set-request	1	2017-11-24 17:41:18.680657-05	2017-11-24 17:41:18.680657-05
7	3	t	f	1511563278704408	\N	set-request-ack	1	2017-11-24 17:41:18.723176-05	2017-11-24 17:41:18.723176-05
8	4	f	f	\N	\N	set-request	1	2017-11-24 17:41:18.805757-05	2017-11-24 17:41:18.805757-05
9	4	t	f	1511563278832379	\N	set-request-ack	1	2017-11-24 17:41:18.844029-05	2017-11-24 17:41:18.844029-05
10	5	f	f	\N	\N	set-request	1	2017-11-24 17:41:18.930957-05	2017-11-24 17:41:18.930957-05
11	5	t	f	1511563278949463	\N	set-request-ack	1	2017-11-24 17:41:18.960702-05	2017-11-24 17:41:18.960702-05
12	6	f	f	\N	\N	set-request	1	2017-11-24 17:41:19.058699-05	2017-11-24 17:41:19.058699-05
13	6	t	f	1511563279077129	\N	set-request-ack	1	2017-11-24 17:41:19.088275-05	2017-11-24 17:41:19.088275-05
14	7	f	f	\N	\N	set-request	1	2017-11-24 17:41:19.181068-05	2017-11-24 17:41:19.181068-05
15	7	t	f	1511563279205464	\N	set-request-ack	1	2017-11-24 17:41:19.220939-05	2017-11-24 17:41:19.220939-05
16	0	f	f	\N	\N	set-request	1	2017-11-24 17:41:19.307872-05	2017-11-24 17:41:19.307872-05
17	1	f	f	\N	\N	set-request	1	2017-11-24 17:41:19.430526-05	2017-11-24 17:41:19.430526-05
18	0	t	f	1511563279333540	\N	set-request-ack	1	2017-11-24 17:41:19.478817-05	2017-11-24 17:41:19.478817-05
19	1	t	f	1511563279500719	\N	set-request-ack	1	2017-11-24 17:41:19.51272-05	2017-11-24 17:41:19.51272-05
20	2	f	f	\N	\N	set-request	1	2017-11-24 17:41:19.556808-05	2017-11-24 17:41:19.556808-05
21	3	f	f	\N	\N	set-request	1	2017-11-24 17:41:19.682727-05	2017-11-24 17:41:19.682727-05
22	2	t	f	1511563279579482	\N	set-request-ack	1	2017-11-24 17:41:19.715766-05	2017-11-24 17:41:19.715766-05
23	3	t	f	1511563279727460	\N	set-request-ack	1	2017-11-24 17:41:19.737515-05	2017-11-24 17:41:19.737515-05
24	4	f	f	\N	\N	set-request	1	2017-11-24 17:41:19.806952-05	2017-11-24 17:41:19.806952-05
25	5	f	f	\N	\N	set-request	1	2017-11-24 17:41:19.933126-05	2017-11-24 17:41:19.933126-05
26	4	t	f	1511563279964397	\N	set-request-ack	1	2017-11-24 17:41:19.990844-05	2017-11-24 17:41:19.990844-05
27	6	f	f	\N	\N	set-request	1	2017-11-24 17:41:20.060293-05	2017-11-24 17:41:20.060293-05
28	5	t	f	1511563280000399	\N	set-request-ack	1	2017-11-24 17:41:20.096689-05	2017-11-24 17:41:20.096689-05
29	6	t	f	1511563280118710	\N	set-request-ack	1	2017-11-24 17:41:20.139189-05	2017-11-24 17:41:20.139189-05
30	7	f	f	\N	\N	set-request	1	2017-11-24 17:41:20.182572-05	2017-11-24 17:41:20.182572-05
31	0	f	f	\N	\N	set-request	1	2017-11-24 17:41:20.308407-05	2017-11-24 17:41:20.308407-05
32	7	t	f	1511563280286107	\N	set-request-ack	1	2017-11-24 17:41:20.309198-05	2017-11-24 17:41:20.309198-05
33	1	f	f	\N	\N	set-request	1	2017-11-24 17:41:20.433618-05	2017-11-24 17:41:20.433618-05
34	0	t	f	1511563280443870	\N	set-request-ack	1	2017-11-24 17:41:20.456895-05	2017-11-24 17:41:20.456895-05
35	2	f	f	\N	\N	set-request	1	2017-11-24 17:41:20.560759-05	2017-11-24 17:41:20.560759-05
36	1	t	f	1511563280473251	\N	set-request-ack	1	2017-11-24 17:41:20.615199-05	2017-11-24 17:41:20.615199-05
37	2	t	f	1511563280621088	\N	set-request-ack	1	2017-11-24 17:41:20.63191-05	2017-11-24 17:41:20.63191-05
38	3	f	f	\N	\N	set-request	1	2017-11-24 17:41:20.682584-05	2017-11-24 17:41:20.682584-05
39	4	f	f	\N	\N	set-request	1	2017-11-24 17:41:20.811993-05	2017-11-24 17:41:20.811993-05
40	5	f	f	\N	\N	set-request	1	2017-11-24 17:41:20.935066-05	2017-11-24 17:41:20.935066-05
41	6	f	f	\N	\N	set-request	1	2017-11-24 17:41:21.06362-05	2017-11-24 17:41:21.06362-05
42	7	f	f	\N	\N	set-request	1	2017-11-24 17:41:21.187768-05	2017-11-24 17:41:21.187768-05
43	3	t	f	1511563281250967	\N	set-request-ack	1	2017-11-24 17:41:21.26163-05	2017-11-24 17:41:21.26163-05
44	4	t	f	1511563281251000	\N	set-request-ack	1	2017-11-24 17:41:21.282169-05	2017-11-24 17:41:21.282169-05
45	5	t	f	1511563281251016	\N	set-request-ack	1	2017-11-24 17:41:21.293888-05	2017-11-24 17:41:21.293888-05
46	6	t	f	1511563281251035	\N	set-request-ack	1	2017-11-24 17:41:21.307303-05	2017-11-24 17:41:21.307303-05
47	0	f	f	\N	\N	set-request	1	2017-11-24 17:41:21.312952-05	2017-11-24 17:41:21.312952-05
48	7	t	f	1511563281251056	\N	set-request-ack	1	2017-11-24 17:41:21.320894-05	2017-11-24 17:41:21.320894-05
49	1	f	f	\N	\N	set-request	1	2017-11-24 17:41:21.433427-05	2017-11-24 17:41:21.433427-05
50	0	t	f	1511563281419521	\N	set-request-ack	1	2017-11-24 17:41:21.434008-05	2017-11-24 17:41:21.434008-05
51	2	f	f	\N	\N	set-request	1	2017-11-24 17:41:21.560804-05	2017-11-24 17:41:21.560804-05
52	1	t	f	1511563281457725	\N	set-request-ack	1	2017-11-24 17:41:21.570158-05	2017-11-24 17:41:21.570158-05
53	2	t	f	1511563281585648	\N	set-request-ack	1	2017-11-24 17:41:21.599105-05	2017-11-24 17:41:21.599105-05
54	3	f	f	\N	\N	set-request	1	2017-11-24 17:41:21.682501-05	2017-11-24 17:41:21.682501-05
55	4	f	f	\N	\N	set-request	1	2017-11-24 17:41:21.810923-05	2017-11-24 17:41:21.810923-05
56	3	t	f	1511563281753361	\N	set-request-ack	1	2017-11-24 17:41:21.86686-05	2017-11-24 17:41:21.86686-05
57	4	t	f	1511563281881484	\N	set-request-ack	1	2017-11-24 17:41:21.892896-05	2017-11-24 17:41:21.892896-05
58	5	f	f	\N	\N	set-request	1	2017-11-24 17:41:21.932638-05	2017-11-24 17:41:21.932638-05
59	6	f	f	\N	\N	set-request	1	2017-11-24 17:41:22.058112-05	2017-11-24 17:41:22.058112-05
60	5	t	f	1511563282048589	\N	set-request-ack	1	2017-11-24 17:41:22.059796-05	2017-11-24 17:41:22.059796-05
61	7	f	f	\N	\N	set-request	1	2017-11-24 17:41:22.183143-05	2017-11-24 17:41:22.183143-05
62	6	t	f	1511563282078077	\N	set-request-ack	1	2017-11-24 17:41:22.19903-05	2017-11-24 17:41:22.19903-05
63	7	t	f	1511563282215812	\N	set-request-ack	1	2017-11-24 17:41:22.22709-05	2017-11-24 17:41:22.22709-05
64	0	f	f	\N	\N	set-request	1	2017-11-24 17:41:22.309761-05	2017-11-24 17:41:22.309761-05
65	0	t	f	1511563282383248	\N	set-request-ack	1	2017-11-24 17:41:22.394893-05	2017-11-24 17:41:22.394893-05
66	1	f	f	\N	\N	set-request	1	2017-11-24 17:41:22.432703-05	2017-11-24 17:41:22.432703-05
67	2	f	f	\N	\N	set-request	1	2017-11-24 17:41:22.562052-05	2017-11-24 17:41:22.562052-05
68	1	t	f	1511563282550755	\N	set-request-ack	1	2017-11-24 17:41:22.563199-05	2017-11-24 17:41:22.563199-05
69	3	f	f	\N	\N	set-request	1	2017-11-24 17:41:22.691439-05	2017-11-24 17:41:22.691439-05
70	2	t	f	1511563282580295	\N	set-request-ack	1	2017-11-24 17:41:22.708821-05	2017-11-24 17:41:22.708821-05
71	3	t	f	1511563282728042	\N	set-request-ack	1	2017-11-24 17:41:22.735936-05	2017-11-24 17:41:22.735936-05
72	4	f	f	\N	\N	set-request	1	2017-11-24 17:41:22.818997-05	2017-11-24 17:41:22.818997-05
73	4	t	f	1511563282895306	\N	set-request-ack	1	2017-11-24 17:41:22.906605-05	2017-11-24 17:41:22.906605-05
74	5	f	f	\N	\N	set-request	1	2017-11-24 17:41:22.945203-05	2017-11-24 17:41:22.945203-05
75	5	t	f	1511563282964144	\N	set-request-ack	1	2017-11-24 17:41:22.980391-05	2017-11-24 17:41:22.980391-05
76	6	f	f	\N	\N	set-request	1	2017-11-24 17:41:23.074326-05	2017-11-24 17:41:23.074326-05
77	6	t	f	1511563283131877	\N	set-request-ack	1	2017-11-24 17:41:23.143882-05	2017-11-24 17:41:23.143882-05
78	7	f	f	\N	\N	set-request	1	2017-11-24 17:41:23.202737-05	2017-11-24 17:41:23.202737-05
79	0	f	f	\N	\N	set-request	1	2017-11-24 17:41:23.32784-05	2017-11-24 17:41:23.32784-05
82	1	f	f	\N	\N	set-request	1	2017-11-24 17:41:23.448704-05	2017-11-24 17:41:23.448704-05
84	2	f	f	\N	\N	set-request	1	2017-11-24 17:41:23.573222-05	2017-11-24 17:41:23.573222-05
85	3	f	f	\N	\N	set-request	1	2017-11-24 17:41:23.694839-05	2017-11-24 17:41:23.694839-05
87	4	f	f	\N	\N	set-request	1	2017-11-24 17:41:23.817228-05	2017-11-24 17:41:23.817228-05
90	5	f	f	\N	\N	set-request	1	2017-11-24 17:41:23.946426-05	2017-11-24 17:41:23.946426-05
92	6	f	f	\N	\N	set-request	1	2017-11-24 17:41:24.075062-05	2017-11-24 17:41:24.075062-05
93	7	f	f	\N	\N	set-request	1	2017-11-24 17:41:24.199342-05	2017-11-24 17:41:24.199342-05
95	0	f	f	\N	\N	set-request	1	2017-11-24 17:41:24.319209-05	2017-11-24 17:41:24.319209-05
98	1	f	f	\N	\N	set-request	1	2017-11-24 17:41:24.438871-05	2017-11-24 17:41:24.438871-05
100	2	f	f	\N	\N	set-request	1	2017-11-24 17:41:24.559411-05	2017-11-24 17:41:24.559411-05
102	0	f	f	\N	\N	set-request	1	2017-11-24 17:41:43.27699-05	2017-11-24 17:41:43.27699-05
103	1	f	f	\N	\N	set-request	1	2017-11-24 17:41:43.399393-05	2017-11-24 17:41:43.399393-05
104	2	f	f	\N	\N	set-request	1	2017-11-24 17:41:43.523132-05	2017-11-24 17:41:43.523132-05
105	3	f	f	\N	\N	set-request	1	2017-11-24 17:41:43.646428-05	2017-11-24 17:41:43.646428-05
106	4	f	f	\N	\N	set-request	1	2017-11-24 17:41:43.774785-05	2017-11-24 17:41:43.774785-05
107	5	f	f	\N	\N	set-request	1	2017-11-24 17:41:43.898934-05	2017-11-24 17:41:43.898934-05
108	6	f	f	\N	\N	set-request	1	2017-11-24 17:41:44.020992-05	2017-11-24 17:41:44.020992-05
109	7	f	f	\N	\N	set-request	1	2017-11-24 17:41:44.147534-05	2017-11-24 17:41:44.147534-05
110	6	f	f	\N	\N	set-request	1	2017-11-24 17:41:44.272773-05	2017-11-24 17:41:44.272773-05
111	5	f	f	\N	\N	set-request	1	2017-11-24 17:41:44.395194-05	2017-11-24 17:41:44.395194-05
112	4	f	f	\N	\N	set-request	1	2017-11-24 17:41:44.521515-05	2017-11-24 17:41:44.521515-05
113	3	f	f	\N	\N	set-request	1	2017-11-24 17:41:44.641047-05	2017-11-24 17:41:44.641047-05
114	2	f	f	\N	\N	set-request	1	2017-11-24 17:41:44.76023-05	2017-11-24 17:41:44.76023-05
115	1	f	f	\N	\N	set-request	1	2017-11-24 17:41:44.881647-05	2017-11-24 17:41:44.881647-05
116	0	f	f	\N	\N	set-request	1	2017-11-24 17:41:45.003779-05	2017-11-24 17:41:45.003779-05
80	7	t	f	1511563283358089	\N	set-request-ack	1	2017-11-24 17:41:23.368238-05	2017-11-24 17:41:23.368238-05
81	0	t	f	1511563283377550	\N	set-request-ack	1	2017-11-24 17:41:23.388031-05	2017-11-24 17:41:23.388031-05
83	1	t	f	1511563283515525	\N	set-request-ack	1	2017-11-24 17:41:23.526848-05	2017-11-24 17:41:23.526848-05
86	2	t	f	1511563283683617	\N	set-request-ack	1	2017-11-24 17:41:23.699125-05	2017-11-24 17:41:23.699125-05
88	3	t	f	1511563283722699	\N	set-request-ack	1	2017-11-24 17:41:23.839124-05	2017-11-24 17:41:23.839124-05
89	4	t	f	1511563283850759	\N	set-request-ack	1	2017-11-24 17:41:23.861856-05	2017-11-24 17:41:23.861856-05
91	5	t	f	1511563284017531	\N	set-request-ack	1	2017-11-24 17:41:24.02944-05	2017-11-24 17:41:24.02944-05
94	6	t	f	1511563284194856	\N	set-request-ack	1	2017-11-24 17:41:24.311277-05	2017-11-24 17:41:24.311277-05
96	7	t	f	1511563284322744	\N	set-request-ack	1	2017-11-24 17:41:24.330359-05	2017-11-24 17:41:24.330359-05
97	0	t	f	1511563284342610	\N	set-request-ack	1	2017-11-24 17:41:24.356077-05	2017-11-24 17:41:24.356077-05
99	1	t	f	1511563284490020	\N	set-request-ack	1	2017-11-24 17:41:24.502831-05	2017-11-24 17:41:24.502831-05
101	2	t	f	1511563284657763	\N	set-request-ack	1	2017-11-24 17:41:24.673982-05	2017-11-24 17:41:24.673982-05
117	1	f	f	\N	\N	set-request	1	2017-11-24 17:42:02.39758-05	2017-11-24 17:42:02.39758-05
118	1	f	f	\N	\N	set-request	1	2017-11-25 16:36:47.906691-05	2017-11-25 16:36:47.906691-05
119	2	f	f	\N	\N	set-request	1	2017-11-25 16:36:48.033939-05	2017-11-25 16:36:48.033939-05
120	3	f	f	\N	\N	set-request	1	2017-11-25 16:36:48.155943-05	2017-11-25 16:36:48.155943-05
121	4	f	f	\N	\N	set-request	1	2017-11-25 16:36:48.277718-05	2017-11-25 16:36:48.277718-05
122	5	f	f	\N	\N	set-request	1	2017-11-25 16:36:48.401846-05	2017-11-25 16:36:48.401846-05
123	6	f	f	\N	\N	set-request	1	2017-11-25 16:36:48.526162-05	2017-11-25 16:36:48.526162-05
124	7	f	f	\N	\N	set-request	1	2017-11-25 16:36:48.648338-05	2017-11-25 16:36:48.648338-05
125	6	f	f	\N	\N	set-request	1	2017-11-25 16:36:48.771181-05	2017-11-25 16:36:48.771181-05
126	5	f	f	\N	\N	set-request	1	2017-11-25 16:36:48.894018-05	2017-11-25 16:36:48.894018-05
127	4	f	f	\N	\N	set-request	1	2017-11-25 16:36:49.019191-05	2017-11-25 16:36:49.019191-05
128	3	f	f	\N	\N	set-request	1	2017-11-25 16:36:49.138129-05	2017-11-25 16:36:49.138129-05
129	2	f	f	\N	\N	set-request	1	2017-11-25 16:36:49.260073-05	2017-11-25 16:36:49.260073-05
130	1	f	f	\N	\N	set-request	1	2017-11-25 16:36:49.381818-05	2017-11-25 16:36:49.381818-05
131	0	f	f	\N	\N	set-request	1	2017-11-25 16:36:49.506125-05	2017-11-25 16:36:49.506125-05
\.


--
-- Data for Name: node_neo_pixel_stick_eights; Type: TABLE DATA; Schema: public; Owner: -
--

COPY node_neo_pixel_stick_eights (id, led_color, led_color_ack, led_color_complete, led_color_timestamp, led_color_status, led_color_action, led_index, led_index_ack, led_index_complete, led_index_timestamp, led_index_status, led_index_action, node_id, created_at, updated_at) FROM stdin;
1	65280	t	f	1511645809526239	\N	set-request-ack	0	f	f	1511563284657763	\N	set-request	3	2017-11-24 17:40:03.608948-05	2017-11-25 16:36:49.525433-05
\.


--
-- Data for Name: node_nodes; Type: TABLE DATA; Schema: public; Owner: -
--

COPY node_nodes (id, apiotics_instance, name, created_at, updated_at) FROM stdin;
3	d384a9aafbeaf72b8b5bb1abf855f9944c950f9b4f1d2a0b9a7ba1c0e7c3498b	w16	2017-11-24 17:40:03.448232-05	2017-11-24 17:40:03.448232-05
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY schema_migrations (version) FROM stdin;
20171109104622
20171109104751
20171109104752
20171109104755
20171109104759
20171109104800
20171109104806
20171109104807
20171109104808
20171123230847
20171124145701
20171124150002
20171124163523
20171124163605
20171124171400
20171124171500
20171124172100
20171124172101
20171124172400
20171124172401
20171124172800
20171124172900
20171124173200
20171124173201
20171124173600
20171124173601
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at) FROM stdin;
2	margaryta@gmail.com	$2a$11$8tPLB6quuFnxUTV7HBtXh.1bw4/11qmgUcCIFJcbUI5uIvMS0iYSe	\N	\N	\N	11	2017-11-27 16:36:19.86489	2017-11-26 18:59:13.246593	127.0.0.1	127.0.0.1	2017-11-24 17:38:23.007529	2017-11-27 16:36:19.866105
\.


--
-- Name: node_button_safe_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('node_button_safe_logs_id_seq', 3, true);


--
-- Name: node_buttons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('node_buttons_id_seq', 1, true);


--
-- Name: node_led_led_state_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('node_led_led_state_logs_id_seq', 3, true);


--
-- Name: node_leds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('node_leds_id_seq', 2, true);


--
-- Name: node_neo_pixel_stick_eight_led_color_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('node_neo_pixel_stick_eight_led_color_logs_id_seq', 116, true);


--
-- Name: node_neo_pixel_stick_eight_led_index_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('node_neo_pixel_stick_eight_led_index_logs_id_seq', 131, true);


--
-- Name: node_neo_pixel_stick_eights_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('node_neo_pixel_stick_eights_id_seq', 1, true);


--
-- Name: node_nodes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('node_nodes_id_seq', 3, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('users_id_seq', 2, true);


--
-- Name: schema_migrations idx_16853_sqlite_autoindex_schema_migrations_1; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT idx_16853_sqlite_autoindex_schema_migrations_1 PRIMARY KEY (version);


--
-- Name: ar_internal_metadata idx_16859_sqlite_autoindex_ar_internal_metadata_1; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT idx_16859_sqlite_autoindex_ar_internal_metadata_1 PRIMARY KEY (key);


--
-- Name: apiotics_settings idx_16865_apiotics_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY apiotics_settings
    ADD CONSTRAINT idx_16865_apiotics_settings_pkey PRIMARY KEY (id);


--
-- Name: node_leds idx_16871_node_leds_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY node_leds
    ADD CONSTRAINT idx_16871_node_leds_pkey PRIMARY KEY (id);


--
-- Name: node_led_led_state_logs idx_16877_node_led_led_state_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY node_led_led_state_logs
    ADD CONSTRAINT idx_16877_node_led_led_state_logs_pkey PRIMARY KEY (id);


--
-- Name: node_nodes idx_16883_node_nodes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY node_nodes
    ADD CONSTRAINT idx_16883_node_nodes_pkey PRIMARY KEY (id);


--
-- Name: node_buttons idx_16889_node_buttons_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY node_buttons
    ADD CONSTRAINT idx_16889_node_buttons_pkey PRIMARY KEY (id);


--
-- Name: node_button_safe_logs idx_16895_node_button_safe_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY node_button_safe_logs
    ADD CONSTRAINT idx_16895_node_button_safe_logs_pkey PRIMARY KEY (id);


--
-- Name: node_neo_pixel_stick_eights idx_16901_node_neo_pixel_stick_eights_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY node_neo_pixel_stick_eights
    ADD CONSTRAINT idx_16901_node_neo_pixel_stick_eights_pkey PRIMARY KEY (id);


--
-- Name: node_neo_pixel_stick_eight_led_color_logs idx_16907_node_neo_pixel_stick_eight_led_color_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY node_neo_pixel_stick_eight_led_color_logs
    ADD CONSTRAINT idx_16907_node_neo_pixel_stick_eight_led_color_logs_pkey PRIMARY KEY (id);


--
-- Name: node_neo_pixel_stick_eight_led_index_logs idx_16913_node_neo_pixel_stick_eight_led_index_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY node_neo_pixel_stick_eight_led_index_logs
    ADD CONSTRAINT idx_16913_node_neo_pixel_stick_eight_led_index_logs_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_users_on_email ON users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON users USING btree (reset_password_token);


--
-- PostgreSQL database dump complete
--


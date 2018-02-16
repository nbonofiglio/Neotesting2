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
-- Name: apiotics_settings; Type: TABLE; Schema: public; Owner: margaryta
--

CREATE TABLE apiotics_settings (
    id bigint NOT NULL,
    key text,
    value text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE apiotics_settings OWNER TO margaryta;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: margaryta
--

CREATE TABLE ar_internal_metadata (
    key text NOT NULL,
    value text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE ar_internal_metadata OWNER TO margaryta;

--
-- Name: cord_cords; Type: TABLE; Schema: public; Owner: margaryta
--

CREATE TABLE cord_cords (
    id bigint NOT NULL,
    apiotics_instance character varying,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE cord_cords OWNER TO margaryta;

--
-- Name: cord_cords_id_seq; Type: SEQUENCE; Schema: public; Owner: margaryta
--

CREATE SEQUENCE cord_cords_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cord_cords_id_seq OWNER TO margaryta;

--
-- Name: cord_cords_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: margaryta
--

ALTER SEQUENCE cord_cords_id_seq OWNED BY cord_cords.id;


--
-- Name: cord_neo_pixels; Type: TABLE; Schema: public; Owner: margaryta
--

CREATE TABLE cord_neo_pixels (
    id bigint NOT NULL,
    pixel_0 integer,
    pixel_0_ack boolean,
    pixel_0_complete boolean,
    pixel_0_timestamp character varying,
    pixel_0_status character varying,
    pixel_0_action character varying,
    pixel_1 integer,
    pixel_1_ack boolean,
    pixel_1_complete boolean,
    pixel_1_timestamp character varying,
    pixel_1_status character varying,
    pixel_1_action character varying,
    pixel_2 integer,
    pixel_2_ack boolean,
    pixel_2_complete boolean,
    pixel_2_timestamp character varying,
    pixel_2_status character varying,
    pixel_2_action character varying,
    pixel_3 integer,
    pixel_3_ack boolean,
    pixel_3_complete boolean,
    pixel_3_timestamp character varying,
    pixel_3_status character varying,
    pixel_3_action character varying,
    pixel_4 integer,
    pixel_4_ack boolean,
    pixel_4_complete boolean,
    pixel_4_timestamp character varying,
    pixel_4_status character varying,
    pixel_4_action character varying,
    pixel_5 integer,
    pixel_5_ack boolean,
    pixel_5_complete boolean,
    pixel_5_timestamp character varying,
    pixel_5_status character varying,
    pixel_5_action character varying,
    pixel_6 integer,
    pixel_6_ack boolean,
    pixel_6_complete boolean,
    pixel_6_timestamp character varying,
    pixel_6_status character varying,
    pixel_6_action character varying,
    pixel_7 integer,
    pixel_7_ack boolean,
    pixel_7_complete boolean,
    pixel_7_timestamp character varying,
    pixel_7_status character varying,
    pixel_7_action character varying,
    pixel_8 integer,
    pixel_8_ack boolean,
    pixel_8_complete boolean,
    pixel_8_timestamp character varying,
    pixel_8_status character varying,
    pixel_8_action character varying,
    pixel_9 integer,
    pixel_9_ack boolean,
    pixel_9_complete boolean,
    pixel_9_timestamp character varying,
    pixel_9_status character varying,
    pixel_9_action character varying,
    pixel_10 integer,
    pixel_10_ack boolean,
    pixel_10_complete boolean,
    pixel_10_timestamp character varying,
    pixel_10_status character varying,
    pixel_10_action character varying,
    pixel_11 integer,
    pixel_11_ack boolean,
    pixel_11_complete boolean,
    pixel_11_timestamp character varying,
    pixel_11_status character varying,
    pixel_11_action character varying,
    pixel_12 integer,
    pixel_12_ack boolean,
    pixel_12_complete boolean,
    pixel_12_timestamp character varying,
    pixel_12_status character varying,
    pixel_12_action character varying,
    pixel_13 integer,
    pixel_13_ack boolean,
    pixel_13_complete boolean,
    pixel_13_timestamp character varying,
    pixel_13_status character varying,
    pixel_13_action character varying,
    pixel_14 integer,
    pixel_14_ack boolean,
    pixel_14_complete boolean,
    pixel_14_timestamp character varying,
    pixel_14_status character varying,
    pixel_14_action character varying,
    pixel_15 integer,
    pixel_15_ack boolean,
    pixel_15_complete boolean,
    pixel_15_timestamp character varying,
    pixel_15_status character varying,
    pixel_15_action character varying,
    pixel_16 integer,
    pixel_16_ack boolean,
    pixel_16_complete boolean,
    pixel_16_timestamp character varying,
    pixel_16_status character varying,
    pixel_16_action character varying,
    pixel_17 integer,
    pixel_17_ack boolean,
    pixel_17_complete boolean,
    pixel_17_timestamp character varying,
    pixel_17_status character varying,
    pixel_17_action character varying,
    pixel_18 integer,
    pixel_18_ack boolean,
    pixel_18_complete boolean,
    pixel_18_timestamp character varying,
    pixel_18_status character varying,
    pixel_18_action character varying,
    pixel_19 integer,
    pixel_19_ack boolean,
    pixel_19_complete boolean,
    pixel_19_timestamp character varying,
    pixel_19_status character varying,
    pixel_19_action character varying,
    pixel_20 integer,
    pixel_20_ack boolean,
    pixel_20_complete boolean,
    pixel_20_timestamp character varying,
    pixel_20_status character varying,
    pixel_20_action character varying,
    pixel_21 integer,
    pixel_21_ack boolean,
    pixel_21_complete boolean,
    pixel_21_timestamp character varying,
    pixel_21_status character varying,
    pixel_21_action character varying,
    pixel_22 integer,
    pixel_22_ack boolean,
    pixel_22_complete boolean,
    pixel_22_timestamp character varying,
    pixel_22_status character varying,
    pixel_22_action character varying,
    pixel_23 integer,
    pixel_23_ack boolean,
    pixel_23_complete boolean,
    pixel_23_timestamp character varying,
    pixel_23_status character varying,
    pixel_23_action character varying,
    pixel_24 integer,
    pixel_24_ack boolean,
    pixel_24_complete boolean,
    pixel_24_timestamp character varying,
    pixel_24_status character varying,
    pixel_24_action character varying,
    pixel_25 integer,
    pixel_25_ack boolean,
    pixel_25_complete boolean,
    pixel_25_timestamp character varying,
    pixel_25_status character varying,
    pixel_25_action character varying,
    pixel_26 integer,
    pixel_26_ack boolean,
    pixel_26_complete boolean,
    pixel_26_timestamp character varying,
    pixel_26_status character varying,
    pixel_26_action character varying,
    pixel_27 integer,
    pixel_27_ack boolean,
    pixel_27_complete boolean,
    pixel_27_timestamp character varying,
    pixel_27_status character varying,
    pixel_27_action character varying,
    pixel_28 integer,
    pixel_28_ack boolean,
    pixel_28_complete boolean,
    pixel_28_timestamp character varying,
    pixel_28_status character varying,
    pixel_28_action character varying,
    pixel_29 integer,
    pixel_29_ack boolean,
    pixel_29_complete boolean,
    pixel_29_timestamp character varying,
    pixel_29_status character varying,
    pixel_29_action character varying,
    pixel_30 integer,
    pixel_30_ack boolean,
    pixel_30_complete boolean,
    pixel_30_timestamp character varying,
    pixel_30_status character varying,
    pixel_30_action character varying,
    pixel_31 integer,
    pixel_31_ack boolean,
    pixel_31_complete boolean,
    pixel_31_timestamp character varying,
    pixel_31_status character varying,
    pixel_31_action character varying,
    pixel_32 integer,
    pixel_32_ack boolean,
    pixel_32_complete boolean,
    pixel_32_timestamp character varying,
    pixel_32_status character varying,
    pixel_32_action character varying,
    pixel_33 integer,
    pixel_33_ack boolean,
    pixel_33_complete boolean,
    pixel_33_timestamp character varying,
    pixel_33_status character varying,
    pixel_33_action character varying,
    pixel_34 integer,
    pixel_34_ack boolean,
    pixel_34_complete boolean,
    pixel_34_timestamp character varying,
    pixel_34_status character varying,
    pixel_34_action character varying,
    pixel_35 integer,
    pixel_35_ack boolean,
    pixel_35_complete boolean,
    pixel_35_timestamp character varying,
    pixel_35_status character varying,
    pixel_35_action character varying,
    pixel_36 integer,
    pixel_36_ack boolean,
    pixel_36_complete boolean,
    pixel_36_timestamp character varying,
    pixel_36_status character varying,
    pixel_36_action character varying,
    pixel_37 integer,
    pixel_37_ack boolean,
    pixel_37_complete boolean,
    pixel_37_timestamp character varying,
    pixel_37_status character varying,
    pixel_37_action character varying,
    pixel_38 integer,
    pixel_38_ack boolean,
    pixel_38_complete boolean,
    pixel_38_timestamp character varying,
    pixel_38_status character varying,
    pixel_38_action character varying,
    pixel_39 integer,
    pixel_39_ack boolean,
    pixel_39_complete boolean,
    pixel_39_timestamp character varying,
    pixel_39_status character varying,
    pixel_39_action character varying,
    pixel_40 integer,
    pixel_40_ack boolean,
    pixel_40_complete boolean,
    pixel_40_timestamp character varying,
    pixel_40_status character varying,
    pixel_40_action character varying,
    pixel_41 integer,
    pixel_41_ack boolean,
    pixel_41_complete boolean,
    pixel_41_timestamp character varying,
    pixel_41_status character varying,
    pixel_41_action character varying,
    pixel_42 integer,
    pixel_42_ack boolean,
    pixel_42_complete boolean,
    pixel_42_timestamp character varying,
    pixel_42_status character varying,
    pixel_42_action character varying,
    pixel_43 integer,
    pixel_43_ack boolean,
    pixel_43_complete boolean,
    pixel_43_timestamp character varying,
    pixel_43_status character varying,
    pixel_43_action character varying,
    pixel_44 integer,
    pixel_44_ack boolean,
    pixel_44_complete boolean,
    pixel_44_timestamp character varying,
    pixel_44_status character varying,
    pixel_44_action character varying,
    pixel_45 integer,
    pixel_45_ack boolean,
    pixel_45_complete boolean,
    pixel_45_timestamp character varying,
    pixel_45_status character varying,
    pixel_45_action character varying,
    pixel_46 integer,
    pixel_46_ack boolean,
    pixel_46_complete boolean,
    pixel_46_timestamp character varying,
    pixel_46_status character varying,
    pixel_46_action character varying,
    pixel_47 integer,
    pixel_47_ack boolean,
    pixel_47_complete boolean,
    pixel_47_timestamp character varying,
    pixel_47_status character varying,
    pixel_47_action character varying,
    pixel_48 integer,
    pixel_48_ack boolean,
    pixel_48_complete boolean,
    pixel_48_timestamp character varying,
    pixel_48_status character varying,
    pixel_48_action character varying,
    pixel_49 integer,
    pixel_49_ack boolean,
    pixel_49_complete boolean,
    pixel_49_timestamp character varying,
    pixel_49_status character varying,
    pixel_49_action character varying,
    pixel_50 integer,
    pixel_50_ack boolean,
    pixel_50_complete boolean,
    pixel_50_timestamp character varying,
    pixel_50_status character varying,
    pixel_50_action character varying,
    pixel_51 integer,
    pixel_51_ack boolean,
    pixel_51_complete boolean,
    pixel_51_timestamp character varying,
    pixel_51_status character varying,
    pixel_51_action character varying,
    pixel_52 integer,
    pixel_52_ack boolean,
    pixel_52_complete boolean,
    pixel_52_timestamp character varying,
    pixel_52_status character varying,
    pixel_52_action character varying,
    pixel_53 integer,
    pixel_53_ack boolean,
    pixel_53_complete boolean,
    pixel_53_timestamp character varying,
    pixel_53_status character varying,
    pixel_53_action character varying,
    pixel_54 integer,
    pixel_54_ack boolean,
    pixel_54_complete boolean,
    pixel_54_timestamp character varying,
    pixel_54_status character varying,
    pixel_54_action character varying,
    pixel_55 integer,
    pixel_55_ack boolean,
    pixel_55_complete boolean,
    pixel_55_timestamp character varying,
    pixel_55_status character varying,
    pixel_55_action character varying,
    pixel_56 integer,
    pixel_56_ack boolean,
    pixel_56_complete boolean,
    pixel_56_timestamp character varying,
    pixel_56_status character varying,
    pixel_56_action character varying,
    pixel_57 integer,
    pixel_57_ack boolean,
    pixel_57_complete boolean,
    pixel_57_timestamp character varying,
    pixel_57_status character varying,
    pixel_57_action character varying,
    pixel_58 integer,
    pixel_58_ack boolean,
    pixel_58_complete boolean,
    pixel_58_timestamp character varying,
    pixel_58_status character varying,
    pixel_58_action character varying,
    pixel_59 integer,
    pixel_59_ack boolean,
    pixel_59_complete boolean,
    pixel_59_timestamp character varying,
    pixel_59_status character varying,
    pixel_59_action character varying,
    pixel_60 integer,
    pixel_60_ack boolean,
    pixel_60_complete boolean,
    pixel_60_timestamp character varying,
    pixel_60_status character varying,
    pixel_60_action character varying,
    pixel_61 integer,
    pixel_61_ack boolean,
    pixel_61_complete boolean,
    pixel_61_timestamp character varying,
    pixel_61_status character varying,
    pixel_61_action character varying,
    pixel_62 integer,
    pixel_62_ack boolean,
    pixel_62_complete boolean,
    pixel_62_timestamp character varying,
    pixel_62_status character varying,
    pixel_62_action character varying,
    pixel_63 integer,
    pixel_63_ack boolean,
    pixel_63_complete boolean,
    pixel_63_timestamp character varying,
    pixel_63_status character varying,
    pixel_63_action character varying,
    pixel_64 integer,
    pixel_64_ack boolean,
    pixel_64_complete boolean,
    pixel_64_timestamp character varying,
    pixel_64_status character varying,
    pixel_64_action character varying,
    pixel_65 integer,
    pixel_65_ack boolean,
    pixel_65_complete boolean,
    pixel_65_timestamp character varying,
    pixel_65_status character varying,
    pixel_65_action character varying,
    pixel_66 integer,
    pixel_66_ack boolean,
    pixel_66_complete boolean,
    pixel_66_timestamp character varying,
    pixel_66_status character varying,
    pixel_66_action character varying,
    pixel_67 integer,
    pixel_67_ack boolean,
    pixel_67_complete boolean,
    pixel_67_timestamp character varying,
    pixel_67_status character varying,
    pixel_67_action character varying,
    pixel_68 integer,
    pixel_68_ack boolean,
    pixel_68_complete boolean,
    pixel_68_timestamp character varying,
    pixel_68_status character varying,
    pixel_68_action character varying,
    pixel_69 integer,
    pixel_69_ack boolean,
    pixel_69_complete boolean,
    pixel_69_timestamp character varying,
    pixel_69_status character varying,
    pixel_69_action character varying,
    pixel_70 integer,
    pixel_70_ack boolean,
    pixel_70_complete boolean,
    pixel_70_timestamp character varying,
    pixel_70_status character varying,
    pixel_70_action character varying,
    pixel_71 integer,
    pixel_71_ack boolean,
    pixel_71_complete boolean,
    pixel_71_timestamp character varying,
    pixel_71_status character varying,
    pixel_71_action character varying,
    pixel_72 integer,
    pixel_72_ack boolean,
    pixel_72_complete boolean,
    pixel_72_timestamp character varying,
    pixel_72_status character varying,
    pixel_72_action character varying,
    pixel_73 integer,
    pixel_73_ack boolean,
    pixel_73_complete boolean,
    pixel_73_timestamp character varying,
    pixel_73_status character varying,
    pixel_73_action character varying,
    pixel_74 integer,
    pixel_74_ack boolean,
    pixel_74_complete boolean,
    pixel_74_timestamp character varying,
    pixel_74_status character varying,
    pixel_74_action character varying,
    pixel_75 integer,
    pixel_75_ack boolean,
    pixel_75_complete boolean,
    pixel_75_timestamp character varying,
    pixel_75_status character varying,
    pixel_75_action character varying,
    pixel_76 integer,
    pixel_76_ack boolean,
    pixel_76_complete boolean,
    pixel_76_timestamp character varying,
    pixel_76_status character varying,
    pixel_76_action character varying,
    pixel_77 integer,
    pixel_77_ack boolean,
    pixel_77_complete boolean,
    pixel_77_timestamp character varying,
    pixel_77_status character varying,
    pixel_77_action character varying,
    pixel_78 integer,
    pixel_78_ack boolean,
    pixel_78_complete boolean,
    pixel_78_timestamp character varying,
    pixel_78_status character varying,
    pixel_78_action character varying,
    pixel_79 integer,
    pixel_79_ack boolean,
    pixel_79_complete boolean,
    pixel_79_timestamp character varying,
    pixel_79_status character varying,
    pixel_79_action character varying,
    pixel_80 integer,
    pixel_80_ack boolean,
    pixel_80_complete boolean,
    pixel_80_timestamp character varying,
    pixel_80_status character varying,
    pixel_80_action character varying,
    pixel_81 integer,
    pixel_81_ack boolean,
    pixel_81_complete boolean,
    pixel_81_timestamp character varying,
    pixel_81_status character varying,
    pixel_81_action character varying,
    pixel_82 integer,
    pixel_82_ack boolean,
    pixel_82_complete boolean,
    pixel_82_timestamp character varying,
    pixel_82_status character varying,
    pixel_82_action character varying,
    pixel_83 integer,
    pixel_83_ack boolean,
    pixel_83_complete boolean,
    pixel_83_timestamp character varying,
    pixel_83_status character varying,
    pixel_83_action character varying,
    pixel_84 integer,
    pixel_84_ack boolean,
    pixel_84_complete boolean,
    pixel_84_timestamp character varying,
    pixel_84_status character varying,
    pixel_84_action character varying,
    pixel_85 integer,
    pixel_85_ack boolean,
    pixel_85_complete boolean,
    pixel_85_timestamp character varying,
    pixel_85_status character varying,
    pixel_85_action character varying,
    pixel_86 integer,
    pixel_86_ack boolean,
    pixel_86_complete boolean,
    pixel_86_timestamp character varying,
    pixel_86_status character varying,
    pixel_86_action character varying,
    pixel_87 integer,
    pixel_87_ack boolean,
    pixel_87_complete boolean,
    pixel_87_timestamp character varying,
    pixel_87_status character varying,
    pixel_87_action character varying,
    pixel_88 integer,
    pixel_88_ack boolean,
    pixel_88_complete boolean,
    pixel_88_timestamp character varying,
    pixel_88_status character varying,
    pixel_88_action character varying,
    pixel_89 integer,
    pixel_89_ack boolean,
    pixel_89_complete boolean,
    pixel_89_timestamp character varying,
    pixel_89_status character varying,
    pixel_89_action character varying,
    pixel_90 integer,
    pixel_90_ack boolean,
    pixel_90_complete boolean,
    pixel_90_timestamp character varying,
    pixel_90_status character varying,
    pixel_90_action character varying,
    pixel_91 integer,
    pixel_91_ack boolean,
    pixel_91_complete boolean,
    pixel_91_timestamp character varying,
    pixel_91_status character varying,
    pixel_91_action character varying,
    pixel_92 integer,
    pixel_92_ack boolean,
    pixel_92_complete boolean,
    pixel_92_timestamp character varying,
    pixel_92_status character varying,
    pixel_92_action character varying,
    pixel_93 integer,
    pixel_93_ack boolean,
    pixel_93_complete boolean,
    pixel_93_timestamp character varying,
    pixel_93_status character varying,
    pixel_93_action character varying,
    pixel_94 integer,
    pixel_94_ack boolean,
    pixel_94_complete boolean,
    pixel_94_timestamp character varying,
    pixel_94_status character varying,
    pixel_94_action character varying,
    pixel_95 integer,
    pixel_95_ack boolean,
    pixel_95_complete boolean,
    pixel_95_timestamp character varying,
    pixel_95_status character varying,
    pixel_95_action character varying,
    pixel_96 integer,
    pixel_96_ack boolean,
    pixel_96_complete boolean,
    pixel_96_timestamp character varying,
    pixel_96_status character varying,
    pixel_96_action character varying,
    pixel_97 integer,
    pixel_97_ack boolean,
    pixel_97_complete boolean,
    pixel_97_timestamp character varying,
    pixel_97_status character varying,
    pixel_97_action character varying,
    pixel_98 integer,
    pixel_98_ack boolean,
    pixel_98_complete boolean,
    pixel_98_timestamp character varying,
    pixel_98_status character varying,
    pixel_98_action character varying,
    pixel_99 integer,
    pixel_99_ack boolean,
    pixel_99_complete boolean,
    pixel_99_timestamp character varying,
    pixel_99_status character varying,
    pixel_99_action character varying,
    pixel_100 integer,
    pixel_100_ack boolean,
    pixel_100_complete boolean,
    pixel_100_timestamp character varying,
    pixel_100_status character varying,
    pixel_100_action character varying,
    pixel_101 integer,
    pixel_101_ack boolean,
    pixel_101_complete boolean,
    pixel_101_timestamp character varying,
    pixel_101_status character varying,
    pixel_101_action character varying,
    pixel_102 integer,
    pixel_102_ack boolean,
    pixel_102_complete boolean,
    pixel_102_timestamp character varying,
    pixel_102_status character varying,
    pixel_102_action character varying,
    pixel_103 integer,
    pixel_103_ack boolean,
    pixel_103_complete boolean,
    pixel_103_timestamp character varying,
    pixel_103_status character varying,
    pixel_103_action character varying,
    pixel_104 integer,
    pixel_104_ack boolean,
    pixel_104_complete boolean,
    pixel_104_timestamp character varying,
    pixel_104_status character varying,
    pixel_104_action character varying,
    pixel_105 integer,
    pixel_105_ack boolean,
    pixel_105_complete boolean,
    pixel_105_timestamp character varying,
    pixel_105_status character varying,
    pixel_105_action character varying,
    pixel_106 integer,
    pixel_106_ack boolean,
    pixel_106_complete boolean,
    pixel_106_timestamp character varying,
    pixel_106_status character varying,
    pixel_106_action character varying,
    pixel_107 integer,
    pixel_107_ack boolean,
    pixel_107_complete boolean,
    pixel_107_timestamp character varying,
    pixel_107_status character varying,
    pixel_107_action character varying,
    pixel_108 integer,
    pixel_108_ack boolean,
    pixel_108_complete boolean,
    pixel_108_timestamp character varying,
    pixel_108_status character varying,
    pixel_108_action character varying,
    pixel_109 integer,
    pixel_109_ack boolean,
    pixel_109_complete boolean,
    pixel_109_timestamp character varying,
    pixel_109_status character varying,
    pixel_109_action character varying,
    pixel_110 integer,
    pixel_110_ack boolean,
    pixel_110_complete boolean,
    pixel_110_timestamp character varying,
    pixel_110_status character varying,
    pixel_110_action character varying,
    pixel_111 integer,
    pixel_111_ack boolean,
    pixel_111_complete boolean,
    pixel_111_timestamp character varying,
    pixel_111_status character varying,
    pixel_111_action character varying,
    pixel_112 integer,
    pixel_112_ack boolean,
    pixel_112_complete boolean,
    pixel_112_timestamp character varying,
    pixel_112_status character varying,
    pixel_112_action character varying,
    pixel_113 integer,
    pixel_113_ack boolean,
    pixel_113_complete boolean,
    pixel_113_timestamp character varying,
    pixel_113_status character varying,
    pixel_113_action character varying,
    pixel_114 integer,
    pixel_114_ack boolean,
    pixel_114_complete boolean,
    pixel_114_timestamp character varying,
    pixel_114_status character varying,
    pixel_114_action character varying,
    pixel_115 integer,
    pixel_115_ack boolean,
    pixel_115_complete boolean,
    pixel_115_timestamp character varying,
    pixel_115_status character varying,
    pixel_115_action character varying,
    pixel_116 integer,
    pixel_116_ack boolean,
    pixel_116_complete boolean,
    pixel_116_timestamp character varying,
    pixel_116_status character varying,
    pixel_116_action character varying,
    pixel_117 integer,
    pixel_117_ack boolean,
    pixel_117_complete boolean,
    pixel_117_timestamp character varying,
    pixel_117_status character varying,
    pixel_117_action character varying,
    pixel_118 integer,
    pixel_118_ack boolean,
    pixel_118_complete boolean,
    pixel_118_timestamp character varying,
    pixel_118_status character varying,
    pixel_118_action character varying,
    pixel_119 integer,
    pixel_119_ack boolean,
    pixel_119_complete boolean,
    pixel_119_timestamp character varying,
    pixel_119_status character varying,
    pixel_119_action character varying,
    pixel_120 integer,
    pixel_120_ack boolean,
    pixel_120_complete boolean,
    pixel_120_timestamp character varying,
    pixel_120_status character varying,
    pixel_120_action character varying,
    pixel_121 integer,
    pixel_121_ack boolean,
    pixel_121_complete boolean,
    pixel_121_timestamp character varying,
    pixel_121_status character varying,
    pixel_121_action character varying,
    pixel_122 integer,
    pixel_122_ack boolean,
    pixel_122_complete boolean,
    pixel_122_timestamp character varying,
    pixel_122_status character varying,
    pixel_122_action character varying,
    pixel_123 integer,
    pixel_123_ack boolean,
    pixel_123_complete boolean,
    pixel_123_timestamp character varying,
    pixel_123_status character varying,
    pixel_123_action character varying,
    pixel_124 integer,
    pixel_124_ack boolean,
    pixel_124_complete boolean,
    pixel_124_timestamp character varying,
    pixel_124_status character varying,
    pixel_124_action character varying,
    pixel_125 integer,
    pixel_125_ack boolean,
    pixel_125_complete boolean,
    pixel_125_timestamp character varying,
    pixel_125_status character varying,
    pixel_125_action character varying,
    pixel_126 integer,
    pixel_126_ack boolean,
    pixel_126_complete boolean,
    pixel_126_timestamp character varying,
    pixel_126_status character varying,
    pixel_126_action character varying,
    pixel_127 integer,
    pixel_127_ack boolean,
    pixel_127_complete boolean,
    pixel_127_timestamp character varying,
    pixel_127_status character varying,
    pixel_127_action character varying,
    pixel_128 integer,
    pixel_128_ack boolean,
    pixel_128_complete boolean,
    pixel_128_timestamp character varying,
    pixel_128_status character varying,
    pixel_128_action character varying,
    pixel_129 integer,
    pixel_129_ack boolean,
    pixel_129_complete boolean,
    pixel_129_timestamp character varying,
    pixel_129_status character varying,
    pixel_129_action character varying,
    pixel_130 integer,
    pixel_130_ack boolean,
    pixel_130_complete boolean,
    pixel_130_timestamp character varying,
    pixel_130_status character varying,
    pixel_130_action character varying,
    pixel_131 integer,
    pixel_131_ack boolean,
    pixel_131_complete boolean,
    pixel_131_timestamp character varying,
    pixel_131_status character varying,
    pixel_131_action character varying,
    pixel_132 integer,
    pixel_132_ack boolean,
    pixel_132_complete boolean,
    pixel_132_timestamp character varying,
    pixel_132_status character varying,
    pixel_132_action character varying,
    pixel_133 integer,
    pixel_133_ack boolean,
    pixel_133_complete boolean,
    pixel_133_timestamp character varying,
    pixel_133_status character varying,
    pixel_133_action character varying,
    pixel_134 integer,
    pixel_134_ack boolean,
    pixel_134_complete boolean,
    pixel_134_timestamp character varying,
    pixel_134_status character varying,
    pixel_134_action character varying,
    pixel_135 integer,
    pixel_135_ack boolean,
    pixel_135_complete boolean,
    pixel_135_timestamp character varying,
    pixel_135_status character varying,
    pixel_135_action character varying,
    pixel_136 integer,
    pixel_136_ack boolean,
    pixel_136_complete boolean,
    pixel_136_timestamp character varying,
    pixel_136_status character varying,
    pixel_136_action character varying,
    pixel_137 integer,
    pixel_137_ack boolean,
    pixel_137_complete boolean,
    pixel_137_timestamp character varying,
    pixel_137_status character varying,
    pixel_137_action character varying,
    pixel_138 integer,
    pixel_138_ack boolean,
    pixel_138_complete boolean,
    pixel_138_timestamp character varying,
    pixel_138_status character varying,
    pixel_138_action character varying,
    pixel_139 integer,
    pixel_139_ack boolean,
    pixel_139_complete boolean,
    pixel_139_timestamp character varying,
    pixel_139_status character varying,
    pixel_139_action character varying,
    pixel_140 integer,
    pixel_140_ack boolean,
    pixel_140_complete boolean,
    pixel_140_timestamp character varying,
    pixel_140_status character varying,
    pixel_140_action character varying,
    pixel_141 integer,
    pixel_141_ack boolean,
    pixel_141_complete boolean,
    pixel_141_timestamp character varying,
    pixel_141_status character varying,
    pixel_141_action character varying,
    pixel_142 integer,
    pixel_142_ack boolean,
    pixel_142_complete boolean,
    pixel_142_timestamp character varying,
    pixel_142_status character varying,
    pixel_142_action character varying,
    pixel_143 integer,
    pixel_143_ack boolean,
    pixel_143_complete boolean,
    pixel_143_timestamp character varying,
    pixel_143_status character varying,
    pixel_143_action character varying,
    pixel_144 integer,
    pixel_144_ack boolean,
    pixel_144_complete boolean,
    pixel_144_timestamp character varying,
    pixel_144_status character varying,
    pixel_144_action character varying,
    pixel_145 integer,
    pixel_145_ack boolean,
    pixel_145_complete boolean,
    pixel_145_timestamp character varying,
    pixel_145_status character varying,
    pixel_145_action character varying,
    pixel_146 integer,
    pixel_146_ack boolean,
    pixel_146_complete boolean,
    pixel_146_timestamp character varying,
    pixel_146_status character varying,
    pixel_146_action character varying,
    pixel_147 integer,
    pixel_147_ack boolean,
    pixel_147_complete boolean,
    pixel_147_timestamp character varying,
    pixel_147_status character varying,
    pixel_147_action character varying,
    pixel_148 integer,
    pixel_148_ack boolean,
    pixel_148_complete boolean,
    pixel_148_timestamp character varying,
    pixel_148_status character varying,
    pixel_148_action character varying,
    pixel_149 integer,
    pixel_149_ack boolean,
    pixel_149_complete boolean,
    pixel_149_timestamp character varying,
    pixel_149_status character varying,
    pixel_149_action character varying,
    pixel_150 integer,
    pixel_150_ack boolean,
    pixel_150_complete boolean,
    pixel_150_timestamp character varying,
    pixel_150_status character varying,
    pixel_150_action character varying,
    pixel_151 integer,
    pixel_151_ack boolean,
    pixel_151_complete boolean,
    pixel_151_timestamp character varying,
    pixel_151_status character varying,
    pixel_151_action character varying,
    pixel_152 integer,
    pixel_152_ack boolean,
    pixel_152_complete boolean,
    pixel_152_timestamp character varying,
    pixel_152_status character varying,
    pixel_152_action character varying,
    pixel_153 integer,
    pixel_153_ack boolean,
    pixel_153_complete boolean,
    pixel_153_timestamp character varying,
    pixel_153_status character varying,
    pixel_153_action character varying,
    pixel_154 integer,
    pixel_154_ack boolean,
    pixel_154_complete boolean,
    pixel_154_timestamp character varying,
    pixel_154_status character varying,
    pixel_154_action character varying,
    pixel_155 integer,
    pixel_155_ack boolean,
    pixel_155_complete boolean,
    pixel_155_timestamp character varying,
    pixel_155_status character varying,
    pixel_155_action character varying,
    pixel_156 integer,
    pixel_156_ack boolean,
    pixel_156_complete boolean,
    pixel_156_timestamp character varying,
    pixel_156_status character varying,
    pixel_156_action character varying,
    pixel_157 integer,
    pixel_157_ack boolean,
    pixel_157_complete boolean,
    pixel_157_timestamp character varying,
    pixel_157_status character varying,
    pixel_157_action character varying,
    pixel_158 integer,
    pixel_158_ack boolean,
    pixel_158_complete boolean,
    pixel_158_timestamp character varying,
    pixel_158_status character varying,
    pixel_158_action character varying,
    pixel_159 integer,
    pixel_159_ack boolean,
    pixel_159_complete boolean,
    pixel_159_timestamp character varying,
    pixel_159_status character varying,
    pixel_159_action character varying,
    pixel_160 integer,
    pixel_160_ack boolean,
    pixel_160_complete boolean,
    pixel_160_timestamp character varying,
    pixel_160_status character varying,
    pixel_160_action character varying,
    pixel_161 integer,
    pixel_161_ack boolean,
    pixel_161_complete boolean,
    pixel_161_timestamp character varying,
    pixel_161_status character varying,
    pixel_161_action character varying,
    pixel_162 integer,
    pixel_162_ack boolean,
    pixel_162_complete boolean,
    pixel_162_timestamp character varying,
    pixel_162_status character varying,
    pixel_162_action character varying,
    pixel_163 integer,
    pixel_163_ack boolean,
    pixel_163_complete boolean,
    pixel_163_timestamp character varying,
    pixel_163_status character varying,
    pixel_163_action character varying,
    pixel_164 integer,
    pixel_164_ack boolean,
    pixel_164_complete boolean,
    pixel_164_timestamp character varying,
    pixel_164_status character varying,
    pixel_164_action character varying,
    pixel_165 integer,
    pixel_165_ack boolean,
    pixel_165_complete boolean,
    pixel_165_timestamp character varying,
    pixel_165_status character varying,
    pixel_165_action character varying,
    pixel_166 integer,
    pixel_166_ack boolean,
    pixel_166_complete boolean,
    pixel_166_timestamp character varying,
    pixel_166_status character varying,
    pixel_166_action character varying,
    pixel_167 integer,
    pixel_167_ack boolean,
    pixel_167_complete boolean,
    pixel_167_timestamp character varying,
    pixel_167_status character varying,
    pixel_167_action character varying,
    pixel_168 integer,
    pixel_168_ack boolean,
    pixel_168_complete boolean,
    pixel_168_timestamp character varying,
    pixel_168_status character varying,
    pixel_168_action character varying,
    pixel_169 integer,
    pixel_169_ack boolean,
    pixel_169_complete boolean,
    pixel_169_timestamp character varying,
    pixel_169_status character varying,
    pixel_169_action character varying,
    pixel_170 integer,
    pixel_170_ack boolean,
    pixel_170_complete boolean,
    pixel_170_timestamp character varying,
    pixel_170_status character varying,
    pixel_170_action character varying,
    pixel_171 integer,
    pixel_171_ack boolean,
    pixel_171_complete boolean,
    pixel_171_timestamp character varying,
    pixel_171_status character varying,
    pixel_171_action character varying,
    pixel_172 integer,
    pixel_172_ack boolean,
    pixel_172_complete boolean,
    pixel_172_timestamp character varying,
    pixel_172_status character varying,
    pixel_172_action character varying,
    pixel_173 integer,
    pixel_173_ack boolean,
    pixel_173_complete boolean,
    pixel_173_timestamp character varying,
    pixel_173_status character varying,
    pixel_173_action character varying,
    pixel_174 integer,
    pixel_174_ack boolean,
    pixel_174_complete boolean,
    pixel_174_timestamp character varying,
    pixel_174_status character varying,
    pixel_174_action character varying,
    pixel_175 integer,
    pixel_175_ack boolean,
    pixel_175_complete boolean,
    pixel_175_timestamp character varying,
    pixel_175_status character varying,
    pixel_175_action character varying,
    pixel_176 integer,
    pixel_176_ack boolean,
    pixel_176_complete boolean,
    pixel_176_timestamp character varying,
    pixel_176_status character varying,
    pixel_176_action character varying,
    pixel_177 integer,
    pixel_177_ack boolean,
    pixel_177_complete boolean,
    pixel_177_timestamp character varying,
    pixel_177_status character varying,
    pixel_177_action character varying,
    pixel_178 integer,
    pixel_178_ack boolean,
    pixel_178_complete boolean,
    pixel_178_timestamp character varying,
    pixel_178_status character varying,
    pixel_178_action character varying,
    pixel_179 integer,
    pixel_179_ack boolean,
    pixel_179_complete boolean,
    pixel_179_timestamp character varying,
    pixel_179_status character varying,
    pixel_179_action character varying,
    pixel_180 integer,
    pixel_180_ack boolean,
    pixel_180_complete boolean,
    pixel_180_timestamp character varying,
    pixel_180_status character varying,
    pixel_180_action character varying,
    pixel_181 integer,
    pixel_181_ack boolean,
    pixel_181_complete boolean,
    pixel_181_timestamp character varying,
    pixel_181_status character varying,
    pixel_181_action character varying,
    pixel_182 integer,
    pixel_182_ack boolean,
    pixel_182_complete boolean,
    pixel_182_timestamp character varying,
    pixel_182_status character varying,
    pixel_182_action character varying,
    pixel_183 integer,
    pixel_183_ack boolean,
    pixel_183_complete boolean,
    pixel_183_timestamp character varying,
    pixel_183_status character varying,
    pixel_183_action character varying,
    pixel_184 integer,
    pixel_184_ack boolean,
    pixel_184_complete boolean,
    pixel_184_timestamp character varying,
    pixel_184_status character varying,
    pixel_184_action character varying,
    pixel_185 integer,
    pixel_185_ack boolean,
    pixel_185_complete boolean,
    pixel_185_timestamp character varying,
    pixel_185_status character varying,
    pixel_185_action character varying,
    pixel_186 integer,
    pixel_186_ack boolean,
    pixel_186_complete boolean,
    pixel_186_timestamp character varying,
    pixel_186_status character varying,
    pixel_186_action character varying,
    pixel_187 integer,
    pixel_187_ack boolean,
    pixel_187_complete boolean,
    pixel_187_timestamp character varying,
    pixel_187_status character varying,
    pixel_187_action character varying,
    pixel_188 integer,
    pixel_188_ack boolean,
    pixel_188_complete boolean,
    pixel_188_timestamp character varying,
    pixel_188_status character varying,
    pixel_188_action character varying,
    pixel_189 integer,
    pixel_189_ack boolean,
    pixel_189_complete boolean,
    pixel_189_timestamp character varying,
    pixel_189_status character varying,
    pixel_189_action character varying,
    pixel_190 integer,
    pixel_190_ack boolean,
    pixel_190_complete boolean,
    pixel_190_timestamp character varying,
    pixel_190_status character varying,
    pixel_190_action character varying,
    pixel_191 integer,
    pixel_191_ack boolean,
    pixel_191_complete boolean,
    pixel_191_timestamp character varying,
    pixel_191_status character varying,
    pixel_191_action character varying,
    pixel_192 integer,
    pixel_192_ack boolean,
    pixel_192_complete boolean,
    pixel_192_timestamp character varying,
    pixel_192_status character varying,
    pixel_192_action character varying,
    pixel_193 integer,
    pixel_193_ack boolean,
    pixel_193_complete boolean,
    pixel_193_timestamp character varying,
    pixel_193_status character varying,
    pixel_193_action character varying,
    pixel_194 integer,
    pixel_194_ack boolean,
    pixel_194_complete boolean,
    pixel_194_timestamp character varying,
    pixel_194_status character varying,
    pixel_194_action character varying,
    pixel_195 integer,
    pixel_195_ack boolean,
    pixel_195_complete boolean,
    pixel_195_timestamp character varying,
    pixel_195_status character varying,
    pixel_195_action character varying,
    pixel_196 integer,
    pixel_196_ack boolean,
    pixel_196_complete boolean,
    pixel_196_timestamp character varying,
    pixel_196_status character varying,
    pixel_196_action character varying,
    pixel_197 integer,
    pixel_197_ack boolean,
    pixel_197_complete boolean,
    pixel_197_timestamp character varying,
    pixel_197_status character varying,
    pixel_197_action character varying,
    pixel_198 integer,
    pixel_198_ack boolean,
    pixel_198_complete boolean,
    pixel_198_timestamp character varying,
    pixel_198_status character varying,
    pixel_198_action character varying,
    pixel_199 integer,
    pixel_199_ack boolean,
    pixel_199_complete boolean,
    pixel_199_timestamp character varying,
    pixel_199_status character varying,
    pixel_199_action character varying,
    pixel_200 integer,
    pixel_200_ack boolean,
    pixel_200_complete boolean,
    pixel_200_timestamp character varying,
    pixel_200_status character varying,
    pixel_200_action character varying,
    pixel_201 integer,
    pixel_201_ack boolean,
    pixel_201_complete boolean,
    pixel_201_timestamp character varying,
    pixel_201_status character varying,
    pixel_201_action character varying,
    pixel_202 integer,
    pixel_202_ack boolean,
    pixel_202_complete boolean,
    pixel_202_timestamp character varying,
    pixel_202_status character varying,
    pixel_202_action character varying,
    pixel_203 integer,
    pixel_203_ack boolean,
    pixel_203_complete boolean,
    pixel_203_timestamp character varying,
    pixel_203_status character varying,
    pixel_203_action character varying,
    pixel_204 integer,
    pixel_204_ack boolean,
    pixel_204_complete boolean,
    pixel_204_timestamp character varying,
    pixel_204_status character varying,
    pixel_204_action character varying,
    pixel_205 integer,
    pixel_205_ack boolean,
    pixel_205_complete boolean,
    pixel_205_timestamp character varying,
    pixel_205_status character varying,
    pixel_205_action character varying,
    pixel_206 integer,
    pixel_206_ack boolean,
    pixel_206_complete boolean,
    pixel_206_timestamp character varying,
    pixel_206_status character varying,
    pixel_206_action character varying,
    pixel_207 integer,
    pixel_207_ack boolean,
    pixel_207_complete boolean,
    pixel_207_timestamp character varying,
    pixel_207_status character varying,
    pixel_207_action character varying,
    pixel_208 integer,
    pixel_208_ack boolean,
    pixel_208_complete boolean,
    pixel_208_timestamp character varying,
    pixel_208_status character varying,
    pixel_208_action character varying,
    pixel_209 integer,
    pixel_209_ack boolean,
    pixel_209_complete boolean,
    pixel_209_timestamp character varying,
    pixel_209_status character varying,
    pixel_209_action character varying,
    pixel_210 integer,
    pixel_210_ack boolean,
    pixel_210_complete boolean,
    pixel_210_timestamp character varying,
    pixel_210_status character varying,
    pixel_210_action character varying,
    pixel_211 integer,
    pixel_211_ack boolean,
    pixel_211_complete boolean,
    pixel_211_timestamp character varying,
    pixel_211_status character varying,
    pixel_211_action character varying,
    pixel_212 integer,
    pixel_212_ack boolean,
    pixel_212_complete boolean,
    pixel_212_timestamp character varying,
    pixel_212_status character varying,
    pixel_212_action character varying,
    pixel_213 integer,
    pixel_213_ack boolean,
    pixel_213_complete boolean,
    pixel_213_timestamp character varying,
    pixel_213_status character varying,
    pixel_213_action character varying,
    pixel_214 integer,
    pixel_214_ack boolean,
    pixel_214_complete boolean,
    pixel_214_timestamp character varying,
    pixel_214_status character varying,
    pixel_214_action character varying,
    pixel_215 integer,
    pixel_215_ack boolean,
    pixel_215_complete boolean,
    pixel_215_timestamp character varying,
    pixel_215_status character varying,
    pixel_215_action character varying,
    pixel_216 integer,
    pixel_216_ack boolean,
    pixel_216_complete boolean,
    pixel_216_timestamp character varying,
    pixel_216_status character varying,
    pixel_216_action character varying,
    pixel_217 integer,
    pixel_217_ack boolean,
    pixel_217_complete boolean,
    pixel_217_timestamp character varying,
    pixel_217_status character varying,
    pixel_217_action character varying,
    pixel_218 integer,
    pixel_218_ack boolean,
    pixel_218_complete boolean,
    pixel_218_timestamp character varying,
    pixel_218_status character varying,
    pixel_218_action character varying,
    pixel_219 integer,
    pixel_219_ack boolean,
    pixel_219_complete boolean,
    pixel_219_timestamp character varying,
    pixel_219_status character varying,
    pixel_219_action character varying,
    pixel_220 integer,
    pixel_220_ack boolean,
    pixel_220_complete boolean,
    pixel_220_timestamp character varying,
    pixel_220_status character varying,
    pixel_220_action character varying,
    pixel_221 integer,
    pixel_221_ack boolean,
    pixel_221_complete boolean,
    pixel_221_timestamp character varying,
    pixel_221_status character varying,
    pixel_221_action character varying,
    pixel_222 integer,
    pixel_222_ack boolean,
    pixel_222_complete boolean,
    pixel_222_timestamp character varying,
    pixel_222_status character varying,
    pixel_222_action character varying,
    pixel_223 integer,
    pixel_223_ack boolean,
    pixel_223_complete boolean,
    pixel_223_timestamp character varying,
    pixel_223_status character varying,
    pixel_223_action character varying,
    pixel_224 integer,
    pixel_224_ack boolean,
    pixel_224_complete boolean,
    pixel_224_timestamp character varying,
    pixel_224_status character varying,
    pixel_224_action character varying,
    pixel_225 integer,
    pixel_225_ack boolean,
    pixel_225_complete boolean,
    pixel_225_timestamp character varying,
    pixel_225_status character varying,
    pixel_225_action character varying,
    pixel_226 integer,
    pixel_226_ack boolean,
    pixel_226_complete boolean,
    pixel_226_timestamp character varying,
    pixel_226_status character varying,
    pixel_226_action character varying,
    pixel_227 integer,
    pixel_227_ack boolean,
    pixel_227_complete boolean,
    pixel_227_timestamp character varying,
    pixel_227_status character varying,
    pixel_227_action character varying,
    pixel_228 integer,
    pixel_228_ack boolean,
    pixel_228_complete boolean,
    pixel_228_timestamp character varying,
    pixel_228_status character varying,
    pixel_228_action character varying,
    pixel_229 integer,
    pixel_229_ack boolean,
    pixel_229_complete boolean,
    pixel_229_timestamp character varying,
    pixel_229_status character varying,
    pixel_229_action character varying,
    pixel_230 integer,
    pixel_230_ack boolean,
    pixel_230_complete boolean,
    pixel_230_timestamp character varying,
    pixel_230_status character varying,
    pixel_230_action character varying,
    pixel_231 integer,
    pixel_231_ack boolean,
    pixel_231_complete boolean,
    pixel_231_timestamp character varying,
    pixel_231_status character varying,
    pixel_231_action character varying,
    pixel_232 integer,
    pixel_232_ack boolean,
    pixel_232_complete boolean,
    pixel_232_timestamp character varying,
    pixel_232_status character varying,
    pixel_232_action character varying,
    pixel_233 integer,
    pixel_233_ack boolean,
    pixel_233_complete boolean,
    pixel_233_timestamp character varying,
    pixel_233_status character varying,
    pixel_233_action character varying,
    pixel_234 integer,
    pixel_234_ack boolean,
    pixel_234_complete boolean,
    pixel_234_timestamp character varying,
    pixel_234_status character varying,
    pixel_234_action character varying,
    pixel_235 integer,
    pixel_235_ack boolean,
    pixel_235_complete boolean,
    pixel_235_timestamp character varying,
    pixel_235_status character varying,
    pixel_235_action character varying,
    pixel_236 integer,
    pixel_236_ack boolean,
    pixel_236_complete boolean,
    pixel_236_timestamp character varying,
    pixel_236_status character varying,
    pixel_236_action character varying,
    pixel_237 integer,
    pixel_237_ack boolean,
    pixel_237_complete boolean,
    pixel_237_timestamp character varying,
    pixel_237_status character varying,
    pixel_237_action character varying,
    pixel_238 integer,
    pixel_238_ack boolean,
    pixel_238_complete boolean,
    pixel_238_timestamp character varying,
    pixel_238_status character varying,
    pixel_238_action character varying,
    pixel_239 integer,
    pixel_239_ack boolean,
    pixel_239_complete boolean,
    pixel_239_timestamp character varying,
    pixel_239_status character varying,
    pixel_239_action character varying,
    pixel_240 integer,
    pixel_240_ack boolean,
    pixel_240_complete boolean,
    pixel_240_timestamp character varying,
    pixel_240_status character varying,
    pixel_240_action character varying,
    pixel_241 integer,
    pixel_241_ack boolean,
    pixel_241_complete boolean,
    pixel_241_timestamp character varying,
    pixel_241_status character varying,
    pixel_241_action character varying,
    pixel_242 integer,
    pixel_242_ack boolean,
    pixel_242_complete boolean,
    pixel_242_timestamp character varying,
    pixel_242_status character varying,
    pixel_242_action character varying,
    pixel_243 integer,
    pixel_243_ack boolean,
    pixel_243_complete boolean,
    pixel_243_timestamp character varying,
    pixel_243_status character varying,
    pixel_243_action character varying,
    pixel_244 integer,
    pixel_244_ack boolean,
    pixel_244_complete boolean,
    pixel_244_timestamp character varying,
    pixel_244_status character varying,
    pixel_244_action character varying,
    pixel_245 integer,
    pixel_245_ack boolean,
    pixel_245_complete boolean,
    pixel_245_timestamp character varying,
    pixel_245_status character varying,
    pixel_245_action character varying,
    pixel_246 integer,
    pixel_246_ack boolean,
    pixel_246_complete boolean,
    pixel_246_timestamp character varying,
    pixel_246_status character varying,
    pixel_246_action character varying,
    pixel_247 integer,
    pixel_247_ack boolean,
    pixel_247_complete boolean,
    pixel_247_timestamp character varying,
    pixel_247_status character varying,
    pixel_247_action character varying,
    pixel_248 integer,
    pixel_248_ack boolean,
    pixel_248_complete boolean,
    pixel_248_timestamp character varying,
    pixel_248_status character varying,
    pixel_248_action character varying,
    pixel_249 integer,
    pixel_249_ack boolean,
    pixel_249_complete boolean,
    pixel_249_timestamp character varying,
    pixel_249_status character varying,
    pixel_249_action character varying,
    pixel_250 integer,
    pixel_250_ack boolean,
    pixel_250_complete boolean,
    pixel_250_timestamp character varying,
    pixel_250_status character varying,
    pixel_250_action character varying,
    pixel_251 integer,
    pixel_251_ack boolean,
    pixel_251_complete boolean,
    pixel_251_timestamp character varying,
    pixel_251_status character varying,
    pixel_251_action character varying,
    pixel_252 integer,
    pixel_252_ack boolean,
    pixel_252_complete boolean,
    pixel_252_timestamp character varying,
    pixel_252_status character varying,
    pixel_252_action character varying,
    pixel_253 integer,
    pixel_253_ack boolean,
    pixel_253_complete boolean,
    pixel_253_timestamp character varying,
    pixel_253_status character varying,
    pixel_253_action character varying,
    pixel_254 integer,
    pixel_254_ack boolean,
    pixel_254_complete boolean,
    pixel_254_timestamp character varying,
    pixel_254_status character varying,
    pixel_254_action character varying,
    pixel_255 integer,
    pixel_255_ack boolean,
    pixel_255_complete boolean,
    pixel_255_timestamp character varying,
    pixel_255_status character varying,
    pixel_255_action character varying,
    pixels integer,
    pixels_ack boolean,
    pixels_complete boolean,
    pixels_timestamp character varying,
    pixels_status character varying,
    pixels_action character varying,
    cord_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE cord_neo_pixels OWNER TO margaryta;

--
-- Name: cord_neo_pixels_id_seq; Type: SEQUENCE; Schema: public; Owner: margaryta
--

CREATE SEQUENCE cord_neo_pixels_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cord_neo_pixels_id_seq OWNER TO margaryta;

--
-- Name: cord_neo_pixels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: margaryta
--

ALTER SEQUENCE cord_neo_pixels_id_seq OWNED BY cord_neo_pixels.id;


--
-- Name: node_button_safe_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: margaryta
--

CREATE SEQUENCE node_button_safe_logs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE node_button_safe_logs_id_seq OWNER TO margaryta;

--
-- Name: node_button_safe_logs; Type: TABLE; Schema: public; Owner: margaryta
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


ALTER TABLE node_button_safe_logs OWNER TO margaryta;

--
-- Name: node_buttons_id_seq; Type: SEQUENCE; Schema: public; Owner: margaryta
--

CREATE SEQUENCE node_buttons_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE node_buttons_id_seq OWNER TO margaryta;

--
-- Name: node_buttons; Type: TABLE; Schema: public; Owner: margaryta
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


ALTER TABLE node_buttons OWNER TO margaryta;

--
-- Name: node_led_led_state_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: margaryta
--

CREATE SEQUENCE node_led_led_state_logs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE node_led_led_state_logs_id_seq OWNER TO margaryta;

--
-- Name: node_led_led_state_logs; Type: TABLE; Schema: public; Owner: margaryta
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


ALTER TABLE node_led_led_state_logs OWNER TO margaryta;

--
-- Name: node_leds_id_seq; Type: SEQUENCE; Schema: public; Owner: margaryta
--

CREATE SEQUENCE node_leds_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE node_leds_id_seq OWNER TO margaryta;

--
-- Name: node_leds; Type: TABLE; Schema: public; Owner: margaryta
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


ALTER TABLE node_leds OWNER TO margaryta;

--
-- Name: node_neo_pixel_stick_eight_led_color_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: margaryta
--

CREATE SEQUENCE node_neo_pixel_stick_eight_led_color_logs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE node_neo_pixel_stick_eight_led_color_logs_id_seq OWNER TO margaryta;

--
-- Name: node_neo_pixel_stick_eight_led_color_logs; Type: TABLE; Schema: public; Owner: margaryta
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


ALTER TABLE node_neo_pixel_stick_eight_led_color_logs OWNER TO margaryta;

--
-- Name: node_neo_pixel_stick_eight_led_index_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: margaryta
--

CREATE SEQUENCE node_neo_pixel_stick_eight_led_index_logs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE node_neo_pixel_stick_eight_led_index_logs_id_seq OWNER TO margaryta;

--
-- Name: node_neo_pixel_stick_eight_led_index_logs; Type: TABLE; Schema: public; Owner: margaryta
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


ALTER TABLE node_neo_pixel_stick_eight_led_index_logs OWNER TO margaryta;

--
-- Name: node_neo_pixel_stick_eights_id_seq; Type: SEQUENCE; Schema: public; Owner: margaryta
--

CREATE SEQUENCE node_neo_pixel_stick_eights_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE node_neo_pixel_stick_eights_id_seq OWNER TO margaryta;

--
-- Name: node_neo_pixel_stick_eights; Type: TABLE; Schema: public; Owner: margaryta
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


ALTER TABLE node_neo_pixel_stick_eights OWNER TO margaryta;

--
-- Name: node_nodes_id_seq; Type: SEQUENCE; Schema: public; Owner: margaryta
--

CREATE SEQUENCE node_nodes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE node_nodes_id_seq OWNER TO margaryta;

--
-- Name: node_nodes; Type: TABLE; Schema: public; Owner: margaryta
--

CREATE TABLE node_nodes (
    id bigint DEFAULT nextval('node_nodes_id_seq'::regclass) NOT NULL,
    apiotics_instance text,
    name text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE node_nodes OWNER TO margaryta;

--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: margaryta
--

CREATE TABLE schema_migrations (
    version text NOT NULL
);


ALTER TABLE schema_migrations OWNER TO margaryta;

--
-- Name: users; Type: TABLE; Schema: public; Owner: margaryta
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


ALTER TABLE users OWNER TO margaryta;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: margaryta
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE users_id_seq OWNER TO margaryta;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: margaryta
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: cord_cords id; Type: DEFAULT; Schema: public; Owner: margaryta
--

ALTER TABLE ONLY cord_cords ALTER COLUMN id SET DEFAULT nextval('cord_cords_id_seq'::regclass);


--
-- Name: cord_neo_pixels id; Type: DEFAULT; Schema: public; Owner: margaryta
--

ALTER TABLE ONLY cord_neo_pixels ALTER COLUMN id SET DEFAULT nextval('cord_neo_pixels_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: margaryta
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: apiotics_settings; Type: TABLE DATA; Schema: public; Owner: margaryta
--

COPY apiotics_settings (id, key, value, created_at, updated_at) FROM stdin;
1	key_cipher	OpenSSL::Cipher.new 'AES-128-CBC'	2017-11-10 01:47:14.703873-05	2017-11-10 01:47:14.703873-05
2	key_pass_phrase	simbiotes	2017-11-10 01:47:14.70893-05	2017-11-10 01:47:14.70893-05
3	public_key	-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAw3hVMzq/13UwPvYglE/0\nCXIKIetQ72Z8TH/CspupEbehXUnZY3gVBV6DkgNJcG7rtCLmmNZMdg48P5cSM/0z\nfSzSU3HvkxtN4KSHOhwJM4VFtlbxW+Jc+TGdXHUMMSSkkXu56iC+qUlZZWn9NncD\nRruBDaXYEJT1Ww3SLFd6i8Q0BVi4RNKvQ3tdEBNY+zFazZO95dzHXDbyTjc1iR90\n0V97rqizKyQM0mZSbXlFXfOAY8WGvkGd34uij2OWAtxf6Noisp65l2HNn5oyZ51e\nZjEmpQuSFph5keaNd1VlJo4sLqaWn6Ta+Vkkcoo8bL8tsveqbmrVwUqcywIlAunO\nkwIDAQAB\n-----END PUBLIC KEY-----\n	2017-11-10 01:47:14.712624-05	2017-11-10 01:47:14.712624-05
4	key	-----BEGIN RSA PRIVATE KEY-----\nProc-Type: 4,ENCRYPTED\nDEK-Info: AES-128-CBC,BB0E0A694BC715CDB373814A49DED00A\n\niLyjUhGHCS87muNlJ6hqFW91+5TnxrzDJovU+izPX2d6Len6xVoahv3qYqcV9ShV\n7AZJHBq3i30X/2DPibcYKB/Ks21WiWKUAU59uWfyRleqOOrwmRPmRprmwbJFtv3W\na7Af9OqNtOEHihhb8f3J5LeGQ7d92GsXwCTTfyqjzvwWlLgcFdP3MfDrAFFDeO6X\n0Ussg7DtEe4zxfvTm5ulOTYasZyDb4rdW7M9wXp31UMmaTRrKS+Gn9ABzAwegdJP\n7dHIC/+YHEafhKFrKfqravMRbKLU7wsSVvRczZZ3RhStaTKeGjCXmYVH/WbBBLm3\ndTKHqleVkZ0PGHKET/ruhWmO6FlGtozV6B/hZuaRk55a3IdPiWoJLmIpS902FpbC\nKvRYET8Yz5ECxsY6694FgTxnNYZusyhkvkAyfacAXvhYasMfT/5wW1A0v06UO1rX\nNI+yxJ+KR82XqilqQsNAFBd5Rt8+6gfAxWeeDF2beYHxCzFolHnODfLGCiJ+PQtg\nG8Uvd8IqXuQTsZNkNFA2TPzUzwqTV20/Z948IBTxUWCfVFmSr439ziP1ukCo2DtY\nxQkKcRuKH5cbCTwqaWGxszFs/GTBplW564iNVcHKCKFtYuUXidtQN6NhAnHemxjY\nz5EyTCdqcY6w3L9yP/TXqmAFqkE0nQnPLBbzwpBC93Cy0LWJWFQYIRm1y4d4YE60\ntcnyJXdgoteHWQPnF33JXMLF4IME6TiaP+KpdZd4G+r/bMIXskUAGlb0qqEptyCa\n5G4LoEmj+1xZtWUZvr5hbYhDTz6QADpEN73YK65DGJNYnfbmXrceVQ36nuweCLfO\n3HsjtrmBLr1qxkDZRtmzy7ZPOcgnYXuKuEAhf7lnt7ANT/Z6dR5rnzGBFyDWCx0v\nvTEbRMGcPMIIBwsZylPURZmKRLVw9JMT8lb0WG+s9G1qKfqRujuOAB8e93dmkDqF\nDGY7XlHcNuDKHGGeaGI1f2SYE6s1mtNA64WGQObu7X7lwL2AS0epivG8HQe234m9\ny9y085i0R3HYrOv/xPCSmXGWwZ2sk/DqlSe7QzMnVvBWmioYbHg8gvetVtKu8CFT\nF2Miq82T7Rp8TnY1sx20/Gkx29ic8skfZY01XoE2Bq9fApZGNYZMiaNI9eXR1d90\n14q6Uvt5dO4QHLWZ35phVxYqZLu6rL6T0SYwF2XijcD4nhgI9YbQVMh2LCw6+QLS\n8hZ8kjFqGvR8h9mtQ//FrR77HWLETMJYDSaJ6Dd4UEXLXAIWpxAEQuvTkBCebZwO\nOP9FxVBUWlb9cCBK7P97CFscPM0rwzoULUMHznjVproMwrozqmHk5M78O77dS10M\nev4LMQT+GckQNb5/1Lm+NgVJy8Hmjv3ymMWQiA6TE8ZxZ6Tw5LIppmEgncIFt4vE\nZjYDsvH+PWd+B1jsZN4SP4VxpKCUq2D5gtRI1ky2q50TN76PwPOBhvx+qxeCMS8d\n8sUsIUdLK2ayIWkAQQrCA4evUKh70U+wltB4K2dfljRgZnHhv06Ew+36ddPmfdZf\nqVXOWMEfRJzbAeHjls4WJN6zF25RZBkQaRzSH5PdFsZ6uBAzCLic0pYmGEJXIMty\n-----END RSA PRIVATE KEY-----\n	2017-11-10 01:47:14.715844-05	2017-11-10 01:47:14.715844-05
5	cert	-----BEGIN CERTIFICATE-----\nMIIDezCCAmOgAwIBAgIBADANBgkqhkiG9w0BAQUFADAYMRYwFAYDVQQDDA1zaW1i\naW90ZXMuY29tMB4XDTE3MTExMDAxNDcxNFoXDTE4MTExMDAxNDcxNFowga4xFjAU\nBgNVBAMMDXNpbWJpb3Rlcy5jb20xSTBHBgNVBAoMQDYxNDg3NTY2YWNjZmI5YzZl\nNjQ1NWQzZWQwNjAwZTBkOWJiOWFmNTFjYmY0YzBkNzRjYmZjZWUxZjY1YTY4MTMx\nSTBHBgNVBAsMQDA2MzM4YzFlN2Q5MTNiZDM2NDhiNTVhNDdiNDJkNTBmNzM4YTcx\nY2QzNTZkNDE0ZjczZTlkMmQ3YmJhNmUyMjUwggEiMA0GCSqGSIb3DQEBAQUAA4IB\nDwAwggEKAoIBAQDDeFUzOr/XdTA+9iCUT/QJcgoh61DvZnxMf8Kym6kRt6FdSdlj\neBUFXoOSA0lwbuu0IuaY1kx2Djw/lxIz/TN9LNJTce+TG03gpIc6HAkzhUW2VvFb\n4lz5MZ1cdQwxJKSRe7nqIL6pSVllaf02dwNGu4ENpdgQlPVbDdIsV3qLxDQFWLhE\n0q9De10QE1j7MVrNk73l3MdcNvJONzWJH3TRX3uuqLMrJAzSZlJteUVd84BjxYa+\nQZ3fi6KPY5YC3F/o2iKynrmXYc2fmjJnnV5mMSalC5IWmHmR5o13VWUmjiwuppaf\npNr5WSRyijxsvy2y96puatXBSpzLAiUC6c6TAgMBAAGjOTA3MAkGA1UdEwQCMAAw\nCwYDVR0PBAQDAgSwMB0GA1UdDgQWBBSNds3Edh25c+duxy6EWNQu006Y5DANBgkq\nhkiG9w0BAQUFAAOCAQEAUBDVhjI4Ikc0VCYZQYK6gftxIqkAhE1EoMZeyW0dQ3++\nm3pnX53eEJt4BAkyGHOZ1GFFxtBCKN+dmix92d6+1aqT61PlY/PbNdv5QAp1MOdU\nZLLZGlsZNYqFVWuyhkypQDmS9oRtwvYHq4WjeAvD2ZWjpQGYRxf8KakRu35fBqZk\neA7+2siO0xNsCaClrXHVyIlLeg+IgoqLP1fnqqwExeDZtRQMXzhEKsF2LKNSHJXV\nVeu10FxBUjcCrwsHcrY3Z3pECj4P7GqCzrOUD8ttJxfYjLwNQw8Kre9oU2gbHHDN\nv2gY3BXThr+6NtBt8IRCAs6X/EfSwyBur7ishn38Ag==\n-----END CERTIFICATE-----\n	2017-11-10 01:47:15.002965-05	2017-11-10 01:47:15.002965-05
6	ca_cert	-----BEGIN CERTIFICATE-----\nMIIC7TCCAdWgAwIBAgIBATANBgkqhkiG9w0BAQUFADAYMRYwFAYDVQQDDA1zaW1i\naW90ZXMuY29tMB4XDTE3MDYzMDAxMDExN1oXDTI3MDYzMDAxMDExN1owGDEWMBQG\nA1UEAwwNc2ltYmlvdGVzLmNvbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoC\nggEBAPJOy7LnxrorBelAQWJrbCX4CmyC25BfyRshmkMBe/3X4wJhq9FXgIrWrZ+P\neYX1LFKh8EmZ8I4FjJVkhknpPD0XWJg8JPrB+A/xmgUAqdgrpMJEz54IUoUo+iFX\nYPMyQr5JFYEuKU0L9oedRSSmlVc+tnkA4m4KH4IQ5/MyiFZLChSVAOSyxh0Vyslo\nN2+IdsGikagxuWXQ+moHBJAW5TApKMVRMgRdgwAv98mdvryjr4SMKKT6S3eS+chj\nRJrETGyLm80/+ouSLUDsQaatr0s+FqaWbytXStME5MRUDwxPMe8RHO6df1MMu4LZ\n13Xw3ev2odLekiRd+soO/wJtBtcCAwEAAaNCMEAwHQYDVR0OBBYEFPBUrINJp30R\nsls6FljfBBN4CvHTMA8GA1UdEwEB/wQFMAMBAf8wDgYDVR0PAQH/BAQDAgEGMA0G\nCSqGSIb3DQEBBQUAA4IBAQAMYWrxxE26AggpKusqhstX/mlpAmXaGfskThHP2T7/\nELcgBUyyOCa0BIJk6USLc47JL7P4vDPcPamLVJRXxvEOMpFwV4qyihFEKqlG1HID\nvX3ttCTP2H3qhgzMkvjEre9jvU3D02e3jUEakrzt+zOdQqTXHYmSczIswq7InQXL\nrqxCmFnFMmSNW63z0LeG9k/i3D4eu8gJ7IG60CZMW21tU6fjSDImjWWeOG87I2Lm\nnwYu6KDZzVkoiBfzhzo5x6Ijj/ljWyQk6Yjts+8h9YWHstAlXCltru73dsqwwXq0\nzKT/GZOIUUO6J0hLxrU/mtAOB5pesfXZG89bR2nTmw+2\n-----END CERTIFICATE-----\n	2017-11-10 01:47:15.157286-05	2017-11-10 01:47:15.157286-05
7	server	104.130.23.221	2017-11-10 01:47:15.336003-05	2017-11-10 01:47:15.336003-05
8	port	5000	2017-11-10 01:47:15.339002-05	2017-11-30 11:33:44.65045-05
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: margaryta
--

COPY ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2017-11-10 01:45:42.695589-05	2017-11-10 01:45:42.695589-05
\.


--
-- Data for Name: cord_cords; Type: TABLE DATA; Schema: public; Owner: margaryta
--

COPY cord_cords (id, apiotics_instance, name, created_at, updated_at) FROM stdin;
2	2e35118c1fb757a80df03055b37f68f68d772a2c61bed8ce575dc30bf30bd4e4	TODO	2017-11-30 20:54:56.858976	2017-11-30 20:54:56.858976
\.


--
-- Data for Name: cord_neo_pixels; Type: TABLE DATA; Schema: public; Owner: margaryta
--

COPY cord_neo_pixels (id, pixel_0, pixel_0_ack, pixel_0_complete, pixel_0_timestamp, pixel_0_status, pixel_0_action, pixel_1, pixel_1_ack, pixel_1_complete, pixel_1_timestamp, pixel_1_status, pixel_1_action, pixel_2, pixel_2_ack, pixel_2_complete, pixel_2_timestamp, pixel_2_status, pixel_2_action, pixel_3, pixel_3_ack, pixel_3_complete, pixel_3_timestamp, pixel_3_status, pixel_3_action, pixel_4, pixel_4_ack, pixel_4_complete, pixel_4_timestamp, pixel_4_status, pixel_4_action, pixel_5, pixel_5_ack, pixel_5_complete, pixel_5_timestamp, pixel_5_status, pixel_5_action, pixel_6, pixel_6_ack, pixel_6_complete, pixel_6_timestamp, pixel_6_status, pixel_6_action, pixel_7, pixel_7_ack, pixel_7_complete, pixel_7_timestamp, pixel_7_status, pixel_7_action, pixel_8, pixel_8_ack, pixel_8_complete, pixel_8_timestamp, pixel_8_status, pixel_8_action, pixel_9, pixel_9_ack, pixel_9_complete, pixel_9_timestamp, pixel_9_status, pixel_9_action, pixel_10, pixel_10_ack, pixel_10_complete, pixel_10_timestamp, pixel_10_status, pixel_10_action, pixel_11, pixel_11_ack, pixel_11_complete, pixel_11_timestamp, pixel_11_status, pixel_11_action, pixel_12, pixel_12_ack, pixel_12_complete, pixel_12_timestamp, pixel_12_status, pixel_12_action, pixel_13, pixel_13_ack, pixel_13_complete, pixel_13_timestamp, pixel_13_status, pixel_13_action, pixel_14, pixel_14_ack, pixel_14_complete, pixel_14_timestamp, pixel_14_status, pixel_14_action, pixel_15, pixel_15_ack, pixel_15_complete, pixel_15_timestamp, pixel_15_status, pixel_15_action, pixel_16, pixel_16_ack, pixel_16_complete, pixel_16_timestamp, pixel_16_status, pixel_16_action, pixel_17, pixel_17_ack, pixel_17_complete, pixel_17_timestamp, pixel_17_status, pixel_17_action, pixel_18, pixel_18_ack, pixel_18_complete, pixel_18_timestamp, pixel_18_status, pixel_18_action, pixel_19, pixel_19_ack, pixel_19_complete, pixel_19_timestamp, pixel_19_status, pixel_19_action, pixel_20, pixel_20_ack, pixel_20_complete, pixel_20_timestamp, pixel_20_status, pixel_20_action, pixel_21, pixel_21_ack, pixel_21_complete, pixel_21_timestamp, pixel_21_status, pixel_21_action, pixel_22, pixel_22_ack, pixel_22_complete, pixel_22_timestamp, pixel_22_status, pixel_22_action, pixel_23, pixel_23_ack, pixel_23_complete, pixel_23_timestamp, pixel_23_status, pixel_23_action, pixel_24, pixel_24_ack, pixel_24_complete, pixel_24_timestamp, pixel_24_status, pixel_24_action, pixel_25, pixel_25_ack, pixel_25_complete, pixel_25_timestamp, pixel_25_status, pixel_25_action, pixel_26, pixel_26_ack, pixel_26_complete, pixel_26_timestamp, pixel_26_status, pixel_26_action, pixel_27, pixel_27_ack, pixel_27_complete, pixel_27_timestamp, pixel_27_status, pixel_27_action, pixel_28, pixel_28_ack, pixel_28_complete, pixel_28_timestamp, pixel_28_status, pixel_28_action, pixel_29, pixel_29_ack, pixel_29_complete, pixel_29_timestamp, pixel_29_status, pixel_29_action, pixel_30, pixel_30_ack, pixel_30_complete, pixel_30_timestamp, pixel_30_status, pixel_30_action, pixel_31, pixel_31_ack, pixel_31_complete, pixel_31_timestamp, pixel_31_status, pixel_31_action, pixel_32, pixel_32_ack, pixel_32_complete, pixel_32_timestamp, pixel_32_status, pixel_32_action, pixel_33, pixel_33_ack, pixel_33_complete, pixel_33_timestamp, pixel_33_status, pixel_33_action, pixel_34, pixel_34_ack, pixel_34_complete, pixel_34_timestamp, pixel_34_status, pixel_34_action, pixel_35, pixel_35_ack, pixel_35_complete, pixel_35_timestamp, pixel_35_status, pixel_35_action, pixel_36, pixel_36_ack, pixel_36_complete, pixel_36_timestamp, pixel_36_status, pixel_36_action, pixel_37, pixel_37_ack, pixel_37_complete, pixel_37_timestamp, pixel_37_status, pixel_37_action, pixel_38, pixel_38_ack, pixel_38_complete, pixel_38_timestamp, pixel_38_status, pixel_38_action, pixel_39, pixel_39_ack, pixel_39_complete, pixel_39_timestamp, pixel_39_status, pixel_39_action, pixel_40, pixel_40_ack, pixel_40_complete, pixel_40_timestamp, pixel_40_status, pixel_40_action, pixel_41, pixel_41_ack, pixel_41_complete, pixel_41_timestamp, pixel_41_status, pixel_41_action, pixel_42, pixel_42_ack, pixel_42_complete, pixel_42_timestamp, pixel_42_status, pixel_42_action, pixel_43, pixel_43_ack, pixel_43_complete, pixel_43_timestamp, pixel_43_status, pixel_43_action, pixel_44, pixel_44_ack, pixel_44_complete, pixel_44_timestamp, pixel_44_status, pixel_44_action, pixel_45, pixel_45_ack, pixel_45_complete, pixel_45_timestamp, pixel_45_status, pixel_45_action, pixel_46, pixel_46_ack, pixel_46_complete, pixel_46_timestamp, pixel_46_status, pixel_46_action, pixel_47, pixel_47_ack, pixel_47_complete, pixel_47_timestamp, pixel_47_status, pixel_47_action, pixel_48, pixel_48_ack, pixel_48_complete, pixel_48_timestamp, pixel_48_status, pixel_48_action, pixel_49, pixel_49_ack, pixel_49_complete, pixel_49_timestamp, pixel_49_status, pixel_49_action, pixel_50, pixel_50_ack, pixel_50_complete, pixel_50_timestamp, pixel_50_status, pixel_50_action, pixel_51, pixel_51_ack, pixel_51_complete, pixel_51_timestamp, pixel_51_status, pixel_51_action, pixel_52, pixel_52_ack, pixel_52_complete, pixel_52_timestamp, pixel_52_status, pixel_52_action, pixel_53, pixel_53_ack, pixel_53_complete, pixel_53_timestamp, pixel_53_status, pixel_53_action, pixel_54, pixel_54_ack, pixel_54_complete, pixel_54_timestamp, pixel_54_status, pixel_54_action, pixel_55, pixel_55_ack, pixel_55_complete, pixel_55_timestamp, pixel_55_status, pixel_55_action, pixel_56, pixel_56_ack, pixel_56_complete, pixel_56_timestamp, pixel_56_status, pixel_56_action, pixel_57, pixel_57_ack, pixel_57_complete, pixel_57_timestamp, pixel_57_status, pixel_57_action, pixel_58, pixel_58_ack, pixel_58_complete, pixel_58_timestamp, pixel_58_status, pixel_58_action, pixel_59, pixel_59_ack, pixel_59_complete, pixel_59_timestamp, pixel_59_status, pixel_59_action, pixel_60, pixel_60_ack, pixel_60_complete, pixel_60_timestamp, pixel_60_status, pixel_60_action, pixel_61, pixel_61_ack, pixel_61_complete, pixel_61_timestamp, pixel_61_status, pixel_61_action, pixel_62, pixel_62_ack, pixel_62_complete, pixel_62_timestamp, pixel_62_status, pixel_62_action, pixel_63, pixel_63_ack, pixel_63_complete, pixel_63_timestamp, pixel_63_status, pixel_63_action, pixel_64, pixel_64_ack, pixel_64_complete, pixel_64_timestamp, pixel_64_status, pixel_64_action, pixel_65, pixel_65_ack, pixel_65_complete, pixel_65_timestamp, pixel_65_status, pixel_65_action, pixel_66, pixel_66_ack, pixel_66_complete, pixel_66_timestamp, pixel_66_status, pixel_66_action, pixel_67, pixel_67_ack, pixel_67_complete, pixel_67_timestamp, pixel_67_status, pixel_67_action, pixel_68, pixel_68_ack, pixel_68_complete, pixel_68_timestamp, pixel_68_status, pixel_68_action, pixel_69, pixel_69_ack, pixel_69_complete, pixel_69_timestamp, pixel_69_status, pixel_69_action, pixel_70, pixel_70_ack, pixel_70_complete, pixel_70_timestamp, pixel_70_status, pixel_70_action, pixel_71, pixel_71_ack, pixel_71_complete, pixel_71_timestamp, pixel_71_status, pixel_71_action, pixel_72, pixel_72_ack, pixel_72_complete, pixel_72_timestamp, pixel_72_status, pixel_72_action, pixel_73, pixel_73_ack, pixel_73_complete, pixel_73_timestamp, pixel_73_status, pixel_73_action, pixel_74, pixel_74_ack, pixel_74_complete, pixel_74_timestamp, pixel_74_status, pixel_74_action, pixel_75, pixel_75_ack, pixel_75_complete, pixel_75_timestamp, pixel_75_status, pixel_75_action, pixel_76, pixel_76_ack, pixel_76_complete, pixel_76_timestamp, pixel_76_status, pixel_76_action, pixel_77, pixel_77_ack, pixel_77_complete, pixel_77_timestamp, pixel_77_status, pixel_77_action, pixel_78, pixel_78_ack, pixel_78_complete, pixel_78_timestamp, pixel_78_status, pixel_78_action, pixel_79, pixel_79_ack, pixel_79_complete, pixel_79_timestamp, pixel_79_status, pixel_79_action, pixel_80, pixel_80_ack, pixel_80_complete, pixel_80_timestamp, pixel_80_status, pixel_80_action, pixel_81, pixel_81_ack, pixel_81_complete, pixel_81_timestamp, pixel_81_status, pixel_81_action, pixel_82, pixel_82_ack, pixel_82_complete, pixel_82_timestamp, pixel_82_status, pixel_82_action, pixel_83, pixel_83_ack, pixel_83_complete, pixel_83_timestamp, pixel_83_status, pixel_83_action, pixel_84, pixel_84_ack, pixel_84_complete, pixel_84_timestamp, pixel_84_status, pixel_84_action, pixel_85, pixel_85_ack, pixel_85_complete, pixel_85_timestamp, pixel_85_status, pixel_85_action, pixel_86, pixel_86_ack, pixel_86_complete, pixel_86_timestamp, pixel_86_status, pixel_86_action, pixel_87, pixel_87_ack, pixel_87_complete, pixel_87_timestamp, pixel_87_status, pixel_87_action, pixel_88, pixel_88_ack, pixel_88_complete, pixel_88_timestamp, pixel_88_status, pixel_88_action, pixel_89, pixel_89_ack, pixel_89_complete, pixel_89_timestamp, pixel_89_status, pixel_89_action, pixel_90, pixel_90_ack, pixel_90_complete, pixel_90_timestamp, pixel_90_status, pixel_90_action, pixel_91, pixel_91_ack, pixel_91_complete, pixel_91_timestamp, pixel_91_status, pixel_91_action, pixel_92, pixel_92_ack, pixel_92_complete, pixel_92_timestamp, pixel_92_status, pixel_92_action, pixel_93, pixel_93_ack, pixel_93_complete, pixel_93_timestamp, pixel_93_status, pixel_93_action, pixel_94, pixel_94_ack, pixel_94_complete, pixel_94_timestamp, pixel_94_status, pixel_94_action, pixel_95, pixel_95_ack, pixel_95_complete, pixel_95_timestamp, pixel_95_status, pixel_95_action, pixel_96, pixel_96_ack, pixel_96_complete, pixel_96_timestamp, pixel_96_status, pixel_96_action, pixel_97, pixel_97_ack, pixel_97_complete, pixel_97_timestamp, pixel_97_status, pixel_97_action, pixel_98, pixel_98_ack, pixel_98_complete, pixel_98_timestamp, pixel_98_status, pixel_98_action, pixel_99, pixel_99_ack, pixel_99_complete, pixel_99_timestamp, pixel_99_status, pixel_99_action, pixel_100, pixel_100_ack, pixel_100_complete, pixel_100_timestamp, pixel_100_status, pixel_100_action, pixel_101, pixel_101_ack, pixel_101_complete, pixel_101_timestamp, pixel_101_status, pixel_101_action, pixel_102, pixel_102_ack, pixel_102_complete, pixel_102_timestamp, pixel_102_status, pixel_102_action, pixel_103, pixel_103_ack, pixel_103_complete, pixel_103_timestamp, pixel_103_status, pixel_103_action, pixel_104, pixel_104_ack, pixel_104_complete, pixel_104_timestamp, pixel_104_status, pixel_104_action, pixel_105, pixel_105_ack, pixel_105_complete, pixel_105_timestamp, pixel_105_status, pixel_105_action, pixel_106, pixel_106_ack, pixel_106_complete, pixel_106_timestamp, pixel_106_status, pixel_106_action, pixel_107, pixel_107_ack, pixel_107_complete, pixel_107_timestamp, pixel_107_status, pixel_107_action, pixel_108, pixel_108_ack, pixel_108_complete, pixel_108_timestamp, pixel_108_status, pixel_108_action, pixel_109, pixel_109_ack, pixel_109_complete, pixel_109_timestamp, pixel_109_status, pixel_109_action, pixel_110, pixel_110_ack, pixel_110_complete, pixel_110_timestamp, pixel_110_status, pixel_110_action, pixel_111, pixel_111_ack, pixel_111_complete, pixel_111_timestamp, pixel_111_status, pixel_111_action, pixel_112, pixel_112_ack, pixel_112_complete, pixel_112_timestamp, pixel_112_status, pixel_112_action, pixel_113, pixel_113_ack, pixel_113_complete, pixel_113_timestamp, pixel_113_status, pixel_113_action, pixel_114, pixel_114_ack, pixel_114_complete, pixel_114_timestamp, pixel_114_status, pixel_114_action, pixel_115, pixel_115_ack, pixel_115_complete, pixel_115_timestamp, pixel_115_status, pixel_115_action, pixel_116, pixel_116_ack, pixel_116_complete, pixel_116_timestamp, pixel_116_status, pixel_116_action, pixel_117, pixel_117_ack, pixel_117_complete, pixel_117_timestamp, pixel_117_status, pixel_117_action, pixel_118, pixel_118_ack, pixel_118_complete, pixel_118_timestamp, pixel_118_status, pixel_118_action, pixel_119, pixel_119_ack, pixel_119_complete, pixel_119_timestamp, pixel_119_status, pixel_119_action, pixel_120, pixel_120_ack, pixel_120_complete, pixel_120_timestamp, pixel_120_status, pixel_120_action, pixel_121, pixel_121_ack, pixel_121_complete, pixel_121_timestamp, pixel_121_status, pixel_121_action, pixel_122, pixel_122_ack, pixel_122_complete, pixel_122_timestamp, pixel_122_status, pixel_122_action, pixel_123, pixel_123_ack, pixel_123_complete, pixel_123_timestamp, pixel_123_status, pixel_123_action, pixel_124, pixel_124_ack, pixel_124_complete, pixel_124_timestamp, pixel_124_status, pixel_124_action, pixel_125, pixel_125_ack, pixel_125_complete, pixel_125_timestamp, pixel_125_status, pixel_125_action, pixel_126, pixel_126_ack, pixel_126_complete, pixel_126_timestamp, pixel_126_status, pixel_126_action, pixel_127, pixel_127_ack, pixel_127_complete, pixel_127_timestamp, pixel_127_status, pixel_127_action, pixel_128, pixel_128_ack, pixel_128_complete, pixel_128_timestamp, pixel_128_status, pixel_128_action, pixel_129, pixel_129_ack, pixel_129_complete, pixel_129_timestamp, pixel_129_status, pixel_129_action, pixel_130, pixel_130_ack, pixel_130_complete, pixel_130_timestamp, pixel_130_status, pixel_130_action, pixel_131, pixel_131_ack, pixel_131_complete, pixel_131_timestamp, pixel_131_status, pixel_131_action, pixel_132, pixel_132_ack, pixel_132_complete, pixel_132_timestamp, pixel_132_status, pixel_132_action, pixel_133, pixel_133_ack, pixel_133_complete, pixel_133_timestamp, pixel_133_status, pixel_133_action, pixel_134, pixel_134_ack, pixel_134_complete, pixel_134_timestamp, pixel_134_status, pixel_134_action, pixel_135, pixel_135_ack, pixel_135_complete, pixel_135_timestamp, pixel_135_status, pixel_135_action, pixel_136, pixel_136_ack, pixel_136_complete, pixel_136_timestamp, pixel_136_status, pixel_136_action, pixel_137, pixel_137_ack, pixel_137_complete, pixel_137_timestamp, pixel_137_status, pixel_137_action, pixel_138, pixel_138_ack, pixel_138_complete, pixel_138_timestamp, pixel_138_status, pixel_138_action, pixel_139, pixel_139_ack, pixel_139_complete, pixel_139_timestamp, pixel_139_status, pixel_139_action, pixel_140, pixel_140_ack, pixel_140_complete, pixel_140_timestamp, pixel_140_status, pixel_140_action, pixel_141, pixel_141_ack, pixel_141_complete, pixel_141_timestamp, pixel_141_status, pixel_141_action, pixel_142, pixel_142_ack, pixel_142_complete, pixel_142_timestamp, pixel_142_status, pixel_142_action, pixel_143, pixel_143_ack, pixel_143_complete, pixel_143_timestamp, pixel_143_status, pixel_143_action, pixel_144, pixel_144_ack, pixel_144_complete, pixel_144_timestamp, pixel_144_status, pixel_144_action, pixel_145, pixel_145_ack, pixel_145_complete, pixel_145_timestamp, pixel_145_status, pixel_145_action, pixel_146, pixel_146_ack, pixel_146_complete, pixel_146_timestamp, pixel_146_status, pixel_146_action, pixel_147, pixel_147_ack, pixel_147_complete, pixel_147_timestamp, pixel_147_status, pixel_147_action, pixel_148, pixel_148_ack, pixel_148_complete, pixel_148_timestamp, pixel_148_status, pixel_148_action, pixel_149, pixel_149_ack, pixel_149_complete, pixel_149_timestamp, pixel_149_status, pixel_149_action, pixel_150, pixel_150_ack, pixel_150_complete, pixel_150_timestamp, pixel_150_status, pixel_150_action, pixel_151, pixel_151_ack, pixel_151_complete, pixel_151_timestamp, pixel_151_status, pixel_151_action, pixel_152, pixel_152_ack, pixel_152_complete, pixel_152_timestamp, pixel_152_status, pixel_152_action, pixel_153, pixel_153_ack, pixel_153_complete, pixel_153_timestamp, pixel_153_status, pixel_153_action, pixel_154, pixel_154_ack, pixel_154_complete, pixel_154_timestamp, pixel_154_status, pixel_154_action, pixel_155, pixel_155_ack, pixel_155_complete, pixel_155_timestamp, pixel_155_status, pixel_155_action, pixel_156, pixel_156_ack, pixel_156_complete, pixel_156_timestamp, pixel_156_status, pixel_156_action, pixel_157, pixel_157_ack, pixel_157_complete, pixel_157_timestamp, pixel_157_status, pixel_157_action, pixel_158, pixel_158_ack, pixel_158_complete, pixel_158_timestamp, pixel_158_status, pixel_158_action, pixel_159, pixel_159_ack, pixel_159_complete, pixel_159_timestamp, pixel_159_status, pixel_159_action, pixel_160, pixel_160_ack, pixel_160_complete, pixel_160_timestamp, pixel_160_status, pixel_160_action, pixel_161, pixel_161_ack, pixel_161_complete, pixel_161_timestamp, pixel_161_status, pixel_161_action, pixel_162, pixel_162_ack, pixel_162_complete, pixel_162_timestamp, pixel_162_status, pixel_162_action, pixel_163, pixel_163_ack, pixel_163_complete, pixel_163_timestamp, pixel_163_status, pixel_163_action, pixel_164, pixel_164_ack, pixel_164_complete, pixel_164_timestamp, pixel_164_status, pixel_164_action, pixel_165, pixel_165_ack, pixel_165_complete, pixel_165_timestamp, pixel_165_status, pixel_165_action, pixel_166, pixel_166_ack, pixel_166_complete, pixel_166_timestamp, pixel_166_status, pixel_166_action, pixel_167, pixel_167_ack, pixel_167_complete, pixel_167_timestamp, pixel_167_status, pixel_167_action, pixel_168, pixel_168_ack, pixel_168_complete, pixel_168_timestamp, pixel_168_status, pixel_168_action, pixel_169, pixel_169_ack, pixel_169_complete, pixel_169_timestamp, pixel_169_status, pixel_169_action, pixel_170, pixel_170_ack, pixel_170_complete, pixel_170_timestamp, pixel_170_status, pixel_170_action, pixel_171, pixel_171_ack, pixel_171_complete, pixel_171_timestamp, pixel_171_status, pixel_171_action, pixel_172, pixel_172_ack, pixel_172_complete, pixel_172_timestamp, pixel_172_status, pixel_172_action, pixel_173, pixel_173_ack, pixel_173_complete, pixel_173_timestamp, pixel_173_status, pixel_173_action, pixel_174, pixel_174_ack, pixel_174_complete, pixel_174_timestamp, pixel_174_status, pixel_174_action, pixel_175, pixel_175_ack, pixel_175_complete, pixel_175_timestamp, pixel_175_status, pixel_175_action, pixel_176, pixel_176_ack, pixel_176_complete, pixel_176_timestamp, pixel_176_status, pixel_176_action, pixel_177, pixel_177_ack, pixel_177_complete, pixel_177_timestamp, pixel_177_status, pixel_177_action, pixel_178, pixel_178_ack, pixel_178_complete, pixel_178_timestamp, pixel_178_status, pixel_178_action, pixel_179, pixel_179_ack, pixel_179_complete, pixel_179_timestamp, pixel_179_status, pixel_179_action, pixel_180, pixel_180_ack, pixel_180_complete, pixel_180_timestamp, pixel_180_status, pixel_180_action, pixel_181, pixel_181_ack, pixel_181_complete, pixel_181_timestamp, pixel_181_status, pixel_181_action, pixel_182, pixel_182_ack, pixel_182_complete, pixel_182_timestamp, pixel_182_status, pixel_182_action, pixel_183, pixel_183_ack, pixel_183_complete, pixel_183_timestamp, pixel_183_status, pixel_183_action, pixel_184, pixel_184_ack, pixel_184_complete, pixel_184_timestamp, pixel_184_status, pixel_184_action, pixel_185, pixel_185_ack, pixel_185_complete, pixel_185_timestamp, pixel_185_status, pixel_185_action, pixel_186, pixel_186_ack, pixel_186_complete, pixel_186_timestamp, pixel_186_status, pixel_186_action, pixel_187, pixel_187_ack, pixel_187_complete, pixel_187_timestamp, pixel_187_status, pixel_187_action, pixel_188, pixel_188_ack, pixel_188_complete, pixel_188_timestamp, pixel_188_status, pixel_188_action, pixel_189, pixel_189_ack, pixel_189_complete, pixel_189_timestamp, pixel_189_status, pixel_189_action, pixel_190, pixel_190_ack, pixel_190_complete, pixel_190_timestamp, pixel_190_status, pixel_190_action, pixel_191, pixel_191_ack, pixel_191_complete, pixel_191_timestamp, pixel_191_status, pixel_191_action, pixel_192, pixel_192_ack, pixel_192_complete, pixel_192_timestamp, pixel_192_status, pixel_192_action, pixel_193, pixel_193_ack, pixel_193_complete, pixel_193_timestamp, pixel_193_status, pixel_193_action, pixel_194, pixel_194_ack, pixel_194_complete, pixel_194_timestamp, pixel_194_status, pixel_194_action, pixel_195, pixel_195_ack, pixel_195_complete, pixel_195_timestamp, pixel_195_status, pixel_195_action, pixel_196, pixel_196_ack, pixel_196_complete, pixel_196_timestamp, pixel_196_status, pixel_196_action, pixel_197, pixel_197_ack, pixel_197_complete, pixel_197_timestamp, pixel_197_status, pixel_197_action, pixel_198, pixel_198_ack, pixel_198_complete, pixel_198_timestamp, pixel_198_status, pixel_198_action, pixel_199, pixel_199_ack, pixel_199_complete, pixel_199_timestamp, pixel_199_status, pixel_199_action, pixel_200, pixel_200_ack, pixel_200_complete, pixel_200_timestamp, pixel_200_status, pixel_200_action, pixel_201, pixel_201_ack, pixel_201_complete, pixel_201_timestamp, pixel_201_status, pixel_201_action, pixel_202, pixel_202_ack, pixel_202_complete, pixel_202_timestamp, pixel_202_status, pixel_202_action, pixel_203, pixel_203_ack, pixel_203_complete, pixel_203_timestamp, pixel_203_status, pixel_203_action, pixel_204, pixel_204_ack, pixel_204_complete, pixel_204_timestamp, pixel_204_status, pixel_204_action, pixel_205, pixel_205_ack, pixel_205_complete, pixel_205_timestamp, pixel_205_status, pixel_205_action, pixel_206, pixel_206_ack, pixel_206_complete, pixel_206_timestamp, pixel_206_status, pixel_206_action, pixel_207, pixel_207_ack, pixel_207_complete, pixel_207_timestamp, pixel_207_status, pixel_207_action, pixel_208, pixel_208_ack, pixel_208_complete, pixel_208_timestamp, pixel_208_status, pixel_208_action, pixel_209, pixel_209_ack, pixel_209_complete, pixel_209_timestamp, pixel_209_status, pixel_209_action, pixel_210, pixel_210_ack, pixel_210_complete, pixel_210_timestamp, pixel_210_status, pixel_210_action, pixel_211, pixel_211_ack, pixel_211_complete, pixel_211_timestamp, pixel_211_status, pixel_211_action, pixel_212, pixel_212_ack, pixel_212_complete, pixel_212_timestamp, pixel_212_status, pixel_212_action, pixel_213, pixel_213_ack, pixel_213_complete, pixel_213_timestamp, pixel_213_status, pixel_213_action, pixel_214, pixel_214_ack, pixel_214_complete, pixel_214_timestamp, pixel_214_status, pixel_214_action, pixel_215, pixel_215_ack, pixel_215_complete, pixel_215_timestamp, pixel_215_status, pixel_215_action, pixel_216, pixel_216_ack, pixel_216_complete, pixel_216_timestamp, pixel_216_status, pixel_216_action, pixel_217, pixel_217_ack, pixel_217_complete, pixel_217_timestamp, pixel_217_status, pixel_217_action, pixel_218, pixel_218_ack, pixel_218_complete, pixel_218_timestamp, pixel_218_status, pixel_218_action, pixel_219, pixel_219_ack, pixel_219_complete, pixel_219_timestamp, pixel_219_status, pixel_219_action, pixel_220, pixel_220_ack, pixel_220_complete, pixel_220_timestamp, pixel_220_status, pixel_220_action, pixel_221, pixel_221_ack, pixel_221_complete, pixel_221_timestamp, pixel_221_status, pixel_221_action, pixel_222, pixel_222_ack, pixel_222_complete, pixel_222_timestamp, pixel_222_status, pixel_222_action, pixel_223, pixel_223_ack, pixel_223_complete, pixel_223_timestamp, pixel_223_status, pixel_223_action, pixel_224, pixel_224_ack, pixel_224_complete, pixel_224_timestamp, pixel_224_status, pixel_224_action, pixel_225, pixel_225_ack, pixel_225_complete, pixel_225_timestamp, pixel_225_status, pixel_225_action, pixel_226, pixel_226_ack, pixel_226_complete, pixel_226_timestamp, pixel_226_status, pixel_226_action, pixel_227, pixel_227_ack, pixel_227_complete, pixel_227_timestamp, pixel_227_status, pixel_227_action, pixel_228, pixel_228_ack, pixel_228_complete, pixel_228_timestamp, pixel_228_status, pixel_228_action, pixel_229, pixel_229_ack, pixel_229_complete, pixel_229_timestamp, pixel_229_status, pixel_229_action, pixel_230, pixel_230_ack, pixel_230_complete, pixel_230_timestamp, pixel_230_status, pixel_230_action, pixel_231, pixel_231_ack, pixel_231_complete, pixel_231_timestamp, pixel_231_status, pixel_231_action, pixel_232, pixel_232_ack, pixel_232_complete, pixel_232_timestamp, pixel_232_status, pixel_232_action, pixel_233, pixel_233_ack, pixel_233_complete, pixel_233_timestamp, pixel_233_status, pixel_233_action, pixel_234, pixel_234_ack, pixel_234_complete, pixel_234_timestamp, pixel_234_status, pixel_234_action, pixel_235, pixel_235_ack, pixel_235_complete, pixel_235_timestamp, pixel_235_status, pixel_235_action, pixel_236, pixel_236_ack, pixel_236_complete, pixel_236_timestamp, pixel_236_status, pixel_236_action, pixel_237, pixel_237_ack, pixel_237_complete, pixel_237_timestamp, pixel_237_status, pixel_237_action, pixel_238, pixel_238_ack, pixel_238_complete, pixel_238_timestamp, pixel_238_status, pixel_238_action, pixel_239, pixel_239_ack, pixel_239_complete, pixel_239_timestamp, pixel_239_status, pixel_239_action, pixel_240, pixel_240_ack, pixel_240_complete, pixel_240_timestamp, pixel_240_status, pixel_240_action, pixel_241, pixel_241_ack, pixel_241_complete, pixel_241_timestamp, pixel_241_status, pixel_241_action, pixel_242, pixel_242_ack, pixel_242_complete, pixel_242_timestamp, pixel_242_status, pixel_242_action, pixel_243, pixel_243_ack, pixel_243_complete, pixel_243_timestamp, pixel_243_status, pixel_243_action, pixel_244, pixel_244_ack, pixel_244_complete, pixel_244_timestamp, pixel_244_status, pixel_244_action, pixel_245, pixel_245_ack, pixel_245_complete, pixel_245_timestamp, pixel_245_status, pixel_245_action, pixel_246, pixel_246_ack, pixel_246_complete, pixel_246_timestamp, pixel_246_status, pixel_246_action, pixel_247, pixel_247_ack, pixel_247_complete, pixel_247_timestamp, pixel_247_status, pixel_247_action, pixel_248, pixel_248_ack, pixel_248_complete, pixel_248_timestamp, pixel_248_status, pixel_248_action, pixel_249, pixel_249_ack, pixel_249_complete, pixel_249_timestamp, pixel_249_status, pixel_249_action, pixel_250, pixel_250_ack, pixel_250_complete, pixel_250_timestamp, pixel_250_status, pixel_250_action, pixel_251, pixel_251_ack, pixel_251_complete, pixel_251_timestamp, pixel_251_status, pixel_251_action, pixel_252, pixel_252_ack, pixel_252_complete, pixel_252_timestamp, pixel_252_status, pixel_252_action, pixel_253, pixel_253_ack, pixel_253_complete, pixel_253_timestamp, pixel_253_status, pixel_253_action, pixel_254, pixel_254_ack, pixel_254_complete, pixel_254_timestamp, pixel_254_status, pixel_254_action, pixel_255, pixel_255_ack, pixel_255_complete, pixel_255_timestamp, pixel_255_status, pixel_255_action, pixels, pixels_ack, pixels_complete, pixels_timestamp, pixels_status, pixels_action, cord_id, created_at, updated_at) FROM stdin;
2	0	f	f	1512153869814068	ok	set-request	0	f	f	1512153869882188	ok	set-request	0	f	f	1512153870065500	ok	set-request	0	f	f	1512153870146126	ok	set-request	0	f	f	1512153870217226	ok	set-request	0	f	f	1512153870285517	ok	set-request	0	f	f	1512153870356710	ok	set-request	0	f	f	1512153870422066	ok	set-request	0	f	f	1512153870505087	ok	set-request	0	f	f	1512153870573205	ok	set-request	0	f	f	1512153870645925	ok	set-request	0	f	f	1512153870727680	ok	set-request	0	f	f	1512153870833517	ok	set-request	0	f	f	1512153870917713	ok	set-request	0	f	f	1512153870982424	ok	set-request	0	f	f	1512153871040450	ok	set-request	0	f	f	1512153871220827	ok	set-request	0	f	f	1512153871283930	ok	set-request	0	f	f	1512153871364728	ok	set-request	0	f	f	1512153871430844	ok	set-request	0	f	f	1512153872508814	ok	set-request	0	f	f	1512153872558061	ok	set-request	0	f	f	1512153872631529	ok	set-request	0	f	f	1512153872691867	ok	set-request	0	f	f	1512153872782715	ok	set-request	0	f	f	1512153872838890	ok	set-request	0	f	f	1512153872914257	ok	set-request	0	f	f	1512153872986906	ok	set-request	0	f	f	1512153873065814	ok	set-request	0	f	f	1512153873141427	ok	set-request	0	f	f	1512153873199532	ok	set-request	0	f	f	1512153873254610	ok	set-request	0	f	f	1512153873338608	ok	set-request	0	f	f	1512153873455400	ok	set-request	0	f	f	1512153873547607	ok	set-request	0	f	f	1512153873606760	ok	set-request	0	f	f	1512153873663039	ok	set-request	0	f	f	1512153873751306	ok	set-request	0	f	f	1512153873827988	ok	set-request	0	f	f	1512153873911521	ok	set-request	0	f	f	1512153875002582	ok	set-request	0	f	f	1512153875072034	ok	set-request	0	f	f	1512153875218109	ok	set-request	0	f	f	1512153875333719	ok	set-request	0	f	f	1512153875404638	ok	set-request	0	f	f	1512153875491279	ok	set-request	0	f	f	1512153875605149	ok	set-request	0	f	f	1512153875739919	ok	set-request	0	f	f	1512153875813743	ok	set-request	0	f	f	1512153875891894	ok	set-request	0	f	f	1512153875968468	ok	set-request	0	f	f	1512153876045013	ok	set-request	0	f	f	1512153876140820	ok	set-request	0	f	f	1512153876217413	ok	set-request	0	f	f	1512153876321008	ok	set-request	0	f	f	1512153876399166	ok	set-request	0	f	f	1512153876461996	ok	set-request	0	f	f	1512153876556871	ok	set-request	0	f	f	1512153876617945	ok	set-request	0	f	f	1512153876733844	ok	set-request	0	f	f	1512153877874922	ok	set-request	0	f	f	1512153878005124	ok	set-request	0	f	f	1512153878101459	ok	set-request	0	f	f	1512153878187668	ok	set-request	0	f	f	1512153878254339	ok	set-request	0	f	f	1512153878350826	ok	set-request	0	f	f	1512153878441466	ok	set-request	0	f	f	1512153878565234	ok	set-request	0	f	f	1512153878625027	ok	set-request	0	f	f	1512153878710202	ok	set-request	0	f	f	1512153878789231	ok	set-request	0	f	f	1512153878849017	ok	set-request	0	f	f	1512153878948713	ok	set-request	0	f	f	1512153879022035	ok	set-request	0	f	f	1512153879104145	ok	set-request	0	f	f	1512153879181222	ok	set-request	0	f	f	1512153879272571	ok	set-request	0	f	f	1512153879371167	ok	set-request	0	f	f	1512153879425404	ok	set-request	0	f	f	1512153879505621	ok	set-request	0	f	f	1512153880631015	ok	set-request	0	f	f	1512153880687451	ok	set-request	0	f	f	1512153880764603	ok	set-request	0	f	f	1512153880845124	ok	set-request	0	f	f	1512153880900998	ok	set-request	0	f	f	1512153880990958	ok	set-request	0	f	f	1512153881055308	ok	set-request	0	f	f	1512153881157662	ok	set-request	0	f	f	1512153881226990	ok	set-request	0	f	f	1512153881297570	ok	set-request	0	f	f	1512153881397116	ok	set-request	0	f	f	1512150195093726	ok	set-request	0	f	f	1512133660276530	ok	set-request	0	f	f	1512133660321698	ok	set-request	0	f	f	1512133660357690	ok	set-request	0	f	f	1512133660394666	ok	set-request	0	f	f	1512133660440125	ok	set-request	0	f	f	1512133660476764	ok	set-request	0	f	f	1512133660513326	ok	set-request	0	f	f	1512133660558944	ok	set-request	0	f	f	1512133660596271	ok	set-request	0	f	f	1512133660632188	ok	set-request	0	f	f	1512133660668470	ok	set-request	0	f	f	1512133660714550	ok	set-request	0	f	f	1512133660751297	ok	set-request	0	f	f	1512133660814853	ok	set-request	0	f	f	1512133660842320	ok	set-request	0	f	f	1512133660878985	ok	set-request	0	f	f	1512133660924679	ok	set-request	0	f	f	1512133660961692	ok	set-request	0	f	f	1512133661015964	ok	set-request	0	f	f	1512133661044814	ok	set-request	0	f	f	1512133661089338	ok	set-request	0	f	f	1512133661125825	ok	set-request	0	f	f	1512133661162690	ok	set-request	0	f	f	1512133661208325	ok	set-request	0	f	f	1512133661244680	ok	set-request	0	f	f	1512133661290694	ok	set-request	0	f	f	1512133661327049	ok	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	0	f	f	\N	\N	set-request	240	f	f	1512153810671340	ok	set-request	2	2017-11-30 20:54:56.888114	2017-12-01 19:07:38.374627
\.


--
-- Data for Name: node_button_safe_logs; Type: TABLE DATA; Schema: public; Owner: margaryta
--

COPY node_button_safe_logs (id, safe, safe_ack, safe_complete, safe_timestamp, safe_status, safe_action, button_id, created_at, updated_at) FROM stdin;
1	\N	f	f	\N	\N	get	1	2017-11-24 17:40:03.531782-05	2017-11-24 17:40:03.531782-05
2	f	f	f	\N	\N	set-request	1	2017-11-24 17:41:06.232817-05	2017-11-24 17:41:06.232817-05
3	f	t	f	1511563266237835	\N	set-request-ack	1	2017-11-24 17:41:06.419956-05	2017-11-24 17:41:06.419956-05
\.


--
-- Data for Name: node_buttons; Type: TABLE DATA; Schema: public; Owner: margaryta
--

COPY node_buttons (id, safe, safe_ack, safe_complete, safe_timestamp, safe_status, safe_action, node_id, created_at, updated_at) FROM stdin;
1	f	t	f	1511563266237835	\N	set-request-ack	3	2017-11-24 17:40:03.506885-05	2017-11-24 17:41:06.372048-05
\.


--
-- Data for Name: node_led_led_state_logs; Type: TABLE DATA; Schema: public; Owner: margaryta
--

COPY node_led_led_state_logs (id, led_state, led_state_ack, led_state_complete, led_state_timestamp, led_state_status, led_state_action, led_id, created_at, updated_at) FROM stdin;
1	\N	f	f	\N	\N	get	2	2017-11-24 17:40:03.483839-05	2017-11-24 17:40:03.483839-05
2	f	f	f	\N	\N	set-request	2	2017-11-24 17:41:06.204121-05	2017-11-24 17:41:06.204121-05
3	f	t	f	1511563266208468	\N	set-request-ack	2	2017-11-24 17:41:06.318891-05	2017-11-24 17:41:06.318891-05
\.


--
-- Data for Name: node_leds; Type: TABLE DATA; Schema: public; Owner: margaryta
--

COPY node_leds (id, led_state, led_state_ack, led_state_complete, led_state_timestamp, led_state_status, led_state_action, node_id, created_at, updated_at) FROM stdin;
2	f	t	f	1511563266208468	\N	set-request-ack	3	2017-11-24 17:40:03.458017-05	2017-11-24 17:41:06.290137-05
\.


--
-- Data for Name: node_neo_pixel_stick_eight_led_color_logs; Type: TABLE DATA; Schema: public; Owner: margaryta
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
-- Data for Name: node_neo_pixel_stick_eight_led_index_logs; Type: TABLE DATA; Schema: public; Owner: margaryta
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
-- Data for Name: node_neo_pixel_stick_eights; Type: TABLE DATA; Schema: public; Owner: margaryta
--

COPY node_neo_pixel_stick_eights (id, led_color, led_color_ack, led_color_complete, led_color_timestamp, led_color_status, led_color_action, led_index, led_index_ack, led_index_complete, led_index_timestamp, led_index_status, led_index_action, node_id, created_at, updated_at) FROM stdin;
1	65280	t	f	1511645809526239	\N	set-request-ack	0	f	f	1511563284657763	\N	set-request	3	2017-11-24 17:40:03.608948-05	2017-11-25 16:36:49.525433-05
\.


--
-- Data for Name: node_nodes; Type: TABLE DATA; Schema: public; Owner: margaryta
--

COPY node_nodes (id, apiotics_instance, name, created_at, updated_at) FROM stdin;
3	d384a9aafbeaf72b8b5bb1abf855f9944c950f9b4f1d2a0b9a7ba1c0e7c3498b	w16	2017-11-24 17:40:03.448232-05	2017-11-24 17:40:03.448232-05
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: margaryta
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
20171128212817
20171128212818
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: margaryta
--

COPY users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at) FROM stdin;
2	margaryta@gmail.com	$2a$11$8tPLB6quuFnxUTV7HBtXh.1bw4/11qmgUcCIFJcbUI5uIvMS0iYSe	\N	\N	\N	11	2017-11-27 16:36:19.86489	2017-11-26 18:59:13.246593	127.0.0.1	127.0.0.1	2017-11-24 17:38:23.007529	2017-11-27 16:36:19.866105
\.


--
-- Name: cord_cords_id_seq; Type: SEQUENCE SET; Schema: public; Owner: margaryta
--

SELECT pg_catalog.setval('cord_cords_id_seq', 2, true);


--
-- Name: cord_neo_pixels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: margaryta
--

SELECT pg_catalog.setval('cord_neo_pixels_id_seq', 2, true);


--
-- Name: node_button_safe_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: margaryta
--

SELECT pg_catalog.setval('node_button_safe_logs_id_seq', 3, true);


--
-- Name: node_buttons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: margaryta
--

SELECT pg_catalog.setval('node_buttons_id_seq', 1, true);


--
-- Name: node_led_led_state_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: margaryta
--

SELECT pg_catalog.setval('node_led_led_state_logs_id_seq', 3, true);


--
-- Name: node_leds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: margaryta
--

SELECT pg_catalog.setval('node_leds_id_seq', 2, true);


--
-- Name: node_neo_pixel_stick_eight_led_color_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: margaryta
--

SELECT pg_catalog.setval('node_neo_pixel_stick_eight_led_color_logs_id_seq', 116, true);


--
-- Name: node_neo_pixel_stick_eight_led_index_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: margaryta
--

SELECT pg_catalog.setval('node_neo_pixel_stick_eight_led_index_logs_id_seq', 131, true);


--
-- Name: node_neo_pixel_stick_eights_id_seq; Type: SEQUENCE SET; Schema: public; Owner: margaryta
--

SELECT pg_catalog.setval('node_neo_pixel_stick_eights_id_seq', 1, true);


--
-- Name: node_nodes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: margaryta
--

SELECT pg_catalog.setval('node_nodes_id_seq', 3, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: margaryta
--

SELECT pg_catalog.setval('users_id_seq', 2, true);


--
-- Name: cord_cords cord_cords_pkey; Type: CONSTRAINT; Schema: public; Owner: margaryta
--

ALTER TABLE ONLY cord_cords
    ADD CONSTRAINT cord_cords_pkey PRIMARY KEY (id);


--
-- Name: cord_neo_pixels cord_neo_pixels_pkey; Type: CONSTRAINT; Schema: public; Owner: margaryta
--

ALTER TABLE ONLY cord_neo_pixels
    ADD CONSTRAINT cord_neo_pixels_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations idx_16853_sqlite_autoindex_schema_migrations_1; Type: CONSTRAINT; Schema: public; Owner: margaryta
--

ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT idx_16853_sqlite_autoindex_schema_migrations_1 PRIMARY KEY (version);


--
-- Name: ar_internal_metadata idx_16859_sqlite_autoindex_ar_internal_metadata_1; Type: CONSTRAINT; Schema: public; Owner: margaryta
--

ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT idx_16859_sqlite_autoindex_ar_internal_metadata_1 PRIMARY KEY (key);


--
-- Name: apiotics_settings idx_16865_apiotics_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: margaryta
--

ALTER TABLE ONLY apiotics_settings
    ADD CONSTRAINT idx_16865_apiotics_settings_pkey PRIMARY KEY (id);


--
-- Name: node_leds idx_16871_node_leds_pkey; Type: CONSTRAINT; Schema: public; Owner: margaryta
--

ALTER TABLE ONLY node_leds
    ADD CONSTRAINT idx_16871_node_leds_pkey PRIMARY KEY (id);


--
-- Name: node_led_led_state_logs idx_16877_node_led_led_state_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: margaryta
--

ALTER TABLE ONLY node_led_led_state_logs
    ADD CONSTRAINT idx_16877_node_led_led_state_logs_pkey PRIMARY KEY (id);


--
-- Name: node_nodes idx_16883_node_nodes_pkey; Type: CONSTRAINT; Schema: public; Owner: margaryta
--

ALTER TABLE ONLY node_nodes
    ADD CONSTRAINT idx_16883_node_nodes_pkey PRIMARY KEY (id);


--
-- Name: node_buttons idx_16889_node_buttons_pkey; Type: CONSTRAINT; Schema: public; Owner: margaryta
--

ALTER TABLE ONLY node_buttons
    ADD CONSTRAINT idx_16889_node_buttons_pkey PRIMARY KEY (id);


--
-- Name: node_button_safe_logs idx_16895_node_button_safe_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: margaryta
--

ALTER TABLE ONLY node_button_safe_logs
    ADD CONSTRAINT idx_16895_node_button_safe_logs_pkey PRIMARY KEY (id);


--
-- Name: node_neo_pixel_stick_eights idx_16901_node_neo_pixel_stick_eights_pkey; Type: CONSTRAINT; Schema: public; Owner: margaryta
--

ALTER TABLE ONLY node_neo_pixel_stick_eights
    ADD CONSTRAINT idx_16901_node_neo_pixel_stick_eights_pkey PRIMARY KEY (id);


--
-- Name: node_neo_pixel_stick_eight_led_color_logs idx_16907_node_neo_pixel_stick_eight_led_color_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: margaryta
--

ALTER TABLE ONLY node_neo_pixel_stick_eight_led_color_logs
    ADD CONSTRAINT idx_16907_node_neo_pixel_stick_eight_led_color_logs_pkey PRIMARY KEY (id);


--
-- Name: node_neo_pixel_stick_eight_led_index_logs idx_16913_node_neo_pixel_stick_eight_led_index_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: margaryta
--

ALTER TABLE ONLY node_neo_pixel_stick_eight_led_index_logs
    ADD CONSTRAINT idx_16913_node_neo_pixel_stick_eight_led_index_logs_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: margaryta
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: margaryta
--

CREATE UNIQUE INDEX index_users_on_email ON users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: margaryta
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON users USING btree (reset_password_token);


--
-- PostgreSQL database dump complete
--


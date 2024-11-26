--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5 (Homebrew)
-- Dumped by pg_dump version 14.5 (Homebrew)

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

--
-- Name: mel; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA mel;


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: communes; Type: TABLE; Schema: mel; Owner: -
--

CREATE TABLE mel.communes (
    commune character(3) NOT NULL,
    nom text NOT NULL,
    insee character(5) NOT NULL,
    epci character(9),
    superficie numeric(4,2)
);


--
-- Name: COLUMN communes.commune; Type: COMMENT; Schema: mel; Owner: -
--

COMMENT ON COLUMN mel.communes.commune IS 'code commune sur 3 caractères';


--
-- Name: COLUMN communes.nom; Type: COMMENT; Schema: mel; Owner: -
--

COMMENT ON COLUMN mel.communes.nom IS 'nom de la commune';


--
-- Name: COLUMN communes.insee; Type: COMMENT; Schema: mel; Owner: -
--

COMMENT ON COLUMN mel.communes.insee IS 'code INSEE sur 5 caractères';


--
-- Name: COLUMN communes.epci; Type: COMMENT; Schema: mel; Owner: -
--

COMMENT ON COLUMN mel.communes.epci IS 'code de l''EPCI (MEL) sur 9 caractères';


--
-- Name: COLUMN communes.superficie; Type: COMMENT; Schema: mel; Owner: -
--

COMMENT ON COLUMN mel.communes.superficie IS 'superficie, en km2';


--
-- Name: mesures_mensuelles; Type: TABLE; Schema: mel; Owner: -
--

CREATE TABLE mel.mesures_mensuelles (
    code_station character(7) NOT NULL,
    code_polluant integer NOT NULL,
    date_debut date NOT NULL,
    valeur real
);


--
-- Name: COLUMN mesures_mensuelles.code_station; Type: COMMENT; Schema: mel; Owner: -
--

COMMENT ON COLUMN mel.mesures_mensuelles.code_station IS 'station de mesure';


--
-- Name: COLUMN mesures_mensuelles.code_polluant; Type: COMMENT; Schema: mel; Owner: -
--

COMMENT ON COLUMN mel.mesures_mensuelles.code_polluant IS 'polluant mesuré';


--
-- Name: COLUMN mesures_mensuelles.date_debut; Type: COMMENT; Schema: mel; Owner: -
--

COMMENT ON COLUMN mel.mesures_mensuelles.date_debut IS 'date de début de la mesure (1er jour du mois)';


--
-- Name: COLUMN mesures_mensuelles.valeur; Type: COMMENT; Schema: mel; Owner: -
--

COMMENT ON COLUMN mel.mesures_mensuelles.valeur IS 'valeur mesurée';


--
-- Name: polluants; Type: TABLE; Schema: mel; Owner: -
--

CREATE TABLE mel.polluants (
    code_polluant integer NOT NULL,
    nom_polluant text NOT NULL
);


--
-- Name: population; Type: TABLE; Schema: mel; Owner: -
--

CREATE TABLE mel.population (
    pop_mun integer,
    pop_apart integer,
    pop_totale integer,
    recensement integer NOT NULL,
    utilisation integer,
    insee character(5) NOT NULL
);


--
-- Name: COLUMN population.pop_mun; Type: COMMENT; Schema: mel; Owner: -
--

COMMENT ON COLUMN mel.population.pop_mun IS 'population municipale';


--
-- Name: COLUMN population.pop_apart; Type: COMMENT; Schema: mel; Owner: -
--

COMMENT ON COLUMN mel.population.pop_apart IS 'population comptée à part';


--
-- Name: COLUMN population.pop_totale; Type: COMMENT; Schema: mel; Owner: -
--

COMMENT ON COLUMN mel.population.pop_totale IS 'population totale';


--
-- Name: COLUMN population.recensement; Type: COMMENT; Schema: mel; Owner: -
--

COMMENT ON COLUMN mel.population.recensement IS 'année de recensement';


--
-- Name: COLUMN population.utilisation; Type: COMMENT; Schema: mel; Owner: -
--

COMMENT ON COLUMN mel.population.utilisation IS 'année d''utilisation du recensement';


--
-- Name: COLUMN population.insee; Type: COMMENT; Schema: mel; Owner: -
--

COMMENT ON COLUMN mel.population.insee IS 'code INSEE de la commune';


--
-- Name: stations; Type: TABLE; Schema: mel; Owner: -
--

CREATE TABLE mel.stations (
    code_station character(7) NOT NULL,
    nom_station text NOT NULL,
    insee character(5) NOT NULL,
    lon real,
    lat real,
    zone text
);


--
-- Name: COLUMN stations.insee; Type: COMMENT; Schema: mel; Owner: -
--

COMMENT ON COLUMN mel.stations.insee IS 'code insee de la commune';


--
-- Name: COLUMN stations.lon; Type: COMMENT; Schema: mel; Owner: -
--

COMMENT ON COLUMN mel.stations.lon IS 'longitude';


--
-- Name: COLUMN stations.lat; Type: COMMENT; Schema: mel; Owner: -
--

COMMENT ON COLUMN mel.stations.lat IS 'latitude';


--
-- Name: COLUMN stations.zone; Type: COMMENT; Schema: mel; Owner: -
--

COMMENT ON COLUMN mel.stations.zone IS 'type de zone';


--
-- Data for Name: communes; Type: TABLE DATA; Schema: mel; Owner: -
--

INSERT INTO mel.communes VALUES ('009', 'Villeneuve-d''Ascq', '59009', '245900410', 27.56);
INSERT INTO mel.communes VALUES ('013', 'Anstaing', '59013', '245900410', 2.30);
INSERT INTO mel.communes VALUES ('017', 'Armentières', '59017', '245900410', 6.23);
INSERT INTO mel.communes VALUES ('044', 'Baisieux', '59044', '245900410', 8.68);
INSERT INTO mel.communes VALUES ('051', 'La Bassée', '59051', '245900410', 3.56);
INSERT INTO mel.communes VALUES ('056', 'Beaucamps-Ligny', '59056', '245900410', 5.06);
INSERT INTO mel.communes VALUES ('090', 'Bondues', '59090', '245900410', 13.06);
INSERT INTO mel.communes VALUES ('098', 'Bousbecque', '59098', '245900410', 6.46);
INSERT INTO mel.communes VALUES ('106', 'Bouvines', '59106', '245900410', 2.73);
INSERT INTO mel.communes VALUES ('128', 'Capinghem', '59128', '245900410', 1.84);
INSERT INTO mel.communes VALUES ('143', 'La Chapelle-d''Armentières', '59143', '245900410', 10.74);
INSERT INTO mel.communes VALUES ('146', 'Chéreng', '59146', '245900410', 4.20);
INSERT INTO mel.communes VALUES ('152', 'Comines', '59152', '245900410', 16.07);
INSERT INTO mel.communes VALUES ('163', 'Croix', '59163', '245900410', 4.50);
INSERT INTO mel.communes VALUES ('173', 'Deûlémont', '59173', '245900410', 9.96);
INSERT INTO mel.communes VALUES ('193', 'Emmerin', '59193', '245900410', 4.99);
INSERT INTO mel.communes VALUES ('195', 'Englos', '59195', '245900410', 1.30);
INSERT INTO mel.communes VALUES ('196', 'Ennetières-en-Weppes', '59196', '245900410', 10.57);
INSERT INTO mel.communes VALUES ('201', 'Erquinghem-le-Sec', '59201', '245900410', 1.79);
INSERT INTO mel.communes VALUES ('202', 'Erquinghem-Lys', '59202', '245900410', 9.20);
INSERT INTO mel.communes VALUES ('208', 'Escobecques', '59208', '245900410', 1.84);
INSERT INTO mel.communes VALUES ('220', 'Faches-Thumesnil', '59220', '245900410', 4.60);
INSERT INTO mel.communes VALUES ('247', 'Forest-sur-Marque', '59247', '245900410', 1.05);
INSERT INTO mel.communes VALUES ('250', 'Fournes-en-Weppes', '59250', '245900410', 8.37);
INSERT INTO mel.communes VALUES ('252', 'Frelinghien', '59252', '245900410', 11.29);
INSERT INTO mel.communes VALUES ('256', 'Fretin', '59256', '245900410', 13.33);
INSERT INTO mel.communes VALUES ('275', 'Gruson', '59275', '245900410', 3.13);
INSERT INTO mel.communes VALUES ('278', 'Hallennes-lez-Haubourdin', '59278', '245900410', 4.43);
INSERT INTO mel.communes VALUES ('279', 'Halluin', '59279', '245900410', 12.67);
INSERT INTO mel.communes VALUES ('281', 'Hantay', '59281', '245900410', 2.12);
INSERT INTO mel.communes VALUES ('286', 'Haubourdin', '59286', '245900410', 5.48);
INSERT INTO mel.communes VALUES ('299', 'Hem', '59299', '245900410', 9.69);
INSERT INTO mel.communes VALUES ('303', 'Herlies', '59303', '245900410', 7.08);
INSERT INTO mel.communes VALUES ('316', 'Houplin-Ancoisne', '59316', '245900410', 6.49);
INSERT INTO mel.communes VALUES ('317', 'Houplines', '59317', '245900410', 11.41);
INSERT INTO mel.communes VALUES ('320', 'Illies', '59320', '245900410', 8.03);
INSERT INTO mel.communes VALUES ('328', 'Lambersart', '59328', '245900410', 6.07);
INSERT INTO mel.communes VALUES ('332', 'Lannoy', '59332', '245900410', 0.17);
INSERT INTO mel.communes VALUES ('339', 'Leers', '59339', '245900410', 5.50);
INSERT INTO mel.communes VALUES ('343', 'Lesquin', '59343', '245900410', 8.52);
INSERT INTO mel.communes VALUES ('346', 'Lezennes', '59346', '245900410', 2.14);
INSERT INTO mel.communes VALUES ('350', 'Lille', '59350', '245900410', 34.98);
INSERT INTO mel.communes VALUES ('352', 'Linselles', '59352', '245900410', 11.85);
INSERT INTO mel.communes VALUES ('356', 'Lompret', '59356', '245900410', 3.13);
INSERT INTO mel.communes VALUES ('360', 'Loos', '59360', '245900410', 6.90);
INSERT INTO mel.communes VALUES ('367', 'Lys-lez-Lannoy', '59367', '245900410', 3.26);
INSERT INTO mel.communes VALUES ('368', 'La Madeleine', '59368', '245900410', 2.69);
INSERT INTO mel.communes VALUES ('378', 'Marcq-en-Barœul', '59378', '245900410', 14.01);
INSERT INTO mel.communes VALUES ('386', 'Marquette-lez-Lille', '59386', '245900410', 4.81);
INSERT INTO mel.communes VALUES ('388', 'Marquillies', '59388', '245900410', 6.82);
INSERT INTO mel.communes VALUES ('410', 'Mons-en-Barœul', '59410', '245900410', 2.90);
INSERT INTO mel.communes VALUES ('421', 'Mouvaux', '59421', '245900410', 4.21);
INSERT INTO mel.communes VALUES ('426', 'Neuville-en-Ferrain', '59426', '245900410', 6.20);
INSERT INTO mel.communes VALUES ('437', 'Noyelles-lès-Seclin', '59437', '245900410', 2.42);
INSERT INTO mel.communes VALUES ('457', 'Pérenchies', '59457', '245900410', 3.05);
INSERT INTO mel.communes VALUES ('458', 'Péronne-en-Mélantois', '59458', '245900410', 1.15);
INSERT INTO mel.communes VALUES ('470', 'Prémesques', '59470', '245900410', 5.08);
INSERT INTO mel.communes VALUES ('482', 'Quesnoy-sur-Deûle', '59482', '245900410', 14.49);
INSERT INTO mel.communes VALUES ('507', 'Ronchin', '59507', '245900410', 5.48);
INSERT INTO mel.communes VALUES ('508', 'Roncq', '59508', '245900410', 10.65);
INSERT INTO mel.communes VALUES ('512', 'Roubaix', '59512', '245900410', 13.21);
INSERT INTO mel.communes VALUES ('522', 'Sailly-lez-Lannoy', '59522', '245900410', 4.46);
INSERT INTO mel.communes VALUES ('523', 'Sainghin-en-Mélantois', '59523', '245900410', 10.58);
INSERT INTO mel.communes VALUES ('524', 'Sainghin-en-Weppes', '59524', '245900410', 7.81);
INSERT INTO mel.communes VALUES ('527', 'Saint-André-lez-Lille', '59527', '245900410', 3.19);
INSERT INTO mel.communes VALUES ('550', 'Salomé', '59550', '245900410', 5.33);
INSERT INTO mel.communes VALUES ('553', 'Santes', '59553', '245900410', 7.52);
INSERT INTO mel.communes VALUES ('560', 'Seclin', '59560', '245900410', 17.44);
INSERT INTO mel.communes VALUES ('566', 'Sequedin', '59566', '245900410', 3.97);
INSERT INTO mel.communes VALUES ('585', 'Templemars', '59585', '245900410', 4.61);
INSERT INTO mel.communes VALUES ('598', 'Toufflers', '59598', '245900410', 2.43);
INSERT INTO mel.communes VALUES ('599', 'Tourcoing', '59599', '245900410', 15.19);
INSERT INTO mel.communes VALUES ('602', 'Tressin', '59602', '245900410', 1.91);
INSERT INTO mel.communes VALUES ('609', 'Vendeville', '59609', '245900410', 2.58);
INSERT INTO mel.communes VALUES ('611', 'Verlinghem', '59611', '245900410', 10.15);
INSERT INTO mel.communes VALUES ('636', 'Wambrechies', '59636', '245900410', 15.52);
INSERT INTO mel.communes VALUES ('643', 'Warneton', '59643', '245900410', 4.16);
INSERT INTO mel.communes VALUES ('646', 'Wasquehal', '59646', '245900410', 6.90);
INSERT INTO mel.communes VALUES ('648', 'Wattignies', '59648', '245900410', 6.30);
INSERT INTO mel.communes VALUES ('650', 'Wattrelos', '59650', '245900410', 13.57);
INSERT INTO mel.communes VALUES ('653', 'Wavrin', '59653', '245900410', 13.57);
INSERT INTO mel.communes VALUES ('656', 'Wervicq-Sud', '59656', '245900410', 5.03);
INSERT INTO mel.communes VALUES ('658', 'Wicres', '59658', '245900410', 2.79);
INSERT INTO mel.communes VALUES ('660', 'Willems', '59660', '245900410', 5.86);
INSERT INTO mel.communes VALUES ('670', 'Don', '59670', '245900410', 2.29);


--
-- Data for Name: mesures_mensuelles; Type: TABLE DATA; Schema: mel; Owner: -
--

INSERT INTO mel.mesures_mensuelles VALUES ('FR11007', 20, '2020-07-01', 0.09);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11007', 6001, '2020-03-01', 9);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11007', 6001, '2020-05-01', 9);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11007', 8, '2019-11-01', 33);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11007', 8, '2019-12-01', 30);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11007', 8, '2020-04-01', 18);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11016', 5, '2020-01-01', 18.7);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11016', 5, '2020-05-01', 24);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11025', 5, '2019-09-01', 12.3);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11025', 5, '2019-10-01', 14.1);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11025', 5, '2020-02-01', 14.8);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11025', 5, '2020-04-01', 24.4);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11025', 6001, '2019-09-01', 8);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11025', 7, '2019-09-01', 44);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11025', 7, '2019-12-01', 37);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11025', 7, '2020-03-01', 53);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11025', 7, '2020-04-01', 68);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11025', 8, '2019-12-01', 27);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11026', 7, '2019-11-01', 28);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11026', 7, '2020-01-01', 35);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11026', 7, '2020-04-01', 67);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11026', 7, '2020-06-01', 65);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11026', 8, '2019-10-01', 14);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11026', 8, '2020-07-01', 6);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11034', 5, '2019-11-01', 17.4);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11034', 6001, '2019-11-01', 12);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11034', 6001, '2019-12-01', 14);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11114', 7, '2019-11-01', 32);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11114', 7, '2020-03-01', 62);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11007', 20, '2020-06-01', 0.12);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11007', 6001, '2020-06-01', 6);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11007', 8, '2019-09-01', 24);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11007', 8, '2020-03-01', 18);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11007', 8, '2020-07-01', 13);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11016', 5, '2020-07-01', 13.9);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11025', 5, '2020-05-01', 17.9);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11025', 6001, '2019-12-01', 14);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11025', 6001, '2020-03-01', 13);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11025', 6001, '2020-07-01', 6);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11025', 7, '2019-08-01', 60);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11025', 8, '2020-07-01', 11);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11026', 7, '2019-08-01', 62);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11026', 7, '2020-02-01', 57);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11026', 8, '2019-08-01', 9);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11026', 8, '2019-11-01', 20);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11026', 8, '2020-03-01', 12);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11034', 5, '2020-01-01', 17.4);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11034', 5, '2020-03-01', 17);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11034', 6001, '2019-08-01', 10);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11034', 8, '2019-09-01', 23);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11034', 8, '2020-05-01', 18);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11114', 7, '2020-02-01', 62);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11114', 7, '2020-06-01', 67);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11007', 20, '2019-12-01', 0.59);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11007', 20, '2020-01-01', 0.55);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11007', 20, '2020-02-01', 0.28);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11007', 6001, '2019-12-01', 9);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11007', 6001, '2020-01-01', 10);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11007', 6001, '2020-04-01', 15);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11007', 8, '2019-08-01', 22);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11007', 8, '2019-10-01', 26);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11007', 8, '2020-05-01', 17);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11007', 8, '2020-06-01', 17);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11016', 5, '2019-10-01', 17);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11016', 5, '2019-12-01', 20.8);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11016', 5, '2020-02-01', 16.7);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11025', 5, '2019-11-01', 15.7);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11025', 5, '2019-12-01', 18.7);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11025', 5, '2020-01-01', 18.4);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11025', 5, '2020-07-01', 11.4);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11025', 6001, '2019-11-01', 13);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11025', 6001, '2020-01-01', 14);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11025', 7, '2020-07-01', 49);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11025', 8, '2020-02-01', 18);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11025', 8, '2020-03-01', 17);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11025', 8, '2020-05-01', 12);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11025', 8, '2020-06-01', 12);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11026', 8, '2019-09-01', 11);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11026', 8, '2020-01-01', 20);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11034', 5, '2019-09-01', 12.8);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11034', 6001, '2019-10-01', 9);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11034', 6001, '2020-03-01', 11);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11034', 8, '2019-11-01', 31);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11114', 7, '2019-12-01', 40);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11114', 7, '2020-07-01', 51);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11007', 20, '2019-08-01', 0.21);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11007', 20, '2019-09-01', 0.22);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11007', 20, '2019-10-01', 0.33);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11007', 6001, '2019-08-01', 7);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11007', 6001, '2019-11-01', 10);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11007', 6001, '2020-02-01', 5);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11007', 8, '2020-01-01', 29);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11007', 8, '2020-02-01', 17);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11016', 5, '2019-11-01', 16.1);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11025', 5, '2019-08-01', 15.6);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11025', 5, '2020-06-01', 14.6);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11025', 6001, '2019-10-01', 10);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11025', 6001, '2020-04-01', 20);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11025', 7, '2019-11-01', 27);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11025', 8, '2019-09-01', 18);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11025', 8, '2019-11-01', 26);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11026', 7, '2019-12-01', 30);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11026', 8, '2019-12-01', 22);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11026', 8, '2020-04-01', 14);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11034', 5, '2019-08-01', 17);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11034', 5, '2020-04-01', 25.2);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11034', 6001, '2020-02-01', 8);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11034', 6001, '2020-04-01', 15);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11034', 8, '2019-12-01', 30);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11034', 8, '2020-03-01', 25);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11034', 8, '2020-04-01', 21);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11034', 8, '2020-06-01', 20);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11114', 7, '2019-08-01', 66);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11114', 7, '2019-10-01', 40);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11114', 7, '2020-01-01', 46);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11114', 7, '2020-04-01', 73);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11114', 7, '2020-05-01', 75);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11007', 20, '2019-11-01', 0.57);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11007', 20, '2020-03-01', 0.35);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11007', 6001, '2019-09-01', 4);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11007', 6001, '2019-10-01', 7);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11007', 6001, '2020-07-01', 4);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11016', 5, '2019-09-01', 15.7);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11016', 5, '2020-06-01', 17.9);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11025', 5, '2020-03-01', 17.7);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11025', 6001, '2019-08-01', 11);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11025', 6001, '2020-02-01', 9);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11025', 6001, '2020-06-01', 10);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11025', 7, '2019-10-01', 33);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11025', 7, '2020-02-01', 52);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11025', 7, '2020-05-01', 69);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11025', 7, '2020-06-01', 64);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11025', 8, '2019-08-01', 14);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11025', 8, '2019-10-01', 21);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11025', 8, '2020-01-01', 28);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11025', 8, '2020-04-01', 13);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11026', 7, '2020-05-01', 70);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11026', 7, '2020-07-01', 50);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11026', 8, '2020-02-01', 12);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11026', 8, '2020-05-01', 10);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11026', 8, '2020-06-01', 9);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11034', 5, '2019-10-01', 14.3);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11034', 5, '2019-12-01', 19.3);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11034', 5, '2020-02-01', 15.4);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11034', 6001, '2020-01-01', 13);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11034', 8, '2019-08-01', 22);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11034', 8, '2019-10-01', 26);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11034', 8, '2020-01-01', 29);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11034', 8, '2020-07-01', 18);
INSERT INTO mel.mesures_mensuelles VALUES ('FR11114', 7, '2019-09-01', 51);


--
-- Data for Name: polluants; Type: TABLE DATA; Schema: mel; Owner: -
--

INSERT INTO mel.polluants VALUES (5, 'Particules PM10');
INSERT INTO mel.polluants VALUES (7, 'Ozone');
INSERT INTO mel.polluants VALUES (8, 'Dioxyde d''azote');
INSERT INTO mel.polluants VALUES (20, 'Benzène');
INSERT INTO mel.polluants VALUES (6001, 'Particules fines PM2.5');


--
-- Data for Name: population; Type: TABLE DATA; Schema: mel; Owner: -
--

INSERT INTO mel.population VALUES (3464, 36, 3500, 2012, 2015, '59316');
INSERT INTO mel.population VALUES (10280, 88, 10368, 2012, 2015, '59426');
INSERT INTO mel.population VALUES (8289, 59, 8348, 2012, 2015, '59457');
INSERT INTO mel.population VALUES (5005, 68, 5073, 2012, 2015, '59656');
INSERT INTO mel.population VALUES (424, 3, 427, 2013, 2016, '59658');
INSERT INTO mel.population VALUES (2183, 131, 2314, 2015, 2018, '59250');
INSERT INTO mel.population VALUES (8307, 44, 8351, 2015, 2018, '59457');
INSERT INTO mel.population VALUES (8570, 88, 8658, 2013, 2016, '59143');
INSERT INTO mel.population VALUES (895, 14, 909, 2013, 2016, '59458');
INSERT INTO mel.population VALUES (3216, 31, 3247, 2013, 2016, '59585');
INSERT INTO mel.population VALUES (14656, 121, 14777, 2014, 2017, '59286');
INSERT INTO mel.population VALUES (10308, 68, 10376, 2014, 2017, '59386');
INSERT INTO mel.population VALUES (2970, 15, 2985, 2014, 2017, '59550');
INSERT INTO mel.population VALUES (3931, 23, 3954, 2014, 2017, '59598');
INSERT INTO mel.population VALUES (2989, 48, 3037, 2012, 2015, '59146');
INSERT INTO mel.population VALUES (2972, 12, 2984, 2012, 2015, '59550');
INSERT INTO mel.population VALUES (1411, 51, 1462, 2012, 2015, '59602');
INSERT INTO mel.population VALUES (41633, 278, 41911, 2012, 2015, '59650');
INSERT INTO mel.population VALUES (590, 9, 599, 2016, 2019, '59201');
INSERT INTO mel.population VALUES (232440, 4342, 236782, 2016, 2019, '59350');
INSERT INTO mel.population VALUES (12463, 99, 12562, 2016, 2019, '59560');
INSERT INTO mel.population VALUES (7628, 75, 7703, 2016, 2019, '59653');
INSERT INTO mel.population VALUES (1673, 20, 1693, 2015, 2018, '59173');
INSERT INTO mel.population VALUES (5005, 39, 5044, 2015, 2018, '59202');
INSERT INTO mel.population VALUES (1987, 37, 2024, 2015, 2018, '59388');
INSERT INTO mel.population VALUES (2970, 25, 2995, 2015, 2018, '59550');
INSERT INTO mel.population VALUES (21533, 191, 21724, 2015, 2018, '59368');
INSERT INTO mel.population VALUES (10420, 70, 10490, 2015, 2018, '59386');
INSERT INTO mel.population VALUES (7249, 64, 7313, 2014, 2017, '59343');
INSERT INTO mel.population VALUES (2541, 55, 2596, 2014, 2017, '59523');
INSERT INTO mel.population VALUES (1204, 36, 1240, 2016, 2019, '59275');
INSERT INTO mel.population VALUES (14934, 120, 15054, 2016, 2019, '59286');
INSERT INTO mel.population VALUES (1684, 21, 1705, 2012, 2015, '59173');
INSERT INTO mel.population VALUES (2211, 16, 2227, 2012, 2015, '59470');
INSERT INTO mel.population VALUES (20990, 202, 21192, 2013, 2016, '59646');
INSERT INTO mel.population VALUES (3143, 24, 3167, 2016, 2019, '59346');
INSERT INTO mel.population VALUES (475, 7, 482, 2016, 2019, '59658');
INSERT INTO mel.population VALUES (9828, 186, 10014, 2012, 2015, '59090');
INSERT INTO mel.population VALUES (4734, 41, 4775, 2012, 2015, '59202');
INSERT INTO mel.population VALUES (3135, 25, 3160, 2012, 2015, '59346');
INSERT INTO mel.population VALUES (3170, 41, 3211, 2012, 2015, '59585');
INSERT INTO mel.population VALUES (1356, 15, 1371, 2013, 2016, '59670');
INSERT INTO mel.population VALUES (1409, 23, 1432, 2013, 2016, '59320');
INSERT INTO mel.population VALUES (13524, 152, 13676, 2013, 2016, '59508');
INSERT INTO mel.population VALUES (9854, 81, 9935, 2013, 2016, '59636');
INSERT INTO mel.population VALUES (1391, 23, 1414, 2014, 2017, '59320');
INSERT INTO mel.population VALUES (8328, 116, 8444, 2014, 2017, '59352');
INSERT INTO mel.population VALUES (1284, 12, 1296, 2015, 2018, '59281');
INSERT INTO mel.population VALUES (14804, 131, 14935, 2015, 2018, '59286');
INSERT INTO mel.population VALUES (2165, 22, 2187, 2015, 2018, '59470');
INSERT INTO mel.population VALUES (12336, 135, 12471, 2015, 2018, '59527');
INSERT INTO mel.population VALUES (12645, 100, 12745, 2015, 2018, '59560');
INSERT INTO mel.population VALUES (61920, 779, 62699, 2015, 2018, '59009');
INSERT INTO mel.population VALUES (857, 22, 879, 2015, 2018, '59056');
INSERT INTO mel.population VALUES (1469, 10, 1479, 2015, 2018, '59320');
INSERT INTO mel.population VALUES (10424, 72, 10496, 2016, 2019, '59386');
INSERT INTO mel.population VALUES (3014, 42, 3056, 2016, 2019, '59660');
INSERT INTO mel.population VALUES (1409, 23, 1432, 2012, 2015, '59320');
INSERT INTO mel.population VALUES (863, 17, 880, 2012, 2015, '59437');
INSERT INTO mel.population VALUES (3045, 27, 3072, 2012, 2015, '59660');
INSERT INTO mel.population VALUES (28491, 345, 28836, 2013, 2016, '59328');
INSERT INTO mel.population VALUES (3961, 22, 3983, 2013, 2016, '59598');
INSERT INTO mel.population VALUES (1375, 15, 1390, 2014, 2017, '59013');
INSERT INTO mel.population VALUES (25362, 384, 25746, 2014, 2017, '59017');
INSERT INTO mel.population VALUES (300, 8, 308, 2014, 2017, '59208');
INSERT INTO mel.population VALUES (6853, 85, 6938, 2014, 2017, '59482');
INSERT INTO mel.population VALUES (8432, 90, 8522, 2016, 2019, '59143');
INSERT INTO mel.population VALUES (5640, 60, 5700, 2016, 2019, '59524');
INSERT INTO mel.population VALUES (1302, 20, 1322, 2015, 2018, '59196');
INSERT INTO mel.population VALUES (41264, 228, 41492, 2015, 2018, '59650');
INSERT INTO mel.population VALUES (228652, 6532, 235184, 2012, 2015, '59350');
INSERT INTO mel.population VALUES (2974, 12, 2986, 2013, 2016, '59550');
INSERT INTO mel.population VALUES (93974, 663, 94637, 2013, 2016, '59599');
INSERT INTO mel.population VALUES (3189, 26, 3215, 2014, 2017, '59193');
INSERT INTO mel.population VALUES (3480, 38, 3518, 2013, 2016, '59316');
INSERT INTO mel.population VALUES (7870, 130, 8000, 2013, 2016, '59317');
INSERT INTO mel.population VALUES (2220, 16, 2236, 2013, 2016, '59470');
INSERT INTO mel.population VALUES (1692, 13, 1705, 2013, 2016, '59609');
INSERT INTO mel.population VALUES (13366, 156, 13522, 2012, 2015, '59508');
INSERT INTO mel.population VALUES (10162, 83, 10245, 2015, 2018, '59636');
INSERT INTO mel.population VALUES (691, 15, 706, 2016, 2019, '59106');
INSERT INTO mel.population VALUES (9546, 75, 9621, 2016, 2019, '59339');
INSERT INTO mel.population VALUES (3356, 26, 3382, 2016, 2019, '59585');
INSERT INTO mel.population VALUES (10308, 75, 10383, 2014, 2017, '59426');
INSERT INTO mel.population VALUES (5858, 77, 5935, 2014, 2017, '59553');
INSERT INTO mel.population VALUES (6565, 53, 6618, 2013, 2016, '59051');
INSERT INTO mel.population VALUES (12564, 86, 12650, 2013, 2016, '59152');
INSERT INTO mel.population VALUES (21114, 281, 21395, 2013, 2016, '59163');
INSERT INTO mel.population VALUES (9456, 67, 9523, 2013, 2016, '59339');
INSERT INTO mel.population VALUES (5584, 56, 5640, 2013, 2016, '59524');
INSERT INTO mel.population VALUES (696, 15, 711, 2015, 2018, '59106');
INSERT INTO mel.population VALUES (4692, 24, 4716, 2015, 2018, '59566');
INSERT INTO mel.population VALUES (25015, 358, 25373, 2016, 2019, '59017');
INSERT INTO mel.population VALUES (2216, 133, 2349, 2016, 2019, '59250');
INSERT INTO mel.population VALUES (539, 4, 543, 2012, 2015, '59201');
INSERT INTO mel.population VALUES (4314, 32, 4346, 2012, 2015, '59566');
INSERT INTO mel.population VALUES (62308, 817, 63125, 2012, 2015, '59009');
INSERT INTO mel.population VALUES (1459, 17, 1476, 2012, 2015, '59247');
INSERT INTO mel.population VALUES (7791, 132, 7923, 2012, 2015, '59317');
INSERT INTO mel.population VALUES (4750, 50, 4800, 2016, 2019, '59044');
INSERT INTO mel.population VALUES (2989, 43, 3032, 2016, 2019, '59146');
INSERT INTO mel.population VALUES (7840, 112, 7952, 2016, 2019, '59317');
INSERT INTO mel.population VALUES (7912, 69, 7981, 2016, 2019, '59343');
INSERT INTO mel.population VALUES (13340, 140, 13480, 2016, 2019, '59367');
INSERT INTO mel.population VALUES (1288, 21, 1309, 2014, 2017, '59196');
INSERT INTO mel.population VALUES (3365, 25, 3390, 2014, 2017, '59256');
INSERT INTO mel.population VALUES (3037, 43, 3080, 2014, 2017, '59660');
INSERT INTO mel.population VALUES (1465, 16, 1481, 2013, 2016, '59247');
INSERT INTO mel.population VALUES (22243, 252, 22495, 2013, 2016, '59368');
INSERT INTO mel.population VALUES (6915, 84, 6999, 2013, 2016, '59482');
INSERT INTO mel.population VALUES (18570, 113, 18683, 2013, 2016, '59507');
INSERT INTO mel.population VALUES (11533, 178, 11711, 2013, 2016, '59527');
INSERT INTO mel.population VALUES (4908, 45, 4953, 2015, 2018, '59098');
INSERT INTO mel.population VALUES (21239, 296, 21535, 2015, 2018, '59163');
INSERT INTO mel.population VALUES (7463, 66, 7529, 2015, 2018, '59343');
INSERT INTO mel.population VALUES (6802, 57, 6859, 2015, 2018, '59482');
INSERT INTO mel.population VALUES (2126, 120, 2246, 2012, 2015, '59250');
INSERT INTO mel.population VALUES (9400, 67, 9467, 2012, 2015, '59339');
INSERT INTO mel.population VALUES (10226, 80, 10306, 2012, 2015, '59386');
INSERT INTO mel.population VALUES (11246, 190, 11436, 2012, 2015, '59527');
INSERT INTO mel.population VALUES (6421, 55, 6476, 2016, 2019, '59051');
INSERT INTO mel.population VALUES (4249, 33, 4282, 2016, 2019, '59278');
INSERT INTO mel.population VALUES (20708, 149, 20857, 2016, 2019, '59279');
INSERT INTO mel.population VALUES (225, 2, 227, 2013, 2016, '59643');
INSERT INTO mel.population VALUES (2976, 50, 3026, 2014, 2017, '59146');
INSERT INTO mel.population VALUES (13428, 148, 13576, 2014, 2017, '59367');
INSERT INTO mel.population VALUES (300, 10, 310, 2015, 2018, '59208');
INSERT INTO mel.population VALUES (20993, 192, 21185, 2015, 2018, '59410');
INSERT INTO mel.population VALUES (18939, 118, 19057, 2015, 2018, '59507');
INSERT INTO mel.population VALUES (96077, 570, 96647, 2015, 2018, '59512');
INSERT INTO mel.population VALUES (5811, 56, 5867, 2015, 2018, '59553');
INSERT INTO mel.population VALUES (3318, 27, 3345, 2015, 2018, '59585');
INSERT INTO mel.population VALUES (4611, 38, 4649, 2013, 2016, '59044');
INSERT INTO mel.population VALUES (561, 8, 569, 2013, 2016, '59195');
INSERT INTO mel.population VALUES (39392, 933, 40325, 2013, 2016, '59378');
INSERT INTO mel.population VALUES (9497, 67, 9564, 2014, 2017, '59339');
INSERT INTO mel.population VALUES (22248, 225, 22473, 2014, 2017, '59368');
INSERT INTO mel.population VALUES (13534, 148, 13682, 2014, 2017, '59508');
INSERT INTO mel.population VALUES (1766, 8, 1774, 2015, 2018, '59332');
INSERT INTO mel.population VALUES (9620, 70, 9690, 2015, 2018, '59339');
INSERT INTO mel.population VALUES (8342, 104, 8446, 2015, 2018, '59352');
INSERT INTO mel.population VALUES (5641, 59, 5700, 2015, 2018, '59524');
INSERT INTO mel.population VALUES (20963, 252, 21215, 2015, 2018, '59646');
INSERT INTO mel.population VALUES (299, 10, 309, 2016, 2019, '59208');
INSERT INTO mel.population VALUES (3379, 25, 3404, 2016, 2019, '59256');
INSERT INTO mel.population VALUES (18914, 178, 19092, 2016, 2019, '59299');
INSERT INTO mel.population VALUES (1546, 10, 1556, 2016, 2019, '59320');
INSERT INTO mel.population VALUES (22076, 363, 22439, 2016, 2019, '59360');
INSERT INTO mel.population VALUES (8366, 43, 8409, 2016, 2019, '59457');
INSERT INTO mel.population VALUES (1670, 27, 1697, 2012, 2015, '59128');
INSERT INTO mel.population VALUES (1146, 46, 1192, 2012, 2015, '59275');
INSERT INTO mel.population VALUES (2300, 55, 2355, 2012, 2015, '59356');
INSERT INTO mel.population VALUES (9665, 119, 9784, 2012, 2015, '59636');
INSERT INTO mel.population VALUES (8390, 86, 8476, 2012, 2015, '59143');
INSERT INTO mel.population VALUES (2225, 39, 2264, 2012, 2015, '59303');
INSERT INTO mel.population VALUES (94536, 646, 95182, 2012, 2015, '59512');
INSERT INTO mel.population VALUES (17497, 122, 17619, 2013, 2016, '59220');
INSERT INTO mel.population VALUES (20915, 184, 21099, 2013, 2016, '59279');
INSERT INTO mel.population VALUES (10294, 87, 10381, 2013, 2016, '59426');
INSERT INTO mel.population VALUES (2303, 48, 2351, 2013, 2016, '59611');
INSERT INTO mel.population VALUES (4735, 51, 4786, 2015, 2018, '59044');
INSERT INTO mel.population VALUES (2420, 24, 2444, 2015, 2018, '59252');
INSERT INTO mel.population VALUES (2378, 27, 2405, 2015, 2018, '59303');
INSERT INTO mel.population VALUES (3117, 29, 3146, 2015, 2018, '59346');
INSERT INTO mel.population VALUES (13128, 196, 13324, 2015, 2018, '59421');
INSERT INTO mel.population VALUES (96809, 634, 97443, 2015, 2018, '59599');
INSERT INTO mel.population VALUES (8356, 99, 8455, 2016, 2019, '59352');
INSERT INTO mel.population VALUES (12293, 136, 12429, 2016, 2019, '59527');
INSERT INTO mel.population VALUES (10539, 87, 10626, 2016, 2019, '59636');
INSERT INTO mel.population VALUES (566, 10, 576, 2014, 2017, '59201');
INSERT INTO mel.population VALUES (866, 13, 879, 2014, 2017, '59437');
INSERT INTO mel.population VALUES (12016, 148, 12164, 2014, 2017, '59527');
INSERT INTO mel.population VALUES (95329, 636, 95965, 2014, 2017, '59599');
INSERT INTO mel.population VALUES (3173, 26, 3199, 2015, 2018, '59193');
INSERT INTO mel.population VALUES (2445, 56, 2501, 2016, 2019, '59611');
INSERT INTO mel.population VALUES (25978, 398, 26376, 2013, 2016, '59017');
INSERT INTO mel.population VALUES (1778, 9, 1787, 2014, 2017, '59332');
INSERT INTO mel.population VALUES (233897, 4484, 238381, 2014, 2017, '59350');
INSERT INTO mel.population VALUES (3267, 30, 3297, 2014, 2017, '59585');
INSERT INTO mel.population VALUES (301, 8, 309, 2012, 2015, '59208');
INSERT INTO mel.population VALUES (39600, 895, 40495, 2012, 2015, '59378');
INSERT INTO mel.population VALUES (1991, 37, 2028, 2012, 2015, '59388');
INSERT INTO mel.population VALUES (12787, 101, 12888, 2012, 2015, '59152');
INSERT INTO mel.population VALUES (13628, 235, 13863, 2012, 2015, '59421');
INSERT INTO mel.population VALUES (6969, 85, 7054, 2012, 2015, '59482');
INSERT INTO mel.population VALUES (3990, 27, 4017, 2012, 2015, '59598');
INSERT INTO mel.population VALUES (903, 13, 916, 2016, 2019, '59458');
INSERT INTO mel.population VALUES (2687, 25, 2712, 2016, 2019, '59523');
INSERT INTO mel.population VALUES (6517, 60, 6577, 2014, 2017, '59051');
INSERT INTO mel.population VALUES (906, 14, 920, 2014, 2017, '59458');
INSERT INTO mel.population VALUES (5614, 57, 5671, 2014, 2017, '59524');
INSERT INTO mel.population VALUES (2353, 50, 2403, 2014, 2017, '59611');
INSERT INTO mel.population VALUES (3205, 25, 3230, 2013, 2016, '59193');
INSERT INTO mel.population VALUES (62616, 847, 63463, 2013, 2016, '59009');
INSERT INTO mel.population VALUES (1322, 15, 1337, 2015, 2018, '59670');
INSERT INTO mel.population VALUES (3470, 35, 3505, 2015, 2018, '59316');
INSERT INTO mel.population VALUES (39298, 910, 40208, 2015, 2018, '59378');
INSERT INTO mel.population VALUES (2424, 29, 2453, 2016, 2019, '59128');
INSERT INTO mel.population VALUES (17591, 128, 17719, 2016, 2019, '59220');
INSERT INTO mel.population VALUES (2408, 27, 2435, 2016, 2019, '59303');
INSERT INTO mel.population VALUES (13437, 142, 13579, 2013, 2016, '59367');
INSERT INTO mel.population VALUES (1989, 37, 2026, 2013, 2016, '59388');
INSERT INTO mel.population VALUES (14179, 167, 14346, 2013, 2016, '59648');
INSERT INTO mel.population VALUES (2164, 130, 2294, 2014, 2017, '59250');
INSERT INTO mel.population VALUES (20748, 175, 20923, 2014, 2017, '59279');
INSERT INTO mel.population VALUES (1781, 10, 1791, 2012, 2015, '59332');
INSERT INTO mel.population VALUES (13317, 126, 13443, 2012, 2015, '59367');
INSERT INTO mel.population VALUES (18398, 118, 18516, 2012, 2015, '59507');
INSERT INTO mel.population VALUES (224, 2, 226, 2012, 2015, '59643');
INSERT INTO mel.population VALUES (1453, 17, 1470, 2014, 2017, '59247');
INSERT INTO mel.population VALUES (230, 2, 232, 2014, 2017, '59643');
INSERT INTO mel.population VALUES (13326, 200, 13526, 2016, 2019, '59421');
INSERT INTO mel.population VALUES (13475, 105, 13580, 2016, 2019, '59508');
INSERT INTO mel.population VALUES (5768, 53, 5821, 2016, 2019, '59553');
INSERT INTO mel.population VALUES (6469, 57, 6526, 2015, 2018, '59051');
INSERT INTO mel.population VALUES (27517, 402, 27919, 2015, 2018, '59328');
INSERT INTO mel.population VALUES (1339, 14, 1353, 2012, 2015, '59013');
INSERT INTO mel.population VALUES (3975, 31, 4006, 2012, 2015, '59278');
INSERT INTO mel.population VALUES (1148, 16, 1164, 2012, 2015, '59281');
INSERT INTO mel.population VALUES (14498, 125, 14623, 2012, 2015, '59286');
INSERT INTO mel.population VALUES (22520, 277, 22797, 2012, 2015, '59368');
INSERT INTO mel.population VALUES (20536, 242, 20778, 2012, 2015, '59646');
INSERT INTO mel.population VALUES (3353, 26, 3379, 2013, 2016, '59256');
INSERT INTO mel.population VALUES (1145, 34, 1179, 2013, 2016, '59275');
INSERT INTO mel.population VALUES (18721, 180, 18901, 2013, 2016, '59299');
INSERT INTO mel.population VALUES (17381, 105, 17486, 2015, 2018, '59220');
INSERT INTO mel.population VALUES (4144, 31, 4175, 2015, 2018, '59278');
INSERT INTO mel.population VALUES (20662, 160, 20822, 2015, 2018, '59279');
INSERT INTO mel.population VALUES (21442, 332, 21774, 2015, 2018, '59360');
INSERT INTO mel.population VALUES (2976, 51, 3027, 2013, 2016, '59146');
INSERT INTO mel.population VALUES (1275, 13, 1288, 2013, 2016, '59196');
INSERT INTO mel.population VALUES (302, 8, 310, 2013, 2016, '59208');
INSERT INTO mel.population VALUES (2419, 22, 2441, 2013, 2016, '59252');
INSERT INTO mel.population VALUES (1704, 37, 1741, 2013, 2016, '59522');
INSERT INTO mel.population VALUES (9952, 174, 10126, 2014, 2017, '59090');
INSERT INTO mel.population VALUES (3492, 39, 3531, 2014, 2017, '59316');
INSERT INTO mel.population VALUES (21231, 174, 21405, 2014, 2017, '59410');
INSERT INTO mel.population VALUES (1679, 13, 1692, 2014, 2017, '59609');
INSERT INTO mel.population VALUES (6413, 53, 6466, 2012, 2015, '59051');
INSERT INTO mel.population VALUES (857, 22, 879, 2016, 2019, '59056');
INSERT INTO mel.population VALUES (12369, 99, 12468, 2016, 2019, '59152');
INSERT INTO mel.population VALUES (14485, 180, 14665, 2016, 2019, '59648');
INSERT INTO mel.population VALUES (4571, 38, 4609, 2012, 2015, '59044');
INSERT INTO mel.population VALUES (4706, 47, 4753, 2012, 2015, '59098');
INSERT INTO mel.population VALUES (2438, 23, 2461, 2012, 2015, '59252');
INSERT INTO mel.population VALUES (18374, 169, 18543, 2012, 2015, '59299');
INSERT INTO mel.population VALUES (6969, 62, 7031, 2013, 2016, '59343');
INSERT INTO mel.population VALUES (21513, 176, 21689, 2013, 2016, '59410');
INSERT INTO mel.population VALUES (1430, 53, 1483, 2013, 2016, '59602');
INSERT INTO mel.population VALUES (858, 32, 890, 2014, 2017, '59056');
INSERT INTO mel.population VALUES (4841, 44, 4885, 2014, 2017, '59098');
INSERT INTO mel.population VALUES (1239, 14, 1253, 2014, 2017, '59281');
INSERT INTO mel.population VALUES (14190, 166, 14356, 2014, 2017, '59648');
INSERT INTO mel.population VALUES (13596, 143, 13739, 2015, 2018, '59367');
INSERT INTO mel.population VALUES (1415, 35, 1450, 2015, 2018, '59602');
INSERT INTO mel.population VALUES (234, 2, 236, 2015, 2018, '59643');
INSERT INTO mel.population VALUES (3025, 42, 3067, 2015, 2018, '59660');
INSERT INTO mel.population VALUES (1303, 12, 1315, 2016, 2019, '59281');
INSERT INTO mel.population VALUES (1752, 7, 1759, 2016, 2019, '59332');
INSERT INTO mel.population VALUES (1680, 20, 1700, 2016, 2019, '59173');
INSERT INTO mel.population VALUES (2402, 24, 2426, 2016, 2019, '59252');
INSERT INTO mel.population VALUES (562, 7, 569, 2012, 2015, '59195');
INSERT INTO mel.population VALUES (3340, 24, 3364, 2012, 2015, '59256');
INSERT INTO mel.population VALUES (6690, 60, 6750, 2012, 2015, '59343');
INSERT INTO mel.population VALUES (13657, 138, 13795, 2015, 2018, '59508');
INSERT INTO mel.population VALUES (5414, 51, 5465, 2015, 2018, '59656');
INSERT INTO mel.population VALUES (9904, 195, 10099, 2013, 2016, '59090');
INSERT INTO mel.population VALUES (2145, 125, 2270, 2013, 2016, '59250');
INSERT INTO mel.population VALUES (95866, 664, 96530, 2013, 2016, '59512');
INSERT INTO mel.population VALUES (4040, 28, 4068, 2014, 2017, '59278');
INSERT INTO mel.population VALUES (2310, 55, 2365, 2014, 2017, '59356');
INSERT INTO mel.population VALUES (20720, 310, 21030, 2014, 2017, '59360');
INSERT INTO mel.population VALUES (884, 14, 898, 2012, 2015, '59458');
INSERT INTO mel.population VALUES (2524, 53, 2577, 2012, 2015, '59523');
INSERT INTO mel.population VALUES (1780, 9, 1789, 2013, 2016, '59332');
INSERT INTO mel.population VALUES (3173, 24, 3197, 2013, 2016, '59346');
INSERT INTO mel.population VALUES (20650, 511, 21161, 2013, 2016, '59360');
INSERT INTO mel.population VALUES (8275, 60, 8335, 2013, 2016, '59457');
INSERT INTO mel.population VALUES (2531, 54, 2585, 2013, 2016, '59523');
INSERT INTO mel.population VALUES (5698, 75, 5773, 2013, 2016, '59553');
INSERT INTO mel.population VALUES (7644, 69, 7713, 2013, 2016, '59653');
INSERT INTO mel.population VALUES (12326, 73, 12399, 2014, 2017, '59152');
INSERT INTO mel.population VALUES (1338, 16, 1354, 2014, 2017, '59670');
INSERT INTO mel.population VALUES (1144, 34, 1178, 2014, 2017, '59275');
INSERT INTO mel.population VALUES (3136, 25, 3161, 2014, 2017, '59346');
INSERT INTO mel.population VALUES (1692, 36, 1728, 2014, 2017, '59522');
INSERT INTO mel.population VALUES (2301, 53, 2354, 2016, 2019, '59356');
INSERT INTO mel.population VALUES (38805, 892, 39697, 2016, 2019, '59378');
INSERT INTO mel.population VALUES (20855, 191, 21046, 2016, 2019, '59410');
INSERT INTO mel.population VALUES (879, 13, 892, 2016, 2019, '59437');
INSERT INTO mel.population VALUES (1627, 23, 1650, 2016, 2019, '59609');
INSERT INTO mel.population VALUES (20722, 261, 20983, 2016, 2019, '59646');
INSERT INTO mel.population VALUES (1404, 14, 1418, 2015, 2018, '59013');
INSERT INTO mel.population VALUES (8459, 92, 8551, 2015, 2018, '59143');
INSERT INTO mel.population VALUES (2988, 50, 3038, 2015, 2018, '59146');
INSERT INTO mel.population VALUES (19010, 196, 19206, 2015, 2018, '59299');
INSERT INTO mel.population VALUES (2138, 22, 2160, 2016, 2019, '59470');
INSERT INTO mel.population VALUES (62358, 727, 63085, 2016, 2019, '59009');
INSERT INTO mel.population VALUES (8485, 94, 8579, 2014, 2017, '59143');
INSERT INTO mel.population VALUES (13118, 212, 13330, 2014, 2017, '59421');
INSERT INTO mel.population VALUES (1347, 15, 1362, 2013, 2016, '59013');
INSERT INTO mel.population VALUES (1695, 27, 1722, 2013, 2016, '59128');
INSERT INTO mel.population VALUES (14560, 124, 14684, 2013, 2016, '59286');
INSERT INTO mel.population VALUES (877, 34, 911, 2012, 2015, '59056');
INSERT INTO mel.population VALUES (8104, 115, 8219, 2012, 2015, '59352');
INSERT INTO mel.population VALUES (2330, 51, 2381, 2012, 2015, '59611');
INSERT INTO mel.population VALUES (1437, 17, 1454, 2015, 2018, '59247');
INSERT INTO mel.population VALUES (1143, 34, 1177, 2015, 2018, '59275');
INSERT INTO mel.population VALUES (903, 14, 917, 2015, 2018, '59458');
INSERT INTO mel.population VALUES (1696, 36, 1732, 2015, 2018, '59522');
INSERT INTO mel.population VALUES (451, 3, 454, 2015, 2018, '59658');
INSERT INTO mel.population VALUES (19114, 183, 19297, 2014, 2017, '59299');
INSERT INTO mel.population VALUES (1979, 37, 2016, 2014, 2017, '59388');
INSERT INTO mel.population VALUES (10008, 83, 10091, 2014, 2017, '59636');
INSERT INTO mel.population VALUES (7661, 77, 7738, 2014, 2017, '59653');
INSERT INTO mel.population VALUES (9999, 176, 10175, 2015, 2018, '59090');
INSERT INTO mel.population VALUES (10046, 179, 10225, 2016, 2019, '59090');
INSERT INTO mel.population VALUES (1986, 25, 2011, 2016, 2019, '59388');
INSERT INTO mel.population VALUES (1407, 33, 1440, 2016, 2019, '59602');
INSERT INTO mel.population VALUES (701, 17, 718, 2013, 2016, '59106');
INSERT INTO mel.population VALUES (8192, 114, 8306, 2013, 2016, '59352');
INSERT INTO mel.population VALUES (13309, 231, 13540, 2013, 2016, '59421');
INSERT INTO mel.population VALUES (41522, 273, 41795, 2013, 2016, '59650');
INSERT INTO mel.population VALUES (1372, 14, 1386, 2012, 2015, '59670');
INSERT INTO mel.population VALUES (3210, 34, 3244, 2012, 2015, '59193');
INSERT INTO mel.population VALUES (1260, 12, 1272, 2012, 2015, '59196');
INSERT INTO mel.population VALUES (4700, 25, 4725, 2016, 2019, '59566');
INSERT INTO mel.population VALUES (4720, 42, 4762, 2014, 2017, '59044');
INSERT INTO mel.population VALUES (2073, 31, 2104, 2014, 2017, '59128');
INSERT INTO mel.population VALUES (7891, 130, 8021, 2014, 2017, '59317');
INSERT INTO mel.population VALUES (12557, 111, 12668, 2014, 2017, '59560');
INSERT INTO mel.population VALUES (62869, 863, 63732, 2014, 2017, '59009');
INSERT INTO mel.population VALUES (21343, 240, 21583, 2014, 2017, '59646');
INSERT INTO mel.population VALUES (17476, 146, 17622, 2012, 2015, '59220');
INSERT INTO mel.population VALUES (1673, 13, 1686, 2012, 2015, '59609');
INSERT INTO mel.population VALUES (3377, 25, 3402, 2015, 2018, '59256');
INSERT INTO mel.population VALUES (1432, 14, 1446, 2016, 2019, '59013');
INSERT INTO mel.population VALUES (21271, 296, 21567, 2016, 2019, '59163');
INSERT INTO mel.population VALUES (3923, 21, 3944, 2016, 2019, '59598');
INSERT INTO mel.population VALUES (97476, 694, 98170, 2016, 2019, '59599');
INSERT INTO mel.population VALUES (41341, 229, 41570, 2016, 2019, '59650');
INSERT INTO mel.population VALUES (20770, 182, 20952, 2012, 2015, '59279');
INSERT INTO mel.population VALUES (21176, 516, 21692, 2012, 2015, '59360');
INSERT INTO mel.population VALUES (2349, 25, 2374, 2014, 2017, '59303');
INSERT INTO mel.population VALUES (2193, 24, 2217, 2014, 2017, '59470');
INSERT INTO mel.population VALUES (95600, 596, 96196, 2014, 2017, '59512');
INSERT INTO mel.population VALUES (1422, 36, 1458, 2014, 2017, '59602');
INSERT INTO mel.population VALUES (5278, 48, 5326, 2014, 2017, '59656');
INSERT INTO mel.population VALUES (4773, 41, 4814, 2013, 2016, '59202');
INSERT INTO mel.population VALUES (1193, 13, 1206, 2013, 2016, '59281');
INSERT INTO mel.population VALUES (25066, 379, 25445, 2015, 2018, '59017');
INSERT INTO mel.population VALUES (7888, 136, 8024, 2015, 2018, '59317');
INSERT INTO mel.population VALUES (2430, 53, 2483, 2015, 2018, '59611');
INSERT INTO mel.population VALUES (41337, 243, 41580, 2014, 2017, '59650');
INSERT INTO mel.population VALUES (1447, 19, 1466, 2016, 2019, '59247');
INSERT INTO mel.population VALUES (10371, 68, 10439, 2016, 2019, '59426');
INSERT INTO mel.population VALUES (1773, 34, 1807, 2016, 2019, '59522');
INSERT INTO mel.population VALUES (580, 10, 590, 2015, 2018, '59201');
INSERT INTO mel.population VALUES (2315, 54, 2369, 2015, 2018, '59356');
INSERT INTO mel.population VALUES (872, 13, 885, 2015, 2018, '59437');
INSERT INTO mel.population VALUES (2615, 25, 2640, 2015, 2018, '59523');
INSERT INTO mel.population VALUES (7656, 77, 7733, 2015, 2018, '59653');
INSERT INTO mel.population VALUES (1682, 20, 1702, 2014, 2017, '59173');
INSERT INTO mel.population VALUES (4928, 43, 4971, 2014, 2017, '59202');
INSERT INTO mel.population VALUES (2400, 23, 2423, 2014, 2017, '59252');
INSERT INTO mel.population VALUES (28128, 389, 28517, 2014, 2017, '59328');
INSERT INTO mel.population VALUES (39291, 955, 40246, 2014, 2017, '59378');
INSERT INTO mel.population VALUES (4567, 26, 4593, 2014, 2017, '59566');
INSERT INTO mel.population VALUES (703, 21, 724, 2012, 2015, '59106');
INSERT INTO mel.population VALUES (5697, 77, 5774, 2012, 2015, '59553');
INSERT INTO mel.population VALUES (12479, 149, 12628, 2012, 2015, '59560');
INSERT INTO mel.population VALUES (866, 34, 900, 2013, 2016, '59056');
INSERT INTO mel.population VALUES (10196, 69, 10265, 2013, 2016, '59386');
INSERT INTO mel.population VALUES (4443, 26, 4469, 2013, 2016, '59566');
INSERT INTO mel.population VALUES (1307, 14, 1321, 2016, 2019, '59670');
INSERT INTO mel.population VALUES (27618, 409, 28027, 2016, 2019, '59328');
INSERT INTO mel.population VALUES (6780, 58, 6838, 2016, 2019, '59482');
INSERT INTO mel.population VALUES (19074, 132, 19206, 2016, 2019, '59507');
INSERT INTO mel.population VALUES (239, 2, 241, 2016, 2019, '59643');
INSERT INTO mel.population VALUES (17455, 110, 17565, 2014, 2017, '59220');
INSERT INTO mel.population VALUES (8251, 58, 8309, 2014, 2017, '59457');
INSERT INTO mel.population VALUES (18676, 115, 18791, 2014, 2017, '59507');
INSERT INTO mel.population VALUES (25993, 412, 26405, 2012, 2015, '59017');
INSERT INTO mel.population VALUES (13376, 175, 13551, 2012, 2015, '59648');
INSERT INTO mel.population VALUES (231491, 6512, 238003, 2013, 2016, '59350');
INSERT INTO mel.population VALUES (859, 18, 877, 2013, 2016, '59437');
INSERT INTO mel.population VALUES (3048, 29, 3077, 2013, 2016, '59660');
INSERT INTO mel.population VALUES (2354, 22, 2376, 2015, 2018, '59128');
INSERT INTO mel.population VALUES (3902, 21, 3923, 2015, 2018, '59598');
INSERT INTO mel.population VALUES (20927, 293, 21220, 2014, 2017, '59163');
INSERT INTO mel.population VALUES (1685, 20, 1705, 2013, 2016, '59173');
INSERT INTO mel.population VALUES (2319, 40, 2359, 2013, 2016, '59303');
INSERT INTO mel.population VALUES (2305, 55, 2360, 2013, 2016, '59356');
INSERT INTO mel.population VALUES (28435, 347, 28782, 2012, 2015, '59328');
INSERT INTO mel.population VALUES (21272, 167, 21439, 2012, 2015, '59410');
INSERT INTO mel.population VALUES (10434, 67, 10501, 2015, 2018, '59426');
INSERT INTO mel.population VALUES (1649, 13, 1662, 2015, 2018, '59609');
INSERT INTO mel.population VALUES (5081, 40, 5121, 2016, 2019, '59202');
INSERT INTO mel.population VALUES (3439, 43, 3482, 2016, 2019, '59316');
INSERT INTO mel.population VALUES (12420, 71, 12491, 2015, 2018, '59152');
INSERT INTO mel.population VALUES (433, 3, 436, 2014, 2017, '59658');
INSERT INTO mel.population VALUES (4833, 47, 4880, 2016, 2019, '59098');
INSERT INTO mel.population VALUES (606, 10, 616, 2016, 2019, '59195');
INSERT INTO mel.population VALUES (21253, 196, 21449, 2016, 2019, '59368');
INSERT INTO mel.population VALUES (96412, 541, 96953, 2016, 2019, '59512');
INSERT INTO mel.population VALUES (5412, 49, 5461, 2016, 2019, '59656');
INSERT INTO mel.population VALUES (4773, 44, 4817, 2013, 2016, '59098');
INSERT INTO mel.population VALUES (553, 10, 563, 2013, 2016, '59201');
INSERT INTO mel.population VALUES (3935, 31, 3966, 2013, 2016, '59278');
INSERT INTO mel.population VALUES (12571, 129, 12700, 2013, 2016, '59560');
INSERT INTO mel.population VALUES (5554, 55, 5609, 2012, 2015, '59524');
INSERT INTO mel.population VALUES (92707, 703, 93410, 2012, 2015, '59599');
INSERT INTO mel.population VALUES (7626, 66, 7692, 2012, 2015, '59653');
INSERT INTO mel.population VALUES (1316, 20, 1336, 2016, 2019, '59196');
INSERT INTO mel.population VALUES (602, 8, 610, 2015, 2018, '59195');
INSERT INTO mel.population VALUES (232741, 4338, 237079, 2015, 2018, '59350');
INSERT INTO mel.population VALUES (14295, 172, 14467, 2015, 2018, '59648');
INSERT INTO mel.population VALUES (20664, 293, 20957, 2012, 2015, '59163');
INSERT INTO mel.population VALUES (1728, 38, 1766, 2012, 2015, '59522');
INSERT INTO mel.population VALUES (410, 3, 413, 2012, 2015, '59658');
INSERT INTO mel.population VALUES (698, 16, 714, 2014, 2017, '59106');
INSERT INTO mel.population VALUES (603, 8, 611, 2014, 2017, '59195');
INSERT INTO mel.population VALUES (3174, 27, 3201, 2016, 2019, '59193');
INSERT INTO mel.population VALUES (2969, 24, 2993, 2016, 2019, '59550');
INSERT INTO mel.population VALUES (5141, 48, 5189, 2013, 2016, '59656');


--
-- Data for Name: stations; Type: TABLE DATA; Schema: mel; Owner: -
--

INSERT INTO mel.stations VALUES ('FR11007', 'Lille Leeds', '59350', 3.07477, 50.6408, 'urban');
INSERT INTO mel.stations VALUES ('FR11016', 'Marcq CTM', '59378', 3.07656, 50.67, 'urban');
INSERT INTO mel.stations VALUES ('FR11025', 'Lille Fives', '59350', 3.09031, 50.6281, 'urban');
INSERT INTO mel.stations VALUES ('FR11026', 'Halluin stade', '59279', 3.12568, 50.7755, 'suburban');
INSERT INTO mel.stations VALUES ('FR11034', 'Roubaix Serres', '59512', 3.18066, 50.7065, 'urban');
INSERT INTO mel.stations VALUES ('FR11114', 'Wattignies', '59648', 3.04946, 50.5977, 'suburban');


--
-- Name: communes communes_pkey; Type: CONSTRAINT; Schema: mel; Owner: -
--

ALTER TABLE ONLY mel.communes
    ADD CONSTRAINT communes_pkey PRIMARY KEY (insee);


--
-- Name: mesures_mensuelles mesures_mensuelles_pkey; Type: CONSTRAINT; Schema: mel; Owner: -
--

ALTER TABLE ONLY mel.mesures_mensuelles
    ADD CONSTRAINT mesures_mensuelles_pkey PRIMARY KEY (code_station, code_polluant, date_debut);


--
-- Name: polluants polluants_pkey; Type: CONSTRAINT; Schema: mel; Owner: -
--

ALTER TABLE ONLY mel.polluants
    ADD CONSTRAINT polluants_pkey PRIMARY KEY (code_polluant);


--
-- Name: population population_pkey; Type: CONSTRAINT; Schema: mel; Owner: -
--

ALTER TABLE ONLY mel.population
    ADD CONSTRAINT population_pkey PRIMARY KEY (insee, recensement);


--
-- Name: stations stations_pkey; Type: CONSTRAINT; Schema: mel; Owner: -
--

ALTER TABLE ONLY mel.stations
    ADD CONSTRAINT stations_pkey PRIMARY KEY (code_station);


--
-- Name: mesures_mensuelles mesures_mensuelles_code_polluant_fkey; Type: FK CONSTRAINT; Schema: mel; Owner: -
--

ALTER TABLE ONLY mel.mesures_mensuelles
    ADD CONSTRAINT mesures_mensuelles_code_polluant_fkey FOREIGN KEY (code_polluant) REFERENCES mel.polluants(code_polluant);


--
-- Name: mesures_mensuelles mesures_mensuelles_code_station_fkey; Type: FK CONSTRAINT; Schema: mel; Owner: -
--

ALTER TABLE ONLY mel.mesures_mensuelles
    ADD CONSTRAINT mesures_mensuelles_code_station_fkey FOREIGN KEY (code_station) REFERENCES mel.stations(code_station);


--
-- Name: population population_insee_fkey; Type: FK CONSTRAINT; Schema: mel; Owner: -
--

ALTER TABLE ONLY mel.population
    ADD CONSTRAINT population_insee_fkey FOREIGN KEY (insee) REFERENCES mel.communes(insee);


--
-- Name: stations stations_insee_fkey; Type: FK CONSTRAINT; Schema: mel; Owner: -
--

ALTER TABLE ONLY mel.stations
    ADD CONSTRAINT stations_insee_fkey FOREIGN KEY (insee) REFERENCES mel.communes(insee);


--
-- PostgreSQL database dump complete
--


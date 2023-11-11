--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0
-- Dumped by pg_dump version 16.0

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
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    data_cadastro character varying(255),
    titulo character varying(255) DEFAULT NULL::character varying,
    categoria character varying(255) DEFAULT NULL::character varying,
    descricao text,
    status character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, data_cadastro, titulo, categoria, descricao, status) FROM stdin;
7	2019/48/13	Ciaran Chapman	corporativo	#ECommerce, #Robótica, #TecnologiaEducacional,	inactive
8	2020/54/22	Azalia Spencer	corporativo	#Blockchain, #Criptomoedas, #InternetDasCoisas,	active
9	2019/54/14	Abel Hernandez	Individual	#CloudComputing, #Blockchain, #Criptomoedas,	inactive
10	2022/11/5	Lynn Black	corporativo	#Blockchain, #Criptomoedas, #InternetDasCoisas,	active
11	2019/14/6	Christine Tran	corporativo	#TecnologiaEducacional, #TecnologiaEmSaúde 	inactive
12	2021/27/21	Hiram Ramirez	Individual	#InteligênciaArtificial, #BigData, #AnáliseDeDados,	inactive
13	2019/43/10	Gabriel Gilbert	Individual	#InternetDasCoisas, #DesenvolvimentoDeHardware, #RealidadeVirtual,	active
14	2019/26/20	Cleo Hansen	Individual	#Robótica, #TecnologiaEducacional, #TecnologiaEmSaúde	active
15	2019/29/2	Phoebe Lynch	Individual	#Robótica, #TecnologiaEducacional, #TecnologiaEmSaúde	inactive
16	2019/50/27	Yoshio Weaver	corporativo	#DesenvolvimentoDeHardware, #RealidadeVirtual, #RealidadeAumentada,	active
17	2022/55/26	Victoria Morrison	Individual	#SegurançaCibernética, #TecnologiaDaInformação, #InteligênciaArtificial,	inactive
18	2018/34/18	Louis Stevens	Individual	#TecnologiaDaInformação, #InteligênciaArtificial, #BigData,	inactive
19	2019/41/16	Acton Chavez	corporativo	#RealidadeAumentada, #RedesETelecomunicações, #ECommerce,	inactive
20	2022/18/16	Aladdin White	Individual	#DesenvolvimentoDeHardware, #RealidadeVirtual, #RealidadeAumentada,	inactive
21	2021/26/26	Francesca Watkins	corporativo	#SegurançaCibernética, #TecnologiaDaInformação, #InteligênciaArtificial,	inactive
22	2018/1/1	Burton Johnston	corporativo	#InternetDasCoisas, #DesenvolvimentoDeHardware, #RealidadeVirtual,	active
23	2020/34/16	Aretha Grant	corporativo	#Robótica, #TecnologiaEducacional, #TecnologiaEmSaúde	inactive
24	2022/57/4	Nash Lee	corporativo	#Robótica, #TecnologiaEducacional, #TecnologiaEmSaúde	active
25	2020/49/17	Rooney Kelley	Individual	#DesenvolvimentoDeHardware, #RealidadeVirtual, #RealidadeAumentada,	active
26	2020/14/1	Dylan Reyes	Individual	#ECommerce, #Robótica, #TecnologiaEducacional,	active
27	2019/41/22	Gloria Estrada	Individual	#CloudComputing, #Blockchain, #Criptomoedas,	inactive
28	2020/21/15	Berk Alexander	Individual	#InteligênciaArtificial, #BigData, #AnáliseDeDados,	active
29	2019/36/22	Ariana Watkins	corporativo	#InternetDasCoisas, #DesenvolvimentoDeHardware, #RealidadeVirtual,	inactive
30	2022/10/16	Aidan Palmer	corporativo	#TecnologiaDaInformação, #InteligênciaArtificial, #BigData,	inactive
31	2019/13/20	Barclay Hawkins	corporativo	#Robótica, #TecnologiaEducacional, #TecnologiaEmSaúde	inactive
32	2022/23/8	India Gutierrez	corporativo	#DesenvolvimentoDeHardware, #RealidadeVirtual, #RealidadeAumentada,	active
33	2019/40/6	Guy Padilla	Individual	#ECommerce, #Robótica, #TecnologiaEducacional,	inactive
34	2021/27/7	Judith Peterson	Individual	#DesenvolvimentoDeHardware, #RealidadeVirtual, #RealidadeAumentada,	active
35	2020/56/30	Wyatt Armstrong	corporativo	#RealidadeAumentada, #RedesETelecomunicações, #ECommerce,	inactive
36	2020/24/21	Paloma Franklin	Individual	#CloudComputing, #Blockchain, #Criptomoedas,	inactive
37	2020/26/17	Indira Rodriguez	corporativo	#InteligênciaArtificial, #BigData, #AnáliseDeDados,	inactive
38	2022/54/15	Devin Castillo	corporativo	#TecnologiaDaInformação, #InteligênciaArtificial, #BigData,	inactive
39	2022/7/10	Ivan Hansen	corporativo	#ECommerce, #Robótica, #TecnologiaEducacional,	active
40	2021/15/18	Fritz Ruiz	corporativo	#InternetDasCoisas, #DesenvolvimentoDeHardware, #RealidadeVirtual,	inactive
41	2022/22/10	Isabelle Santiago	corporativo	#InternetDasCoisas, #DesenvolvimentoDeHardware, #RealidadeVirtual,	inactive
42	2022/48/18	Irma Day	Individual	#RealidadeAumentada, #RedesETelecomunicações, #ECommerce,	active
43	2018/48/11	Paula Woods	corporativo	#RedesETelecomunicações, #ECommerce, #Robótica,	inactive
44	2022/36/5	Cynthia Ferguson	Individual	#InteligênciaArtificial, #BigData, #AnáliseDeDados,	active
45	2020/24/30	Ralph Marshall	corporativo	#InternetDasCoisas, #DesenvolvimentoDeHardware, #RealidadeVirtual,	inactive
46	2019/26/21	Jolie Guerrero	Individual	#Robótica, #TecnologiaEducacional, #TecnologiaEmSaúde	inactive
47	2022/15/10	Amy Mills	Individual	#TecnologiaDaInformação, #InteligênciaArtificial, #BigData,	inactive
48	2019/24/24	Reed Crawford	Individual	#InternetDasCoisas, #DesenvolvimentoDeHardware, #RealidadeVirtual,	inactive
49	2022/45/24	Quintessa Banks	Individual	#Criptomoedas, #InternetDasCoisas, #DesenvolvimentoDeHardware,	inactive
50	2021/42/11	Rhonda Welch	Individual	#Criptomoedas, #InternetDasCoisas, #DesenvolvimentoDeHardware,	inactive
51	2019/19/17	Kimberley Payne	Individual	#CloudComputing, #Blockchain, #Criptomoedas,	inactive
52	2020/6/8	Erasmus Garza	corporativo	#Blockchain, #Criptomoedas, #InternetDasCoisas,	active
53	2020/47/4	Jaquelyn Munoz	corporativo	#InternetDasCoisas, #DesenvolvimentoDeHardware, #RealidadeVirtual,	inactive
54	2021/33/27	Wang Medina	corporativo	#AnáliseDeDados, #CloudComputing, #Blockchain,	active
55	2019/46/5	Clark Fernandez	corporativo	#AnáliseDeDados, #CloudComputing, #Blockchain,	active
56	2022/41/5	Germaine Ellis	Individual	#CloudComputing, #Blockchain, #Criptomoedas,	active
57	2021/53/29	Byron Turner	Individual	#CloudComputing, #Blockchain, #Criptomoedas,	inactive
58	2019/28/26	Kai Andrews	corporativo	#ECommerce, #Robótica, #TecnologiaEducacional,	inactive
59	2021/47/2	Joseph Harvey	Individual	#DesenvolvimentoDeSoftware, #SegurançaCibernética, #TecnologiaDaInformação,	active
5	2021/50/9	Lionel Messi	Individual	#CloudComputing, #Blockchain, #Criptomoedas,	active
4	2021/50/9	Neymar Jr	Individual	#CloudComputing, #Blockchain, #Criptomoedas,	active
3	2020/37/6	Hedwig Hamilton	corporativo	#DesenvolvimentoDeSoftware, #SegurançaCibernética, #TecnologiaDaInformação,	active
2	2022/25/21	Filipe Costa	Individual	#CloudComputing, #Blockchain, #Criptomoedas,	inactive
60	2020/59/11	Zena Hanson	Individual	#InternetDasCoisas, #DesenvolvimentoDeHardware, #RealidadeVirtual,	active
61	2022/45/21	Elvis Estrada	Individual	#InternetDasCoisas, #DesenvolvimentoDeHardware, #RealidadeVirtual,	inactive
62	2021/26/1	Maggie Ray	Individual	#SegurançaCibernética, #TecnologiaDaInformação, #InteligênciaArtificial,	inactive
63	2021/1/20	Colton Bradley	Individual	#InteligênciaArtificial, #BigData, #AnáliseDeDados,	inactive
64	2019/50/23	Athena Welch	corporativo	#BigData, #AnáliseDeDados, #CloudComputing,	inactive
65	2022/57/14	Blaze Myers	corporativo	#Blockchain, #Criptomoedas, #InternetDasCoisas,	inactive
66	2022/53/27	Tasha Nichols	Individual	#RealidadeVirtual, #RealidadeAumentada, #RedesETelecomunicações,	inactive
67	2020/31/2	Jasper Lewis	corporativo	#Criptomoedas, #InternetDasCoisas, #DesenvolvimentoDeHardware,	active
68	2019/23/9	Honorato Brown	corporativo	#Blockchain, #Criptomoedas, #InternetDasCoisas,	inactive
69	2020/30/29	Colton Carroll	corporativo	#RealidadeVirtual, #RealidadeAumentada, #RedesETelecomunicações,	active
70	2022/38/4	Jamalia Perry	Individual	#RealidadeAumentada, #RedesETelecomunicações, #ECommerce,	active
71	2020/27/15	Brendan Armstrong	corporativo	#Criptomoedas, #InternetDasCoisas, #DesenvolvimentoDeHardware,	inactive
72	2021/47/24	Oren Clark	corporativo	#RedesETelecomunicações, #ECommerce, #Robótica,	active
73	2020/27/27	Jacob Stone	Individual	#DesenvolvimentoDeHardware, #RealidadeVirtual, #RealidadeAumentada,	inactive
74	2020/45/20	Angelica Mendez	Individual	#RedesETelecomunicações, #ECommerce, #Robótica,	active
75	2020/10/30	Ahmed Patterson	Individual	#CloudComputing, #Blockchain, #Criptomoedas,	inactive
76	2019/35/24	Conan Burns	corporativo	#InteligênciaArtificial, #BigData, #AnáliseDeDados,	active
77	2022/40/20	Jennifer Cooper	corporativo	#RedesETelecomunicações, #ECommerce, #Robótica,	active
78	2019/10/24	Jena Nelson	corporativo	#TecnologiaDaInformação, #InteligênciaArtificial, #BigData,	inactive
79	2022/38/4	Yoshio Morales	Individual	#TecnologiaEducacional, #TecnologiaEmSaúde 	inactive
80	2021/32/16	Deanna Salazar	Individual	#RedesETelecomunicações, #ECommerce, #Robótica,	inactive
81	2022/20/23	Hayes Silva	corporativo	#Blockchain, #Criptomoedas, #InternetDasCoisas,	inactive
82	2022/24/18	Jelani Padilla	corporativo	#BigData, #AnáliseDeDados, #CloudComputing,	inactive
83	2020/8/19	Charissa Hudson	corporativo	#BigData, #AnáliseDeDados, #CloudComputing,	active
84	2020/33/29	Henry Wallace	Individual	#RedesETelecomunicações, #ECommerce, #Robótica,	active
85	2022/55/30	Troy Lawrence	corporativo	#SegurançaCibernética, #TecnologiaDaInformação, #InteligênciaArtificial,	inactive
86	2022/44/29	Flynn Carroll	corporativo	#RedesETelecomunicações, #ECommerce, #Robótica,	active
87	2021/6/21	Wade Cole	corporativo	#Criptomoedas, #InternetDasCoisas, #DesenvolvimentoDeHardware,	active
88	2020/15/3	Rina Jimenez	corporativo	#Robótica, #TecnologiaEducacional, #TecnologiaEmSaúde	inactive
89	2021/55/30	Joy Cunningham	Individual	#Criptomoedas, #InternetDasCoisas, #DesenvolvimentoDeHardware,	inactive
90	2022/50/18	Lucius Wheeler	corporativo	#DesenvolvimentoDeHardware, #RealidadeVirtual, #RealidadeAumentada,	inactive
91	2021/11/25	Maisie Murphy	Individual	#Blockchain, #Criptomoedas, #InternetDasCoisas,	inactive
92	2022/37/16	Derek Bishop	Individual	#RealidadeVirtual, #RealidadeAumentada, #RedesETelecomunicações,	inactive
93	2020/50/20	Ivan James	Individual	#DesenvolvimentoDeHardware, #RealidadeVirtual, #RealidadeAumentada,	active
94	2022/10/18	Ross Miller	corporativo	#Robótica, #TecnologiaEducacional, #TecnologiaEmSaúde	inactive
95	2021/1/8	Lucius Medina	corporativo	#ECommerce, #Robótica, #TecnologiaEducacional,	inactive
96	2022/27/18	Eliana Weber	Individual	#Robótica, #TecnologiaEducacional, #TecnologiaEmSaúde	active
97	2021/25/5	Melodie Austin	Individual	#RedesETelecomunicações, #ECommerce, #Robótica,	active
98	2021/53/4	Wendy Ortiz	Individual	#InteligênciaArtificial, #BigData, #AnáliseDeDados,	inactive
99	2020/59/16	Timon Smith	corporativo	#AnáliseDeDados, #CloudComputing, #Blockchain,	active
100	2022/46/23	Hakeem Patterson	corporativo	#SegurançaCibernética, #TecnologiaDaInformação, #InteligênciaArtificial,	inactive
101	2019/16/6	Raja Rogers	corporativo	#CloudComputing, #Blockchain, #Criptomoedas,	inactive
102	2020/57/31	Thomas Perez	Individual	#Criptomoedas, #InternetDasCoisas, #DesenvolvimentoDeHardware,	inactive
103	2019/51/10	Jeremy Fuller	corporativo	#AnáliseDeDados, #CloudComputing, #Blockchain,	active
104	2021/37/24	Martin Wallace	Individual	#Criptomoedas, #InternetDasCoisas, #DesenvolvimentoDeHardware,	inactive
105	2021/36/10	Sawyer Dunn	corporativo	#Blockchain, #Criptomoedas, #InternetDasCoisas,	active
106	2019/59/14	Anthony Foster	corporativo	#InternetDasCoisas, #DesenvolvimentoDeHardware, #RealidadeVirtual,	inactive
107	2021/15/28	Nathan Rios	corporativo	#BigData, #AnáliseDeDados, #CloudComputing,	inactive
108	2019/30/30	Salvador Kennedy	Individual	#BigData, #AnáliseDeDados, #CloudComputing,	inactive
109	2022/12/26	Nerea Nunez	corporativo	#RedesETelecomunicações, #ECommerce, #Robótica,	active
110	2019/14/8	Russell Hayes	Individual	#InternetDasCoisas, #DesenvolvimentoDeHardware, #RealidadeVirtual,	inactive
111	2022/36/1	Connor Hawkins	corporativo	#CloudComputing, #Blockchain, #Criptomoedas,	inactive
112	2019/40/24	Buffy Collins	Individual	#Criptomoedas, #InternetDasCoisas, #DesenvolvimentoDeHardware,	active
113	2019/11/31	Sage Little	corporativo	#BigData, #AnáliseDeDados, #CloudComputing,	active
114	2021/9/6	Lester Estrada	corporativo	#AnáliseDeDados, #CloudComputing, #Blockchain,	inactive
115	2021/27/29	Meredith Lynch	corporativo	#InternetDasCoisas, #DesenvolvimentoDeHardware, #RealidadeVirtual,	inactive
116	2021/12/12	Pascale Wallace	Individual	#DesenvolvimentoDeHardware, #RealidadeVirtual, #RealidadeAumentada,	active
117	2022/21/9	Clinton George	corporativo	#DesenvolvimentoDeHardware, #RealidadeVirtual, #RealidadeAumentada,	inactive
118	2020/24/22	Sade Luna	Individual	#Robótica, #TecnologiaEducacional, #TecnologiaEmSaúde	inactive
178	2022/5/20	Wilma Ward	Individual	#ECommerce, #Robótica, #TecnologiaEducacional,	inactive
119	2020/13/13	Brendan Chapman	Individual	#DesenvolvimentoDeHardware, #RealidadeVirtual, #RealidadeAumentada,	active
120	2019/3/23	Abel Freeman	Individual	#ECommerce, #Robótica, #TecnologiaEducacional,	inactive
121	2022/46/31	Thaddeus Reid	corporativo	#InternetDasCoisas, #DesenvolvimentoDeHardware, #RealidadeVirtual,	active
122	2019/39/21	Georgia Robinson	corporativo	#RealidadeVirtual, #RealidadeAumentada, #RedesETelecomunicações,	inactive
123	2019/40/15	Britanney Cook	corporativo	#Blockchain, #Criptomoedas, #InternetDasCoisas,	active
124	2019/7/9	Rahim Garcia	Individual	#SegurançaCibernética, #TecnologiaDaInformação, #InteligênciaArtificial,	inactive
125	2020/33/11	Jelani Hudson	corporativo	#InternetDasCoisas, #DesenvolvimentoDeHardware, #RealidadeVirtual,	inactive
126	2022/28/28	Imelda Woods	Individual	#RealidadeAumentada, #RedesETelecomunicações, #ECommerce,	inactive
127	2022/58/14	Inga Palmer	Individual	#InternetDasCoisas, #DesenvolvimentoDeHardware, #RealidadeVirtual,	active
128	2020/44/29	Leo Morris	corporativo	#RealidadeVirtual, #RealidadeAumentada, #RedesETelecomunicações,	active
129	2019/32/13	Keegan Hunter	Individual	#AnáliseDeDados, #CloudComputing, #Blockchain,	active
130	2020/2/6	Bruno Little	corporativo	#TecnologiaDaInformação, #InteligênciaArtificial, #BigData,	active
131	2020/26/20	Chava Castro	Individual	#CloudComputing, #Blockchain, #Criptomoedas,	inactive
132	2019/54/16	Kevyn White	Individual	#TecnologiaEducacional, #TecnologiaEmSaúde 	active
133	2021/45/29	Kiara Morris	corporativo	#InternetDasCoisas, #DesenvolvimentoDeHardware, #RealidadeVirtual,	inactive
134	2020/3/14	Halla Watkins	corporativo	#Blockchain, #Criptomoedas, #InternetDasCoisas,	inactive
135	2022/28/27	Dillon Harvey	corporativo	#BigData, #AnáliseDeDados, #CloudComputing,	inactive
136	2019/55/21	Blake Daniels	Individual	#InteligênciaArtificial, #BigData, #AnáliseDeDados,	inactive
137	2020/53/31	Hector Burton	corporativo	#ECommerce, #Robótica, #TecnologiaEducacional,	active
138	2021/45/10	Amal Watson	corporativo	#Criptomoedas, #InternetDasCoisas, #DesenvolvimentoDeHardware,	inactive
139	2022/53/2	Matthew Willis	corporativo	#SegurançaCibernética, #TecnologiaDaInformação, #InteligênciaArtificial,	active
140	2020/10/27	Emery Pena	corporativo	#Robótica, #TecnologiaEducacional, #TecnologiaEmSaúde	inactive
141	2021/41/8	Gareth Simpson	Individual	#AnáliseDeDados, #CloudComputing, #Blockchain,	inactive
142	2021/41/12	Lunea Guzman	corporativo	#RealidadeAumentada, #RedesETelecomunicações, #ECommerce,	active
143	2019/36/12	Glenna Allen	Individual	#InteligênciaArtificial, #BigData, #AnáliseDeDados,	inactive
144	2021/33/22	Kennedy Wang	Individual	#BigData, #AnáliseDeDados, #CloudComputing,	inactive
145	2019/3/16	Fatima Wagner	Individual	#RealidadeAumentada, #RedesETelecomunicações, #ECommerce,	inactive
146	2021/56/13	Lesley Harris	corporativo	#TecnologiaEducacional, #TecnologiaEmSaúde 	inactive
147	2021/31/22	Hakeem Bryant	corporativo	#Criptomoedas, #InternetDasCoisas, #DesenvolvimentoDeHardware,	active
148	2022/26/15	Harlan West	Individual	#SegurançaCibernética, #TecnologiaDaInformação, #InteligênciaArtificial,	inactive
149	2020/29/8	Merritt Stewart	Individual	#TecnologiaEducacional, #TecnologiaEmSaúde 	active
150	2022/49/25	Tarik Diaz	corporativo	#RedesETelecomunicações, #ECommerce, #Robótica,	inactive
151	2022/8/31	Amanda Hall	Individual	#Criptomoedas, #InternetDasCoisas, #DesenvolvimentoDeHardware,	inactive
152	2018/31/20	Veda Ramos	corporativo	#Robótica, #TecnologiaEducacional, #TecnologiaEmSaúde	active
153	2022/28/9	Ivory Brooks	Individual	#InternetDasCoisas, #DesenvolvimentoDeHardware, #RealidadeVirtual,	active
154	2021/48/10	August Henry	Individual	#DesenvolvimentoDeHardware, #RealidadeVirtual, #RealidadeAumentada,	active
155	2019/29/19	Walker Dunn	Individual	#SegurançaCibernética, #TecnologiaDaInformação, #InteligênciaArtificial,	inactive
156	2019/22/15	Maia Yang	Individual	#RealidadeAumentada, #RedesETelecomunicações, #ECommerce,	inactive
157	2020/56/2	Flavia Jenkins	corporativo	#RealidadeAumentada, #RedesETelecomunicações, #ECommerce,	inactive
158	2021/54/6	Candice Riley	Individual	#Robótica, #TecnologiaEducacional, #TecnologiaEmSaúde	inactive
159	2020/38/8	Hamilton Jordan	Individual	#RedesETelecomunicações, #ECommerce, #Robótica,	active
160	2022/30/17	Jordan Franklin	Individual	#ECommerce, #Robótica, #TecnologiaEducacional,	active
161	2022/16/7	Samuel Guerrero	Individual	#TecnologiaDaInformação, #InteligênciaArtificial, #BigData,	inactive
162	2019/35/27	Victor Gonzales	corporativo	#CloudComputing, #Blockchain, #Criptomoedas,	active
163	2019/18/8	Ebony Bishop	Individual	#InteligênciaArtificial, #BigData, #AnáliseDeDados,	active
164	2019/52/16	Helen Hunter	corporativo	#SegurançaCibernética, #TecnologiaDaInformação, #InteligênciaArtificial,	active
165	2022/44/21	Stone Chen	corporativo	#SegurançaCibernética, #TecnologiaDaInformação, #InteligênciaArtificial,	active
166	2019/0/3	Hashim Mccoy	corporativo	#ECommerce, #Robótica, #TecnologiaEducacional,	active
167	2020/31/2	Kenneth Ramos	Individual	#TecnologiaDaInformação, #InteligênciaArtificial, #BigData,	active
168	2019/23/14	Lee Hunt	corporativo	#InternetDasCoisas, #DesenvolvimentoDeHardware, #RealidadeVirtual,	inactive
169	2020/30/10	Carson Kim	Individual	#TecnologiaDaInformação, #InteligênciaArtificial, #BigData,	active
170	2021/50/14	Shay Harris	corporativo	#BigData, #AnáliseDeDados, #CloudComputing,	active
171	2022/35/12	Sheila Lee	Individual	#Blockchain, #Criptomoedas, #InternetDasCoisas,	active
172	2020/30/5	Driscoll Munoz	corporativo	#CloudComputing, #Blockchain, #Criptomoedas,	active
173	2020/13/29	Alfreda Ortega	corporativo	#InteligênciaArtificial, #BigData, #AnáliseDeDados,	active
174	2022/18/1	Jelani Alvarez	corporativo	#CloudComputing, #Blockchain, #Criptomoedas,	active
175	2021/3/12	Gabriel Estrada	corporativo	#InternetDasCoisas, #DesenvolvimentoDeHardware, #RealidadeVirtual,	active
176	2019/18/3	Dorian Santiago	Individual	#InternetDasCoisas, #DesenvolvimentoDeHardware, #RealidadeVirtual,	active
177	2020/4/21	Buffy Guerrero	corporativo	#ECommerce, #Robótica, #TecnologiaEducacional,	active
179	2022/26/10	Flynn Cole	Individual	#TecnologiaDaInformação, #InteligênciaArtificial, #BigData,	inactive
180	2022/6/24	Axel Harper	Individual	#TecnologiaDaInformação, #InteligênciaArtificial, #BigData,	inactive
181	2019/18/24	Winter Wheeler	corporativo	#CloudComputing, #Blockchain, #Criptomoedas,	inactive
182	2019/33/20	Colby Stone	corporativo	#AnáliseDeDados, #CloudComputing, #Blockchain,	active
183	2020/43/18	Alexander Burns	corporativo	#RealidadeVirtual, #RealidadeAumentada, #RedesETelecomunicações,	active
184	2021/23/11	Imani Simpson	Individual	#SegurançaCibernética, #TecnologiaDaInformação, #InteligênciaArtificial,	active
185	2018/4/23	Ainsley Griffin	Individual	#InternetDasCoisas, #DesenvolvimentoDeHardware, #RealidadeVirtual,	inactive
186	2021/40/7	Brody Willis	Individual	#Robótica, #TecnologiaEducacional, #TecnologiaEmSaúde	active
187	2019/40/27	Declan Luna	Individual	#BigData, #AnáliseDeDados, #CloudComputing,	active
188	2022/29/15	Rashad Hoffman	corporativo	#BigData, #AnáliseDeDados, #CloudComputing,	active
189	2020/47/6	Mona Arnold	Individual	#RedesETelecomunicações, #ECommerce, #Robótica,	active
190	2020/52/1	Ori Edwards	Individual	#TecnologiaDaInformação, #InteligênciaArtificial, #BigData,	active
191	2020/29/11	Brielle Moore	Individual	#DesenvolvimentoDeHardware, #RealidadeVirtual, #RealidadeAumentada,	active
192	2021/5/21	Garth Rose	corporativo	#Blockchain, #Criptomoedas, #InternetDasCoisas,	active
193	2019/58/10	Jarrod Harvey	Individual	#DesenvolvimentoDeSoftware, #SegurançaCibernética, #TecnologiaDaInformação,	inactive
194	2022/44/8	Shelley Hansen	corporativo	#AnáliseDeDados, #CloudComputing, #Blockchain,	inactive
195	2019/58/13	Amena Williamson	corporativo	#DesenvolvimentoDeHardware, #RealidadeVirtual, #RealidadeAumentada,	active
196	2019/33/1	Brielle Griffin	Individual	#DesenvolvimentoDeHardware, #RealidadeVirtual, #RealidadeAumentada,	active
197	2019/16/23	Mark Henry	Individual	#Blockchain, #Criptomoedas, #InternetDasCoisas,	inactive
198	2021/55/19	Britanney Le	corporativo	#RealidadeAumentada, #RedesETelecomunicações, #ECommerce,	active
6	2020/12/21	Arrascaeta	Individual	#DesenvolvimentoDeSoftware, #SegurançaCibernética, #TecnologiaDaInformação,	inactive
199	2019/43/6	Jaquelyn Gibson	Individual	#ECommerce, #Robótica, #TecnologiaEducacional,	inactive
200	2020/5/15	Melyssa Valdez	corporativo	#Blockchain, #Criptomoedas, #InternetDasCoisas,	active
1	2021/50/9	Marcelo Cuper	Individual	#CloudComputing, #Blockchain, #Criptomoedas,	active
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 216, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--


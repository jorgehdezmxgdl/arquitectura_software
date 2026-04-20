--
-- PostgreSQL database dump
--

\restrict NJeoCTOe6YAmWwnDNzQrGm0qoK98VLcbQGbpKEainFzRc0medgsplzMyy83Ohmf

-- Dumped from database version 17.9
-- Dumped by pg_dump version 17.9

-- Started on 2026-04-20 09:28:35

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 218 (class 1259 OID 16502)
-- Name: clientes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clientes (
    id integer NOT NULL,
    codigo_cliente character varying(20) NOT NULL,
    nombre character varying(100) NOT NULL,
    apellidos character varying(150) NOT NULL,
    fecha_nacimiento date,
    email character varying(150),
    telefono character varying(50)
);


ALTER TABLE public.clientes OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16501)
-- Name: clientes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clientes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.clientes_id_seq OWNER TO postgres;

--
-- TOC entry 4938 (class 0 OID 0)
-- Dependencies: 217
-- Name: clientes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clientes_id_seq OWNED BY public.clientes.id;


--
-- TOC entry 224 (class 1259 OID 16536)
-- Name: detalle_ventas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.detalle_ventas (
    id integer NOT NULL,
    producto_id integer NOT NULL,
    venta_id integer NOT NULL,
    precio numeric(10,2) NOT NULL,
    cantidad integer NOT NULL
);


ALTER TABLE public.detalle_ventas OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16535)
-- Name: detalle_ventas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.detalle_ventas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.detalle_ventas_id_seq OWNER TO postgres;

--
-- TOC entry 4939 (class 0 OID 0)
-- Dependencies: 223
-- Name: detalle_ventas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.detalle_ventas_id_seq OWNED BY public.detalle_ventas.id;


--
-- TOC entry 220 (class 1259 OID 16511)
-- Name: productos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.productos (
    id integer NOT NULL,
    codigo_barras character varying(50) NOT NULL,
    nombre character varying(150) NOT NULL,
    precio_publico numeric(10,2) NOT NULL,
    minimo integer DEFAULT 0,
    existencias integer DEFAULT 0
);


ALTER TABLE public.productos OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16510)
-- Name: productos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.productos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.productos_id_seq OWNER TO postgres;

--
-- TOC entry 4940 (class 0 OID 0)
-- Dependencies: 219
-- Name: productos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.productos_id_seq OWNED BY public.productos.id;


--
-- TOC entry 222 (class 1259 OID 16522)
-- Name: ventas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ventas (
    id integer NOT NULL,
    folio character varying(50) NOT NULL,
    cliente_id integer NOT NULL,
    subtotal numeric(12,2) NOT NULL
);


ALTER TABLE public.ventas OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16521)
-- Name: ventas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ventas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ventas_id_seq OWNER TO postgres;

--
-- TOC entry 4941 (class 0 OID 0)
-- Dependencies: 221
-- Name: ventas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ventas_id_seq OWNED BY public.ventas.id;


--
-- TOC entry 4757 (class 2604 OID 16505)
-- Name: clientes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes ALTER COLUMN id SET DEFAULT nextval('public.clientes_id_seq'::regclass);


--
-- TOC entry 4762 (class 2604 OID 16539)
-- Name: detalle_ventas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_ventas ALTER COLUMN id SET DEFAULT nextval('public.detalle_ventas_id_seq'::regclass);


--
-- TOC entry 4758 (class 2604 OID 16514)
-- Name: productos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos ALTER COLUMN id SET DEFAULT nextval('public.productos_id_seq'::regclass);


--
-- TOC entry 4761 (class 2604 OID 16525)
-- Name: ventas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventas ALTER COLUMN id SET DEFAULT nextval('public.ventas_id_seq'::regclass);


--
-- TOC entry 4926 (class 0 OID 16502)
-- Dependencies: 218
-- Data for Name: clientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clientes (id, codigo_cliente, nombre, apellidos, fecha_nacimiento, email, telefono) FROM stdin;
1	349-62-2805	Oralie	Bertram	1988-08-01	obertram0@mtv.com	697-508-4989
2	618-70-5427	Desmond	Davidsohn	1966-07-02	ddavidsohn1@latimes.com	982-788-9120
3	802-86-6693	Farley	Dewer	1946-10-13	fdewer2@squarespace.com	818-255-7299
4	576-34-6637	Marylin	Rock	1992-08-23	mrock3@mit.edu	937-957-3269
5	425-79-8624	Raymond	Carlton	1952-10-14	rcarlton4@who.int	205-219-4832
6	482-76-0246	Marieann	Everist	2006-09-16	meverist5@artisteer.com	743-217-4178
7	245-40-8849	Maurie	Curedell	1966-12-20	mcuredell6@washington.edu	150-390-9608
8	463-03-3293	Gibb	Scone	1972-03-27	gscone7@ft.com	917-956-2030
9	519-11-5763	Wes	Nuton	1991-09-09	wnuton8@spotify.com	868-925-3392
10	785-28-7062	Meryl	Walsham	2006-11-28	mwalsham9@gov.uk	815-109-4448
11	860-11-0127	Jeremiah	Gostall	1992-09-05	jgostalla@theglobeandmail.com	286-797-9726
12	517-53-6335	Maddalena	Ropp	1978-07-08	mroppb@reverbnation.com	699-735-0740
13	722-68-6616	Fedora	Kennard	1978-07-30	fkennardc@wiley.com	431-432-3653
14	742-76-5729	Krista	Korous	1999-03-07	kkorousd@seesaa.net	960-916-5538
15	708-68-6002	Mindy	Postgate	1958-05-27	mpostgatee@ucsd.edu	640-346-7175
16	263-70-9755	Farlay	Rowlett	1997-07-05	frowlettf@nasa.gov	999-880-2290
17	614-22-6781	Dennis	Portman	1945-01-20	dportmang@phpbb.com	217-636-3744
18	240-96-8237	Shane	Coatts	1988-02-16	scoattsh@indiegogo.com	545-501-6445
19	405-47-4240	Elissa	Dykas	1964-05-03	edykasi@4shared.com	665-723-7120
20	693-73-2377	Cyrill	Esposito	1965-12-13	cespositoj@amazon.de	405-837-3110
\.


--
-- TOC entry 4932 (class 0 OID 16536)
-- Dependencies: 224
-- Data for Name: detalle_ventas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.detalle_ventas (id, producto_id, venta_id, precio, cantidad) FROM stdin;
1	413	17	1526.29	15
2	629	11	243.47	4
3	841	14	571.74	37
4	935	7	855.66	19
5	226	19	1592.54	21
6	84	10	1171.05	29
7	318	3	340.50	22
8	914	20	471.36	28
9	791	19	70.26	21
10	165	2	1672.46	18
11	251	4	1566.17	21
12	833	13	1057.22	37
13	758	1	355.52	18
14	390	4	584.82	16
15	74	11	510.66	33
16	107	8	1431.42	35
17	253	6	1219.20	26
18	137	14	1353.85	19
19	463	11	1879.97	7
20	26	6	1641.65	33
21	337	20	1201.12	6
22	486	4	268.13	21
23	348	16	1524.10	19
24	861	10	1826.51	36
25	981	15	152.12	2
26	969	10	297.85	29
27	433	13	1039.79	29
28	541	12	1876.13	39
29	197	19	784.97	17
30	150	13	1858.75	16
31	149	14	1679.16	16
32	467	18	373.91	7
33	758	4	1559.55	23
34	364	8	166.24	36
35	497	13	760.93	29
36	948	16	644.92	37
37	124	20	1450.49	26
38	100	3	988.54	20
39	284	18	794.49	9
40	97	3	151.66	21
41	664	4	1889.11	34
42	192	2	118.41	3
43	267	4	1123.18	8
44	121	8	432.39	16
45	826	14	1788.46	35
46	731	1	1866.85	19
47	546	12	439.10	30
48	358	6	1820.13	17
49	910	2	292.94	33
50	457	15	1429.67	13
51	704	19	561.71	6
52	951	8	904.85	15
53	895	15	1810.48	13
54	179	6	1562.20	23
55	927	1	1976.24	2
56	398	14	1558.47	22
57	6	10	139.62	26
58	743	13	1532.37	30
59	770	2	202.17	6
60	56	20	150.25	29
\.


--
-- TOC entry 4928 (class 0 OID 16511)
-- Dependencies: 220
-- Data for Name: productos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.productos (id, codigo_barras, nombre, precio_publico, minimo, existencias) FROM stdin;
1	687-83-4067	Eggroll	692.04	9	11
2	487-79-5470	Squid - Breaded	227.36	8	30
3	100-31-1338	Bread Base - Toscano	77.44	7	28
4	256-98-7397	Wanton Wrap	1513.42	7	18
5	343-49-4622	Arctic Char - Fresh, Whole	1103.26	5	23
6	113-47-4796	Appetizer - Assorted Box	1099.13	5	20
7	645-48-5680	Ice Cream Bar - Drumstick	1829.70	5	20
8	295-51-4838	Island Oasis - Ice Cream Mix	334.91	6	12
9	106-56-3899	Coriander - Seed	522.36	5	16
10	816-96-0525	Cup - Paper 10oz 92959	1887.81	6	34
11	851-60-5907	Salmon - Smoked, Sliced	973.99	10	22
12	806-24-2799	Sardines	1092.55	5	12
13	869-13-7114	Dip - Tapenade	1370.86	10	39
14	215-85-6057	Garbag Bags - Black	1236.61	9	27
15	463-98-5764	Tea Peppermint	1628.82	9	37
16	431-92-7766	Wine - White, Gewurtzraminer	1595.93	8	27
17	500-77-7675	Dish Towel	1213.32	6	23
18	130-33-4264	Chef Hat 25cm	815.34	5	37
19	801-79-2977	Coffee - Frthy Coffee Crisp	1014.61	5	23
20	257-86-0805	Glass - Wine, Plastic, Clear 5 Oz	1869.96	10	30
21	868-39-2031	Flour - Masa De Harina Mexican	1280.41	10	13
22	423-94-8084	Muffin Mix - Chocolate Chip	988.59	9	31
23	596-90-5009	Bread - Dark Rye	91.09	5	11
24	729-53-1827	Raspberries - Fresh	1275.74	6	39
25	311-76-4894	Cheese - St. Paulin	124.11	5	21
26	205-48-1200	Soup Bowl Clear 8oz92008	1326.02	9	25
27	202-56-7305	Oil - Safflower	879.07	8	21
28	377-77-4711	Pasta - Lasagna Noodle, Frozen	1510.59	6	26
29	660-15-8624	Basil - Primerba, Paste	347.18	6	12
30	308-61-6473	Clam Nectar	386.96	8	38
31	116-75-3564	Ocean Spray - Kiwi Strawberry	942.71	9	22
32	675-43-9152	Soup Campbells Mexicali Tortilla	15.44	8	39
33	684-97-6676	Beer - Guiness	1708.88	6	32
34	705-17-1776	Cheese - Cheddar, Old White	168.32	5	13
35	485-67-4345	Wine - Riesling Dr. Pauly	518.98	7	37
36	473-18-9358	Calypso - Pineapple Passion	1885.14	5	33
37	403-01-0725	Soap - Mr.clean Floor Soap	1006.06	6	22
38	243-27-4260	Squash - Sunburst	1743.99	6	30
39	708-25-5015	Rice - 7 Grain Blend	1480.61	7	28
40	829-23-6612	Lid - 10,12,16 Oz	278.93	9	36
41	845-02-3571	Juice - Grapefruit, 341 Ml	1226.06	7	36
42	133-25-9338	Cheese - Victor Et Berthold	350.06	7	32
43	149-52-9839	Cinnamon - Stick	784.21	10	34
44	330-47-9583	Ice Cream - Turtles Stick Bar	1927.22	5	36
45	790-16-1394	Grapes - Black	1657.64	7	37
46	335-21-2684	Pickle - Dill	137.04	5	39
47	172-38-0516	Campari	1862.44	10	30
48	726-36-1015	Absolut Citron	1707.48	10	28
49	510-91-0084	Juice - Grapefruit, 341 Ml	1858.48	8	40
50	105-71-8808	Tomatoes - Yellow Hot House	1880.77	5	19
51	676-32-3785	Juice - Lemon	335.65	6	13
52	474-24-7862	Caviar - Salmon	921.25	7	37
53	863-27-6812	Banana - Green	500.90	10	25
54	727-14-1543	Bread - Wheat Baguette	128.36	6	24
55	209-09-5148	Carbonated Water - Orange	1494.69	8	25
56	542-56-5909	Chinese Lemon Pork	1798.88	7	25
57	315-06-8189	Cumin - Whole	1757.34	8	35
58	514-38-5415	Beer - Upper Canada Lager	780.24	6	16
59	156-45-0929	Tea Peppermint	552.43	5	29
60	797-27-7184	Jam - Marmalade, Orange	790.11	6	21
61	298-64-7236	Soup - Campbells, Minestrone	631.27	6	25
62	319-78-6192	Cranberry Foccacia	726.43	6	31
63	866-22-0439	Cheese - Blue	1721.10	6	23
64	457-18-7127	Pork - Smoked Back Bacon	1851.20	10	38
65	856-36-5760	Soup - French Can Pea	222.24	8	29
66	412-14-1913	Bread - French Baquette	1835.88	5	38
67	820-30-9427	Melon - Watermelon, Seedless	1316.37	6	40
68	855-97-0036	Halibut - Whole, Fresh	1926.75	7	29
69	823-63-0033	Sesame Seed Black	1641.92	10	35
70	290-70-9514	Island Oasis - Banana Daiquiri	32.22	6	18
71	494-64-5141	Cookies - Englishbay Chochip	1049.02	6	29
72	867-94-9242	Contreau	168.83	10	30
73	211-06-9381	Ice Cream - Vanilla	306.85	5	17
74	580-74-4550	Cheese - Blue	1266.16	10	19
75	607-40-6059	Lettuce - Frisee	1672.61	6	28
76	570-37-1953	Tomatoes - Diced, Canned	1640.56	6	38
77	761-71-8650	Wine - Cotes Du Rhone Parallele	391.39	8	39
78	120-15-1890	Pepper - Yellow Bell	860.68	6	16
79	156-81-6045	Sugar - Splenda Sweetener	982.00	7	26
80	452-02-0185	Squash - Pepper	313.57	9	24
81	153-49-8610	Wine - Chardonnay South	1302.04	8	38
82	256-31-4956	White Fish - Filets	1277.89	5	14
83	830-30-4744	Bread - Onion Focaccia	1580.68	5	16
84	622-53-0551	Pork Loin Bine - In Frenched	1127.50	7	16
85	338-47-3507	Fish - Artic Char, Cold Smoked	362.03	10	27
86	890-23-3450	Roe - Lump Fish, Black	1988.86	9	19
87	457-88-4182	Onions - Cippolini	330.14	9	28
88	564-92-4826	Cheese - St. Andre	1616.56	5	29
89	506-95-7493	Easy Off Oven Cleaner	626.15	6	40
90	432-62-1142	Lamb - Racks, Frenched	1501.00	9	19
91	477-19-5127	Butter Sweet	1694.93	5	27
92	805-99-1970	Chocolate Bar - Smarties	92.65	9	15
93	664-33-9170	Nut - Hazelnut, Ground, Natural	1712.96	6	37
94	802-98-7729	Wine - Semi Dry Riesling Vineland	1484.26	8	18
95	829-68-0389	Lemon Pepper	1505.09	10	27
96	553-06-1215	Beer - Original Organic Lager	110.76	6	21
97	464-88-1329	Cake - Bande Of Fruit	1824.29	8	29
98	362-86-1103	Soup - Campbells, Spinach Crm	935.40	6	26
99	741-46-6072	Crab - Dungeness, Whole, live	1399.98	5	22
100	182-74-3747	Wine - Carmenere Casillero Del	241.91	7	25
101	562-21-3289	Bread - Bistro Sour	1732.08	6	13
102	621-22-9267	Mushroom - Trumpet, Dry	1700.78	8	27
103	281-13-3521	Pasta - Angel Hair	738.12	6	19
104	890-48-7611	Wine - White, Schroder And Schyl	1007.28	6	34
105	897-10-3113	Rambutan	390.09	8	31
106	127-37-2125	Coffee Cup 16oz Foam	650.87	10	32
107	169-07-2444	Table Cloth 62x120 Colour	45.20	6	39
108	211-08-7414	Tomatoes - Cherry, Yellow	517.87	7	27
109	333-21-2493	Wine - Carmenere Casillero Del	158.19	5	27
110	621-96-0468	Longos - Cheese Tortellini	919.53	5	23
111	689-92-1917	Beef - Tenderlion, Center Cut	1457.28	10	24
112	525-20-6758	Long Island Ice Tea	1134.21	8	30
113	770-15-0627	Pickerel - Fillets	270.06	9	14
114	288-89-9244	Cheese - Pied De Vents	441.85	5	12
115	679-47-0223	True - Vue Containers	271.17	9	10
116	198-90-2401	Transfer Sheets	716.11	7	13
117	551-65-4407	Fish - Soup Base, Bouillon	203.53	8	15
118	683-92-5603	Turnip - Wax	875.56	8	23
119	817-46-6390	Soup - Knorr, French Onion	40.94	7	39
120	477-63-3888	Cherries - Maraschino,jar	427.71	8	40
121	691-38-5447	Cookies Almond Hazelnut	953.44	5	17
122	714-41-5905	Scrubbie - Scotchbrite Hand Pad	333.31	7	23
123	675-73-2343	Apple - Custard	947.81	8	38
124	385-16-4049	Sauce - Chili	1797.69	9	11
125	129-85-8635	Wine - Bouchard La Vignee Pinot	1501.13	8	21
126	330-71-2445	Tea - Apple Green Tea	367.48	10	10
127	646-69-4821	Wine - Fontanafredda Barolo	666.27	7	25
128	860-03-1171	Wine - Spumante Bambino White	1929.01	10	39
129	121-12-4702	Apple - Granny Smith	1715.48	6	19
130	388-08-4460	Pate - Cognac	733.74	7	35
131	544-94-1090	Chocolate Bar - Oh Henry	890.88	9	38
132	272-37-1202	Zucchini - Green	561.24	10	31
133	671-82-0980	Nectarines	530.93	8	30
134	450-08-1668	Creme De Menthe Green	1710.12	5	36
135	421-15-5294	Oil - Safflower	426.30	8	33
136	876-71-3494	Pie Filling - Apple	1446.81	6	14
137	371-18-3719	Corn - Cream, Canned	403.16	5	20
138	399-99-5838	Dried Apple	1992.80	6	36
139	250-42-2917	Bread - Pita	1196.90	5	36
140	406-74-8212	Veal - Sweetbread	385.60	5	26
141	142-35-9106	Wine - Sake	26.67	10	28
142	107-73-2602	Butter - Pod	1683.47	9	37
143	695-83-0546	Lid - 0090 Clear	1499.21	5	30
144	287-14-1392	Lamb - Whole, Fresh	644.23	10	30
145	486-02-8480	Bread - White Mini Epi	599.42	6	18
146	117-39-4452	Doilies - 10, Paper	567.33	9	26
147	411-12-6772	Wine - Magnotta, Merlot Sr Vqa	1041.87	10	37
148	141-54-0569	Wine - Shiraz Wolf Blass Premium	572.20	6	27
149	278-25-2231	Lid - 16 Oz And 32 Oz	1662.38	7	25
150	467-53-4244	Wine - Sogrape Mateus Rose	286.65	9	36
151	837-80-3443	Beef - Short Loin	1132.50	6	40
152	657-48-2370	Marjoram - Dried, Rubbed	1937.48	6	34
153	658-72-0278	Squid - U 5	1565.55	9	20
154	686-80-8967	Assorted Desserts	1608.83	7	35
155	222-14-8576	Beef - Bones, Marrow	1244.16	6	17
156	320-94-3424	Shrimp - 100 / 200 Cold Water	1504.29	7	37
157	158-01-4230	Milk - Chocolate 500ml	1917.92	6	14
158	232-38-0493	Calypso - Lemonade	1922.91	6	40
159	393-48-0941	Ice Cream - Chocolate	991.99	5	26
160	472-50-6083	Wine - Maipo Valle Cabernet	1342.32	8	15
161	408-33-9554	Ice Cream - Life Savers	1548.52	6	11
162	319-36-6188	Appetizer - Assorted Box	22.04	9	37
163	839-03-1102	Shallots	641.32	6	38
164	732-81-6643	Skirt - 24 Foot	1954.59	5	24
165	505-36-6741	Steam Pan - Half Size Deep	94.53	7	24
166	670-86-7198	Ecolab - Mikroklene 4/4 L	1131.14	9	12
167	372-16-4546	Kirsch - Schloss	1171.33	6	38
168	455-59-1055	Fish - Base, Bouillion	294.33	10	14
169	865-96-1590	Lettuce - Iceberg	1874.82	8	39
170	175-16-0743	Icecream - Dstk Cml And Fdg	364.34	6	13
171	454-89-5686	Cheese - Ricotta	1096.28	8	17
172	485-61-6984	Wine - Maipo Valle Cabernet	1891.38	9	29
173	454-36-5521	Milk - 2% 250 Ml	1271.70	6	11
174	600-61-5462	Champagne - Brights, Dry	1143.54	7	36
175	806-45-8435	Pastry - Trippleberry Muffin - Mini	678.43	7	22
176	721-41-1839	Tuna - Fresh	1715.62	8	36
177	855-07-4844	Pastry - Banana Muffin - Mini	450.28	7	13
178	708-61-5161	Pepper - Green	1314.74	10	14
179	624-52-1497	Pears - Bartlett	1031.17	5	28
180	888-98-2675	Pepper - Black, Whole	993.05	8	14
181	343-06-4721	Soup - Cream Of Broccoli, Dry	752.35	9	11
182	123-43-7198	Rappini - Andy Boy	1339.77	10	19
183	793-52-0208	Bar Bran Honey Nut	1656.06	7	14
184	459-04-0794	Chicken - Ground	577.16	7	26
185	330-02-3062	Glass - Wine, Plastic, Clear 5 Oz	1892.94	7	28
186	697-02-1402	Wine - Red, Mouton Cadet	1238.72	10	34
187	306-84-1478	Cheese Cloth No 60	335.95	8	19
188	385-42-4029	Energy Drink - Redbull 355ml	1240.62	7	17
189	870-96-6911	Lemonade - Black Cherry, 591 Ml	1034.18	8	16
190	157-07-0669	Cut Wakame - Hanawakaba	1351.45	10	29
191	398-72-7963	Sugar - Brown, Individual	1086.20	7	10
192	514-09-4393	Sambuca - Ramazzotti	1537.11	6	34
193	812-43-1650	Muffin Puck Ww Carrot	1645.32	7	38
194	381-39-5424	Food Colouring - Orange	1121.31	9	16
195	883-21-9393	Scallops - 20/30	623.13	8	30
196	169-36-1287	Pop - Club Soda Can	1327.75	8	39
197	838-63-8570	Soup - Campbells Broccoli	526.04	6	10
198	127-13-4721	Scallops - U - 10	1867.27	9	34
199	693-58-1701	Wine - Wyndham Estate Bin 777	1678.58	6	25
200	103-69-0642	Chips Potato Swt Chilli Sour	719.75	10	22
201	358-06-0898	Oven Mitts 17 Inch	490.02	6	34
202	221-97-5646	Amarula Cream	244.45	9	13
203	744-36-7672	Carbonated Water - Peach	634.28	9	40
204	275-43-4662	Pepper - Scotch Bonnet	1507.11	9	25
205	797-73-6320	Cheese - Mozzarella, Shredded	1208.45	5	24
206	696-21-6934	Rabbit - Saddles	23.78	9	22
207	424-50-2473	Coffee - Irish Cream	562.14	10	34
208	544-67-2453	Lettuce - Curly Endive	1039.29	5	25
209	440-77-3796	Pasta - Fusili, Dry	1852.13	7	21
210	645-40-4749	Pork - Hock And Feet Attached	1555.32	8	36
211	680-13-8683	Truffle - Peelings	1168.43	9	15
212	266-69-3992	Soup - Knorr, Ministrone	1357.93	5	15
213	288-66-8653	Yams	218.97	8	27
214	893-76-7294	Cabbage - Green	243.82	9	31
215	715-99-6416	Sausage - Breakfast	1862.42	9	32
216	895-82-4305	Trout - Smoked	1287.30	6	34
217	823-01-3192	Arizona - Green Tea	756.61	7	10
218	625-19-2258	Alize Sunset	1839.77	5	34
219	146-93-2932	Placemat - Scallop, White	1074.56	10	33
220	545-06-1061	Squash - Sunburst	1312.81	6	40
221	240-41-9487	Beer - Pilsner Urquell	741.75	10	36
222	506-06-4452	Jolt Cola	317.49	5	14
223	840-81-8312	Seaweed Green Sheets	242.52	6	28
224	479-64-9528	Asparagus - White, Canned	22.24	9	19
225	665-20-0310	Cheese - Comte	649.05	10	25
226	572-58-3412	Jack Daniels	740.12	9	17
227	881-82-7724	Longos - Grilled Salmon With Bbq	1918.19	5	33
228	308-96-4525	Quail Eggs - Canned	633.78	5	33
229	602-62-8161	Juice - Apple, 341 Ml	662.42	10	39
230	673-56-5955	Tea - Grapefruit Green Tea	100.13	10	11
231	747-85-2720	Bacardi Breezer - Tropical	1933.50	9	17
232	289-17-2088	Honey - Comb	1189.77	5	13
233	237-10-1899	Pasta - Penne, Rigate, Dry	536.48	6	33
234	851-27-1553	Veal - Sweetbread	859.52	5	27
235	153-87-6291	Long Island Ice Tea	352.68	7	14
236	700-01-1834	Cake - French Pear Tart	1351.08	5	39
237	727-51-9821	Juice - Orange	1218.75	7	24
238	669-04-0834	Cheese - Gouda	1863.56	10	23
239	591-46-5981	Galliano	794.98	7	33
240	606-06-2131	Knife Plastic - White	1500.40	10	24
241	813-85-2889	Seaweed Green Sheets	835.41	8	19
242	389-15-0870	Soup - Campbells, Lentil	1045.99	9	35
243	753-89-2325	Flour - Bread	681.55	8	16
244	400-67-6412	Nutmeg - Ground	295.81	6	23
245	681-77-1757	Dried Figs	1836.16	7	28
246	604-27-8647	Syrup - Golden, Lyles	1447.44	5	36
247	526-46-5474	Milk 2% 500 Ml	1532.04	8	31
248	776-76-6773	Nut - Pine Nuts, Whole	1405.58	9	12
249	599-69-1143	Pear - Asian	590.51	5	38
250	812-11-5358	Milk Powder	1217.10	7	36
251	423-82-2865	Table Cloth 120 Round White	884.87	5	22
252	475-04-5865	Vegetable - Base	276.92	6	32
253	725-74-8174	Napkin - Beverge, White 2 - Ply	538.66	5	29
254	428-18-7735	Bacardi Mojito	647.63	9	18
255	271-12-4533	Parsnip	472.40	8	36
256	615-53-2564	Coconut - Shredded, Sweet	1818.61	9	10
257	671-53-3350	Creme De Menthe Green	1354.94	6	35
258	485-62-5513	Shichimi Togarashi Peppeers	27.96	9	22
259	310-21-7004	Canadian Emmenthal	633.21	10	34
260	206-12-3875	Tea - Black Currant	292.63	10	24
261	151-20-7453	Sun - Dried Tomatoes	475.57	5	17
262	896-81-7712	Beer - Sleemans Cream Ale	521.76	6	12
263	703-25-7352	C - Plus, Orange	1262.87	8	12
264	786-04-7835	Chicken Breast Wing On	1784.28	7	15
265	778-50-2254	Soup - French Can Pea	289.50	5	37
266	246-92-3731	Crackers - Graham	679.64	9	19
267	647-93-9387	Sea Bass - Fillets	836.83	8	13
268	585-59-2351	Quail - Whole, Bone - In	1718.50	6	12
269	207-55-7470	Tea - English Breakfast	281.98	5	35
270	641-66-4262	Ecolab - Ster Bac	1588.87	8	32
271	591-97-6209	General Purpose Trigger	1841.73	6	28
272	546-42-3779	Langers - Mango Nectar	292.39	6	23
273	321-97-0700	Jam - Raspberry	1947.30	10	33
274	570-68-2576	Foam Dinner Plate	1934.00	10	24
275	862-28-4356	Nut - Almond, Blanched, Ground	1003.03	9	39
276	157-70-3150	Vinegar - White	147.15	10	12
277	708-24-4709	Broom And Broom Rack White	993.78	7	36
278	831-41-0225	Foil Wrap	377.23	10	12
279	428-70-5927	Sponge Cake Mix - Chocolate	1582.51	5	15
280	575-17-6662	Allspice - Jamaican	505.34	7	28
281	785-47-8298	Sprite, Diet - 355ml	516.34	10	16
282	849-42-5536	Bread - Raisin	1049.87	8	10
283	199-71-5431	Mcgillicuddy Vanilla Schnap	1966.15	10	37
284	361-78-0277	Island Oasis - Ice Cream Mix	344.10	10	10
285	537-96-6313	Flower - Commercial Spider	1915.51	7	25
286	732-11-4391	Calypso - Strawberry Lemonade	1870.57	6	33
287	718-29-7627	Wine - Shiraz South Eastern	572.85	5	14
288	709-05-3445	Ham - Smoked, Bone - In	1846.99	5	19
289	178-98-4623	Wine - Rosso Toscano Igt	416.31	9	24
290	545-34-3115	Muffin - Mix - Creme Brule 15l	141.62	5	30
291	550-66-3900	Ecolab - Orange Frc, Cleaner	924.20	9	35
292	158-99-5025	Chocolate - Dark	1455.71	7	31
293	409-36-4019	Beer - Corona	1161.37	5	25
294	118-13-6797	Lemonade - Kiwi, 591 Ml	1032.41	5	20
295	770-79-4358	Campari	1617.38	6	34
296	176-64-4678	Cheese - La Sauvagine	20.15	5	20
297	274-52-0953	Nantucket Pine Orangebanana	1016.23	8	28
298	816-11-6210	Fond - Chocolate	1027.41	5	33
299	214-79-9306	Bacardi Raspberry	1414.90	10	34
300	113-63-2191	Tomatoes - Yellow Hot House	527.02	6	39
301	322-71-4255	Soup - Campbells, Butternut	204.80	5	23
302	110-06-2864	Cup - 6oz, Foam	1968.99	9	30
303	351-28-6050	Wine - Magnotta - Red, Baco	1656.58	6	24
304	874-09-7759	Pastry - Baked Scones - Mini	630.20	9	21
305	721-29-1212	Rice - Brown	1629.64	6	27
306	877-48-6451	Wine - Rhine Riesling Wolf Blass	900.70	5	11
307	341-09-4781	Banana Turning	748.47	9	27
308	843-89-8503	Icecream Cone - Areo Chocolate	1700.01	5	26
309	327-07-4696	Onion - Dried	945.62	6	39
310	677-62-7068	Wine - Blue Nun Qualitatswein	48.91	9	39
311	621-75-6498	Syrup - Golden, Lyles	1314.62	5	20
312	455-76-7837	Passion Fruit	864.44	10	23
313	370-21-3621	Glove - Cutting	189.21	8	24
314	609-72-9092	Glove - Cutting	96.62	9	26
315	281-46-7747	Green Scrubbie Pad H.duty	384.99	10	32
316	429-81-9596	Ecolab - Mikroklene 4/4 L	1140.20	6	28
317	595-81-3675	Dried Cranberries	1101.73	10	35
318	826-07-6133	Gatorade - Fruit Punch	1738.31	10	10
319	454-79-9200	Calypso - Lemonade	360.48	9	35
320	493-12-4212	Napkin White - Starched	249.78	8	36
321	299-45-7068	Cheese - Cheddar, Mild	695.71	10	21
322	688-07-3522	Pepper - Chili Powder	126.58	9	24
323	829-28-7991	Yukon Jack	130.24	6	28
324	574-98-5202	Pastry - Cherry Danish - Mini	548.00	7	14
325	286-89-9009	Crackers - Melba Toast	1787.68	8	15
326	858-58-5649	Plate Foam Laminated 9in Blk	1824.01	9	32
327	502-40-6079	Tomato - Peeled Italian Canned	1727.78	5	18
328	430-78-1770	Mints - Striped Red	1602.11	10	13
329	528-15-3928	Haggis	1316.75	9	38
330	103-38-4545	Pepper - Chili Powder	203.10	8	20
331	574-71-0417	Galliano	652.77	10	21
332	233-92-1382	Soup - Knorr, Veg / Beef	934.87	10	29
333	659-86-5543	Skirt - 24 Foot	1837.20	8	16
334	139-06-7451	Wine - Alsace Riesling Reserve	1452.32	5	32
335	498-28-8046	Shrimp - 150 - 250	1603.93	9	23
336	870-45-6412	Devonshire Cream	1881.00	10	26
337	851-39-4280	Soup - Campbells - Tomato	911.97	6	12
338	642-18-3724	Soup Campbells Mexicali Tortilla	1719.89	8	24
339	790-16-7620	Ham - Cooked Bayonne Tinned	324.62	7	27
340	242-17-8554	Lumpfish Black	621.37	6	39
341	332-26-0679	Ice Cream Bar - Oreo Sandwich	1469.15	9	31
342	323-94-0068	Scrubbie - Scotchbrite Hand Pad	325.51	6	15
343	234-26-6313	Cookie Dough - Chunky	707.36	5	18
344	799-97-5535	Yokaline	406.68	7	13
345	104-32-5332	Bread Ww Cluster	380.98	10	22
346	846-87-1879	Lettuce - Sea / Sea Asparagus	999.75	9	27
347	475-42-7049	Wine - Red, Antinori Santa	887.57	10	38
348	538-30-7208	Onions - Red Pearl	1104.06	7	16
349	539-06-0751	Wine - Alsace Gewurztraminer	808.95	10	20
350	564-73-6044	Rappini - Andy Boy	402.77	6	40
351	568-13-0383	Foil - Round Foil	872.40	10	36
352	483-77-4610	Pork - Bacon, Sliced	1711.07	8	18
353	722-66-5467	Five Alive Citrus	1595.18	9	26
354	861-31-7154	Pepper - Chili Powder	89.58	6	30
355	347-65-7576	Peach - Fresh	1093.74	6	31
356	265-27-1965	Cups 10oz Trans	1876.10	10	21
357	825-27-4128	Pastry - Carrot Muffin - Mini	194.43	8	14
358	434-93-4523	Beef - Ground Medium	677.46	7	12
359	432-15-3644	Cake Circle, Foil, Scallop	96.92	10	19
360	802-60-9873	Snapple - Mango Maddness	1822.54	9	35
361	332-52-5727	Octopus	134.57	9	20
362	199-03-5322	Bread - Roll, Soft White Round	1997.75	9	12
363	513-31-0869	Mushroom - Shitake, Dry	451.61	5	31
364	567-78-0702	Puff Pastry - Slab	620.41	6	35
365	887-53-3227	Duck - Whole	1236.67	7	21
366	789-42-7125	Longos - Lasagna Beef	1252.60	9	39
367	467-95-5700	Cake - French Pear Tart	1560.23	5	40
368	169-32-9810	Pasta - Lasagne, Fresh	144.50	10	21
369	383-64-2497	Pur Source	434.23	8	20
370	655-30-3989	Rabbit - Legs	1584.36	8	39
371	570-88-8824	Yoghurt Tubes	328.29	8	11
372	442-24-0051	Container - Hngd Cll Blk 7x7x3	618.39	9	21
373	301-18-8887	Anchovy Paste - 56 G Tube	1864.34	10	36
374	169-28-9504	Cup - 3.5oz, Foam	1336.53	5	11
375	447-59-8816	Cucumber - Pickling Ontario	382.20	5	24
376	110-87-7417	Stainless Steel Cleaner Vision	1797.39	7	34
377	445-15-3814	Pepper - Paprika, Hungarian	1365.55	9	11
378	588-91-4463	Jack Daniels	664.19	5	10
379	185-45-8120	Spice - Chili Powder Mexican	1069.19	6	19
380	487-46-8831	Wine - Valpolicella Masi	1414.42	10	31
381	322-78-6960	Syrup - Pancake	1299.17	5	27
382	728-97-0956	Cloves - Ground	25.07	7	22
383	245-30-9097	Bread - Raisin Walnut Oval	1141.74	10	23
384	715-50-4467	Beer - Mcauslan Apricot	471.86	10	22
385	621-36-2041	Ostrich - Prime Cut	1841.31	5	14
386	185-70-9755	Sugar - White Packet	1777.04	10	13
387	527-01-2709	Pasta - Penne, Lisce, Dry	352.66	9	23
388	534-55-3038	Juice - Orange	1288.50	8	38
389	769-43-9582	Bols Melon Liqueur	1942.86	7	40
390	482-99-6056	Horseradish - Prepared	1779.90	10	30
391	177-43-5873	Corn Syrup	695.38	10	17
392	635-03-5037	Cheese - Parmesan Grated	1463.57	6	23
393	710-18-3195	Beans - Butter Lrg Lima	1655.56	9	18
394	559-68-7649	Cheese - Victor Et Berthold	1708.93	5	13
395	491-91-9499	Vodka - Moskovskaya	721.62	5	30
396	165-09-4412	Pie Filling - Pumpkin	1832.21	7	35
397	346-82-6106	Wine - Redchard Merritt	62.32	9	31
398	688-56-3427	Salt - Table	938.49	6	22
399	480-51-9052	Mushrooms - Black, Dried	1824.38	10	12
400	151-72-4449	Wine - Fat Bastard Merlot	1286.29	10	33
401	869-11-0458	Sugar - Individual Portions	769.30	7	40
402	169-57-4267	Wine - Magnotta - Belpaese	1993.64	6	22
403	395-79-5185	Mangostein	463.72	8	20
404	859-40-9226	Artichoke - Hearts, Canned	48.12	5	29
405	890-35-1700	Island Oasis - Mango Daiquiri	777.31	9	16
406	621-89-7277	Phyllo Dough	506.54	6	11
407	336-19-9175	Cumin - Whole	1883.48	6	29
408	870-73-7656	Wine - Penfolds Koonuga Hill	1603.10	8	30
409	467-09-7911	Scallops - Live In Shell	1626.28	7	33
410	410-49-2852	Pork - Back, Long Cut, Boneless	1555.07	6	37
411	100-36-7452	Tamarillo	1354.76	5	18
412	455-61-0994	Soup - Cream Of Potato / Leek	410.02	8	25
413	836-55-7936	Broom And Brush Rack Black	621.09	7	33
414	244-54-1571	Alize Gold Passion	1330.27	10	21
415	877-16-7004	Bread - Pain Au Liat X12	1553.47	10	23
416	712-94-8422	Crab - Meat Combo	844.10	7	19
417	681-21-4130	Breadfruit	1724.29	8	24
418	475-42-7250	Coconut Milk - Unsweetened	1707.82	8	11
419	106-65-0748	Bread Country Roll	640.96	9	33
420	862-91-5255	Milk - 1%	1465.65	10	18
421	270-09-5994	Pork - Ground	1768.02	6	17
422	794-90-0909	Bread - Bagels, Mini	1244.21	9	35
423	486-41-6465	Ice Cream Bar - Rolo Cone	1038.13	9	19
424	871-93-0066	Red Pepper Paste	1402.41	8	32
425	825-53-8456	Cookie Chocolate Chip With	755.23	9	26
426	810-66-7821	Juice - Mango	1447.18	9	37
427	162-79-7288	Bread Roll Foccacia	761.97	7	25
428	779-86-5095	Cheese - Roquefort Pappillon	1317.35	5	15
429	539-93-6697	Sponge Cake Mix - Vanilla	211.75	8	32
430	889-98-7348	Fib N9 - Prague Powder	1265.94	6	34
431	259-87-8556	Wine - Two Oceans Sauvignon	1973.91	8	40
432	336-96-5761	Fudge - Cream Fudge	1226.94	6	33
433	862-78-1574	Veal - Provimi Inside	265.36	8	18
434	697-60-1773	Mushrooms - Honey	605.33	8	20
435	829-33-6033	Wine - Ruffino Chianti	741.74	7	10
436	328-06-2393	Bread - Olive Dinner Roll	637.26	5	19
437	490-18-3828	Sprouts - Peppercress	262.95	6	14
438	343-66-8068	Brandy Apricot	161.76	9	39
439	428-61-4583	Dried Cherries	671.94	5	22
440	138-07-4534	Hot Chocolate - Individual	998.88	8	38
441	771-96-6887	Chervil - Fresh	1432.58	5	30
442	679-35-5978	Dooleys Toffee	216.22	8	22
443	671-51-3122	Wine - Mondavi Coastal Private	799.12	10	40
444	353-42-2081	Turnip - White, Organic	1834.48	10	14
445	530-04-7189	Jerusalem Artichoke	1157.57	8	27
446	353-87-6437	Bacardi Raspberry	1033.13	10	20
447	406-41-5294	Bonito Flakes - Toku Katsuo	1512.42	6	20
448	141-94-1880	Pasta - Lasagne, Fresh	1330.80	9	34
449	187-36-7089	Piping Jelly - All Colours	1835.80	9	10
450	555-29-7666	Oil - Olive	1454.82	5	21
451	730-19-8513	Table Cloth 54x54 Colour	1513.51	6	14
452	413-24-2570	Cheese - Goat	659.61	5	32
453	540-75-8304	Wine - White, Antinore Orvieto	1056.11	8	36
454	798-38-1316	Wine - Vineland Estate Semi - Dry	469.40	10	20
455	259-18-8352	Parsley - Dried	220.37	9	35
456	330-96-3262	Beer - Fruli	690.83	8	13
457	477-21-8190	Dc - Frozen Momji	1892.28	8	40
458	782-05-4152	Ham - Procutinni	751.33	6	22
459	267-53-0223	Appetizer - Chicken Satay	1113.45	10	17
460	313-74-4719	Roe - Lump Fish, Black	1423.01	9	25
461	229-52-0236	Beer - Blue Light	1816.37	9	18
462	787-03-1601	Crackers - Water	1230.24	5	36
463	580-10-9654	Potato - Sweet	1578.14	8	14
464	658-12-5120	Carrots - Purple, Organic	1215.08	9	32
465	567-30-1902	Chocolate - Mi - Amere Semi	689.68	10	31
466	765-37-6895	Pork - Shoulder	1952.67	8	10
467	510-55-7965	Shrimp - 16 - 20 Cooked, Peeled	531.68	5	16
468	362-79-4686	Scotch - Queen Anne	925.49	7	37
469	823-71-0062	Bag - Regular Kraft 20 Lb	1334.32	9	28
470	129-07-1142	Pike - Frozen Fillet	524.80	5	37
471	623-60-8219	Hummus - Spread	1139.71	10	37
472	384-28-9973	Soup - Campbells Asian Noodle	869.73	10	39
473	480-87-0123	Appetizer - Crab And Brie	1132.87	10	38
474	621-72-2392	Temperature Recording Station	750.69	5	31
475	212-71-9941	Carbonated Water - Cherry	206.95	7	28
476	883-10-2733	Numi - Assorted Teas	1047.32	7	23
477	833-74-9316	Beer - Upper Canada Light	1300.47	10	29
478	706-60-6300	Garlic	23.86	5	39
479	189-73-1973	Wine - Cotes Du Rhone	1353.67	10	15
480	631-23-6158	Lettuce - Baby Salad Greens	1552.43	10	20
481	776-02-3895	Whmis Spray Bottle Graduated	592.45	9	38
482	657-61-4555	Paper Towel Touchless	734.22	8	20
483	855-86-1770	Squash - Acorn	1813.69	9	37
484	479-94-3989	Pasta - Fusili Tri - Coloured	1099.38	6	39
485	702-68-8944	Garam Marsala	1317.45	8	20
486	544-80-9042	Chicken - Wings, Tip Off	832.16	5	24
487	279-83-4839	Pumpkin	1409.33	8	21
488	352-67-6727	Flower - Commercial Spider	925.57	9	24
489	507-81-1045	Sour Puss - Tangerine	344.37	10	16
490	752-52-5627	Capon - Whole	841.20	7	34
491	223-33-8294	Cookie Dough - Oatmeal Rasin	1432.32	9	30
492	172-79-9927	Veal - Tenderloin, Untrimmed	1058.81	10	25
493	698-86-8369	Iced Tea - Lemon, 340ml	388.98	10	25
494	230-45-6177	Flour - Semolina	1902.85	5	12
495	832-13-4275	Veal - Leg, Provimi - 50 Lb Max	1329.82	6	10
496	260-48-1775	Beef Ground Medium	1866.50	6	10
497	173-39-2654	Wine - Barossa Valley Estate	1705.20	9	23
498	344-83-3934	Lentils - Red, Dry	404.74	6	20
499	292-82-8902	Chicken - Base	1427.07	6	11
500	458-64-4068	Extract - Raspberry	706.21	10	17
501	623-95-9147	Pasta - Shells, Medium, Dry	1505.32	8	29
502	200-92-4467	Bagel - Ched Chs Presliced	275.97	7	11
503	698-06-2952	Zucchini - Mini, Green	90.96	8	12
504	499-85-3816	Cookie Dough - Peanut Butter	181.68	6	30
505	383-32-2393	Nantucket Apple Juice	290.47	8	22
506	492-77-4662	Food Colouring - Orange	490.03	8	24
507	743-37-4220	Pepper - White, Whole	845.97	5	14
508	527-99-0325	Beef - Striploin Aa	858.97	6	31
509	100-91-1927	Pie Filling - Pumpkin	385.15	7	31
510	150-07-6194	Spice - Paprika	242.97	6	35
511	300-11-1709	Cookies - Englishbay Oatmeal	1456.44	8	33
512	854-31-2081	Bread - Hamburger Buns	1154.95	10	14
513	429-23-7922	Longan	588.80	5	25
514	717-54-7166	Wine - George Duboeuf Rose	875.32	5	25
515	696-53-8710	Pate - Liver	1417.59	10	30
516	213-01-7010	Sage Derby	1298.07	10	31
517	640-56-6285	Tea - Black Currant	56.31	9	18
518	439-68-3363	Puree - Mango	1736.66	8	21
519	508-01-9273	Oil - Avocado	1301.77	7	32
520	896-04-5965	Taro Root	24.29	9	22
521	665-20-2875	Potatoes - Mini Red	1526.47	7	24
522	355-36-3709	Chicken - Breast, 5 - 7 Oz	364.61	5	35
523	119-49-7114	Beef - Ox Tongue	992.66	8	38
524	699-75-7296	Fuji Apples	132.59	7	31
525	292-06-0845	Pastry - Chocolate Marble Tea	359.40	10	19
526	532-79-6684	Pork - Bacon,back Peameal	1917.51	9	34
527	715-93-0752	Beer - Camerons Cream Ale	1566.05	6	29
528	466-47-1973	Wine - Magnotta, Merlot Sr Vqa	796.54	10	25
529	481-43-6109	Lotus Leaves	1147.93	6	14
530	711-35-7618	Bagel - Everything	1625.61	9	37
531	270-05-6472	Wild Boar - Tenderloin	357.12	7	25
532	690-98-9085	Puree - Raspberry	473.10	6	28
533	576-84-9724	Apples - Sliced / Wedge	924.23	7	18
534	899-67-1152	Salt - Rock, Course	452.89	6	31
535	579-48-5138	Foil Wrap	362.38	10	34
536	897-16-3507	Cup - Translucent 7 Oz Clear	303.74	10	17
537	675-86-4455	Food Colouring - Green	1724.34	8	38
538	568-73-1606	Fish - Artic Char, Cold Smoked	1799.69	10	38
539	671-31-8713	Veal - Bones	868.78	10	38
540	688-34-8495	Apricots - Halves	189.70	5	31
541	634-46-1058	Pepper - Chili Powder	1136.02	9	35
542	189-44-6789	Ginger - Crystalized	207.34	5	25
543	124-43-1963	Bread Foccacia Whole	590.85	10	15
544	265-99-7524	Sprite - 355 Ml	966.72	6	38
545	211-25-0871	Napkin - Beverage 1 Ply	785.96	8	36
546	153-52-5299	Paper Towel Touchless	123.07	6	20
547	576-75-1961	Soup Campbells Beef With Veg	1474.58	9	13
548	265-59-4308	Paper - Brown Paper Mini Cups	1697.36	8	32
549	595-54-6545	Curry Paste - Madras	153.94	5	23
550	695-93-6954	Bagel - Sesame Seed Presliced	1543.08	8	27
551	789-28-3904	Towel Multifold	1204.22	7	12
552	177-63-4373	Calvados - Boulard	244.93	8	10
553	546-27-5441	Rice - Brown	1768.57	7	13
554	507-91-1660	Breakfast Quesadillas	61.64	8	11
555	436-79-1692	Pasta - Elbows, Macaroni, Dry	1811.23	5	28
556	211-33-0789	Gatorade - Orange	135.10	6	14
557	214-01-8920	Soup - Campbells Chicken	1879.58	5	35
558	370-03-0973	Food Colouring - Green	1183.15	6	26
559	685-12-9789	Compound - Rum	1208.00	6	28
560	716-29-1045	Table Cloth 53x69 White	171.58	9	20
561	201-02-2089	Rice Pilaf, Dry,package	1301.79	9	38
562	560-20-4124	Cabbage - Green	162.33	10	22
563	142-08-1057	Bread Sour Rolls	887.41	10	17
564	715-37-3640	Bread - Sour Sticks With Onion	723.50	7	15
565	826-74-2403	Chick Peas - Dried	1471.12	8	28
566	417-19-8760	Cheese - Swiss	99.81	9	17
567	513-41-9995	Wine - Rosso Del Veronese Igt	798.22	6	13
568	370-06-9962	Tofu - Firm	1273.11	7	22
569	718-01-4975	Pate Pans Yellow	1328.96	7	35
570	758-28-4688	Sauce - Marinara	41.85	10	10
571	209-98-4820	Sausage - Liver	930.01	7	35
572	537-48-2332	Filter - Coffee	185.81	7	15
573	520-07-0405	Veal - Kidney	1057.05	10	12
574	852-75-5702	Pastry - Banana Tea Loaf	1641.33	7	32
575	650-87-5598	Beans - Soya Bean	961.02	6	34
576	577-95-4642	Pepper - Chipotle, Canned	1255.73	10	37
577	641-26-7132	Beef - Bones, Cut - Up	1688.46	6	22
578	526-59-9281	Chevere Logs	43.13	8	29
579	773-31-8495	Sauce - Black Current, Dry Mix	406.26	10	30
580	167-38-6539	7up Diet, 355 Ml	11.91	6	40
581	840-45-5787	Toamtoes 6x7 Select	1237.40	6	36
582	316-87-5051	Milk Powder	1786.22	5	28
583	340-63-4063	Soup - Cream Of Potato / Leek	561.62	5	38
584	206-56-5236	Lemon Tarts	98.86	6	21
585	631-14-5990	Ecolab - Mikroklene 4/4 L	1646.72	6	36
586	689-36-0030	Grand Marnier	1747.02	8	11
587	583-38-0510	Tart Shells - Barquettes, Savory	1833.73	10	38
588	620-21-1373	Gloves - Goldtouch Disposable	1772.62	10	31
589	271-71-0648	Tart - Raisin And Pecan	1555.17	7	33
590	892-57-4788	Wine - Bouchard La Vignee Pinot	67.88	8	37
591	753-46-9181	Soup - Knorr, French Onion	1843.14	8	18
592	245-36-5915	Shrimp - 16/20, Iqf, Shell On	733.90	5	19
593	881-80-0643	Pickerel - Fillets	249.79	8	12
594	546-89-9781	Shrimp - Black Tiger 13/15	306.10	7	34
595	343-35-4006	Crab - Back Fin Meat, Canned	234.07	9	12
596	311-42-0719	Muffin Mix - Lemon Cranberry	1321.60	5	25
597	826-10-6818	Ice Cream - Fudge Bars	332.25	5	38
598	791-34-5803	Sambuca - Ramazzotti	82.50	6	13
599	655-64-3696	Wine - Alicanca Vinho Verde	1445.90	9	22
600	845-48-9055	Shark - Loin	1598.84	9	15
601	442-79-8959	Cheese - Ermite Bleu	132.65	8	27
602	515-42-6162	Pepper - Chillies, Crushed	1370.28	7	34
603	335-01-5238	Tequila - Sauza Silver	414.48	10	17
604	628-81-0894	Wasabi Powder	1541.08	8	14
605	266-38-6944	Pork - Smoked Back Bacon	1067.80	8	37
606	833-10-9351	Wine - Chateau Timberlay	895.66	6	19
607	436-26-0091	Whmis - Spray Bottle Trigger	742.07	6	21
608	668-74-6095	Rabbit - Frozen	50.23	9	39
609	282-51-7579	Wine - Red, Cabernet Merlot	542.82	9	24
610	332-35-2080	Turnip - Mini	1940.40	8	35
611	150-48-7700	Danishes - Mini Raspberry	778.57	10	13
612	280-81-6250	Fish - Base, Bouillion	1276.37	10	28
613	809-49-7288	Apple - Delicious, Red	999.33	10	17
614	375-26-1783	Soup - Campbells, Lentil	1805.58	9	15
615	832-95-4775	Mini - Vol Au Vents	1156.14	7	27
616	273-50-0406	Soap - Pine Sol Floor Cleaner	746.97	5	17
617	436-37-5159	Red Snapper - Fillet, Skin On	554.34	8	10
618	815-92-1295	Ecolab - Balanced Fusion	1272.92	6	28
619	181-30-3137	Wine - Ej Gallo Sonoma	1499.02	7	29
620	771-91-3477	Beef Flat Iron Steak	1421.67	10	11
621	572-07-9983	Cake Sheet Combo Party Pack	396.41	10	19
622	610-76-1803	Wine - Mas Chicet Rose, Vintage	934.18	8	30
623	224-56-4374	Wine - Cotes Du Rhone	1243.22	5	20
624	220-91-8313	Juice - Pineapple, 48 Oz	759.84	5	40
625	629-89-3340	Bread Sour Rolls	524.81	10	16
626	442-64-9305	Wine - Barossa Valley Estate	412.73	7	20
627	436-97-5994	Kumquat	38.56	9	15
628	582-59-1741	Cauliflower	353.14	8	16
629	713-27-8913	Tea - Herbal I Love Lemon	926.93	5	29
630	182-51-8867	Chicken - Base, Ultimate	58.91	6	10
631	349-59-1917	Truffle Cups - White Paper	16.14	8	27
632	864-82-7055	Cheese - Cheddar, Old White	826.14	6	38
633	425-52-7898	Knife Plastic - White	93.30	5	37
634	326-48-7784	Cake - Night And Day Choclate	639.26	8	22
635	472-61-6490	Fish - Soup Base, Bouillon	1753.56	8	34
636	113-31-7017	Quail - Whole, Boneless	1039.83	8	31
637	430-99-0424	Soup - Campbells - Tomato	661.83	6	13
638	536-26-7852	Foil - 4oz Custard Cup	99.08	8	20
639	727-65-7261	Beef - Bresaola	1064.78	10	37
640	147-47-0779	Pasta - Detalini, White, Fresh	1826.21	5	17
641	581-79-1745	Madeira	466.35	9	37
642	849-79-1789	Mushroom - Chanterelle, Dry	372.71	9	32
643	747-57-5916	Baking Soda	1431.01	8	27
644	556-43-2024	Glass - Juice Clear 5oz 55005	1350.60	6	21
645	111-82-8512	Puree - Guava	326.17	8	34
646	251-77-4155	Chicken - Tenderloin	1033.79	5	19
647	464-50-8842	Soup - Campbells Mushroom	1888.41	5	13
648	787-31-9370	Potatoes - Yukon Gold, 80 Ct	538.00	5	38
649	275-23-4710	Creme De Banane - Marie	754.84	7	12
650	686-04-4994	Split Peas - Yellow, Dry	758.89	10	11
651	288-19-0141	Beans - Green	368.25	6	28
652	409-58-0304	Soup - Cream Of Potato / Leek	821.26	9	28
653	158-39-3334	Pan Grease	1177.86	9	13
654	348-54-9250	Sea Bass - Whole	167.89	9	10
655	270-07-9323	Bar - Sweet And Salty Chocolate	249.49	9	21
656	660-48-7751	Milk - Homo	1247.97	10	37
657	596-17-6617	Tofu - Soft	634.27	8	20
658	699-87-2896	Tea Leaves - Oolong	936.10	5	14
659	658-55-2165	Ranchero - Primerba, Paste	1454.26	7	25
660	846-71-6058	Cheese - Shred Cheddar / Mozza	718.33	7	19
661	731-24-6589	V8 Splash Strawberry Banana	1689.30	8	33
662	287-24-5440	Thyme - Fresh	1720.21	5	15
663	536-78-0923	Lime Cordial - Roses	1953.44	5	34
664	388-81-1699	Sauce Tomato Pouch	1931.98	9	37
665	449-59-4675	Pesto - Primerba, Paste	457.45	5	20
666	711-58-4799	Wine - Port Late Bottled Vintage	1694.35	6	27
667	682-99-0318	Extract - Vanilla,artificial	1819.33	5	39
668	478-10-3897	Myers Planters Punch	109.58	7	23
669	593-70-8350	Wine - Chenin Blanc K.w.v.	1627.95	7	35
670	259-77-8744	Nestea - Ice Tea, Diet	1074.19	10	27
671	850-82-8621	Macaroons - Homestyle Two Bit	750.72	10	32
672	141-61-3688	Oranges - Navel, 72	1003.65	6	24
673	435-33-7846	Uniform Linen Charge	1349.48	8	21
674	148-77-3796	Ice Cream - Strawberry	1681.13	5	38
675	843-54-2874	Chip - Potato Dill Pickle	487.12	6	17
676	184-40-2578	Extract - Raspberry	1755.04	7	32
677	555-02-4704	Longos - Penne With Pesto	578.71	5	17
678	451-09-9812	Artichokes - Jerusalem	1785.16	8	10
679	755-72-0832	Potatoes - Yukon Gold, 80 Ct	740.95	8	36
680	792-26-5200	Cheese - Ermite Bleu	937.49	9	40
681	408-04-6774	Cleaner - Pine Sol	962.95	10	21
682	302-27-6219	Cheese - St. Andre	734.75	5	27
683	551-37-0996	Wine - Red, Gallo, Merlot	1928.66	9	27
684	201-29-1858	Bread - Hot Dog Buns	125.78	5	30
685	125-41-6606	Langers - Ruby Red Grapfruit	1498.79	9	28
686	841-52-0420	Wine - Crozes Hermitage E.	1994.02	10	33
687	513-53-7903	Vermouth - White, Cinzano	1845.39	10	21
688	894-12-7629	Juice - Apple 284ml	1344.44	7	33
689	157-24-5658	Chocolate - Pistoles, Lactee, Milk	1570.67	9	25
690	802-18-4723	Soup - Canadian Pea, Dry Mix	417.94	6	29
691	423-96-1930	Trout - Smoked	1363.56	7	28
692	631-35-1125	Wine - Soave Folonari	1191.71	8	28
693	296-57-0519	Soup V8 Roasted Red Pepper	769.82	8	34
694	479-35-7668	Nestea - Ice Tea, Diet	334.77	6	30
695	106-84-0028	Sterno - Chafing Dish Fuel	907.44	10	11
696	246-99-5922	Cheese - Grana Padano	40.93	9	39
697	447-96-6690	Scallop - St. Jaques	1353.17	9	38
698	199-25-6465	Wine - Vouvray Cuvee Domaine	761.88	8	14
699	548-43-3654	Turnip - Mini	257.36	8	29
700	144-90-3952	The Pop Shoppe Pinapple	66.37	8	31
701	323-88-1367	Island Oasis - Banana Daiquiri	1960.11	6	15
702	607-06-7034	Puree - Guava	487.69	8	40
703	310-83-7188	Pie Shell - 5	289.28	6	33
704	896-74-6421	Breakfast Quesadillas	145.81	6	35
705	600-80-0775	Bread - Flat Bread	817.44	9	28
706	783-20-4744	Pastry - Chocolate Chip Muffin	344.31	5	22
707	550-57-2372	Lamb - Leg, Boneless	121.53	8	29
708	854-41-4587	Beans - Fava, Canned	352.68	8	21
709	354-48-5575	Beef - Inside Round	700.12	9	39
710	120-42-4254	Ranchero - Primerba, Paste	1977.92	8	38
711	409-92-6309	Wine - Saint - Bris 2002, Sauv	495.39	9	21
712	570-77-0932	Table Cloth 144x90 White	1261.60	10	36
713	419-54-6421	Cheese - Bakers Cream Cheese	1940.43	6	32
714	474-20-0560	Beans - Fava Fresh	1180.46	9	39
715	799-06-7961	Beef - Ox Tail, Frozen	563.37	9	34
716	576-83-8314	Horseradish - Prepared	1664.51	6	24
717	379-48-4413	Capon - Breast, Double, Wing On	980.47	7	19
718	694-07-9635	Nectarines	179.16	8	27
719	691-31-6642	Vodka - Lemon, Absolut	1144.22	10	15
720	447-27-9544	Turnip - Mini	1114.56	8	37
721	594-71-3278	Herb Du Provence - Primerba	1389.22	9	17
722	674-87-1943	Water - Spring Water 500ml	1666.62	9	35
723	143-63-5003	Tray - 12in Rnd Blk	1132.21	9	25
724	168-48-6865	Tamarillo	1976.42	8	30
725	826-29-6304	Soup - Campbells - Tomato	1363.29	5	11
726	760-21-2691	Bag - Clear 7 Lb	102.85	6	12
727	240-66-1499	Crackers - Soda / Saltins	1854.16	5	17
728	329-37-7052	Eggplant - Asian	411.42	6	34
729	757-01-0688	White Baguette	858.89	6	28
730	391-83-5308	Cake - Cake Sheet Macaroon	162.93	10	40
731	426-61-3104	Cheese - Gouda	440.94	6	32
732	202-43-6251	Cheese - Brie	809.00	8	40
733	861-55-3293	Water - Spring Water, 355 Ml	117.09	6	35
734	769-55-3272	Lamb - Whole, Frozen	1605.79	9	27
735	141-87-9129	Chocolate Eclairs	403.12	10	34
736	502-94-4056	Lid - 3oz Med Rec	1737.28	8	12
737	790-79-6481	Mini - Vol Au Vents	1388.19	6	29
738	531-34-6268	Wine - Balbach Riverside	209.71	5	30
739	745-22-6668	Bread - White Epi Baguette	679.52	10	21
740	441-11-4857	Arctic Char - Fillets	1403.45	5	17
741	205-89-6324	Hagen Daza - Dk Choocolate	1740.41	10	38
742	867-60-5263	Zucchini - Green	1576.24	6	35
743	782-23-8997	Soup - Campbells, Classic Chix	630.65	9	33
744	478-27-4018	Bread - Roll, Soft White Round	102.70	7	12
745	386-95-7302	Asparagus - Frozen	11.63	10	20
746	557-01-7670	Ecolab - Solid Fusion	1703.45	5	18
747	375-65-6762	Contreau	1612.98	5	10
748	386-61-9056	Walkers Special Old Whiskey	1274.91	5	33
749	250-47-3164	Wine - White Cab Sauv.on	1261.55	8	36
750	601-22-9911	Trueblue - Blueberry	881.44	9	26
751	764-84-7350	Chinese Lemon Pork	1238.85	5	22
752	296-44-4585	Quiche Assorted	1597.72	6	31
753	894-03-7896	Rye Special Old	1306.39	7	20
754	289-74-6066	Pike - Frozen Fillet	1068.60	10	28
755	262-04-9211	Chocolate - Milk	1821.58	5	26
756	685-73-8448	Beer - Sleemans Cream Ale	388.81	10	16
757	551-22-5064	Yogurt - French Vanilla	929.53	10	15
758	751-89-0574	Trueblue - Blueberry 12x473ml	1216.45	5	35
759	166-21-4031	Wine - Niagara,vqa Reisling	47.28	8	32
760	216-74-3117	Sterno - Chafing Dish Fuel	234.86	7	38
761	876-76-6531	Pear - Halves	1455.45	6	39
762	191-56-9395	Pie Shell - 5	1320.70	10	16
763	716-48-3777	Dried Cranberries	1889.12	10	20
764	319-58-1835	Napkin - Dinner, White	1678.94	8	21
765	515-92-1492	Fish - Bones	1054.42	8	36
766	492-62-5959	Cheese - Brie	1509.49	9	11
767	730-85-3414	Ocean Spray - Kiwi Strawberry	1382.63	5	21
768	684-71-6578	Sparkling Wine - Rose, Freixenet	332.41	8	17
769	575-87-8800	Pepper - Cayenne	1939.00	9	34
770	449-29-9959	Wine - Malbec Trapiche Reserve	861.80	5	10
771	607-43-0087	Marjoram - Fresh	1195.88	5	22
772	208-33-7565	Mushroom - Portebello	114.87	9	19
773	113-10-5346	Soup - Campbells Chili	1894.72	5	37
774	218-85-2339	Nantucket - 518ml	1114.69	6	11
775	398-14-0052	Pail For Lid 1537	574.29	7	17
776	442-39-0528	Pork - Loin, Bone - In	1804.26	6	25
777	521-16-6713	Pastry - French Mini Assorted	1720.88	6	26
778	743-44-6163	Chocolate - Mi - Amere Semi	42.63	8	40
779	764-04-3456	Cake - Night And Day Choclate	1939.87	5	31
780	794-12-9001	Tomatoes - Plum, Canned	971.46	10	37
781	507-01-2533	Dr. Pepper - 355ml	1815.73	6	27
782	637-99-1248	Salmon Atl.whole 8 - 10 Lb	1354.45	5	20
783	391-98-1660	Soup - Verve - Chipotle Chicken	1487.86	6	38
784	638-62-2746	Beer - Maudite	1130.29	7	21
785	228-99-4055	Cookie - Dough Variety	729.23	7	36
786	288-19-5836	Oranges - Navel, 72	646.80	7	17
787	497-04-6516	Gin - Gilbeys London, Dry	1000.52	7	37
788	722-85-3982	Gherkin	1619.33	8	16
789	643-80-3520	Bagel - Ched Chs Presliced	1828.86	7	19
790	608-59-7767	Soup - Chicken And Wild Rice	1892.47	9	27
791	133-67-7008	Nut - Almond, Blanched, Ground	1727.45	7	16
792	428-07-9008	Food Colouring - Orange	1342.89	6	23
793	759-51-7550	Wine - Touraine Azay - Le - Rideau	74.18	6	27
794	481-81-4080	Soup - Campbells - Chicken Noodle	408.39	6	24
795	682-96-7975	Melon - Watermelon Yellow	185.48	7	16
796	646-08-0267	Onion - Dried	1888.74	7	15
797	671-08-5940	Pear - Prickly	1045.75	5	29
798	353-46-2779	Rambutan	662.97	9	24
799	866-19-2174	Durian Fruit	1133.76	9	28
800	809-92-8541	Flour - Teff	1350.95	10	30
801	764-94-2573	Vinegar - Red Wine	689.66	10	31
802	798-60-8983	Energy Drink - Franks Original	1659.99	8	11
803	685-78-4080	Cheese - Le Cru Du Clocher	1244.55	5	16
804	410-86-9197	Hickory Smoke, Liquid	547.52	6	40
805	331-28-5883	Icecream - Dstk Super Cone	567.42	6	32
806	552-95-1097	Wine - Chateauneuf Du Pape	136.90	5	27
807	728-99-8236	Wine - Riesling Alsace Ac 2001	1240.54	6	33
808	313-27-2378	Lamb Rack - Ontario	1872.62	10	30
809	400-71-7490	Pasta - Linguini, Dry	1695.30	6	26
810	267-31-5205	Sprouts - China Rose	623.27	8	20
811	463-76-3204	Appetizer - Smoked Salmon / Dill	1693.39	10	26
812	873-45-7335	Cod - Black Whole Fillet	1124.99	10	31
813	771-01-7860	Cheese - Cheddar, Medium	411.64	6	37
814	330-75-2382	Spice - Greek 1 Step	1116.42	8	15
815	418-01-2662	Beer - Steamwhistle	120.25	10	31
816	653-91-2006	Beer - Camerons Auburn	1919.69	10	15
817	586-45-4012	Bar Bran Honey Nut	821.16	6	35
818	206-42-4354	Sour Puss - Tangerine	1320.77	9	14
819	727-74-7854	Wine - Vineland Estate Semi - Dry	793.12	9	20
820	431-44-7257	Pepper - Paprika, Spanish	1853.11	10	40
821	713-79-6602	Container - Hngd Cll Blk 7x7x3	846.56	8	37
822	696-21-2111	Bay Leaf Ground	785.03	5	36
823	275-96-3914	Wine - Sogrape Mateus Rose	1746.53	6	11
824	248-10-5098	Table Cloth 54x54 Colour	1373.29	6	14
825	477-86-8611	Anchovy Fillets	1120.05	8	11
826	263-51-0353	Pie Pecan	126.60	7	20
827	536-11-6978	Salmon - Atlantic, Fresh, Whole	1252.24	6	16
828	681-09-0691	Tea - Herbal Orange Spice	405.48	10	30
829	460-03-3859	Pasta - Cappellini, Dry	1702.11	7	18
830	347-37-0208	Sugar - Fine	793.63	9	17
831	366-24-4188	Napkin Colour	58.16	7	16
832	793-29-3154	Pork - Tenderloin, Frozen	794.74	6	37
833	271-73-5923	Soup - Campbells - Chicken Noodle	1883.92	6	20
834	675-70-0166	Praline Paste	561.20	5	30
835	257-20-8555	Sugar - Crumb	599.88	6	33
836	862-21-5501	Veal - Brisket, Provimi, Bone - In	1261.46	10	15
837	153-12-6884	Pasta - Rotini, Colour, Dry	1312.50	6	40
838	728-84-6890	Sorrel - Fresh	1998.00	6	39
839	674-93-1540	Macaroons - Two Bite Choc	1508.78	10	25
840	451-76-2687	Wine - Sogrape Mateus Rose	268.89	9	40
841	579-70-1109	Glove - Cutting	535.45	8	23
842	533-59-4227	Beef - Sushi Flat Iron Steak	966.54	5	23
843	837-98-7911	Oil - Grapeseed Oil	1363.63	7	28
844	526-14-9665	Marjoram - Fresh	1820.86	9	12
845	169-87-5893	Tea - Darjeeling, Azzura	390.05	9	29
846	606-24-4767	Pumpkin - Seed	1804.33	9	10
847	243-96-6527	Basil - Thai	1166.81	9	15
848	395-12-3239	Wine - Vidal Icewine Magnotta	1808.53	7	35
849	781-91-8529	Bread - Flat Bread	1572.25	10	18
850	497-88-3521	Pastry - Banana Muffin - Mini	1954.91	10	12
851	569-26-8442	Juice - Pineapple, 341 Ml	1531.48	7	13
852	577-52-7142	Corn Syrup	1746.60	6	16
853	632-51-2354	Pasta - Fettuccine, Dry	794.25	6	31
854	781-84-8969	Wine - Bouchard La Vignee Pinot	1739.73	7	29
855	512-56-2827	Sherbet - Raspberry	122.88	10	39
856	144-13-6549	Pork - Sausage Casing	1303.73	8	12
857	389-17-3612	Nut - Almond, Blanched, Ground	1814.68	9	26
858	670-17-1288	Tart Shells - Savory, 2	1229.09	9	21
859	792-73-4650	Mushrooms - Honey	1602.60	7	15
860	790-03-3212	Wine - Vineland Estate Semi - Dry	1057.29	7	40
861	521-42-2294	Wine - Fino Tio Pepe Gonzalez	207.87	10	26
862	652-25-4317	Cheese - Taleggio D.o.p.	1344.08	10	19
863	464-68-9942	Liners - Baking Cups	503.50	6	17
864	727-67-2600	Cream - 10%	1953.76	5	18
865	323-99-3857	Mushroom - Portebello	1224.43	7	14
866	766-16-5248	Gatorade - Fruit Punch	1854.70	5	24
867	258-91-6519	Beer - Creemore	1534.44	8	23
868	716-97-5903	Dried Cranberries	1612.35	8	16
869	756-03-8752	Muffin Batt - Ban Dream Zero	827.67	8	32
870	601-60-4028	Cape Capensis - Fillet	1005.38	10	14
871	562-10-7448	Petit Baguette	1784.68	8	19
872	385-77-1080	Sambuca Cream	1064.68	5	33
873	840-64-7544	Syrup - Monin - Passion Fruit	715.78	5	29
874	676-90-6654	Cheese - Cottage Cheese	1343.85	9	10
875	834-39-7926	Beer - Paulaner Hefeweisse	454.19	5	19
876	480-73-1875	Artichokes - Knobless, White	1942.22	5	38
877	793-71-4320	Garbage Bags - Black	1530.06	10	28
878	788-70-9790	Tomato - Green	737.08	7	16
879	574-03-7065	Vinegar - Balsamic	292.19	6	37
880	495-90-5625	Kellogs Cereal In A Cup	485.57	6	10
881	400-62-8938	Table Cloth 53x69 White	1277.47	10	38
882	716-53-6158	Broom - Angled	1787.71	10	12
883	574-91-6016	Cheese - Parmigiano Reggiano	772.50	5	14
884	178-97-0158	Magnotta Bel Paese Red	278.83	9	36
885	485-95-4141	Veal - Inside, Choice	1378.71	10	16
886	106-80-1576	Chips Potato Reg 43g	1914.13	8	21
887	150-52-7403	Lamb Shoulder Boneless Nz	1418.09	5	18
888	314-95-5283	Graham Cracker Mix	1478.25	6	23
889	276-49-7254	Milk - Condensed	328.16	9	36
890	352-41-3352	Carbonated Water - Cherry	1174.64	6	28
891	553-31-4266	Onions - Red Pearl	170.17	10	29
892	103-75-6359	Veal - Liver	1887.96	7	26
893	802-58-7586	Beer - Upper Canada Lager	1038.80	7	22
894	797-65-9928	Salmon - Sockeye Raw	1116.17	8	34
895	167-47-8991	Tomato - Tricolor Cherry	1854.33	7	11
896	484-10-9031	Cheese - Woolwich Goat, Log	93.66	7	10
897	364-40-7015	Water - Spring 1.5lit	530.07	6	31
898	445-29-5884	Lychee	1851.29	9	19
899	209-03-6225	Plastic Arrow Stir Stick	1645.69	10	12
900	679-47-5733	Potatoes - Mini White 3 Oz	1736.77	6	38
901	173-29-3033	Nut - Cashews, Whole, Raw	755.55	9	29
902	550-54-3881	Pastry - Lemon Danish - Mini	1980.21	10	17
903	331-13-4819	Beef - Tenderloin Tails	57.84	7	26
904	549-85-2866	Nantucket Orange Juice	1495.19	5	37
905	790-66-4583	Bread Sour Rolls	1750.76	10	20
906	301-83-5215	Mushroom - Morels, Dry	1871.42	6	34
907	730-83-4165	Cabbage - Nappa	1759.37	8	27
908	410-61-9835	Bread - Olive Dinner Roll	296.17	9	13
909	192-72-7333	Yeast Dry - Fleischman	1216.30	9	10
910	246-85-9291	Wine - Delicato Merlot	236.49	8	27
911	687-53-3377	Flour - Masa De Harina Mexican	1952.32	6	37
912	102-10-1210	Wine - Charddonnay Errazuriz	1435.76	6	13
913	159-07-4989	Tea - Lemon Scented	1012.10	6	21
914	835-88-4279	Chocolate - Milk	931.36	9	38
915	388-79-7227	Cheese - Oka	1015.65	10	29
916	337-78-0533	Tea - Herbal Sweet Dreams	444.17	8	31
917	899-39-3080	Bread - Ciabatta Buns	900.65	8	27
918	374-29-4930	Tomatoes - Heirloom	1349.97	8	19
919	329-44-4845	Nut - Cashews, Whole, Raw	1300.29	9	10
920	365-04-4170	Pepper - Red, Finger Hot	101.79	7	27
921	705-26-6198	Corn Syrup	257.22	7	20
922	346-88-5128	Beef - Sushi Flat Iron Steak	945.42	6	37
923	225-93-4264	Longos - Burritos	1819.92	8	29
924	292-27-4646	Cup Translucent 9 Oz	1869.03	5	33
925	266-91-9686	Raspberries - Frozen	1112.53	7	29
926	122-32-3430	Fudge - Cream Fudge	1447.17	8	21
927	836-07-7149	Cocoa Powder - Dutched	900.20	7	29
928	207-63-0833	Sandwich Wrap	798.63	8	13
929	699-69-4510	Flour - Strong	514.64	9	31
930	211-40-6413	Syrup - Monin - Passion Fruit	278.44	7	34
931	356-78-9951	Pickles - Gherkins	1625.41	8	37
932	344-19-5616	Chicken - Leg / Back Attach	559.47	6	12
933	135-84-3249	Wine - White, Mosel Gold	1443.45	8	12
934	752-48-3653	Foil Wrap	720.08	7	26
935	415-49-5197	Tart Shells - Savory, 2	935.51	9	40
936	716-86-8914	Cheese - Gouda	254.50	10	13
937	727-64-8538	Creme De Menth - White	1793.00	8	19
938	188-91-0414	Soup - Knorr, Chicken Gumbo	773.09	8	36
939	565-24-6333	Crackers - Soda / Saltins	561.60	7	10
940	637-69-4504	Cheese - Stilton	479.25	10	14
941	238-72-3936	Bread - Bagels, Mini	487.16	8	36
942	864-88-5471	Chocolate Bar - Oh Henry	1961.62	9	29
943	251-79-2380	Sauce - Roasted Red Pepper	128.02	5	27
944	574-54-5906	Pasta - Elbows, Macaroni, Dry	841.49	10	15
945	526-22-4838	The Pop Shoppe - Black Cherry	1207.51	7	29
946	659-38-5712	Sauce - Mint	334.70	9	18
947	283-69-0404	Lamb - Ground	378.48	6	29
948	899-62-4907	Napkin White	407.82	5	24
949	362-20-1597	Pork - Sausage, Medium	495.85	6	35
950	192-45-0103	Pate Pans Yellow	1931.68	10	16
951	789-12-3471	Cleaner - Lime Away	540.72	6	25
952	115-47-0760	Carrots - Mini, Stem On	1267.03	9	10
953	737-77-9578	Veal - Inside Round / Top, Lean	51.22	8	24
954	580-42-8941	Puree - Mocha	869.81	9	37
955	447-92-0548	Lettuce - Red Leaf	1874.44	8	15
956	446-91-5671	Flavouring - Rum	1042.78	6	40
957	534-89-4315	Hot Choc Vending	1009.83	6	35
958	286-12-1281	Venison - Racks Frenched	1773.56	6	14
959	275-55-9010	Cactus Pads	391.09	5	27
960	688-43-6406	Chocolate - Sugar Free Semi Choc	1668.82	9	36
961	453-82-0287	Oil - Sunflower	1255.76	8	12
962	855-61-4569	Bouillion - Fish	521.71	10	24
963	312-79-6651	Ecolab Crystal Fusion	209.17	10	25
964	229-49-5352	Sping Loaded Cup Dispenser	909.76	8	38
965	115-79-1679	Wine - Penfolds Koonuga Hill	782.89	9	25
966	772-96-6026	Peach - Halves	594.48	5	29
967	125-03-5547	Wine - Toasted Head	269.83	8	18
968	459-92-7407	Herb Du Provence - Primerba	893.76	6	24
969	507-98-0722	Waffle Stix	1520.26	8	27
970	250-72-5219	Beef - Eye Of Round	930.96	6	22
971	238-53-2568	Five Alive Citrus	1062.18	8	32
972	498-89-1824	Longos - Chicken Caeser Salad	1048.23	5	35
973	688-03-4527	Doilies - 12, Paper	657.78	6	34
974	564-89-2634	Pepper - Green	729.78	5	31
975	261-67-5743	Lotus Leaves	192.92	9	20
976	562-09-6293	Muffin Mix - Morning Glory	1674.04	9	32
977	487-33-3669	Compound - Mocha	356.04	9	16
978	663-78-0545	Juice - Orange	1049.48	7	33
979	100-32-3087	Pepper - Cubanelle	868.21	10	24
980	437-14-2713	Puree - Passion Fruit	435.94	8	38
981	435-77-7064	Wine - Ruffino Chianti	1479.74	7	10
982	665-70-6411	Appetizer - Lobster Phyllo Roll	1381.92	6	28
983	397-26-5778	Heavy Duty Dust Pan	189.79	7	14
984	361-91-1627	Beef - Tender Tips	1939.31	8	11
985	508-31-5754	Cut Wakame - Hanawakaba	1718.33	10	20
986	843-10-2146	Apple - Custard	432.38	6	28
987	102-04-3343	Cheese - Mascarpone	1577.22	8	12
988	253-06-6665	Beer - True North Lager	1103.91	10	26
989	657-55-2646	Cheese - Cheddarsliced	625.83	9	11
990	662-46-4279	Peppercorns - Green	1462.05	9	29
991	739-91-6444	Cookies Almond Hazelnut	1800.86	10	40
992	526-91-7352	Asparagus - Frozen	1922.04	6	36
993	399-36-6916	Silicone Parch. 16.3x24.3	415.11	8	31
994	259-02-0671	Sauce Bbq Smokey	763.00	5	18
995	535-79-8742	Bread - Roll, Italian	714.87	9	17
996	702-42-4328	Cheese - Bocconcini	1162.40	7	12
997	786-67-4185	Rum - Dark, Bacardi, Black	452.57	8	27
998	272-11-8043	Wine - Valpolicella Masi	1403.56	9	30
999	592-67-2886	Wine - Lamancha Do Crianza	322.70	7	33
1000	168-28-3411	Greens Mustard	175.75	6	32
\.


--
-- TOC entry 4930 (class 0 OID 16522)
-- Dependencies: 222
-- Data for Name: ventas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ventas (id, folio, cliente_id, subtotal) FROM stdin;
1	00-82-6041244089	7	2541.70
2	89-13-5490436330	5	2613.33
3	87-73-2311819070	3	3167.41
4	18-86-2524204422	19	4855.74
5	91-76-4354670867	20	3170.34
6	23-90-0309694521	2	1307.33
7	19-62-8974132112	2	2146.08
8	47-01-6434811419	9	1159.00
9	53-05-6521839579	8	727.22
10	92-54-2809842257	19	4933.95
11	47-50-0112557351	4	2982.72
12	77-18-1702692764	5	2282.41
13	93-79-4551045440	7	4264.52
14	25-02-8211915246	19	1888.10
15	06-96-4144335180	8	4965.16
16	86-38-4076948240	19	2674.62
17	96-90-2174011492	5	4264.45
18	39-75-0440747851	7	2085.52
19	57-71-7700909178	18	1510.50
20	97-14-3210597046	19	3755.75
21	20-46-6556337101	3	2296.90
22	50-78-9598090473	2	2442.41
23	28-96-5406062720	15	1088.38
24	54-32-4591191093	10	1453.24
25	00-18-6781753819	15	4602.44
26	51-16-1460130540	15	1615.54
27	93-59-5764937973	14	2866.43
28	49-95-1938182067	2	4983.04
29	49-56-5398032655	4	4094.81
30	95-49-2308068921	3	1319.95
31	95-50-7473811355	20	1816.31
32	31-43-5998905693	4	512.09
33	36-95-4854429910	11	3360.91
34	07-60-1003709100	6	3231.86
35	23-67-0012889299	12	3215.83
36	00-35-2000001087	15	3261.11
37	84-24-4767661624	7	2727.73
38	63-07-6345455673	12	3794.73
39	38-41-7759974566	19	1971.22
40	15-65-0111649498	9	2323.01
41	03-39-1724701910	19	2526.43
42	47-50-8238236469	12	771.53
43	39-13-9216583124	17	1345.08
44	42-09-2268744805	7	4199.24
45	81-11-0377320383	4	414.52
46	67-44-4452885166	5	1805.94
47	24-39-5497254383	2	3640.37
48	94-34-0348870198	6	4034.46
49	34-79-1836782911	12	1858.20
50	95-52-1910020219	15	2903.07
51	33-03-3810345423	5	1972.65
52	74-97-7905188347	6	802.24
53	00-81-0282473804	18	3950.91
54	68-66-4324809114	16	3901.39
55	65-11-5359571956	9	4196.52
56	02-53-1124375573	1	2084.16
57	15-42-7072297336	13	705.15
58	81-69-2880410817	19	1432.84
59	32-41-0063937595	11	3525.22
60	23-90-2532052916	9	2506.98
\.


--
-- TOC entry 4942 (class 0 OID 0)
-- Dependencies: 217
-- Name: clientes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clientes_id_seq', 1, false);


--
-- TOC entry 4943 (class 0 OID 0)
-- Dependencies: 223
-- Name: detalle_ventas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.detalle_ventas_id_seq', 1, false);


--
-- TOC entry 4944 (class 0 OID 0)
-- Dependencies: 219
-- Name: productos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.productos_id_seq', 1, false);


--
-- TOC entry 4945 (class 0 OID 0)
-- Dependencies: 221
-- Name: ventas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ventas_id_seq', 1, false);


--
-- TOC entry 4764 (class 2606 OID 16509)
-- Name: clientes clientes_codigo_cliente_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_codigo_cliente_key UNIQUE (codigo_cliente);


--
-- TOC entry 4766 (class 2606 OID 16507)
-- Name: clientes clientes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id);


--
-- TOC entry 4776 (class 2606 OID 16541)
-- Name: detalle_ventas detalle_ventas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_ventas
    ADD CONSTRAINT detalle_ventas_pkey PRIMARY KEY (id);


--
-- TOC entry 4768 (class 2606 OID 16520)
-- Name: productos productos_codigo_barras_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_codigo_barras_key UNIQUE (codigo_barras);


--
-- TOC entry 4770 (class 2606 OID 16518)
-- Name: productos productos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id);


--
-- TOC entry 4772 (class 2606 OID 16529)
-- Name: ventas ventas_folio_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT ventas_folio_key UNIQUE (folio);


--
-- TOC entry 4774 (class 2606 OID 16527)
-- Name: ventas ventas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT ventas_pkey PRIMARY KEY (id);


--
-- TOC entry 4778 (class 2606 OID 16542)
-- Name: detalle_ventas fk_detalle_producto; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_ventas
    ADD CONSTRAINT fk_detalle_producto FOREIGN KEY (producto_id) REFERENCES public.productos(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 4779 (class 2606 OID 16547)
-- Name: detalle_ventas fk_detalle_venta; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_ventas
    ADD CONSTRAINT fk_detalle_venta FOREIGN KEY (venta_id) REFERENCES public.ventas(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4777 (class 2606 OID 16530)
-- Name: ventas fk_ventas_cliente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT fk_ventas_cliente FOREIGN KEY (cliente_id) REFERENCES public.clientes(id) ON UPDATE CASCADE ON DELETE RESTRICT;


-- Completed on 2026-04-20 09:28:36

--
-- PostgreSQL database dump complete
--

\unrestrict NJeoCTOe6YAmWwnDNzQrGm0qoK98VLcbQGbpKEainFzRc0medgsplzMyy83Ohmf


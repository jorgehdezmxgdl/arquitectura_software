--
-- PostgreSQL database dump
--

\restrict q7mTnGlXc3nQGnX4oobZKVs2II0hwYbvadkZHGvfUgoIRDaN1hGcNfg1zeeXhdl

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.3

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

--
-- Data for Name: clientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clientes (id_cliente, nombre_completo, email, telefono, direccion, fecha_registro, estado) FROM stdin;
1	Cliente 1	cli1@email.com	+52 55 30000001	Av. Principal 1, Col. Escolar	2026-05-31	activo
2	Cliente 2	cli2@email.com	+52 55 30000002	Av. Principal 2, Col. Escolar	2026-05-31	activo
3	Cliente 3	cli3@email.com	+52 55 30000003	Av. Principal 3, Col. Escolar	2026-05-31	activo
4	Cliente 4	cli4@email.com	+52 55 30000004	Av. Principal 4, Col. Escolar	2026-05-31	activo
5	Cliente 5	cli5@email.com	+52 55 30000005	Av. Principal 5, Col. Escolar	2026-05-31	activo
6	Cliente 6	cli6@email.com	+52 55 30000006	Av. Principal 6, Col. Escolar	2026-05-31	activo
7	Cliente 7	cli7@email.com	+52 55 30000007	Av. Principal 7, Col. Escolar	2026-05-31	activo
8	Cliente 8	cli8@email.com	+52 55 30000008	Av. Principal 8, Col. Escolar	2026-05-31	activo
9	Cliente 9	cli9@email.com	+52 55 30000009	Av. Principal 9, Col. Escolar	2026-05-31	activo
10	Cliente 10	cli10@email.com	+52 55 30000010	Av. Principal 10, Col. Escolar	2026-05-31	activo
\.


--
-- Data for Name: proveedores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.proveedores (id_proveedor, nombre_empresa, contacto, email, telefono, direccion, estado) FROM stdin;
1	Proveedor 1	Contacto 1	prov1@proveedor.com	+52 80 20000001	Calle 1, Col. Centro, CP 01000	activo
2	Proveedor 2	Contacto 2	prov2@proveedor.com	+52 80 20000002	Calle 2, Col. Centro, CP 01000	activo
3	Proveedor 3	Contacto 3	prov3@proveedor.com	+52 80 20000003	Calle 3, Col. Centro, CP 01000	activo
4	Proveedor 4	Contacto 4	prov4@proveedor.com	+52 80 20000004	Calle 4, Col. Centro, CP 01000	activo
5	Proveedor 5	Contacto 5	prov5@proveedor.com	+52 80 20000005	Calle 5, Col. Centro, CP 01000	activo
6	Proveedor 6	Contacto 6	prov6@proveedor.com	+52 80 20000006	Calle 6, Col. Centro, CP 01000	activo
7	Proveedor 7	Contacto 7	prov7@proveedor.com	+52 80 20000007	Calle 7, Col. Centro, CP 01000	activo
8	Proveedor 8	Contacto 8	prov8@proveedor.com	+52 80 20000008	Calle 8, Col. Centro, CP 01000	activo
9	Proveedor 9	Contacto 9	prov9@proveedor.com	+52 80 20000009	Calle 9, Col. Centro, CP 01000	activo
10	Proveedor 10	Contacto 10	prov10@proveedor.com	+52 80 20000010	Calle 10, Col. Centro, CP 01000	activo
\.


--
-- Data for Name: compras; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.compras (id_compra, id_proveedor, fecha_compra, total_compra, estado) FROM stdin;
1	1	2026-05-30	3463.71	completada
2	2	2026-05-29	3602.10	completada
3	3	2026-05-28	3543.87	completada
4	4	2026-05-27	5198.95	completada
5	5	2026-05-26	5453.02	completada
6	6	2026-05-25	2648.60	completada
7	7	2026-05-24	1334.92	completada
8	8	2026-05-23	5783.45	completada
9	9	2026-05-22	5165.90	completada
10	10	2026-05-21	2949.35	completada
\.


--
-- Data for Name: productos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.productos (id_producto, nombre, categoria, precio_costo, precio_venta, stock_actual, stock_minimo, estado) FROM stdin;
6	Lápiz Tipo 1	Escritura	27.51	96.31	56	5	activo
7	Bolígrafo Tipo 2	Oficina	23.34	37.55	152	5	activo
8	Regla Tipo 3	Medición	31.82	17.10	45	5	activo
9	Pegamento Tipo 4	Adhesivos	43.50	87.91	112	5	activo
10	Tijera Tipo 5	Corte	17.72	13.98	129	5	activo
11	Carpeta Tipo 6	Archivo	45.39	60.91	114	5	activo
12	Mochila Tipo 7	Transporte	40.29	46.26	119	5	activo
13	Calculadora Tipo 8	Electrónico	34.32	68.77	12	5	activo
14	Papel Tipo 9	Impresión	42.13	64.73	81	5	activo
15	Cuaderno Tipo 10	Cuadernos	8.47	92.11	14	5	activo
16	Lápiz Tipo 11	Escritura	31.73	32.61	74	5	activo
17	Bolígrafo Tipo 12	Oficina	10.55	107.57	121	5	activo
18	Regla Tipo 13	Medición	42.95	13.71	25	5	activo
19	Pegamento Tipo 14	Adhesivos	27.91	52.67	93	5	activo
20	Tijera Tipo 15	Corte	27.40	97.54	80	5	activo
21	Carpeta Tipo 16	Archivo	51.75	55.69	91	5	activo
22	Mochila Tipo 17	Transporte	47.38	82.55	33	5	activo
23	Calculadora Tipo 18	Electrónico	6.58	45.62	99	5	activo
24	Papel Tipo 19	Impresión	11.44	65.08	121	5	activo
25	Cuaderno Tipo 20	Cuadernos	47.72	93.02	122	5	activo
26	Lápiz Tipo 21	Escritura	37.96	32.82	44	5	activo
27	Bolígrafo Tipo 22	Oficina	47.79	28.42	103	5	activo
28	Regla Tipo 23	Medición	29.17	79.21	21	5	activo
29	Pegamento Tipo 24	Adhesivos	6.26	79.26	122	5	activo
30	Tijera Tipo 25	Corte	54.83	70.80	25	5	activo
31	Carpeta Tipo 26	Archivo	39.18	94.53	125	5	activo
32	Mochila Tipo 27	Transporte	10.40	14.48	129	5	activo
33	Calculadora Tipo 28	Electrónico	30.58	104.41	64	5	activo
34	Papel Tipo 29	Impresión	6.42	91.81	134	5	activo
35	Cuaderno Tipo 30	Cuadernos	41.90	35.73	127	5	activo
36	Lápiz Tipo 31	Escritura	22.46	101.77	114	5	activo
37	Bolígrafo Tipo 32	Oficina	17.17	83.03	80	5	activo
38	Regla Tipo 33	Medición	40.70	33.17	151	5	activo
39	Pegamento Tipo 34	Adhesivos	27.89	47.73	113	5	activo
40	Tijera Tipo 35	Corte	7.95	57.79	144	5	activo
41	Carpeta Tipo 36	Archivo	37.81	69.77	115	5	activo
42	Mochila Tipo 37	Transporte	19.38	15.55	23	5	activo
43	Calculadora Tipo 38	Electrónico	21.21	27.91	47	5	activo
44	Papel Tipo 39	Impresión	23.86	53.46	112	5	activo
45	Cuaderno Tipo 40	Cuadernos	5.08	36.85	152	5	activo
46	Lápiz Tipo 41	Escritura	33.31	25.20	123	5	activo
47	Bolígrafo Tipo 42	Oficina	29.92	107.53	56	5	activo
48	Regla Tipo 43	Medición	20.64	95.89	62	5	activo
49	Pegamento Tipo 44	Adhesivos	5.81	50.72	96	5	activo
50	Tijera Tipo 45	Corte	27.60	71.65	28	5	activo
51	Carpeta Tipo 46	Archivo	21.13	86.68	70	5	activo
52	Mochila Tipo 47	Transporte	7.94	73.54	61	5	activo
53	Calculadora Tipo 48	Electrónico	18.81	93.94	17	5	activo
54	Papel Tipo 49	Impresión	12.59	91.27	14	5	activo
55	Cuaderno Tipo 50	Cuadernos	18.72	31.88	60	5	activo
56	Lápiz Tipo 51	Escritura	45.79	67.04	33	5	activo
57	Bolígrafo Tipo 52	Oficina	41.04	89.97	140	5	activo
58	Regla Tipo 53	Medición	15.23	48.59	11	5	activo
59	Pegamento Tipo 54	Adhesivos	49.48	18.58	19	5	activo
60	Tijera Tipo 55	Corte	13.18	13.37	77	5	activo
61	Carpeta Tipo 56	Archivo	20.54	79.85	37	5	activo
62	Mochila Tipo 57	Transporte	21.09	91.45	116	5	activo
63	Calculadora Tipo 58	Electrónico	14.25	101.17	64	5	activo
64	Papel Tipo 59	Impresión	23.68	43.99	49	5	activo
65	Cuaderno Tipo 60	Cuadernos	31.83	55.16	113	5	activo
66	Lápiz Tipo 61	Escritura	50.01	22.59	54	5	activo
67	Bolígrafo Tipo 62	Oficina	25.01	107.77	141	5	activo
68	Regla Tipo 63	Medición	48.09	107.57	151	5	activo
69	Pegamento Tipo 64	Adhesivos	41.49	49.98	126	5	activo
70	Tijera Tipo 65	Corte	44.78	73.09	19	5	activo
71	Carpeta Tipo 66	Archivo	14.44	57.45	79	5	activo
72	Mochila Tipo 67	Transporte	28.94	83.10	103	5	activo
73	Calculadora Tipo 68	Electrónico	42.07	15.77	73	5	activo
74	Papel Tipo 69	Impresión	28.60	56.72	59	5	activo
75	Cuaderno Tipo 70	Cuadernos	30.30	21.44	32	5	activo
76	Lápiz Tipo 71	Escritura	20.37	26.00	150	5	activo
77	Bolígrafo Tipo 72	Oficina	24.95	78.88	70	5	activo
78	Regla Tipo 73	Medición	45.83	67.01	143	5	activo
79	Pegamento Tipo 74	Adhesivos	23.22	40.78	57	5	activo
80	Tijera Tipo 75	Corte	27.74	49.05	133	5	activo
81	Carpeta Tipo 76	Archivo	50.57	56.68	143	5	activo
82	Mochila Tipo 77	Transporte	7.17	35.26	47	5	activo
83	Calculadora Tipo 78	Electrónico	30.33	62.36	99	5	activo
84	Papel Tipo 79	Impresión	34.00	39.60	129	5	activo
85	Cuaderno Tipo 80	Cuadernos	8.36	42.21	10	5	activo
86	Lápiz Tipo 81	Escritura	36.73	47.39	58	5	activo
87	Bolígrafo Tipo 82	Oficina	35.86	78.45	140	5	activo
88	Regla Tipo 83	Medición	38.98	97.38	66	5	activo
89	Pegamento Tipo 84	Adhesivos	31.71	80.15	11	5	activo
90	Tijera Tipo 85	Corte	35.34	58.23	66	5	activo
91	Carpeta Tipo 86	Archivo	45.98	37.05	22	5	activo
92	Mochila Tipo 87	Transporte	6.24	24.92	63	5	activo
93	Calculadora Tipo 88	Electrónico	51.15	44.71	117	5	activo
94	Papel Tipo 89	Impresión	51.60	32.79	80	5	activo
95	Cuaderno Tipo 90	Cuadernos	53.16	29.90	104	5	activo
96	Lápiz Tipo 91	Escritura	35.69	35.65	75	5	activo
97	Bolígrafo Tipo 92	Oficina	6.26	100.83	6	5	activo
98	Regla Tipo 93	Medición	8.31	101.81	151	5	activo
99	Pegamento Tipo 94	Adhesivos	22.02	73.90	101	5	activo
100	Tijera Tipo 95	Corte	6.54	86.50	112	5	activo
101	Carpeta Tipo 96	Archivo	38.86	10.80	126	5	activo
102	Mochila Tipo 97	Transporte	19.39	23.89	16	5	activo
103	Calculadora Tipo 98	Electrónico	42.09	30.88	95	5	activo
104	Papel Tipo 99	Impresión	25.74	71.58	79	5	activo
105	Cuaderno Tipo 100	Cuadernos	18.40	47.76	101	5	activo
106	Lápiz Tipo 101	Escritura	44.59	65.11	140	5	activo
107	Bolígrafo Tipo 102	Oficina	22.98	104.26	130	5	activo
108	Regla Tipo 103	Medición	48.22	64.58	47	5	activo
109	Pegamento Tipo 104	Adhesivos	26.86	16.10	64	5	activo
110	Tijera Tipo 105	Corte	7.88	35.74	95	5	activo
111	Carpeta Tipo 106	Archivo	36.55	15.25	148	5	activo
112	Mochila Tipo 107	Transporte	25.41	67.87	151	5	activo
113	Calculadora Tipo 108	Electrónico	12.35	108.21	154	5	activo
114	Papel Tipo 109	Impresión	22.48	108.62	39	5	activo
115	Cuaderno Tipo 110	Cuadernos	20.37	33.59	119	5	activo
116	Lápiz Tipo 111	Escritura	53.08	81.26	148	5	activo
117	Bolígrafo Tipo 112	Oficina	35.93	37.60	80	5	activo
118	Regla Tipo 113	Medición	27.45	87.19	80	5	activo
119	Pegamento Tipo 114	Adhesivos	27.92	21.39	45	5	activo
120	Tijera Tipo 115	Corte	31.81	57.87	63	5	activo
121	Carpeta Tipo 116	Archivo	24.62	78.76	100	5	activo
122	Mochila Tipo 117	Transporte	51.79	72.41	93	5	activo
123	Calculadora Tipo 118	Electrónico	7.04	42.85	149	5	activo
124	Papel Tipo 119	Impresión	39.42	68.05	84	5	activo
125	Cuaderno Tipo 120	Cuadernos	38.79	66.75	131	5	activo
126	Lápiz Tipo 121	Escritura	46.88	75.72	54	5	activo
127	Bolígrafo Tipo 122	Oficina	43.88	47.54	106	5	activo
128	Regla Tipo 123	Medición	25.23	104.84	145	5	activo
129	Pegamento Tipo 124	Adhesivos	8.46	56.44	15	5	activo
130	Tijera Tipo 125	Corte	45.94	101.69	9	5	activo
131	Carpeta Tipo 126	Archivo	33.25	29.06	114	5	activo
132	Mochila Tipo 127	Transporte	54.33	31.05	46	5	activo
133	Calculadora Tipo 128	Electrónico	10.34	13.46	99	5	activo
134	Papel Tipo 129	Impresión	6.39	91.93	71	5	activo
135	Cuaderno Tipo 130	Cuadernos	18.04	44.04	62	5	activo
136	Lápiz Tipo 131	Escritura	12.79	82.43	77	5	activo
137	Bolígrafo Tipo 132	Oficina	31.22	42.05	144	5	activo
138	Regla Tipo 133	Medición	13.53	73.89	90	5	activo
139	Pegamento Tipo 134	Adhesivos	51.03	19.96	124	5	activo
140	Tijera Tipo 135	Corte	28.59	70.77	6	5	activo
141	Carpeta Tipo 136	Archivo	9.71	45.76	25	5	activo
142	Mochila Tipo 137	Transporte	23.60	59.62	126	5	activo
143	Calculadora Tipo 138	Electrónico	20.16	99.02	135	5	activo
144	Papel Tipo 139	Impresión	26.95	50.22	57	5	activo
145	Cuaderno Tipo 140	Cuadernos	11.10	87.34	61	5	activo
146	Lápiz Tipo 141	Escritura	50.67	12.99	45	5	activo
147	Bolígrafo Tipo 142	Oficina	33.98	35.97	38	5	activo
148	Regla Tipo 143	Medición	13.06	17.28	24	5	activo
149	Pegamento Tipo 144	Adhesivos	27.85	55.03	56	5	activo
150	Tijera Tipo 145	Corte	7.23	11.99	40	5	activo
151	Carpeta Tipo 146	Archivo	53.13	19.94	64	5	activo
152	Mochila Tipo 147	Transporte	35.99	102.24	133	5	activo
153	Calculadora Tipo 148	Electrónico	45.02	83.22	132	5	activo
154	Papel Tipo 149	Impresión	50.23	59.11	65	5	activo
155	Cuaderno Tipo 150	Cuadernos	35.24	41.28	129	5	activo
156	Lápiz Tipo 151	Escritura	37.55	27.94	15	5	activo
157	Bolígrafo Tipo 152	Oficina	17.53	89.59	14	5	activo
158	Regla Tipo 153	Medición	23.86	55.64	140	5	activo
159	Pegamento Tipo 154	Adhesivos	29.59	105.32	25	5	activo
160	Tijera Tipo 155	Corte	34.26	102.49	7	5	activo
161	Carpeta Tipo 156	Archivo	29.53	21.07	66	5	activo
162	Mochila Tipo 157	Transporte	9.92	29.00	5	5	activo
163	Calculadora Tipo 158	Electrónico	7.78	68.39	140	5	activo
164	Papel Tipo 159	Impresión	20.96	67.89	115	5	activo
165	Cuaderno Tipo 160	Cuadernos	27.53	66.93	37	5	activo
166	Lápiz Tipo 161	Escritura	41.12	89.12	139	5	activo
167	Bolígrafo Tipo 162	Oficina	39.71	100.41	25	5	activo
168	Regla Tipo 163	Medición	22.90	108.05	150	5	activo
169	Pegamento Tipo 164	Adhesivos	29.76	77.06	51	5	activo
170	Tijera Tipo 165	Corte	15.78	104.21	111	5	activo
171	Carpeta Tipo 166	Archivo	6.64	91.76	5	5	activo
172	Mochila Tipo 167	Transporte	47.24	23.91	116	5	activo
173	Calculadora Tipo 168	Electrónico	7.54	22.50	63	5	activo
174	Papel Tipo 169	Impresión	34.56	20.86	26	5	activo
175	Cuaderno Tipo 170	Cuadernos	25.72	66.98	57	5	activo
176	Lápiz Tipo 171	Escritura	11.93	54.15	17	5	activo
177	Bolígrafo Tipo 172	Oficina	41.75	50.48	76	5	activo
178	Regla Tipo 173	Medición	18.06	42.39	6	5	activo
179	Pegamento Tipo 174	Adhesivos	52.45	80.41	112	5	activo
180	Tijera Tipo 175	Corte	16.33	23.57	108	5	activo
181	Carpeta Tipo 176	Archivo	9.92	22.57	140	5	activo
182	Mochila Tipo 177	Transporte	38.41	109.96	103	5	activo
183	Calculadora Tipo 178	Electrónico	21.34	64.32	26	5	activo
184	Papel Tipo 179	Impresión	36.56	47.53	13	5	activo
185	Cuaderno Tipo 180	Cuadernos	7.44	54.41	20	5	activo
186	Lápiz Tipo 181	Escritura	14.48	15.47	113	5	activo
187	Bolígrafo Tipo 182	Oficina	26.44	92.07	37	5	activo
188	Regla Tipo 183	Medición	47.29	100.84	79	5	activo
189	Pegamento Tipo 184	Adhesivos	26.76	89.66	48	5	activo
190	Tijera Tipo 185	Corte	9.88	44.76	128	5	activo
191	Carpeta Tipo 186	Archivo	31.47	23.15	53	5	activo
192	Mochila Tipo 187	Transporte	12.35	77.55	81	5	activo
193	Calculadora Tipo 188	Electrónico	54.99	91.67	50	5	activo
194	Papel Tipo 189	Impresión	19.97	77.61	125	5	activo
195	Cuaderno Tipo 190	Cuadernos	17.26	31.72	102	5	activo
196	Lápiz Tipo 191	Escritura	33.85	28.90	121	5	activo
197	Bolígrafo Tipo 192	Oficina	7.96	17.00	98	5	activo
198	Regla Tipo 193	Medición	24.28	82.77	36	5	activo
199	Pegamento Tipo 194	Adhesivos	36.07	88.04	82	5	activo
200	Tijera Tipo 195	Corte	50.76	72.80	143	5	activo
201	Carpeta Tipo 196	Archivo	21.43	101.51	63	5	activo
202	Mochila Tipo 197	Transporte	54.43	102.24	103	5	activo
203	Calculadora Tipo 198	Electrónico	18.47	63.16	84	5	activo
204	Papel Tipo 199	Impresión	27.36	57.80	11	5	activo
205	Cuaderno Tipo 200	Cuadernos	36.65	62.81	37	5	activo
206	Lápiz Tipo 201	Escritura	6.36	13.61	31	5	activo
207	Bolígrafo Tipo 202	Oficina	32.29	20.65	118	5	activo
208	Regla Tipo 203	Medición	39.28	21.95	73	5	activo
209	Pegamento Tipo 204	Adhesivos	6.23	84.31	139	5	activo
210	Tijera Tipo 205	Corte	25.16	41.34	145	5	activo
211	Carpeta Tipo 206	Archivo	26.57	12.15	63	5	activo
212	Mochila Tipo 207	Transporte	44.82	89.36	72	5	activo
213	Calculadora Tipo 208	Electrónico	40.32	85.66	49	5	activo
214	Papel Tipo 209	Impresión	41.41	81.38	117	5	activo
215	Cuaderno Tipo 210	Cuadernos	17.49	31.04	75	5	activo
216	Lápiz Tipo 211	Escritura	33.58	22.23	139	5	activo
217	Bolígrafo Tipo 212	Oficina	23.64	35.83	77	5	activo
218	Regla Tipo 213	Medición	44.04	52.54	46	5	activo
219	Pegamento Tipo 214	Adhesivos	35.56	90.40	54	5	activo
220	Tijera Tipo 215	Corte	39.15	25.99	147	5	activo
221	Carpeta Tipo 216	Archivo	41.68	47.35	15	5	activo
222	Mochila Tipo 217	Transporte	35.55	97.85	18	5	activo
223	Calculadora Tipo 218	Electrónico	5.71	76.76	85	5	activo
224	Papel Tipo 219	Impresión	41.89	67.44	31	5	activo
225	Cuaderno Tipo 220	Cuadernos	16.12	17.73	68	5	activo
226	Lápiz Tipo 221	Escritura	50.99	102.63	51	5	activo
227	Bolígrafo Tipo 222	Oficina	12.66	80.85	138	5	activo
228	Regla Tipo 223	Medición	34.08	85.69	132	5	activo
229	Pegamento Tipo 224	Adhesivos	9.60	74.86	62	5	activo
230	Tijera Tipo 225	Corte	10.21	26.43	81	5	activo
231	Carpeta Tipo 226	Archivo	52.10	76.21	152	5	activo
232	Mochila Tipo 227	Transporte	38.91	13.62	136	5	activo
233	Calculadora Tipo 228	Electrónico	19.00	65.12	58	5	activo
234	Papel Tipo 229	Impresión	53.22	10.84	61	5	activo
235	Cuaderno Tipo 230	Cuadernos	12.24	56.00	111	5	activo
236	Lápiz Tipo 231	Escritura	49.83	26.58	151	5	activo
237	Bolígrafo Tipo 232	Oficina	42.20	101.15	126	5	activo
238	Regla Tipo 233	Medición	42.26	72.22	114	5	activo
239	Pegamento Tipo 234	Adhesivos	13.37	77.06	136	5	activo
240	Tijera Tipo 235	Corte	32.24	51.61	131	5	activo
241	Carpeta Tipo 236	Archivo	46.69	15.33	90	5	activo
242	Mochila Tipo 237	Transporte	6.92	105.81	61	5	activo
243	Calculadora Tipo 238	Electrónico	8.17	80.31	152	5	activo
244	Papel Tipo 239	Impresión	16.12	19.42	50	5	activo
245	Cuaderno Tipo 240	Cuadernos	29.43	89.32	132	5	activo
246	Lápiz Tipo 241	Escritura	22.91	54.30	27	5	activo
247	Bolígrafo Tipo 242	Oficina	27.14	107.13	26	5	activo
248	Regla Tipo 243	Medición	30.99	73.71	93	5	activo
249	Pegamento Tipo 244	Adhesivos	12.97	91.95	151	5	activo
250	Tijera Tipo 245	Corte	6.13	48.17	43	5	activo
251	Carpeta Tipo 246	Archivo	48.54	18.77	134	5	activo
252	Mochila Tipo 247	Transporte	25.34	23.61	72	5	activo
253	Calculadora Tipo 248	Electrónico	27.89	15.33	93	5	activo
254	Papel Tipo 249	Impresión	21.49	61.45	79	5	activo
255	Cuaderno Tipo 250	Cuadernos	7.91	95.68	109	5	activo
256	Lápiz Tipo 251	Escritura	26.65	67.06	91	5	activo
257	Bolígrafo Tipo 252	Oficina	19.25	49.05	90	5	activo
258	Regla Tipo 253	Medición	11.38	94.31	52	5	activo
259	Pegamento Tipo 254	Adhesivos	53.56	50.68	64	5	activo
260	Tijera Tipo 255	Corte	22.84	50.29	44	5	activo
261	Carpeta Tipo 256	Archivo	54.81	102.69	9	5	activo
262	Mochila Tipo 257	Transporte	41.01	75.11	78	5	activo
263	Calculadora Tipo 258	Electrónico	5.85	92.86	6	5	activo
264	Papel Tipo 259	Impresión	41.57	100.13	137	5	activo
265	Cuaderno Tipo 260	Cuadernos	23.23	67.03	115	5	activo
266	Lápiz Tipo 261	Escritura	31.71	33.86	126	5	activo
267	Bolígrafo Tipo 262	Oficina	19.81	108.96	115	5	activo
268	Regla Tipo 263	Medición	34.51	94.92	112	5	activo
269	Pegamento Tipo 264	Adhesivos	34.82	50.11	31	5	activo
270	Tijera Tipo 265	Corte	52.72	40.35	61	5	activo
271	Carpeta Tipo 266	Archivo	50.81	109.66	75	5	activo
272	Mochila Tipo 267	Transporte	19.62	44.49	51	5	activo
273	Calculadora Tipo 268	Electrónico	5.21	76.36	142	5	activo
274	Papel Tipo 269	Impresión	9.12	33.36	123	5	activo
275	Cuaderno Tipo 270	Cuadernos	18.39	18.92	110	5	activo
276	Lápiz Tipo 271	Escritura	32.96	106.29	142	5	activo
277	Bolígrafo Tipo 272	Oficina	30.30	45.81	23	5	activo
278	Regla Tipo 273	Medición	25.35	56.72	98	5	activo
279	Pegamento Tipo 274	Adhesivos	35.56	82.22	20	5	activo
280	Tijera Tipo 275	Corte	16.16	40.50	46	5	activo
281	Carpeta Tipo 276	Archivo	51.54	79.88	10	5	activo
282	Mochila Tipo 277	Transporte	43.23	30.27	73	5	activo
283	Calculadora Tipo 278	Electrónico	39.43	28.98	90	5	activo
284	Papel Tipo 279	Impresión	16.24	16.41	120	5	activo
285	Cuaderno Tipo 280	Cuadernos	28.31	50.75	98	5	activo
286	Lápiz Tipo 281	Escritura	10.65	108.79	41	5	activo
287	Bolígrafo Tipo 282	Oficina	49.13	91.84	39	5	activo
288	Regla Tipo 283	Medición	6.71	23.76	68	5	activo
289	Pegamento Tipo 284	Adhesivos	7.35	77.48	62	5	activo
290	Tijera Tipo 285	Corte	29.71	41.64	121	5	activo
291	Carpeta Tipo 286	Archivo	45.39	17.35	90	5	activo
292	Mochila Tipo 287	Transporte	13.89	78.46	81	5	activo
293	Calculadora Tipo 288	Electrónico	50.32	83.17	6	5	activo
294	Papel Tipo 289	Impresión	19.22	98.98	32	5	activo
295	Cuaderno Tipo 290	Cuadernos	26.42	29.89	29	5	activo
296	Lápiz Tipo 291	Escritura	36.86	87.23	24	5	activo
297	Bolígrafo Tipo 292	Oficina	51.54	45.73	13	5	activo
298	Regla Tipo 293	Medición	25.75	66.51	134	5	activo
299	Pegamento Tipo 294	Adhesivos	51.16	109.21	145	5	activo
300	Tijera Tipo 295	Corte	35.02	13.91	46	5	activo
301	Carpeta Tipo 296	Archivo	34.58	14.20	125	5	activo
302	Mochila Tipo 297	Transporte	43.17	61.23	42	5	activo
303	Calculadora Tipo 298	Electrónico	45.85	41.23	17	5	activo
304	Papel Tipo 299	Impresión	53.16	78.32	148	5	activo
305	Cuaderno Tipo 300	Cuadernos	38.19	47.04	108	5	activo
306	Lápiz Tipo 301	Escritura	52.25	53.64	154	5	activo
307	Bolígrafo Tipo 302	Oficina	38.21	74.80	98	5	activo
308	Regla Tipo 303	Medición	32.43	24.43	74	5	activo
309	Pegamento Tipo 304	Adhesivos	26.36	14.65	49	5	activo
310	Tijera Tipo 305	Corte	36.98	37.64	117	5	activo
311	Carpeta Tipo 306	Archivo	6.25	87.86	129	5	activo
312	Mochila Tipo 307	Transporte	25.53	13.56	96	5	activo
313	Calculadora Tipo 308	Electrónico	22.37	106.85	92	5	activo
314	Papel Tipo 309	Impresión	54.14	83.31	87	5	activo
315	Cuaderno Tipo 310	Cuadernos	45.57	56.41	80	5	activo
316	Lápiz Tipo 311	Escritura	20.42	70.81	60	5	activo
317	Bolígrafo Tipo 312	Oficina	42.11	80.31	48	5	activo
318	Regla Tipo 313	Medición	30.03	33.01	25	5	activo
319	Pegamento Tipo 314	Adhesivos	44.75	48.69	38	5	activo
320	Tijera Tipo 315	Corte	9.72	105.83	150	5	activo
321	Carpeta Tipo 316	Archivo	22.42	100.02	39	5	activo
322	Mochila Tipo 317	Transporte	23.47	101.82	41	5	activo
323	Calculadora Tipo 318	Electrónico	13.50	105.28	70	5	activo
324	Papel Tipo 319	Impresión	7.81	102.79	10	5	activo
325	Cuaderno Tipo 320	Cuadernos	45.82	100.68	60	5	activo
326	Lápiz Tipo 321	Escritura	40.28	77.64	151	5	activo
327	Bolígrafo Tipo 322	Oficina	30.72	78.82	93	5	activo
328	Regla Tipo 323	Medición	46.90	104.19	93	5	activo
329	Pegamento Tipo 324	Adhesivos	38.45	108.15	40	5	activo
330	Tijera Tipo 325	Corte	52.31	52.17	19	5	activo
331	Carpeta Tipo 326	Archivo	51.19	55.04	22	5	activo
332	Mochila Tipo 327	Transporte	20.80	99.76	34	5	activo
333	Calculadora Tipo 328	Electrónico	37.54	56.22	96	5	activo
334	Papel Tipo 329	Impresión	5.86	58.30	131	5	activo
335	Cuaderno Tipo 330	Cuadernos	52.16	17.35	98	5	activo
336	Lápiz Tipo 331	Escritura	31.84	22.80	59	5	activo
337	Bolígrafo Tipo 332	Oficina	10.05	24.33	117	5	activo
338	Regla Tipo 333	Medición	31.02	73.01	148	5	activo
339	Pegamento Tipo 334	Adhesivos	51.48	78.60	150	5	activo
340	Tijera Tipo 335	Corte	23.45	27.34	20	5	activo
341	Carpeta Tipo 336	Archivo	43.31	87.15	44	5	activo
342	Mochila Tipo 337	Transporte	8.78	47.14	72	5	activo
343	Calculadora Tipo 338	Electrónico	8.12	24.49	100	5	activo
344	Papel Tipo 339	Impresión	43.81	32.29	122	5	activo
345	Cuaderno Tipo 340	Cuadernos	24.88	105.64	7	5	activo
346	Lápiz Tipo 341	Escritura	8.48	27.50	39	5	activo
347	Bolígrafo Tipo 342	Oficina	7.39	95.21	98	5	activo
348	Regla Tipo 343	Medición	12.62	108.60	85	5	activo
349	Pegamento Tipo 344	Adhesivos	28.72	66.90	29	5	activo
350	Tijera Tipo 345	Corte	34.32	66.14	100	5	activo
351	Carpeta Tipo 346	Archivo	10.80	27.72	91	5	activo
352	Mochila Tipo 347	Transporte	37.38	32.38	14	5	activo
353	Calculadora Tipo 348	Electrónico	43.90	11.64	102	5	activo
354	Papel Tipo 349	Impresión	33.04	43.15	105	5	activo
355	Cuaderno Tipo 350	Cuadernos	30.33	74.89	51	5	activo
356	Lápiz Tipo 351	Escritura	13.45	91.35	147	5	activo
357	Bolígrafo Tipo 352	Oficina	54.69	47.81	15	5	activo
358	Regla Tipo 353	Medición	47.21	27.84	33	5	activo
359	Pegamento Tipo 354	Adhesivos	21.51	68.92	94	5	activo
360	Tijera Tipo 355	Corte	45.29	56.52	23	5	activo
361	Carpeta Tipo 356	Archivo	7.33	25.72	52	5	activo
362	Mochila Tipo 357	Transporte	35.58	83.59	90	5	activo
363	Calculadora Tipo 358	Electrónico	28.58	12.45	29	5	activo
364	Papel Tipo 359	Impresión	28.81	18.35	118	5	activo
365	Cuaderno Tipo 360	Cuadernos	33.87	13.95	148	5	activo
366	Lápiz Tipo 361	Escritura	42.22	43.55	98	5	activo
367	Bolígrafo Tipo 362	Oficina	7.01	21.08	73	5	activo
368	Regla Tipo 363	Medición	49.13	49.49	31	5	activo
369	Pegamento Tipo 364	Adhesivos	10.98	74.29	13	5	activo
370	Tijera Tipo 365	Corte	46.62	67.34	55	5	activo
371	Carpeta Tipo 366	Archivo	31.51	69.22	75	5	activo
372	Mochila Tipo 367	Transporte	29.19	61.38	88	5	activo
373	Calculadora Tipo 368	Electrónico	52.08	64.47	14	5	activo
374	Papel Tipo 369	Impresión	45.02	27.72	57	5	activo
375	Cuaderno Tipo 370	Cuadernos	45.08	24.66	26	5	activo
376	Lápiz Tipo 371	Escritura	11.48	103.03	137	5	activo
377	Bolígrafo Tipo 372	Oficina	20.60	95.09	105	5	activo
378	Regla Tipo 373	Medición	52.00	70.82	123	5	activo
379	Pegamento Tipo 374	Adhesivos	47.07	54.82	147	5	activo
380	Tijera Tipo 375	Corte	38.23	12.16	41	5	activo
381	Carpeta Tipo 376	Archivo	42.55	94.85	40	5	activo
382	Mochila Tipo 377	Transporte	53.37	75.55	12	5	activo
383	Calculadora Tipo 378	Electrónico	26.38	31.45	154	5	activo
384	Papel Tipo 379	Impresión	28.06	105.02	131	5	activo
385	Cuaderno Tipo 380	Cuadernos	27.26	59.56	125	5	activo
386	Lápiz Tipo 381	Escritura	30.02	59.32	145	5	activo
387	Bolígrafo Tipo 382	Oficina	29.92	56.31	39	5	activo
388	Regla Tipo 383	Medición	15.20	69.75	104	5	activo
389	Pegamento Tipo 384	Adhesivos	42.68	75.48	125	5	activo
390	Tijera Tipo 385	Corte	37.39	55.66	38	5	activo
391	Carpeta Tipo 386	Archivo	13.07	99.41	59	5	activo
392	Mochila Tipo 387	Transporte	43.07	23.44	150	5	activo
393	Calculadora Tipo 388	Electrónico	21.57	47.56	73	5	activo
394	Papel Tipo 389	Impresión	53.08	66.89	68	5	activo
395	Cuaderno Tipo 390	Cuadernos	5.50	82.42	130	5	activo
396	Lápiz Tipo 391	Escritura	52.07	18.32	59	5	activo
397	Bolígrafo Tipo 392	Oficina	30.18	60.49	100	5	activo
398	Regla Tipo 393	Medición	11.83	57.13	92	5	activo
399	Pegamento Tipo 394	Adhesivos	35.14	48.84	110	5	activo
400	Tijera Tipo 395	Corte	29.14	91.37	88	5	activo
401	Carpeta Tipo 396	Archivo	37.08	74.84	131	5	activo
402	Mochila Tipo 397	Transporte	49.94	73.29	112	5	activo
403	Calculadora Tipo 398	Electrónico	50.61	90.02	64	5	activo
404	Papel Tipo 399	Impresión	51.81	102.64	142	5	activo
405	Cuaderno Tipo 400	Cuadernos	26.75	71.93	114	5	activo
406	Lápiz Tipo 401	Escritura	25.97	64.14	19	5	activo
407	Bolígrafo Tipo 402	Oficina	50.10	38.28	51	5	activo
408	Regla Tipo 403	Medición	17.12	12.39	149	5	activo
409	Pegamento Tipo 404	Adhesivos	26.93	17.98	152	5	activo
410	Tijera Tipo 405	Corte	36.85	79.90	6	5	activo
411	Carpeta Tipo 406	Archivo	43.02	83.67	127	5	activo
412	Mochila Tipo 407	Transporte	20.26	28.29	128	5	activo
413	Calculadora Tipo 408	Electrónico	36.68	78.78	140	5	activo
414	Papel Tipo 409	Impresión	43.81	22.73	134	5	activo
415	Cuaderno Tipo 410	Cuadernos	49.07	96.04	21	5	activo
416	Lápiz Tipo 411	Escritura	47.79	35.39	150	5	activo
417	Bolígrafo Tipo 412	Oficina	10.52	67.40	125	5	activo
418	Regla Tipo 413	Medición	11.54	32.67	42	5	activo
419	Pegamento Tipo 414	Adhesivos	30.21	97.63	10	5	activo
420	Tijera Tipo 415	Corte	46.66	13.44	61	5	activo
421	Carpeta Tipo 416	Archivo	29.77	84.60	26	5	activo
422	Mochila Tipo 417	Transporte	22.37	21.32	87	5	activo
423	Calculadora Tipo 418	Electrónico	18.70	106.12	85	5	activo
424	Papel Tipo 419	Impresión	51.00	99.92	31	5	activo
425	Cuaderno Tipo 420	Cuadernos	51.84	78.11	7	5	activo
426	Lápiz Tipo 421	Escritura	24.86	26.11	61	5	activo
427	Bolígrafo Tipo 422	Oficina	28.38	36.72	30	5	activo
428	Regla Tipo 423	Medición	24.23	30.62	75	5	activo
429	Pegamento Tipo 424	Adhesivos	15.49	34.89	92	5	activo
430	Tijera Tipo 425	Corte	15.27	63.90	55	5	activo
431	Carpeta Tipo 426	Archivo	35.27	89.00	114	5	activo
432	Mochila Tipo 427	Transporte	5.62	81.12	19	5	activo
433	Calculadora Tipo 428	Electrónico	23.63	45.19	106	5	activo
434	Papel Tipo 429	Impresión	25.89	31.11	70	5	activo
435	Cuaderno Tipo 430	Cuadernos	21.79	36.93	153	5	activo
436	Lápiz Tipo 431	Escritura	19.71	38.01	122	5	activo
437	Bolígrafo Tipo 432	Oficina	8.86	26.76	95	5	activo
438	Regla Tipo 433	Medición	43.07	41.70	39	5	activo
439	Pegamento Tipo 434	Adhesivos	40.39	22.10	44	5	activo
440	Tijera Tipo 435	Corte	41.11	60.87	84	5	activo
441	Carpeta Tipo 436	Archivo	30.00	90.07	13	5	activo
442	Mochila Tipo 437	Transporte	20.60	101.72	59	5	activo
443	Calculadora Tipo 438	Electrónico	32.33	103.88	118	5	activo
444	Papel Tipo 439	Impresión	54.60	33.47	60	5	activo
445	Cuaderno Tipo 440	Cuadernos	35.96	26.59	111	5	activo
446	Lápiz Tipo 441	Escritura	10.32	106.77	51	5	activo
447	Bolígrafo Tipo 442	Oficina	44.76	36.76	67	5	activo
448	Regla Tipo 443	Medición	37.35	89.75	144	5	activo
449	Pegamento Tipo 444	Adhesivos	34.85	21.46	94	5	activo
450	Tijera Tipo 445	Corte	28.34	47.30	19	5	activo
451	Carpeta Tipo 446	Archivo	43.84	99.52	94	5	activo
452	Mochila Tipo 447	Transporte	8.17	37.39	42	5	activo
453	Calculadora Tipo 448	Electrónico	21.00	36.30	133	5	activo
454	Papel Tipo 449	Impresión	41.07	106.79	59	5	activo
455	Cuaderno Tipo 450	Cuadernos	23.19	11.86	11	5	activo
456	Lápiz Tipo 451	Escritura	11.66	56.32	69	5	activo
457	Bolígrafo Tipo 452	Oficina	20.79	51.28	64	5	activo
458	Regla Tipo 453	Medición	15.54	52.36	68	5	activo
459	Pegamento Tipo 454	Adhesivos	18.14	49.43	13	5	activo
460	Tijera Tipo 455	Corte	35.06	74.81	119	5	activo
461	Carpeta Tipo 456	Archivo	17.91	34.33	122	5	activo
462	Mochila Tipo 457	Transporte	21.22	20.25	109	5	activo
463	Calculadora Tipo 458	Electrónico	24.67	67.60	117	5	activo
464	Papel Tipo 459	Impresión	41.71	51.10	6	5	activo
465	Cuaderno Tipo 460	Cuadernos	34.86	60.81	133	5	activo
466	Lápiz Tipo 461	Escritura	18.26	30.22	22	5	activo
467	Bolígrafo Tipo 462	Oficina	13.15	64.16	117	5	activo
468	Regla Tipo 463	Medición	15.89	23.51	128	5	activo
469	Pegamento Tipo 464	Adhesivos	40.94	17.47	49	5	activo
470	Tijera Tipo 465	Corte	26.34	46.39	49	5	activo
471	Carpeta Tipo 466	Archivo	48.55	30.42	31	5	activo
472	Mochila Tipo 467	Transporte	22.17	68.42	24	5	activo
473	Calculadora Tipo 468	Electrónico	44.67	52.24	146	5	activo
474	Papel Tipo 469	Impresión	44.99	48.58	86	5	activo
475	Cuaderno Tipo 470	Cuadernos	10.48	48.52	92	5	activo
476	Lápiz Tipo 471	Escritura	43.90	52.18	25	5	activo
477	Bolígrafo Tipo 472	Oficina	17.26	79.66	103	5	activo
478	Regla Tipo 473	Medición	24.16	14.89	70	5	activo
479	Pegamento Tipo 474	Adhesivos	52.72	105.09	130	5	activo
480	Tijera Tipo 475	Corte	30.49	66.13	138	5	activo
481	Carpeta Tipo 476	Archivo	11.70	77.93	46	5	activo
482	Mochila Tipo 477	Transporte	47.60	30.37	117	5	activo
483	Calculadora Tipo 478	Electrónico	13.13	81.63	117	5	activo
484	Papel Tipo 479	Impresión	28.87	58.53	61	5	activo
485	Cuaderno Tipo 480	Cuadernos	24.50	29.48	70	5	activo
486	Lápiz Tipo 481	Escritura	14.11	47.11	82	5	activo
487	Bolígrafo Tipo 482	Oficina	13.48	85.80	62	5	activo
488	Regla Tipo 483	Medición	14.81	10.03	69	5	activo
489	Pegamento Tipo 484	Adhesivos	23.32	77.81	148	5	activo
490	Tijera Tipo 485	Corte	22.98	18.23	83	5	activo
491	Carpeta Tipo 486	Archivo	15.12	40.51	26	5	activo
492	Mochila Tipo 487	Transporte	11.71	48.84	37	5	activo
493	Calculadora Tipo 488	Electrónico	23.54	60.73	34	5	activo
494	Papel Tipo 489	Impresión	54.35	61.28	101	5	activo
495	Cuaderno Tipo 490	Cuadernos	24.40	56.28	93	5	activo
496	Lápiz Tipo 491	Escritura	19.57	73.35	81	5	activo
497	Bolígrafo Tipo 492	Oficina	36.48	90.73	53	5	activo
498	Regla Tipo 493	Medición	35.27	71.69	25	5	activo
499	Pegamento Tipo 494	Adhesivos	48.56	68.62	111	5	activo
500	Tijera Tipo 495	Corte	42.99	36.09	75	5	activo
501	Carpeta Tipo 496	Archivo	21.44	19.76	10	5	activo
502	Mochila Tipo 497	Transporte	54.25	36.60	76	5	activo
503	Calculadora Tipo 498	Electrónico	19.16	52.09	120	5	activo
504	Papel Tipo 499	Impresión	41.78	70.90	88	5	activo
505	Cuaderno Tipo 500	Cuadernos	41.34	86.75	46	5	activo
506	Lápiz Tipo 501	Escritura	41.58	23.72	65	5	activo
507	Bolígrafo Tipo 502	Oficina	39.60	77.74	59	5	activo
508	Regla Tipo 503	Medición	10.38	101.47	47	5	activo
509	Pegamento Tipo 504	Adhesivos	22.22	24.88	96	5	activo
510	Tijera Tipo 505	Corte	11.21	89.09	109	5	activo
511	Carpeta Tipo 506	Archivo	27.47	15.51	143	5	activo
512	Mochila Tipo 507	Transporte	37.75	14.16	36	5	activo
513	Calculadora Tipo 508	Electrónico	54.88	93.98	69	5	activo
514	Papel Tipo 509	Impresión	12.50	62.95	67	5	activo
515	Cuaderno Tipo 510	Cuadernos	10.30	38.09	28	5	activo
516	Lápiz Tipo 511	Escritura	38.32	13.95	110	5	activo
517	Bolígrafo Tipo 512	Oficina	32.74	85.97	106	5	activo
518	Regla Tipo 513	Medición	53.79	94.39	97	5	activo
519	Pegamento Tipo 514	Adhesivos	26.47	79.54	122	5	activo
520	Tijera Tipo 515	Corte	35.84	56.87	68	5	activo
521	Carpeta Tipo 516	Archivo	37.99	82.86	105	5	activo
522	Mochila Tipo 517	Transporte	28.82	41.29	27	5	activo
523	Calculadora Tipo 518	Electrónico	5.69	57.40	42	5	activo
524	Papel Tipo 519	Impresión	25.08	16.36	128	5	activo
525	Cuaderno Tipo 520	Cuadernos	26.48	30.64	19	5	activo
526	Lápiz Tipo 521	Escritura	51.24	100.39	107	5	activo
527	Bolígrafo Tipo 522	Oficina	18.85	61.11	13	5	activo
528	Regla Tipo 523	Medición	7.78	42.57	114	5	activo
529	Pegamento Tipo 524	Adhesivos	16.59	23.57	33	5	activo
530	Tijera Tipo 525	Corte	34.85	72.20	87	5	activo
531	Carpeta Tipo 526	Archivo	21.23	88.52	122	5	activo
532	Mochila Tipo 527	Transporte	15.16	14.52	15	5	activo
533	Calculadora Tipo 528	Electrónico	18.55	107.13	149	5	activo
534	Papel Tipo 529	Impresión	24.54	31.66	65	5	activo
535	Cuaderno Tipo 530	Cuadernos	45.90	66.02	97	5	activo
536	Lápiz Tipo 531	Escritura	36.27	37.20	86	5	activo
537	Bolígrafo Tipo 532	Oficina	50.54	84.23	90	5	activo
538	Regla Tipo 533	Medición	40.58	44.61	109	5	activo
539	Pegamento Tipo 534	Adhesivos	48.11	101.82	51	5	activo
540	Tijera Tipo 535	Corte	11.57	99.48	25	5	activo
541	Carpeta Tipo 536	Archivo	30.58	36.97	153	5	activo
542	Mochila Tipo 537	Transporte	10.20	65.69	9	5	activo
543	Calculadora Tipo 538	Electrónico	38.36	17.57	78	5	activo
544	Papel Tipo 539	Impresión	15.66	34.46	75	5	activo
545	Cuaderno Tipo 540	Cuadernos	44.12	56.03	106	5	activo
546	Lápiz Tipo 541	Escritura	22.48	107.88	138	5	activo
547	Bolígrafo Tipo 542	Oficina	9.65	30.85	143	5	activo
548	Regla Tipo 543	Medición	44.28	109.25	88	5	activo
549	Pegamento Tipo 544	Adhesivos	49.67	20.86	125	5	activo
550	Tijera Tipo 545	Corte	39.09	64.43	95	5	activo
551	Carpeta Tipo 546	Archivo	53.01	72.36	80	5	activo
552	Mochila Tipo 547	Transporte	25.14	42.30	35	5	activo
553	Calculadora Tipo 548	Electrónico	48.14	23.85	20	5	activo
554	Papel Tipo 549	Impresión	34.65	46.84	113	5	activo
555	Cuaderno Tipo 550	Cuadernos	40.63	54.09	106	5	activo
556	Lápiz Tipo 551	Escritura	24.23	27.70	78	5	activo
557	Bolígrafo Tipo 552	Oficina	37.09	62.40	124	5	activo
558	Regla Tipo 553	Medición	31.33	86.55	37	5	activo
559	Pegamento Tipo 554	Adhesivos	14.96	79.99	104	5	activo
560	Tijera Tipo 555	Corte	26.73	50.14	16	5	activo
561	Carpeta Tipo 556	Archivo	54.22	31.22	6	5	activo
562	Mochila Tipo 557	Transporte	40.58	44.86	78	5	activo
563	Calculadora Tipo 558	Electrónico	11.86	20.50	12	5	activo
564	Papel Tipo 559	Impresión	12.26	54.69	136	5	activo
565	Cuaderno Tipo 560	Cuadernos	48.34	30.45	92	5	activo
566	Lápiz Tipo 561	Escritura	21.47	44.83	154	5	activo
567	Bolígrafo Tipo 562	Oficina	26.50	80.09	127	5	activo
568	Regla Tipo 563	Medición	43.77	10.68	126	5	activo
569	Pegamento Tipo 564	Adhesivos	39.46	38.47	119	5	activo
570	Tijera Tipo 565	Corte	26.95	59.80	41	5	activo
571	Carpeta Tipo 566	Archivo	7.37	97.03	96	5	activo
572	Mochila Tipo 567	Transporte	22.54	18.87	80	5	activo
573	Calculadora Tipo 568	Electrónico	22.97	63.42	126	5	activo
574	Papel Tipo 569	Impresión	50.92	87.45	60	5	activo
575	Cuaderno Tipo 570	Cuadernos	30.11	70.55	145	5	activo
576	Lápiz Tipo 571	Escritura	23.09	68.23	26	5	activo
577	Bolígrafo Tipo 572	Oficina	27.07	64.70	17	5	activo
578	Regla Tipo 573	Medición	42.57	41.99	120	5	activo
579	Pegamento Tipo 574	Adhesivos	5.41	85.80	129	5	activo
580	Tijera Tipo 575	Corte	20.28	76.03	43	5	activo
581	Carpeta Tipo 576	Archivo	16.81	27.38	84	5	activo
582	Mochila Tipo 577	Transporte	43.15	79.58	104	5	activo
583	Calculadora Tipo 578	Electrónico	48.45	80.19	7	5	activo
584	Papel Tipo 579	Impresión	52.24	106.11	33	5	activo
585	Cuaderno Tipo 580	Cuadernos	41.66	34.24	80	5	activo
586	Lápiz Tipo 581	Escritura	36.48	59.61	54	5	activo
587	Bolígrafo Tipo 582	Oficina	40.24	59.61	8	5	activo
588	Regla Tipo 583	Medición	5.54	16.24	97	5	activo
589	Pegamento Tipo 584	Adhesivos	18.57	96.56	152	5	activo
590	Tijera Tipo 585	Corte	38.75	101.05	132	5	activo
591	Carpeta Tipo 586	Archivo	39.84	47.37	16	5	activo
592	Mochila Tipo 587	Transporte	36.68	103.26	74	5	activo
593	Calculadora Tipo 588	Electrónico	53.66	17.99	84	5	activo
594	Papel Tipo 589	Impresión	6.07	25.76	54	5	activo
595	Cuaderno Tipo 590	Cuadernos	30.47	71.29	117	5	activo
596	Lápiz Tipo 591	Escritura	23.87	51.68	48	5	activo
597	Bolígrafo Tipo 592	Oficina	52.64	43.15	89	5	activo
598	Regla Tipo 593	Medición	15.96	51.39	149	5	activo
599	Pegamento Tipo 594	Adhesivos	8.54	106.12	5	5	activo
600	Tijera Tipo 595	Corte	35.32	28.93	30	5	activo
601	Carpeta Tipo 596	Archivo	48.59	37.90	117	5	activo
602	Mochila Tipo 597	Transporte	31.98	108.57	11	5	activo
603	Calculadora Tipo 598	Electrónico	46.50	90.14	37	5	activo
604	Papel Tipo 599	Impresión	12.55	31.48	87	5	activo
605	Cuaderno Tipo 600	Cuadernos	53.57	51.92	151	5	activo
606	Lápiz Tipo 601	Escritura	26.85	11.04	125	5	activo
607	Bolígrafo Tipo 602	Oficina	19.33	106.33	135	5	activo
608	Regla Tipo 603	Medición	43.41	13.45	31	5	activo
609	Pegamento Tipo 604	Adhesivos	18.71	102.66	63	5	activo
610	Tijera Tipo 605	Corte	21.10	73.01	7	5	activo
611	Carpeta Tipo 606	Archivo	35.41	92.80	106	5	activo
612	Mochila Tipo 607	Transporte	37.89	43.14	130	5	activo
613	Calculadora Tipo 608	Electrónico	37.11	74.17	70	5	activo
614	Papel Tipo 609	Impresión	36.28	93.62	119	5	activo
615	Cuaderno Tipo 610	Cuadernos	52.13	37.30	45	5	activo
616	Lápiz Tipo 611	Escritura	10.71	98.05	24	5	activo
617	Bolígrafo Tipo 612	Oficina	28.32	42.42	106	5	activo
618	Regla Tipo 613	Medición	49.87	62.27	93	5	activo
619	Pegamento Tipo 614	Adhesivos	34.60	71.79	42	5	activo
620	Tijera Tipo 615	Corte	32.46	66.50	121	5	activo
621	Carpeta Tipo 616	Archivo	21.18	42.21	43	5	activo
622	Mochila Tipo 617	Transporte	37.48	66.54	141	5	activo
623	Calculadora Tipo 618	Electrónico	53.41	37.46	80	5	activo
624	Papel Tipo 619	Impresión	13.00	37.74	106	5	activo
625	Cuaderno Tipo 620	Cuadernos	53.33	62.94	130	5	activo
626	Lápiz Tipo 621	Escritura	16.11	101.21	47	5	activo
627	Bolígrafo Tipo 622	Oficina	14.52	24.08	63	5	activo
628	Regla Tipo 623	Medición	44.06	71.07	132	5	activo
629	Pegamento Tipo 624	Adhesivos	39.93	11.90	70	5	activo
630	Tijera Tipo 625	Corte	12.13	27.23	86	5	activo
631	Carpeta Tipo 626	Archivo	10.44	50.80	118	5	activo
632	Mochila Tipo 627	Transporte	5.15	37.66	106	5	activo
633	Calculadora Tipo 628	Electrónico	54.79	62.98	110	5	activo
634	Papel Tipo 629	Impresión	21.71	69.27	134	5	activo
635	Cuaderno Tipo 630	Cuadernos	35.61	59.64	107	5	activo
636	Lápiz Tipo 631	Escritura	37.76	89.39	83	5	activo
637	Bolígrafo Tipo 632	Oficina	36.17	70.69	76	5	activo
638	Regla Tipo 633	Medición	42.92	60.24	79	5	activo
639	Pegamento Tipo 634	Adhesivos	10.15	78.93	42	5	activo
640	Tijera Tipo 635	Corte	34.23	26.10	37	5	activo
641	Carpeta Tipo 636	Archivo	38.64	40.55	26	5	activo
642	Mochila Tipo 637	Transporte	22.22	105.71	116	5	activo
643	Calculadora Tipo 638	Electrónico	37.30	89.31	149	5	activo
644	Papel Tipo 639	Impresión	38.55	98.99	64	5	activo
645	Cuaderno Tipo 640	Cuadernos	49.25	39.58	86	5	activo
646	Lápiz Tipo 641	Escritura	6.95	13.28	113	5	activo
647	Bolígrafo Tipo 642	Oficina	32.83	16.60	151	5	activo
648	Regla Tipo 643	Medición	7.52	34.11	44	5	activo
649	Pegamento Tipo 644	Adhesivos	49.89	95.18	78	5	activo
650	Tijera Tipo 645	Corte	32.23	58.36	135	5	activo
651	Carpeta Tipo 646	Archivo	21.98	29.93	144	5	activo
652	Mochila Tipo 647	Transporte	31.21	107.27	63	5	activo
653	Calculadora Tipo 648	Electrónico	9.55	22.60	140	5	activo
654	Papel Tipo 649	Impresión	13.19	68.12	43	5	activo
655	Cuaderno Tipo 650	Cuadernos	9.22	102.38	139	5	activo
656	Lápiz Tipo 651	Escritura	11.78	28.20	151	5	activo
657	Bolígrafo Tipo 652	Oficina	42.88	17.42	150	5	activo
658	Regla Tipo 653	Medición	39.82	24.29	19	5	activo
659	Pegamento Tipo 654	Adhesivos	42.70	104.53	55	5	activo
660	Tijera Tipo 655	Corte	41.67	97.80	40	5	activo
661	Carpeta Tipo 656	Archivo	10.44	87.06	85	5	activo
662	Mochila Tipo 657	Transporte	18.86	101.03	153	5	activo
663	Calculadora Tipo 658	Electrónico	37.81	13.12	37	5	activo
664	Papel Tipo 659	Impresión	25.76	48.77	26	5	activo
665	Cuaderno Tipo 660	Cuadernos	43.34	98.10	74	5	activo
666	Lápiz Tipo 661	Escritura	9.34	73.42	141	5	activo
667	Bolígrafo Tipo 662	Oficina	12.10	42.78	95	5	activo
668	Regla Tipo 663	Medición	27.70	87.06	76	5	activo
669	Pegamento Tipo 664	Adhesivos	15.81	17.10	66	5	activo
670	Tijera Tipo 665	Corte	24.03	101.07	131	5	activo
671	Carpeta Tipo 666	Archivo	10.99	36.65	73	5	activo
672	Mochila Tipo 667	Transporte	6.54	78.87	131	5	activo
673	Calculadora Tipo 668	Electrónico	33.04	51.84	121	5	activo
674	Papel Tipo 669	Impresión	28.04	67.75	64	5	activo
675	Cuaderno Tipo 670	Cuadernos	5.20	36.08	32	5	activo
676	Lápiz Tipo 671	Escritura	21.80	34.51	109	5	activo
677	Bolígrafo Tipo 672	Oficina	10.40	68.61	44	5	activo
678	Regla Tipo 673	Medición	8.82	12.74	91	5	activo
679	Pegamento Tipo 674	Adhesivos	31.80	36.88	75	5	activo
680	Tijera Tipo 675	Corte	53.91	72.76	129	5	activo
681	Carpeta Tipo 676	Archivo	17.61	41.87	59	5	activo
682	Mochila Tipo 677	Transporte	37.61	90.72	69	5	activo
683	Calculadora Tipo 678	Electrónico	50.52	73.43	58	5	activo
684	Papel Tipo 679	Impresión	30.11	82.02	99	5	activo
685	Cuaderno Tipo 680	Cuadernos	12.05	96.03	144	5	activo
686	Lápiz Tipo 681	Escritura	47.61	72.81	103	5	activo
687	Bolígrafo Tipo 682	Oficina	31.58	25.72	80	5	activo
688	Regla Tipo 683	Medición	10.50	56.98	74	5	activo
689	Pegamento Tipo 684	Adhesivos	42.77	84.39	95	5	activo
690	Tijera Tipo 685	Corte	42.30	101.03	129	5	activo
691	Carpeta Tipo 686	Archivo	26.62	76.44	124	5	activo
692	Mochila Tipo 687	Transporte	36.49	59.40	124	5	activo
693	Calculadora Tipo 688	Electrónico	8.49	18.83	107	5	activo
694	Papel Tipo 689	Impresión	34.37	23.20	90	5	activo
695	Cuaderno Tipo 690	Cuadernos	16.70	47.60	53	5	activo
696	Lápiz Tipo 691	Escritura	11.18	93.44	33	5	activo
697	Bolígrafo Tipo 692	Oficina	54.88	14.05	117	5	activo
698	Regla Tipo 693	Medición	22.31	36.15	117	5	activo
699	Pegamento Tipo 694	Adhesivos	37.95	63.04	13	5	activo
700	Tijera Tipo 695	Corte	5.38	33.24	37	5	activo
701	Carpeta Tipo 696	Archivo	45.98	104.14	106	5	activo
702	Mochila Tipo 697	Transporte	6.19	89.15	127	5	activo
703	Calculadora Tipo 698	Electrónico	36.51	100.33	132	5	activo
704	Papel Tipo 699	Impresión	49.55	20.51	33	5	activo
705	Cuaderno Tipo 700	Cuadernos	45.69	66.95	68	5	activo
706	Lápiz Tipo 701	Escritura	44.71	85.98	113	5	activo
707	Bolígrafo Tipo 702	Oficina	45.70	10.74	22	5	activo
708	Regla Tipo 703	Medición	45.39	57.37	144	5	activo
709	Pegamento Tipo 704	Adhesivos	47.94	31.36	49	5	activo
710	Tijera Tipo 705	Corte	20.89	25.90	42	5	activo
711	Carpeta Tipo 706	Archivo	27.65	53.07	30	5	activo
712	Mochila Tipo 707	Transporte	34.58	85.67	148	5	activo
713	Calculadora Tipo 708	Electrónico	19.19	47.12	127	5	activo
714	Papel Tipo 709	Impresión	16.79	70.85	98	5	activo
715	Cuaderno Tipo 710	Cuadernos	26.89	86.53	53	5	activo
716	Lápiz Tipo 711	Escritura	7.96	34.37	130	5	activo
717	Bolígrafo Tipo 712	Oficina	25.66	22.50	122	5	activo
718	Regla Tipo 713	Medición	33.80	81.52	70	5	activo
719	Pegamento Tipo 714	Adhesivos	13.19	62.99	102	5	activo
720	Tijera Tipo 715	Corte	44.07	26.53	20	5	activo
721	Carpeta Tipo 716	Archivo	54.89	25.86	121	5	activo
722	Mochila Tipo 717	Transporte	29.12	46.30	42	5	activo
723	Calculadora Tipo 718	Electrónico	20.96	103.11	35	5	activo
724	Papel Tipo 719	Impresión	34.64	16.65	48	5	activo
725	Cuaderno Tipo 720	Cuadernos	40.48	22.30	45	5	activo
726	Lápiz Tipo 721	Escritura	37.34	30.13	53	5	activo
727	Bolígrafo Tipo 722	Oficina	22.28	26.31	106	5	activo
728	Regla Tipo 723	Medición	18.23	74.05	24	5	activo
729	Pegamento Tipo 724	Adhesivos	41.20	104.80	152	5	activo
730	Tijera Tipo 725	Corte	27.52	61.99	146	5	activo
731	Carpeta Tipo 726	Archivo	45.33	78.56	120	5	activo
732	Mochila Tipo 727	Transporte	52.67	28.14	96	5	activo
733	Calculadora Tipo 728	Electrónico	20.79	59.82	131	5	activo
734	Papel Tipo 729	Impresión	42.96	88.75	96	5	activo
735	Cuaderno Tipo 730	Cuadernos	9.60	34.99	65	5	activo
736	Lápiz Tipo 731	Escritura	27.13	102.61	15	5	activo
737	Bolígrafo Tipo 732	Oficina	29.25	48.83	127	5	activo
738	Regla Tipo 733	Medición	21.93	14.37	98	5	activo
739	Pegamento Tipo 734	Adhesivos	13.47	89.21	120	5	activo
740	Tijera Tipo 735	Corte	41.42	46.30	5	5	activo
741	Carpeta Tipo 736	Archivo	49.60	72.10	149	5	activo
742	Mochila Tipo 737	Transporte	15.48	34.91	83	5	activo
743	Calculadora Tipo 738	Electrónico	40.12	40.46	130	5	activo
744	Papel Tipo 739	Impresión	13.01	80.68	81	5	activo
745	Cuaderno Tipo 740	Cuadernos	37.93	41.45	145	5	activo
746	Lápiz Tipo 741	Escritura	15.96	38.80	140	5	activo
747	Bolígrafo Tipo 742	Oficina	8.46	14.22	145	5	activo
748	Regla Tipo 743	Medición	23.83	44.26	41	5	activo
749	Pegamento Tipo 744	Adhesivos	15.66	46.57	51	5	activo
750	Tijera Tipo 745	Corte	49.93	16.11	130	5	activo
751	Carpeta Tipo 746	Archivo	9.40	64.86	11	5	activo
752	Mochila Tipo 747	Transporte	52.81	70.42	95	5	activo
753	Calculadora Tipo 748	Electrónico	20.65	68.73	7	5	activo
754	Papel Tipo 749	Impresión	28.90	64.60	107	5	activo
755	Cuaderno Tipo 750	Cuadernos	38.27	48.45	42	5	activo
756	Lápiz Tipo 751	Escritura	25.58	87.04	144	5	activo
757	Bolígrafo Tipo 752	Oficina	18.24	87.28	37	5	activo
758	Regla Tipo 753	Medición	34.46	72.38	125	5	activo
759	Pegamento Tipo 754	Adhesivos	30.98	104.27	37	5	activo
760	Tijera Tipo 755	Corte	5.70	106.15	80	5	activo
761	Carpeta Tipo 756	Archivo	54.85	65.80	30	5	activo
762	Mochila Tipo 757	Transporte	50.74	51.76	83	5	activo
763	Calculadora Tipo 758	Electrónico	38.11	11.13	144	5	activo
764	Papel Tipo 759	Impresión	49.74	107.07	17	5	activo
765	Cuaderno Tipo 760	Cuadernos	43.88	27.68	29	5	activo
766	Lápiz Tipo 761	Escritura	43.82	93.01	13	5	activo
767	Bolígrafo Tipo 762	Oficina	25.42	85.21	69	5	activo
768	Regla Tipo 763	Medición	51.63	67.00	117	5	activo
769	Pegamento Tipo 764	Adhesivos	31.49	46.43	8	5	activo
770	Tijera Tipo 765	Corte	46.51	104.55	14	5	activo
771	Carpeta Tipo 766	Archivo	12.11	31.73	50	5	activo
772	Mochila Tipo 767	Transporte	28.36	92.12	93	5	activo
773	Calculadora Tipo 768	Electrónico	48.95	81.21	43	5	activo
774	Papel Tipo 769	Impresión	36.98	103.33	105	5	activo
775	Cuaderno Tipo 770	Cuadernos	34.10	58.27	130	5	activo
776	Lápiz Tipo 771	Escritura	35.13	14.05	67	5	activo
777	Bolígrafo Tipo 772	Oficina	53.86	52.13	81	5	activo
778	Regla Tipo 773	Medición	47.65	39.14	43	5	activo
779	Pegamento Tipo 774	Adhesivos	37.36	107.75	47	5	activo
780	Tijera Tipo 775	Corte	20.12	40.91	27	5	activo
781	Carpeta Tipo 776	Archivo	24.37	107.55	5	5	activo
782	Mochila Tipo 777	Transporte	47.03	50.92	58	5	activo
783	Calculadora Tipo 778	Electrónico	49.82	13.50	103	5	activo
784	Papel Tipo 779	Impresión	8.41	70.05	12	5	activo
785	Cuaderno Tipo 780	Cuadernos	13.73	18.43	39	5	activo
786	Lápiz Tipo 781	Escritura	28.66	15.73	98	5	activo
787	Bolígrafo Tipo 782	Oficina	26.22	56.11	16	5	activo
788	Regla Tipo 783	Medición	42.83	59.79	17	5	activo
789	Pegamento Tipo 784	Adhesivos	13.47	20.65	28	5	activo
790	Tijera Tipo 785	Corte	31.25	60.26	117	5	activo
791	Carpeta Tipo 786	Archivo	24.20	94.83	124	5	activo
792	Mochila Tipo 787	Transporte	22.45	68.46	149	5	activo
793	Calculadora Tipo 788	Electrónico	6.28	55.36	58	5	activo
794	Papel Tipo 789	Impresión	30.56	42.53	130	5	activo
795	Cuaderno Tipo 790	Cuadernos	24.37	36.21	143	5	activo
796	Lápiz Tipo 791	Escritura	47.76	50.16	89	5	activo
797	Bolígrafo Tipo 792	Oficina	28.59	56.50	14	5	activo
798	Regla Tipo 793	Medición	38.02	22.01	26	5	activo
799	Pegamento Tipo 794	Adhesivos	12.61	24.34	66	5	activo
800	Tijera Tipo 795	Corte	53.39	75.07	42	5	activo
801	Carpeta Tipo 796	Archivo	38.44	20.35	151	5	activo
802	Mochila Tipo 797	Transporte	37.77	88.31	50	5	activo
803	Calculadora Tipo 798	Electrónico	25.06	48.00	50	5	activo
804	Papel Tipo 799	Impresión	30.16	45.41	140	5	activo
805	Cuaderno Tipo 800	Cuadernos	52.42	55.52	48	5	activo
806	Lápiz Tipo 801	Escritura	10.36	100.49	8	5	activo
807	Bolígrafo Tipo 802	Oficina	50.56	10.03	94	5	activo
808	Regla Tipo 803	Medición	37.79	18.49	11	5	activo
809	Pegamento Tipo 804	Adhesivos	41.49	28.39	55	5	activo
810	Tijera Tipo 805	Corte	30.27	98.00	45	5	activo
811	Carpeta Tipo 806	Archivo	41.65	108.40	73	5	activo
812	Mochila Tipo 807	Transporte	41.99	11.25	5	5	activo
813	Calculadora Tipo 808	Electrónico	53.58	102.07	19	5	activo
814	Papel Tipo 809	Impresión	39.37	54.58	32	5	activo
815	Cuaderno Tipo 810	Cuadernos	38.65	73.69	86	5	activo
816	Lápiz Tipo 811	Escritura	16.22	100.20	26	5	activo
817	Bolígrafo Tipo 812	Oficina	30.34	11.23	19	5	activo
818	Regla Tipo 813	Medición	39.68	11.67	104	5	activo
819	Pegamento Tipo 814	Adhesivos	47.94	89.37	52	5	activo
820	Tijera Tipo 815	Corte	8.47	83.56	22	5	activo
821	Carpeta Tipo 816	Archivo	41.69	13.51	39	5	activo
822	Mochila Tipo 817	Transporte	20.00	60.34	26	5	activo
823	Calculadora Tipo 818	Electrónico	50.49	50.17	151	5	activo
824	Papel Tipo 819	Impresión	17.91	40.88	43	5	activo
825	Cuaderno Tipo 820	Cuadernos	51.42	29.69	67	5	activo
826	Lápiz Tipo 821	Escritura	12.99	35.12	66	5	activo
827	Bolígrafo Tipo 822	Oficina	54.91	44.22	87	5	activo
828	Regla Tipo 823	Medición	54.66	89.92	29	5	activo
829	Pegamento Tipo 824	Adhesivos	45.87	31.57	30	5	activo
830	Tijera Tipo 825	Corte	23.06	54.27	124	5	activo
831	Carpeta Tipo 826	Archivo	20.89	95.80	19	5	activo
832	Mochila Tipo 827	Transporte	53.08	31.41	151	5	activo
833	Calculadora Tipo 828	Electrónico	45.09	90.11	150	5	activo
834	Papel Tipo 829	Impresión	28.96	49.96	134	5	activo
835	Cuaderno Tipo 830	Cuadernos	25.52	87.75	27	5	activo
836	Lápiz Tipo 831	Escritura	38.75	67.37	78	5	activo
837	Bolígrafo Tipo 832	Oficina	18.76	44.65	43	5	activo
838	Regla Tipo 833	Medición	48.62	30.78	38	5	activo
839	Pegamento Tipo 834	Adhesivos	42.57	49.01	34	5	activo
840	Tijera Tipo 835	Corte	32.12	84.55	122	5	activo
841	Carpeta Tipo 836	Archivo	48.95	48.36	22	5	activo
842	Mochila Tipo 837	Transporte	48.60	12.92	61	5	activo
843	Calculadora Tipo 838	Electrónico	20.99	92.38	59	5	activo
844	Papel Tipo 839	Impresión	46.82	99.19	137	5	activo
845	Cuaderno Tipo 840	Cuadernos	53.09	106.37	35	5	activo
846	Lápiz Tipo 841	Escritura	13.18	62.33	131	5	activo
847	Bolígrafo Tipo 842	Oficina	16.21	56.88	79	5	activo
848	Regla Tipo 843	Medición	32.09	51.07	98	5	activo
849	Pegamento Tipo 844	Adhesivos	9.62	46.88	96	5	activo
850	Tijera Tipo 845	Corte	54.03	99.44	37	5	activo
851	Carpeta Tipo 846	Archivo	17.15	39.40	101	5	activo
852	Mochila Tipo 847	Transporte	23.41	29.50	96	5	activo
853	Calculadora Tipo 848	Electrónico	49.71	67.17	102	5	activo
854	Papel Tipo 849	Impresión	28.01	103.86	141	5	activo
855	Cuaderno Tipo 850	Cuadernos	19.22	97.09	62	5	activo
856	Lápiz Tipo 851	Escritura	13.85	14.44	89	5	activo
857	Bolígrafo Tipo 852	Oficina	35.48	102.25	110	5	activo
858	Regla Tipo 853	Medición	36.40	16.88	21	5	activo
859	Pegamento Tipo 854	Adhesivos	7.30	18.14	83	5	activo
860	Tijera Tipo 855	Corte	24.70	96.48	50	5	activo
861	Carpeta Tipo 856	Archivo	26.40	108.83	56	5	activo
862	Mochila Tipo 857	Transporte	15.64	83.19	45	5	activo
863	Calculadora Tipo 858	Electrónico	22.57	74.29	40	5	activo
864	Papel Tipo 859	Impresión	44.70	76.18	57	5	activo
865	Cuaderno Tipo 860	Cuadernos	24.36	105.99	147	5	activo
866	Lápiz Tipo 861	Escritura	30.55	20.95	80	5	activo
867	Bolígrafo Tipo 862	Oficina	19.50	14.83	106	5	activo
868	Regla Tipo 863	Medición	14.95	16.40	68	5	activo
869	Pegamento Tipo 864	Adhesivos	32.03	79.23	103	5	activo
870	Tijera Tipo 865	Corte	29.68	99.85	84	5	activo
871	Carpeta Tipo 866	Archivo	39.00	34.62	149	5	activo
872	Mochila Tipo 867	Transporte	45.43	54.07	5	5	activo
873	Calculadora Tipo 868	Electrónico	8.58	107.45	52	5	activo
874	Papel Tipo 869	Impresión	9.60	20.69	154	5	activo
875	Cuaderno Tipo 870	Cuadernos	30.35	85.74	51	5	activo
876	Lápiz Tipo 871	Escritura	40.52	68.63	120	5	activo
877	Bolígrafo Tipo 872	Oficina	39.20	98.30	151	5	activo
878	Regla Tipo 873	Medición	51.98	18.24	145	5	activo
879	Pegamento Tipo 874	Adhesivos	13.27	35.72	44	5	activo
880	Tijera Tipo 875	Corte	33.18	17.77	36	5	activo
881	Carpeta Tipo 876	Archivo	16.62	11.71	105	5	activo
882	Mochila Tipo 877	Transporte	47.74	80.39	67	5	activo
883	Calculadora Tipo 878	Electrónico	5.57	88.73	43	5	activo
884	Papel Tipo 879	Impresión	27.52	23.48	46	5	activo
885	Cuaderno Tipo 880	Cuadernos	32.38	74.69	84	5	activo
886	Lápiz Tipo 881	Escritura	37.18	43.28	123	5	activo
887	Bolígrafo Tipo 882	Oficina	27.77	39.87	56	5	activo
888	Regla Tipo 883	Medición	33.78	109.79	86	5	activo
889	Pegamento Tipo 884	Adhesivos	23.21	92.75	142	5	activo
890	Tijera Tipo 885	Corte	42.72	94.37	147	5	activo
891	Carpeta Tipo 886	Archivo	40.29	45.75	19	5	activo
892	Mochila Tipo 887	Transporte	51.92	21.29	17	5	activo
893	Calculadora Tipo 888	Electrónico	36.04	91.35	47	5	activo
894	Papel Tipo 889	Impresión	25.75	88.04	141	5	activo
895	Cuaderno Tipo 890	Cuadernos	50.11	84.17	77	5	activo
896	Lápiz Tipo 891	Escritura	51.04	13.94	70	5	activo
897	Bolígrafo Tipo 892	Oficina	49.64	53.42	41	5	activo
898	Regla Tipo 893	Medición	5.92	58.18	63	5	activo
899	Pegamento Tipo 894	Adhesivos	9.67	43.05	120	5	activo
900	Tijera Tipo 895	Corte	23.63	77.26	151	5	activo
901	Carpeta Tipo 896	Archivo	46.61	108.73	53	5	activo
902	Mochila Tipo 897	Transporte	13.45	12.09	129	5	activo
903	Calculadora Tipo 898	Electrónico	52.91	36.43	40	5	activo
904	Papel Tipo 899	Impresión	26.10	105.71	93	5	activo
905	Cuaderno Tipo 900	Cuadernos	26.01	106.18	118	5	activo
906	Lápiz Tipo 901	Escritura	16.69	99.32	123	5	activo
907	Bolígrafo Tipo 902	Oficina	27.49	25.03	20	5	activo
908	Regla Tipo 903	Medición	32.98	22.92	25	5	activo
909	Pegamento Tipo 904	Adhesivos	50.06	61.61	37	5	activo
910	Tijera Tipo 905	Corte	40.24	35.27	20	5	activo
911	Carpeta Tipo 906	Archivo	50.02	17.85	124	5	activo
912	Mochila Tipo 907	Transporte	50.52	68.65	60	5	activo
913	Calculadora Tipo 908	Electrónico	50.89	58.73	131	5	activo
914	Papel Tipo 909	Impresión	50.00	84.01	32	5	activo
915	Cuaderno Tipo 910	Cuadernos	53.22	26.00	12	5	activo
916	Lápiz Tipo 911	Escritura	42.70	89.72	106	5	activo
917	Bolígrafo Tipo 912	Oficina	43.16	58.11	52	5	activo
918	Regla Tipo 913	Medición	30.14	43.91	31	5	activo
919	Pegamento Tipo 914	Adhesivos	8.19	87.99	150	5	activo
920	Tijera Tipo 915	Corte	7.82	61.07	24	5	activo
921	Carpeta Tipo 916	Archivo	47.59	47.07	146	5	activo
922	Mochila Tipo 917	Transporte	42.80	45.33	34	5	activo
923	Calculadora Tipo 918	Electrónico	24.27	63.02	72	5	activo
924	Papel Tipo 919	Impresión	52.54	75.73	63	5	activo
925	Cuaderno Tipo 920	Cuadernos	18.58	16.31	31	5	activo
926	Lápiz Tipo 921	Escritura	10.85	105.32	117	5	activo
927	Bolígrafo Tipo 922	Oficina	45.97	54.09	132	5	activo
928	Regla Tipo 923	Medición	7.82	109.99	6	5	activo
929	Pegamento Tipo 924	Adhesivos	14.41	50.03	34	5	activo
930	Tijera Tipo 925	Corte	36.51	84.31	100	5	activo
931	Carpeta Tipo 926	Archivo	32.15	57.34	10	5	activo
932	Mochila Tipo 927	Transporte	50.70	76.66	95	5	activo
933	Calculadora Tipo 928	Electrónico	18.07	12.44	21	5	activo
934	Papel Tipo 929	Impresión	42.53	56.37	47	5	activo
935	Cuaderno Tipo 930	Cuadernos	6.95	96.71	15	5	activo
936	Lápiz Tipo 931	Escritura	7.51	28.09	138	5	activo
937	Bolígrafo Tipo 932	Oficina	19.00	107.00	127	5	activo
938	Regla Tipo 933	Medición	18.95	28.38	68	5	activo
939	Pegamento Tipo 934	Adhesivos	5.68	82.16	141	5	activo
940	Tijera Tipo 935	Corte	22.32	63.56	26	5	activo
941	Carpeta Tipo 936	Archivo	38.45	95.98	109	5	activo
942	Mochila Tipo 937	Transporte	47.39	66.79	145	5	activo
943	Calculadora Tipo 938	Electrónico	40.52	96.86	140	5	activo
944	Papel Tipo 939	Impresión	15.78	56.93	31	5	activo
945	Cuaderno Tipo 940	Cuadernos	18.71	93.68	5	5	activo
946	Lápiz Tipo 941	Escritura	46.50	41.07	17	5	activo
947	Bolígrafo Tipo 942	Oficina	42.63	92.42	73	5	activo
948	Regla Tipo 943	Medición	52.07	39.20	51	5	activo
949	Pegamento Tipo 944	Adhesivos	15.10	43.01	17	5	activo
950	Tijera Tipo 945	Corte	50.52	69.53	107	5	activo
951	Carpeta Tipo 946	Archivo	47.19	26.21	19	5	activo
952	Mochila Tipo 947	Transporte	18.48	19.70	56	5	activo
953	Calculadora Tipo 948	Electrónico	28.21	103.97	59	5	activo
954	Papel Tipo 949	Impresión	37.23	81.55	78	5	activo
955	Cuaderno Tipo 950	Cuadernos	11.68	78.77	122	5	activo
956	Lápiz Tipo 951	Escritura	49.90	102.42	50	5	activo
957	Bolígrafo Tipo 952	Oficina	30.83	33.63	143	5	activo
958	Regla Tipo 953	Medición	34.50	79.38	85	5	activo
959	Pegamento Tipo 954	Adhesivos	35.36	99.20	151	5	activo
960	Tijera Tipo 955	Corte	33.85	11.59	90	5	activo
961	Carpeta Tipo 956	Archivo	16.36	75.99	152	5	activo
962	Mochila Tipo 957	Transporte	18.87	29.41	15	5	activo
963	Calculadora Tipo 958	Electrónico	12.47	101.51	150	5	activo
964	Papel Tipo 959	Impresión	52.30	78.47	54	5	activo
965	Cuaderno Tipo 960	Cuadernos	33.50	51.16	11	5	activo
966	Lápiz Tipo 961	Escritura	41.70	78.71	97	5	activo
967	Bolígrafo Tipo 962	Oficina	36.92	11.10	28	5	activo
968	Regla Tipo 963	Medición	6.95	45.58	50	5	activo
969	Pegamento Tipo 964	Adhesivos	16.06	32.41	12	5	activo
970	Tijera Tipo 965	Corte	31.12	51.67	101	5	activo
971	Carpeta Tipo 966	Archivo	12.17	31.87	78	5	activo
972	Mochila Tipo 967	Transporte	36.77	57.47	30	5	activo
973	Calculadora Tipo 968	Electrónico	11.60	19.57	76	5	activo
974	Papel Tipo 969	Impresión	44.99	102.01	124	5	activo
975	Cuaderno Tipo 970	Cuadernos	46.80	41.09	86	5	activo
976	Lápiz Tipo 971	Escritura	37.10	81.65	65	5	activo
977	Bolígrafo Tipo 972	Oficina	33.52	41.27	10	5	activo
978	Regla Tipo 973	Medición	50.64	73.43	91	5	activo
979	Pegamento Tipo 974	Adhesivos	50.23	30.81	52	5	activo
980	Tijera Tipo 975	Corte	38.36	21.73	42	5	activo
981	Carpeta Tipo 976	Archivo	41.90	90.49	82	5	activo
982	Mochila Tipo 977	Transporte	44.57	80.97	19	5	activo
983	Calculadora Tipo 978	Electrónico	36.64	70.32	47	5	activo
984	Papel Tipo 979	Impresión	15.60	16.95	61	5	activo
985	Cuaderno Tipo 980	Cuadernos	10.68	25.28	52	5	activo
986	Lápiz Tipo 981	Escritura	32.92	80.94	35	5	activo
987	Bolígrafo Tipo 982	Oficina	30.15	76.69	44	5	activo
988	Regla Tipo 983	Medición	26.41	11.73	28	5	activo
989	Pegamento Tipo 984	Adhesivos	9.93	46.32	140	5	activo
990	Tijera Tipo 985	Corte	19.90	91.42	22	5	activo
991	Carpeta Tipo 986	Archivo	54.47	16.37	17	5	activo
992	Mochila Tipo 987	Transporte	41.89	16.88	96	5	activo
993	Calculadora Tipo 988	Electrónico	16.35	47.04	82	5	activo
994	Papel Tipo 989	Impresión	24.41	36.78	28	5	activo
995	Cuaderno Tipo 990	Cuadernos	11.58	76.25	38	5	activo
996	Lápiz Tipo 991	Escritura	20.54	46.25	120	5	activo
997	Bolígrafo Tipo 992	Oficina	17.07	39.74	26	5	activo
998	Regla Tipo 993	Medición	32.84	109.24	72	5	activo
999	Pegamento Tipo 994	Adhesivos	34.85	35.67	74	5	activo
1000	Tijera Tipo 995	Corte	11.18	74.59	147	5	activo
1001	Carpeta Tipo 996	Archivo	51.60	44.38	87	5	activo
1002	Mochila Tipo 997	Transporte	51.36	98.87	82	5	activo
1003	Calculadora Tipo 998	Electrónico	46.57	64.63	81	5	activo
1004	Papel Tipo 999	Impresión	34.25	45.52	143	5	activo
1005	Cuaderno Tipo 1000	Cuadernos	39.76	19.49	14	5	activo
\.


--
-- Data for Name: compras_detalle; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.compras_detalle (id_detalle_compra, id_compra, id_producto, cantidad, precio_unitario) FROM stdin;
11	1	7	11	47.46
12	2	8	17	26.06
13	3	9	51	47.28
14	4	10	50	20.75
15	5	11	35	24.70
16	6	12	49	20.77
17	7	13	51	38.26
18	8	14	20	46.04
19	9	15	29	18.41
20	10	16	7	22.64
\.


--
-- Data for Name: deudores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.deudores (id_deudor, id_cliente, monto_deuda, fecha_ultimo_pago, estado) FROM stdin;
1	1	4730.00	2026-05-17	activo
2	2	4251.92	2026-05-28	activo
3	3	3420.11	2026-05-21	activo
4	4	4624.79	2026-05-28	activo
5	5	4292.24	2026-05-20	activo
6	6	1912.20	2026-05-22	activo
7	7	1255.72	2026-05-09	activo
8	8	175.01	2026-05-05	activo
9	9	4891.99	2026-05-08	activo
10	10	593.35	2026-05-17	activo
\.


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.roles (id_rol, nombre, descripcion) FROM stdin;
1	Administrador	Control total del sistema
2	Cajero	Registro de ventas y cobros
3	Almacenista	Gestión de inventario y compras
4	Vendedor	Atención al cliente y promociones
5	Contador	Reportes financieros y utilidades
\.


--
-- Data for Name: empleados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.empleados (id_empleado, nombre_completo, email, telefono, id_rol, fecha_contratacion, salario, estado) FROM stdin;
1	Empleado 1	emp1@papeleria.com	+52 55 10000001	1	2026-05-31	16000.00	activo
2	Empleado 2	emp2@papeleria.com	+52 55 10000002	1	2026-05-31	17000.00	activo
3	Empleado 3	emp3@papeleria.com	+52 55 10000003	2	2026-05-31	18000.00	activo
4	Empleado 4	emp4@papeleria.com	+52 55 10000004	2	2026-05-31	19000.00	activo
5	Empleado 5	emp5@papeleria.com	+52 55 10000005	2	2026-05-31	20000.00	activo
6	Empleado 6	emp6@papeleria.com	+52 55 10000006	3	2026-05-31	21000.00	activo
7	Empleado 7	emp7@papeleria.com	+52 55 10000007	3	2026-05-31	22000.00	activo
8	Empleado 8	emp8@papeleria.com	+52 55 10000008	4	2026-05-31	23000.00	activo
9	Empleado 9	emp9@papeleria.com	+52 55 10000009	4	2026-05-31	24000.00	activo
10	Empleado 10	emp10@papeleria.com	+52 55 10000010	5	2026-05-31	25000.00	activo
\.


--
-- Data for Name: inventarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.inventarios (id_inventario, id_producto, tipo_movimiento, cantidad, fecha_movimiento, id_empleado, observaciones) FROM stdin;
2991	12	entrada	40	2026-01-20 21:56:17.664	7	Movimiento automático 6
2992	13	entrada	36	2026-01-06 21:56:17.664	8	Movimiento automático 7
2993	14	entrada	40	2026-03-31 21:56:17.664	9	Movimiento automático 8
2994	15	entrada	24	2025-09-26 21:56:17.664	10	Movimiento automático 9
2995	16	entrada	1	2025-06-28 21:56:17.664	1	Movimiento automático 10
2996	17	entrada	19	2025-08-05 21:56:17.664	2	Movimiento automático 11
2997	18	entrada	6	2025-06-01 21:56:17.664	3	Movimiento automático 12
2998	19	entrada	10	2026-04-30 21:56:17.664	4	Movimiento automático 13
2999	20	entrada	36	2026-02-04 21:56:17.664	5	Movimiento automático 14
3000	21	entrada	3	2025-11-22 21:56:17.664	6	Movimiento automático 15
3001	22	entrada	29	2026-03-24 21:56:17.664	7	Movimiento automático 16
3002	23	entrada	38	2025-11-30 21:56:17.664	8	Movimiento automático 17
3003	24	entrada	6	2026-04-17 21:56:17.664	9	Movimiento automático 18
3004	25	entrada	46	2025-06-28 21:56:17.664	10	Movimiento automático 19
3005	26	entrada	16	2025-06-23 21:56:17.664	1	Movimiento automático 20
3006	27	entrada	41	2026-01-08 21:56:17.664	2	Movimiento automático 21
3007	28	entrada	44	2025-11-12 21:56:17.664	3	Movimiento automático 22
3008	29	entrada	19	2025-05-31 21:56:17.664	4	Movimiento automático 23
3009	30	entrada	33	2026-05-12 21:56:17.664	5	Movimiento automático 24
3010	31	entrada	29	2026-01-20 21:56:17.664	6	Movimiento automático 25
3011	32	entrada	12	2026-02-02 21:56:17.664	7	Movimiento automático 26
3012	33	entrada	35	2026-02-11 21:56:17.664	8	Movimiento automático 27
3013	34	entrada	41	2025-06-26 21:56:17.664	9	Movimiento automático 28
3014	35	entrada	27	2025-09-28 21:56:17.664	10	Movimiento automático 29
3015	36	entrada	25	2026-02-13 21:56:17.664	1	Movimiento automático 30
3016	37	entrada	14	2025-09-16 21:56:17.664	2	Movimiento automático 31
3017	38	entrada	48	2025-08-14 21:56:17.664	3	Movimiento automático 32
3018	39	entrada	18	2025-08-01 21:56:17.664	4	Movimiento automático 33
3019	40	entrada	23	2025-06-23 21:56:17.664	5	Movimiento automático 34
3020	41	entrada	43	2026-02-07 21:56:17.664	6	Movimiento automático 35
3021	42	entrada	35	2025-11-19 21:56:17.664	7	Movimiento automático 36
3022	43	entrada	6	2026-03-25 21:56:17.664	8	Movimiento automático 37
3023	44	entrada	19	2026-03-12 21:56:17.664	9	Movimiento automático 38
3024	45	entrada	40	2025-12-13 21:56:17.664	10	Movimiento automático 39
3025	46	entrada	26	2026-02-14 21:56:17.664	1	Movimiento automático 40
3026	47	entrada	32	2026-02-13 21:56:17.664	2	Movimiento automático 41
3027	48	entrada	38	2025-10-28 21:56:17.664	3	Movimiento automático 42
3028	49	entrada	9	2026-02-07 21:56:17.664	4	Movimiento automático 43
3029	50	entrada	19	2026-03-21 21:56:17.664	5	Movimiento automático 44
3030	51	entrada	49	2025-09-13 21:56:17.664	6	Movimiento automático 45
3031	52	entrada	39	2025-11-04 21:56:17.664	7	Movimiento automático 46
3032	53	entrada	13	2025-11-26 21:56:17.664	8	Movimiento automático 47
3033	54	entrada	48	2026-03-30 21:56:17.664	9	Movimiento automático 48
3034	55	entrada	31	2026-01-31 21:56:17.664	10	Movimiento automático 49
3035	56	entrada	3	2025-06-30 21:56:17.664	1	Movimiento automático 50
3036	57	entrada	31	2025-12-31 21:56:17.664	2	Movimiento automático 51
3037	58	entrada	27	2026-04-16 21:56:17.664	3	Movimiento automático 52
3038	59	entrada	3	2025-10-19 21:56:17.664	4	Movimiento automático 53
3039	60	entrada	8	2025-07-06 21:56:17.664	5	Movimiento automático 54
3040	61	entrada	38	2026-02-06 21:56:17.664	6	Movimiento automático 55
3041	62	entrada	15	2026-04-19 21:56:17.664	7	Movimiento automático 56
3042	63	entrada	15	2026-03-19 21:56:17.664	8	Movimiento automático 57
3043	64	entrada	15	2025-07-26 21:56:17.664	9	Movimiento automático 58
3044	65	entrada	1	2025-06-19 21:56:17.664	10	Movimiento automático 59
3045	66	entrada	10	2025-10-17 21:56:17.664	1	Movimiento automático 60
3046	67	entrada	24	2025-11-25 21:56:17.664	2	Movimiento automático 61
3047	68	entrada	26	2026-03-13 21:56:17.664	3	Movimiento automático 62
3048	69	entrada	50	2025-08-11 21:56:17.664	4	Movimiento automático 63
3049	70	entrada	19	2025-11-08 21:56:17.664	5	Movimiento automático 64
3050	71	entrada	39	2025-06-04 21:56:17.664	6	Movimiento automático 65
3051	72	entrada	2	2026-03-04 21:56:17.664	7	Movimiento automático 66
3052	73	entrada	5	2026-01-05 21:56:17.664	8	Movimiento automático 67
3053	74	entrada	46	2026-04-09 21:56:17.664	9	Movimiento automático 68
3054	75	entrada	16	2025-07-10 21:56:17.664	10	Movimiento automático 69
3055	76	entrada	49	2025-12-28 21:56:17.664	1	Movimiento automático 70
3056	77	entrada	26	2025-09-02 21:56:17.664	2	Movimiento automático 71
3057	78	entrada	45	2025-07-27 21:56:17.664	3	Movimiento automático 72
3058	79	entrada	49	2026-03-26 21:56:17.664	4	Movimiento automático 73
3059	80	entrada	18	2025-09-09 21:56:17.664	5	Movimiento automático 74
3060	81	entrada	33	2025-07-08 21:56:17.664	6	Movimiento automático 75
3061	82	entrada	25	2026-03-24 21:56:17.664	7	Movimiento automático 76
3062	83	entrada	11	2025-08-03 21:56:17.664	8	Movimiento automático 77
3063	84	entrada	31	2026-04-21 21:56:17.664	9	Movimiento automático 78
3064	85	entrada	9	2025-11-26 21:56:17.664	10	Movimiento automático 79
3065	86	entrada	13	2026-01-07 21:56:17.664	1	Movimiento automático 80
3066	87	entrada	5	2025-08-16 21:56:17.664	2	Movimiento automático 81
3067	88	entrada	6	2025-06-27 21:56:17.664	3	Movimiento automático 82
3068	89	entrada	41	2025-08-22 21:56:17.664	4	Movimiento automático 83
3069	90	entrada	14	2026-04-21 21:56:17.664	5	Movimiento automático 84
3070	91	entrada	34	2025-08-05 21:56:17.664	6	Movimiento automático 85
3071	92	entrada	14	2025-09-12 21:56:17.664	7	Movimiento automático 86
3072	93	entrada	6	2025-08-20 21:56:17.664	8	Movimiento automático 87
3073	94	entrada	31	2026-02-19 21:56:17.664	9	Movimiento automático 88
3074	95	entrada	17	2025-07-23 21:56:17.664	10	Movimiento automático 89
3075	96	entrada	50	2025-08-01 21:56:17.664	1	Movimiento automático 90
3076	97	entrada	18	2026-01-25 21:56:17.664	2	Movimiento automático 91
3077	98	entrada	38	2025-07-19 21:56:17.664	3	Movimiento automático 92
3078	99	entrada	4	2026-04-21 21:56:17.664	4	Movimiento automático 93
3079	100	entrada	44	2025-11-10 21:56:17.664	5	Movimiento automático 94
3080	101	entrada	6	2025-08-12 21:56:17.664	6	Movimiento automático 95
3081	102	entrada	47	2026-04-02 21:56:17.664	7	Movimiento automático 96
3082	103	entrada	5	2025-08-20 21:56:17.664	8	Movimiento automático 97
3083	104	entrada	17	2026-04-24 21:56:17.664	9	Movimiento automático 98
3084	105	entrada	46	2025-11-21 21:56:17.664	10	Movimiento automático 99
3085	106	entrada	48	2025-06-17 21:56:17.664	1	Movimiento automático 100
3086	107	entrada	35	2026-01-27 21:56:17.664	2	Movimiento automático 101
3087	108	entrada	10	2025-09-11 21:56:17.664	3	Movimiento automático 102
3088	109	entrada	26	2025-12-03 21:56:17.664	4	Movimiento automático 103
3089	110	entrada	43	2026-05-28 21:56:17.664	5	Movimiento automático 104
3090	111	entrada	11	2025-10-27 21:56:17.664	6	Movimiento automático 105
3091	112	entrada	44	2025-07-09 21:56:17.664	7	Movimiento automático 106
3092	113	entrada	8	2025-07-05 21:56:17.664	8	Movimiento automático 107
3093	114	entrada	40	2025-11-01 21:56:17.664	9	Movimiento automático 108
3094	115	entrada	43	2025-06-04 21:56:17.664	10	Movimiento automático 109
3095	116	entrada	49	2025-06-03 21:56:17.664	1	Movimiento automático 110
3096	117	entrada	43	2025-08-07 21:56:17.664	2	Movimiento automático 111
3097	118	entrada	32	2026-03-01 21:56:17.664	3	Movimiento automático 112
3098	119	entrada	32	2025-12-09 21:56:17.664	4	Movimiento automático 113
3099	120	entrada	43	2025-10-25 21:56:17.664	5	Movimiento automático 114
3100	121	entrada	33	2026-04-22 21:56:17.664	6	Movimiento automático 115
3101	122	entrada	44	2025-12-30 21:56:17.664	7	Movimiento automático 116
3102	123	entrada	5	2025-11-01 21:56:17.664	8	Movimiento automático 117
3103	124	entrada	22	2025-07-12 21:56:17.664	9	Movimiento automático 118
3104	125	entrada	42	2026-03-17 21:56:17.664	10	Movimiento automático 119
3105	126	entrada	41	2025-08-17 21:56:17.664	1	Movimiento automático 120
3106	127	entrada	28	2025-10-04 21:56:17.664	2	Movimiento automático 121
3107	128	entrada	18	2026-04-11 21:56:17.664	3	Movimiento automático 122
3108	129	entrada	49	2025-08-16 21:56:17.664	4	Movimiento automático 123
3109	130	entrada	48	2025-10-09 21:56:17.664	5	Movimiento automático 124
3110	131	entrada	5	2025-08-05 21:56:17.664	6	Movimiento automático 125
3111	132	entrada	12	2026-02-24 21:56:17.664	7	Movimiento automático 126
3112	133	entrada	13	2025-09-02 21:56:17.664	8	Movimiento automático 127
3113	134	entrada	6	2026-02-19 21:56:17.664	9	Movimiento automático 128
3114	135	entrada	10	2026-01-02 21:56:17.664	10	Movimiento automático 129
3115	136	entrada	38	2025-12-30 21:56:17.664	1	Movimiento automático 130
3116	137	entrada	37	2025-06-25 21:56:17.664	2	Movimiento automático 131
3117	138	entrada	15	2025-06-16 21:56:17.664	3	Movimiento automático 132
3118	139	entrada	13	2025-12-09 21:56:17.664	4	Movimiento automático 133
3119	140	entrada	17	2026-04-10 21:56:17.664	5	Movimiento automático 134
3120	141	entrada	41	2026-02-16 21:56:17.664	6	Movimiento automático 135
3121	142	entrada	49	2025-07-16 21:56:17.664	7	Movimiento automático 136
3122	143	entrada	39	2025-09-02 21:56:17.664	8	Movimiento automático 137
3123	144	entrada	23	2025-12-27 21:56:17.664	9	Movimiento automático 138
3124	145	entrada	48	2026-03-11 21:56:17.664	10	Movimiento automático 139
3125	146	entrada	15	2026-04-03 21:56:17.664	1	Movimiento automático 140
3126	147	entrada	17	2025-09-15 21:56:17.664	2	Movimiento automático 141
3127	148	entrada	39	2026-01-02 21:56:17.664	3	Movimiento automático 142
3128	149	entrada	47	2026-03-24 21:56:17.664	4	Movimiento automático 143
3129	150	entrada	21	2025-09-12 21:56:17.664	5	Movimiento automático 144
3130	151	entrada	47	2026-01-15 21:56:17.664	6	Movimiento automático 145
3131	152	entrada	48	2025-06-13 21:56:17.664	7	Movimiento automático 146
3132	153	entrada	29	2025-09-06 21:56:17.664	8	Movimiento automático 147
3133	154	entrada	34	2025-09-02 21:56:17.664	9	Movimiento automático 148
3134	155	entrada	39	2025-12-24 21:56:17.664	10	Movimiento automático 149
3135	156	entrada	46	2026-05-15 21:56:17.664	1	Movimiento automático 150
3136	157	entrada	35	2026-04-01 21:56:17.664	2	Movimiento automático 151
3137	158	entrada	11	2025-11-04 21:56:17.664	3	Movimiento automático 152
3138	159	entrada	21	2025-10-05 21:56:17.664	4	Movimiento automático 153
3139	160	entrada	4	2026-05-06 21:56:17.664	5	Movimiento automático 154
3140	161	entrada	46	2026-03-29 21:56:17.664	6	Movimiento automático 155
3141	162	entrada	23	2025-11-11 21:56:17.664	7	Movimiento automático 156
3142	163	entrada	33	2026-01-03 21:56:17.664	8	Movimiento automático 157
3143	164	entrada	44	2025-11-05 21:56:17.664	9	Movimiento automático 158
3144	165	entrada	41	2026-05-10 21:56:17.664	10	Movimiento automático 159
3145	166	entrada	36	2025-09-12 21:56:17.664	1	Movimiento automático 160
3146	167	entrada	24	2026-01-12 21:56:17.664	2	Movimiento automático 161
3147	168	entrada	24	2026-01-01 21:56:17.664	3	Movimiento automático 162
3148	169	entrada	7	2025-09-10 21:56:17.664	4	Movimiento automático 163
3149	170	entrada	3	2026-03-13 21:56:17.664	5	Movimiento automático 164
3150	171	entrada	12	2025-10-22 21:56:17.664	6	Movimiento automático 165
3151	172	entrada	40	2025-06-05 21:56:17.664	7	Movimiento automático 166
3152	173	entrada	37	2025-09-29 21:56:17.664	8	Movimiento automático 167
3153	174	entrada	31	2025-09-25 21:56:17.664	9	Movimiento automático 168
3154	175	entrada	26	2025-10-24 21:56:17.664	10	Movimiento automático 169
3155	176	entrada	15	2025-12-13 21:56:17.664	1	Movimiento automático 170
3156	177	entrada	27	2025-07-09 21:56:17.664	2	Movimiento automático 171
3157	178	entrada	49	2025-12-05 21:56:17.664	3	Movimiento automático 172
3158	179	entrada	1	2025-06-15 21:56:17.664	4	Movimiento automático 173
3159	180	entrada	6	2026-05-28 21:56:17.664	5	Movimiento automático 174
3160	181	entrada	13	2026-01-15 21:56:17.664	6	Movimiento automático 175
3161	182	entrada	3	2026-01-04 21:56:17.664	7	Movimiento automático 176
3162	183	entrada	9	2026-05-01 21:56:17.664	8	Movimiento automático 177
3163	184	entrada	25	2025-09-28 21:56:17.664	9	Movimiento automático 178
3164	185	entrada	13	2026-05-28 21:56:17.664	10	Movimiento automático 179
3165	186	entrada	33	2026-04-17 21:56:17.664	1	Movimiento automático 180
3166	187	entrada	40	2025-06-03 21:56:17.664	2	Movimiento automático 181
3167	188	entrada	9	2026-01-03 21:56:17.664	3	Movimiento automático 182
3168	189	entrada	32	2025-12-26 21:56:17.664	4	Movimiento automático 183
3169	190	entrada	22	2025-10-24 21:56:17.664	5	Movimiento automático 184
3170	191	entrada	32	2026-04-17 21:56:17.664	6	Movimiento automático 185
3171	192	entrada	13	2026-02-23 21:56:17.664	7	Movimiento automático 186
3172	193	entrada	17	2025-08-13 21:56:17.664	8	Movimiento automático 187
3173	194	entrada	5	2026-03-10 21:56:17.664	9	Movimiento automático 188
3174	195	entrada	41	2025-10-17 21:56:17.664	10	Movimiento automático 189
3175	196	entrada	42	2025-08-24 21:56:17.664	1	Movimiento automático 190
3176	197	entrada	37	2026-03-14 21:56:17.664	2	Movimiento automático 191
3177	198	entrada	17	2026-01-03 21:56:17.664	3	Movimiento automático 192
3178	199	entrada	22	2025-07-25 21:56:17.664	4	Movimiento automático 193
3179	200	entrada	31	2025-10-21 21:56:17.664	5	Movimiento automático 194
3180	201	entrada	1	2025-11-03 21:56:17.664	6	Movimiento automático 195
3181	202	entrada	24	2025-12-21 21:56:17.664	7	Movimiento automático 196
3182	203	entrada	28	2025-07-25 21:56:17.664	8	Movimiento automático 197
3183	204	entrada	36	2025-12-07 21:56:17.664	9	Movimiento automático 198
3184	205	entrada	21	2025-09-04 21:56:17.664	10	Movimiento automático 199
3185	206	entrada	46	2025-10-24 21:56:17.664	1	Movimiento automático 200
3186	207	entrada	32	2025-08-31 21:56:17.664	2	Movimiento automático 201
3187	208	entrada	3	2025-09-12 21:56:17.664	3	Movimiento automático 202
3188	209	entrada	3	2026-02-20 21:56:17.664	4	Movimiento automático 203
3189	210	entrada	15	2025-12-25 21:56:17.664	5	Movimiento automático 204
3190	211	entrada	26	2025-10-17 21:56:17.664	6	Movimiento automático 205
3191	212	entrada	10	2025-06-21 21:56:17.664	7	Movimiento automático 206
3192	213	entrada	33	2025-08-03 21:56:17.664	8	Movimiento automático 207
3193	214	entrada	18	2025-10-21 21:56:17.664	9	Movimiento automático 208
3194	215	entrada	31	2026-04-09 21:56:17.664	10	Movimiento automático 209
3195	216	entrada	38	2025-06-06 21:56:17.664	1	Movimiento automático 210
3196	217	entrada	36	2026-01-10 21:56:17.664	2	Movimiento automático 211
3197	218	entrada	1	2025-07-19 21:56:17.664	3	Movimiento automático 212
3198	219	entrada	10	2026-04-05 21:56:17.664	4	Movimiento automático 213
3199	220	entrada	9	2025-10-27 21:56:17.664	5	Movimiento automático 214
3200	221	entrada	44	2025-12-31 21:56:17.664	6	Movimiento automático 215
3201	222	entrada	25	2025-10-25 21:56:17.664	7	Movimiento automático 216
3202	223	entrada	29	2026-05-10 21:56:17.664	8	Movimiento automático 217
3203	224	entrada	35	2025-12-10 21:56:17.664	9	Movimiento automático 218
3204	225	entrada	32	2026-02-08 21:56:17.664	10	Movimiento automático 219
3205	226	entrada	25	2025-06-03 21:56:17.664	1	Movimiento automático 220
3206	227	entrada	30	2025-06-28 21:56:17.664	2	Movimiento automático 221
3207	228	entrada	10	2025-08-31 21:56:17.664	3	Movimiento automático 222
3208	229	entrada	33	2025-07-09 21:56:17.664	4	Movimiento automático 223
3209	230	entrada	30	2025-11-28 21:56:17.664	5	Movimiento automático 224
3210	231	entrada	38	2025-11-08 21:56:17.664	6	Movimiento automático 225
3211	232	entrada	19	2026-03-28 21:56:17.664	7	Movimiento automático 226
3212	233	entrada	29	2026-03-11 21:56:17.664	8	Movimiento automático 227
3213	234	entrada	19	2025-11-23 21:56:17.664	9	Movimiento automático 228
3214	235	entrada	8	2025-12-15 21:56:17.664	10	Movimiento automático 229
3215	236	entrada	38	2026-04-20 21:56:17.664	1	Movimiento automático 230
3216	237	entrada	33	2026-01-30 21:56:17.664	2	Movimiento automático 231
3217	238	entrada	12	2025-09-09 21:56:17.664	3	Movimiento automático 232
3218	239	entrada	45	2026-04-24 21:56:17.664	4	Movimiento automático 233
3219	240	entrada	33	2026-02-03 21:56:17.664	5	Movimiento automático 234
3220	241	entrada	41	2026-03-06 21:56:17.664	6	Movimiento automático 235
3221	242	entrada	37	2026-04-14 21:56:17.664	7	Movimiento automático 236
3222	243	entrada	50	2026-01-18 21:56:17.664	8	Movimiento automático 237
3223	244	entrada	10	2026-01-11 21:56:17.664	9	Movimiento automático 238
3224	245	entrada	9	2026-01-19 21:56:17.664	10	Movimiento automático 239
3225	246	entrada	7	2025-10-30 21:56:17.664	1	Movimiento automático 240
3226	247	entrada	41	2025-09-22 21:56:17.664	2	Movimiento automático 241
3227	248	entrada	27	2026-02-15 21:56:17.664	3	Movimiento automático 242
3228	249	entrada	33	2025-07-21 21:56:17.664	4	Movimiento automático 243
3229	250	entrada	36	2026-05-05 21:56:17.664	5	Movimiento automático 244
3230	251	entrada	41	2025-10-06 21:56:17.664	6	Movimiento automático 245
3231	252	entrada	5	2026-01-23 21:56:17.664	7	Movimiento automático 246
3232	253	entrada	45	2026-01-22 21:56:17.664	8	Movimiento automático 247
3233	254	entrada	14	2026-03-13 21:56:17.664	9	Movimiento automático 248
3234	255	entrada	30	2025-07-12 21:56:17.664	10	Movimiento automático 249
3235	256	entrada	45	2026-02-08 21:56:17.664	1	Movimiento automático 250
3236	257	entrada	38	2025-12-18 21:56:17.664	2	Movimiento automático 251
3237	258	entrada	13	2025-08-30 21:56:17.664	3	Movimiento automático 252
3238	259	entrada	32	2026-05-17 21:56:17.664	4	Movimiento automático 253
3239	260	entrada	8	2025-11-13 21:56:17.664	5	Movimiento automático 254
3240	261	entrada	11	2025-06-09 21:56:17.664	6	Movimiento automático 255
3241	262	entrada	27	2026-03-01 21:56:17.664	7	Movimiento automático 256
3242	263	entrada	47	2025-06-29 21:56:17.664	8	Movimiento automático 257
3243	264	entrada	28	2025-06-06 21:56:17.664	9	Movimiento automático 258
3244	265	entrada	18	2026-05-01 21:56:17.664	10	Movimiento automático 259
3245	266	entrada	28	2026-02-13 21:56:17.664	1	Movimiento automático 260
3246	267	entrada	42	2026-01-22 21:56:17.664	2	Movimiento automático 261
3247	268	entrada	6	2025-10-06 21:56:17.664	3	Movimiento automático 262
3248	269	entrada	39	2025-11-14 21:56:17.664	4	Movimiento automático 263
3249	270	entrada	48	2025-12-08 21:56:17.664	5	Movimiento automático 264
3250	271	entrada	26	2025-06-19 21:56:17.664	6	Movimiento automático 265
3251	272	entrada	44	2026-02-06 21:56:17.664	7	Movimiento automático 266
3252	273	entrada	10	2026-05-30 21:56:17.664	8	Movimiento automático 267
3253	274	entrada	42	2025-07-10 21:56:17.664	9	Movimiento automático 268
3254	275	entrada	33	2025-12-24 21:56:17.664	10	Movimiento automático 269
3255	276	entrada	11	2025-09-25 21:56:17.664	1	Movimiento automático 270
3256	277	entrada	26	2025-09-06 21:56:17.664	2	Movimiento automático 271
3257	278	entrada	12	2025-12-11 21:56:17.664	3	Movimiento automático 272
3258	279	entrada	48	2026-05-16 21:56:17.664	4	Movimiento automático 273
3259	280	entrada	29	2025-11-24 21:56:17.664	5	Movimiento automático 274
3260	281	entrada	23	2025-10-16 21:56:17.664	6	Movimiento automático 275
3261	282	entrada	50	2025-12-01 21:56:17.664	7	Movimiento automático 276
3262	283	entrada	13	2025-08-08 21:56:17.664	8	Movimiento automático 277
3263	284	entrada	46	2025-11-14 21:56:17.664	9	Movimiento automático 278
3264	285	entrada	50	2026-02-18 21:56:17.664	10	Movimiento automático 279
3265	286	entrada	43	2026-03-22 21:56:17.664	1	Movimiento automático 280
3266	287	entrada	10	2025-12-15 21:56:17.664	2	Movimiento automático 281
3267	288	entrada	18	2026-02-27 21:56:17.664	3	Movimiento automático 282
3268	289	entrada	21	2026-01-14 21:56:17.664	4	Movimiento automático 283
3269	290	entrada	31	2026-04-21 21:56:17.664	5	Movimiento automático 284
3270	291	entrada	37	2026-03-10 21:56:17.664	6	Movimiento automático 285
3271	292	entrada	42	2025-08-05 21:56:17.664	7	Movimiento automático 286
3272	293	entrada	10	2026-05-04 21:56:17.664	8	Movimiento automático 287
3273	294	entrada	47	2026-03-14 21:56:17.664	9	Movimiento automático 288
3274	295	entrada	21	2025-08-31 21:56:17.664	10	Movimiento automático 289
3275	296	entrada	33	2025-07-11 21:56:17.664	1	Movimiento automático 290
3276	297	entrada	34	2025-10-22 21:56:17.664	2	Movimiento automático 291
3277	298	entrada	43	2025-11-14 21:56:17.664	3	Movimiento automático 292
3278	299	entrada	18	2025-09-26 21:56:17.664	4	Movimiento automático 293
3279	300	entrada	13	2026-04-14 21:56:17.664	5	Movimiento automático 294
3280	301	entrada	20	2026-04-29 21:56:17.664	6	Movimiento automático 295
3281	302	entrada	5	2026-01-17 21:56:17.664	7	Movimiento automático 296
3282	303	entrada	33	2025-09-05 21:56:17.664	8	Movimiento automático 297
3283	304	entrada	24	2025-11-29 21:56:17.664	9	Movimiento automático 298
3284	305	entrada	42	2025-12-20 21:56:17.664	10	Movimiento automático 299
3285	306	entrada	15	2025-11-19 21:56:17.664	1	Movimiento automático 300
3286	307	entrada	8	2025-07-13 21:56:17.664	2	Movimiento automático 301
3287	308	entrada	21	2025-08-05 21:56:17.664	3	Movimiento automático 302
3288	309	entrada	12	2026-01-04 21:56:17.664	4	Movimiento automático 303
3289	310	entrada	42	2026-04-06 21:56:17.664	5	Movimiento automático 304
3290	311	entrada	14	2026-04-18 21:56:17.664	6	Movimiento automático 305
3291	312	entrada	23	2025-12-28 21:56:17.664	7	Movimiento automático 306
3292	313	entrada	26	2025-07-27 21:56:17.664	8	Movimiento automático 307
3293	314	entrada	6	2026-02-26 21:56:17.664	9	Movimiento automático 308
3294	315	entrada	34	2026-03-07 21:56:17.664	10	Movimiento automático 309
3295	316	entrada	17	2025-06-22 21:56:17.664	1	Movimiento automático 310
3296	317	entrada	3	2026-05-16 21:56:17.664	2	Movimiento automático 311
3297	318	entrada	6	2025-06-16 21:56:17.664	3	Movimiento automático 312
3298	319	entrada	24	2026-04-15 21:56:17.664	4	Movimiento automático 313
3299	320	entrada	45	2025-10-29 21:56:17.664	5	Movimiento automático 314
3300	321	entrada	41	2026-05-27 21:56:17.664	6	Movimiento automático 315
3301	322	entrada	23	2025-12-21 21:56:17.664	7	Movimiento automático 316
3302	323	entrada	40	2025-06-09 21:56:17.664	8	Movimiento automático 317
3303	324	entrada	14	2026-05-12 21:56:17.664	9	Movimiento automático 318
3304	325	entrada	29	2025-07-11 21:56:17.664	10	Movimiento automático 319
3305	326	entrada	33	2026-03-14 21:56:17.664	1	Movimiento automático 320
3306	327	entrada	34	2026-03-15 21:56:17.664	2	Movimiento automático 321
3307	328	entrada	25	2025-11-13 21:56:17.664	3	Movimiento automático 322
3308	329	entrada	11	2026-04-28 21:56:17.664	4	Movimiento automático 323
3309	330	entrada	9	2026-05-05 21:56:17.664	5	Movimiento automático 324
3310	331	entrada	33	2025-06-12 21:56:17.664	6	Movimiento automático 325
3311	332	entrada	37	2025-12-17 21:56:17.664	7	Movimiento automático 326
3312	333	entrada	5	2026-05-24 21:56:17.664	8	Movimiento automático 327
3313	334	entrada	47	2025-12-20 21:56:17.664	9	Movimiento automático 328
3314	335	entrada	36	2025-07-31 21:56:17.664	10	Movimiento automático 329
3315	336	entrada	3	2026-03-06 21:56:17.664	1	Movimiento automático 330
3316	337	entrada	17	2025-07-02 21:56:17.664	2	Movimiento automático 331
3317	338	entrada	6	2025-11-10 21:56:17.664	3	Movimiento automático 332
3318	339	entrada	16	2025-07-25 21:56:17.664	4	Movimiento automático 333
3319	340	entrada	10	2025-11-09 21:56:17.664	5	Movimiento automático 334
3320	341	entrada	12	2026-01-28 21:56:17.664	6	Movimiento automático 335
3321	342	entrada	47	2025-11-06 21:56:17.664	7	Movimiento automático 336
3322	343	entrada	30	2025-08-14 21:56:17.664	8	Movimiento automático 337
3323	344	entrada	27	2026-04-09 21:56:17.664	9	Movimiento automático 338
3324	345	entrada	18	2026-03-07 21:56:17.664	10	Movimiento automático 339
3325	346	entrada	22	2026-05-01 21:56:17.664	1	Movimiento automático 340
3326	347	entrada	27	2025-12-17 21:56:17.664	2	Movimiento automático 341
3327	348	entrada	46	2025-08-10 21:56:17.664	3	Movimiento automático 342
3328	349	entrada	27	2025-06-21 21:56:17.664	4	Movimiento automático 343
3329	350	entrada	22	2026-05-26 21:56:17.664	5	Movimiento automático 344
3330	351	entrada	38	2025-10-15 21:56:17.664	6	Movimiento automático 345
3331	352	entrada	12	2026-01-03 21:56:17.664	7	Movimiento automático 346
3332	353	entrada	23	2026-02-05 21:56:17.664	8	Movimiento automático 347
3333	354	entrada	40	2025-12-10 21:56:17.664	9	Movimiento automático 348
3334	355	entrada	43	2025-11-26 21:56:17.664	10	Movimiento automático 349
3335	356	entrada	19	2026-03-20 21:56:17.664	1	Movimiento automático 350
3336	357	entrada	47	2025-12-27 21:56:17.664	2	Movimiento automático 351
3337	358	entrada	31	2025-07-10 21:56:17.664	3	Movimiento automático 352
3338	359	entrada	40	2025-08-18 21:56:17.664	4	Movimiento automático 353
3339	360	entrada	46	2025-12-19 21:56:17.664	5	Movimiento automático 354
3340	361	entrada	50	2025-06-04 21:56:17.664	6	Movimiento automático 355
3341	362	entrada	31	2025-10-01 21:56:17.664	7	Movimiento automático 356
3342	363	entrada	26	2025-07-23 21:56:17.664	8	Movimiento automático 357
3343	364	entrada	18	2026-04-04 21:56:17.664	9	Movimiento automático 358
3344	365	entrada	17	2026-05-21 21:56:17.664	10	Movimiento automático 359
3345	366	entrada	19	2026-02-25 21:56:17.664	1	Movimiento automático 360
3346	367	entrada	21	2025-07-14 21:56:17.664	2	Movimiento automático 361
3347	368	entrada	21	2026-02-15 21:56:17.664	3	Movimiento automático 362
3348	369	entrada	18	2026-03-28 21:56:17.664	4	Movimiento automático 363
3349	370	entrada	39	2025-08-20 21:56:17.664	5	Movimiento automático 364
3350	371	entrada	30	2025-10-13 21:56:17.664	6	Movimiento automático 365
3351	372	entrada	50	2025-10-24 21:56:17.664	7	Movimiento automático 366
3352	373	entrada	13	2025-08-11 21:56:17.664	8	Movimiento automático 367
3353	374	entrada	41	2025-10-08 21:56:17.664	9	Movimiento automático 368
3354	375	entrada	48	2025-10-05 21:56:17.664	10	Movimiento automático 369
3355	376	entrada	34	2026-01-07 21:56:17.664	1	Movimiento automático 370
3356	377	entrada	33	2025-09-30 21:56:17.664	2	Movimiento automático 371
3357	378	entrada	48	2026-02-14 21:56:17.664	3	Movimiento automático 372
3358	379	entrada	29	2025-07-28 21:56:17.664	4	Movimiento automático 373
3359	380	entrada	37	2025-06-20 21:56:17.664	5	Movimiento automático 374
3360	381	entrada	7	2025-12-27 21:56:17.664	6	Movimiento automático 375
3361	382	entrada	43	2026-03-03 21:56:17.664	7	Movimiento automático 376
3362	383	entrada	30	2025-08-17 21:56:17.664	8	Movimiento automático 377
3363	384	entrada	33	2026-04-13 21:56:17.664	9	Movimiento automático 378
3364	385	entrada	42	2025-11-25 21:56:17.664	10	Movimiento automático 379
3365	386	entrada	45	2025-10-22 21:56:17.664	1	Movimiento automático 380
3366	387	entrada	22	2026-04-19 21:56:17.664	2	Movimiento automático 381
3367	388	entrada	29	2026-02-14 21:56:17.664	3	Movimiento automático 382
3368	389	entrada	9	2026-05-11 21:56:17.664	4	Movimiento automático 383
3369	390	entrada	47	2025-06-21 21:56:17.664	5	Movimiento automático 384
3370	391	entrada	37	2025-06-21 21:56:17.664	6	Movimiento automático 385
3371	392	entrada	42	2025-08-03 21:56:17.664	7	Movimiento automático 386
3372	393	entrada	42	2026-03-11 21:56:17.664	8	Movimiento automático 387
3373	394	entrada	21	2025-11-26 21:56:17.664	9	Movimiento automático 388
3374	395	entrada	5	2026-03-24 21:56:17.664	10	Movimiento automático 389
3375	396	entrada	6	2025-07-13 21:56:17.664	1	Movimiento automático 390
3376	397	entrada	50	2026-03-28 21:56:17.664	2	Movimiento automático 391
3377	398	entrada	31	2026-01-16 21:56:17.664	3	Movimiento automático 392
3378	399	entrada	30	2025-10-09 21:56:17.664	4	Movimiento automático 393
3379	400	entrada	47	2026-02-13 21:56:17.664	5	Movimiento automático 394
3380	401	entrada	3	2025-12-22 21:56:17.664	6	Movimiento automático 395
3381	402	entrada	50	2026-01-23 21:56:17.664	7	Movimiento automático 396
3382	403	entrada	45	2026-03-08 21:56:17.664	8	Movimiento automático 397
3383	404	entrada	33	2025-07-09 21:56:17.664	9	Movimiento automático 398
3384	405	entrada	29	2025-10-15 21:56:17.664	10	Movimiento automático 399
3385	406	entrada	35	2026-01-09 21:56:17.664	1	Movimiento automático 400
3386	407	entrada	9	2025-09-06 21:56:17.664	2	Movimiento automático 401
3387	408	entrada	21	2026-05-14 21:56:17.664	3	Movimiento automático 402
3388	409	entrada	35	2026-05-30 21:56:17.664	4	Movimiento automático 403
3389	410	entrada	8	2025-12-05 21:56:17.664	5	Movimiento automático 404
3390	411	entrada	43	2025-11-12 21:56:17.664	6	Movimiento automático 405
3391	412	entrada	33	2025-07-13 21:56:17.664	7	Movimiento automático 406
3392	413	entrada	41	2025-10-21 21:56:17.664	8	Movimiento automático 407
3393	414	entrada	28	2026-02-12 21:56:17.664	9	Movimiento automático 408
3394	415	entrada	15	2026-04-14 21:56:17.664	10	Movimiento automático 409
3395	416	entrada	41	2025-11-13 21:56:17.664	1	Movimiento automático 410
3396	417	entrada	30	2025-10-07 21:56:17.664	2	Movimiento automático 411
3397	418	entrada	34	2025-11-05 21:56:17.664	3	Movimiento automático 412
3398	419	entrada	23	2025-09-25 21:56:17.664	4	Movimiento automático 413
3399	420	entrada	25	2026-04-27 21:56:17.664	5	Movimiento automático 414
3400	421	entrada	44	2025-09-26 21:56:17.664	6	Movimiento automático 415
3401	422	entrada	15	2025-10-25 21:56:17.664	7	Movimiento automático 416
3402	423	entrada	17	2026-04-12 21:56:17.664	8	Movimiento automático 417
3403	424	entrada	47	2026-04-01 21:56:17.664	9	Movimiento automático 418
3404	425	entrada	31	2026-01-08 21:56:17.664	10	Movimiento automático 419
3405	426	entrada	31	2026-05-06 21:56:17.664	1	Movimiento automático 420
3406	427	entrada	45	2025-11-26 21:56:17.664	2	Movimiento automático 421
3407	428	entrada	21	2026-05-10 21:56:17.664	3	Movimiento automático 422
3408	429	entrada	13	2025-07-26 21:56:17.664	4	Movimiento automático 423
3409	430	entrada	8	2026-03-11 21:56:17.664	5	Movimiento automático 424
3410	431	entrada	30	2025-07-06 21:56:17.664	6	Movimiento automático 425
3411	432	entrada	49	2026-01-31 21:56:17.664	7	Movimiento automático 426
3412	433	entrada	39	2025-12-30 21:56:17.664	8	Movimiento automático 427
3413	434	entrada	50	2025-12-07 21:56:17.664	9	Movimiento automático 428
3414	435	entrada	25	2025-11-09 21:56:17.664	10	Movimiento automático 429
3415	436	entrada	22	2025-10-15 21:56:17.664	1	Movimiento automático 430
3416	437	entrada	20	2026-01-22 21:56:17.664	2	Movimiento automático 431
3417	438	entrada	35	2026-04-07 21:56:17.664	3	Movimiento automático 432
3418	439	entrada	47	2025-10-30 21:56:17.664	4	Movimiento automático 433
3419	440	entrada	11	2026-05-07 21:56:17.664	5	Movimiento automático 434
3420	441	entrada	36	2026-05-24 21:56:17.664	6	Movimiento automático 435
3421	442	entrada	37	2025-10-12 21:56:17.664	7	Movimiento automático 436
3422	443	entrada	6	2026-04-11 21:56:17.664	8	Movimiento automático 437
3423	444	entrada	10	2026-03-01 21:56:17.664	9	Movimiento automático 438
3424	445	entrada	13	2025-06-24 21:56:17.664	10	Movimiento automático 439
3425	446	entrada	1	2025-07-12 21:56:17.664	1	Movimiento automático 440
3426	447	entrada	30	2026-01-14 21:56:17.664	2	Movimiento automático 441
3427	448	entrada	43	2025-06-17 21:56:17.664	3	Movimiento automático 442
3428	449	entrada	22	2026-02-21 21:56:17.664	4	Movimiento automático 443
3429	450	entrada	30	2025-08-16 21:56:17.664	5	Movimiento automático 444
3430	451	entrada	13	2025-12-26 21:56:17.664	6	Movimiento automático 445
3431	452	entrada	1	2025-11-04 21:56:17.664	7	Movimiento automático 446
3432	453	entrada	13	2025-08-24 21:56:17.664	8	Movimiento automático 447
3433	454	entrada	24	2025-11-12 21:56:17.664	9	Movimiento automático 448
3434	455	entrada	3	2025-08-12 21:56:17.664	10	Movimiento automático 449
3435	456	entrada	30	2025-09-28 21:56:17.664	1	Movimiento automático 450
3436	457	entrada	1	2026-05-25 21:56:17.664	2	Movimiento automático 451
3437	458	entrada	40	2025-09-28 21:56:17.664	3	Movimiento automático 452
3438	459	entrada	33	2026-05-30 21:56:17.664	4	Movimiento automático 453
3439	460	entrada	1	2026-01-03 21:56:17.664	5	Movimiento automático 454
3440	461	entrada	3	2026-04-20 21:56:17.664	6	Movimiento automático 455
3441	462	entrada	36	2026-01-17 21:56:17.664	7	Movimiento automático 456
3442	463	entrada	18	2025-07-11 21:56:17.664	8	Movimiento automático 457
3443	464	entrada	24	2025-07-30 21:56:17.664	9	Movimiento automático 458
3444	465	entrada	28	2026-03-02 21:56:17.664	10	Movimiento automático 459
3445	466	entrada	48	2025-11-25 21:56:17.664	1	Movimiento automático 460
3446	467	entrada	6	2025-08-02 21:56:17.664	2	Movimiento automático 461
3447	468	entrada	34	2025-10-14 21:56:17.664	3	Movimiento automático 462
3448	469	entrada	35	2025-10-10 21:56:17.664	4	Movimiento automático 463
3449	470	entrada	28	2025-11-16 21:56:17.664	5	Movimiento automático 464
3450	471	entrada	43	2026-04-04 21:56:17.664	6	Movimiento automático 465
3451	472	entrada	41	2026-03-31 21:56:17.664	7	Movimiento automático 466
3452	473	entrada	10	2026-04-13 21:56:17.664	8	Movimiento automático 467
3453	474	entrada	30	2025-11-14 21:56:17.664	9	Movimiento automático 468
3454	475	entrada	9	2025-07-14 21:56:17.664	10	Movimiento automático 469
3455	476	entrada	31	2026-03-30 21:56:17.664	1	Movimiento automático 470
3456	477	entrada	8	2025-10-02 21:56:17.664	2	Movimiento automático 471
3457	478	entrada	43	2026-04-09 21:56:17.664	3	Movimiento automático 472
3458	479	entrada	37	2025-09-30 21:56:17.664	4	Movimiento automático 473
3459	480	entrada	29	2025-09-15 21:56:17.664	5	Movimiento automático 474
3460	481	entrada	41	2026-02-11 21:56:17.664	6	Movimiento automático 475
3461	482	entrada	20	2025-11-03 21:56:17.664	7	Movimiento automático 476
3462	483	entrada	23	2026-03-04 21:56:17.664	8	Movimiento automático 477
3463	484	entrada	5	2026-02-24 21:56:17.664	9	Movimiento automático 478
3464	485	entrada	44	2026-03-31 21:56:17.664	10	Movimiento automático 479
3465	486	entrada	14	2026-02-12 21:56:17.664	1	Movimiento automático 480
3466	487	entrada	24	2026-01-15 21:56:17.664	2	Movimiento automático 481
3467	488	entrada	33	2025-06-12 21:56:17.664	3	Movimiento automático 482
3468	489	entrada	11	2026-05-27 21:56:17.664	4	Movimiento automático 483
3469	490	entrada	1	2026-05-25 21:56:17.664	5	Movimiento automático 484
3470	491	entrada	22	2025-12-24 21:56:17.664	6	Movimiento automático 485
3471	492	entrada	32	2025-10-12 21:56:17.664	7	Movimiento automático 486
3472	493	entrada	4	2025-10-07 21:56:17.664	8	Movimiento automático 487
3473	494	entrada	34	2025-07-16 21:56:17.664	9	Movimiento automático 488
3474	495	entrada	25	2025-07-22 21:56:17.664	10	Movimiento automático 489
3475	496	entrada	6	2025-11-04 21:56:17.664	1	Movimiento automático 490
3476	497	entrada	10	2025-11-23 21:56:17.664	2	Movimiento automático 491
3477	498	entrada	43	2025-12-27 21:56:17.664	3	Movimiento automático 492
3478	499	entrada	7	2025-11-20 21:56:17.664	4	Movimiento automático 493
3479	500	entrada	24	2026-03-23 21:56:17.664	5	Movimiento automático 494
3480	501	entrada	27	2026-02-20 21:56:17.664	6	Movimiento automático 495
3481	502	entrada	29	2025-11-21 21:56:17.664	7	Movimiento automático 496
3482	503	entrada	28	2025-11-01 21:56:17.664	8	Movimiento automático 497
3483	504	entrada	47	2025-12-23 21:56:17.664	9	Movimiento automático 498
3484	505	entrada	9	2025-07-04 21:56:17.664	10	Movimiento automático 499
3485	506	entrada	22	2025-09-10 21:56:17.664	1	Movimiento automático 500
3486	507	entrada	33	2025-08-08 21:56:17.664	2	Movimiento automático 501
3487	508	entrada	37	2026-01-01 21:56:17.664	3	Movimiento automático 502
3488	509	entrada	26	2026-05-18 21:56:17.664	4	Movimiento automático 503
3489	510	entrada	48	2025-10-24 21:56:17.664	5	Movimiento automático 504
3490	511	entrada	8	2025-08-17 21:56:17.664	6	Movimiento automático 505
3491	512	entrada	49	2026-02-05 21:56:17.664	7	Movimiento automático 506
3492	513	entrada	9	2025-10-25 21:56:17.664	8	Movimiento automático 507
3493	514	entrada	14	2025-09-01 21:56:17.664	9	Movimiento automático 508
3494	515	entrada	2	2025-06-01 21:56:17.664	10	Movimiento automático 509
3495	516	entrada	19	2026-04-03 21:56:17.664	1	Movimiento automático 510
3496	517	entrada	7	2025-12-15 21:56:17.664	2	Movimiento automático 511
3497	518	entrada	24	2025-09-13 21:56:17.664	3	Movimiento automático 512
3498	519	entrada	22	2025-06-17 21:56:17.664	4	Movimiento automático 513
3499	520	entrada	6	2026-03-18 21:56:17.664	5	Movimiento automático 514
3500	521	entrada	23	2025-08-20 21:56:17.664	6	Movimiento automático 515
3501	522	entrada	21	2025-06-05 21:56:17.664	7	Movimiento automático 516
3502	523	entrada	38	2025-09-30 21:56:17.664	8	Movimiento automático 517
3503	524	entrada	43	2025-06-12 21:56:17.664	9	Movimiento automático 518
3504	525	entrada	39	2026-04-15 21:56:17.664	10	Movimiento automático 519
3505	526	entrada	25	2026-04-23 21:56:17.664	1	Movimiento automático 520
3506	527	entrada	2	2025-08-30 21:56:17.664	2	Movimiento automático 521
3507	528	entrada	25	2025-07-30 21:56:17.664	3	Movimiento automático 522
3508	529	entrada	31	2026-01-01 21:56:17.664	4	Movimiento automático 523
3509	530	entrada	43	2026-05-24 21:56:17.664	5	Movimiento automático 524
3510	531	entrada	47	2025-09-26 21:56:17.664	6	Movimiento automático 525
3511	532	entrada	30	2025-06-27 21:56:17.664	7	Movimiento automático 526
3512	533	entrada	34	2025-11-09 21:56:17.664	8	Movimiento automático 527
3513	534	entrada	41	2026-03-28 21:56:17.664	9	Movimiento automático 528
3514	535	entrada	32	2025-07-27 21:56:17.664	10	Movimiento automático 529
3515	536	entrada	24	2025-09-25 21:56:17.664	1	Movimiento automático 530
3516	537	entrada	8	2025-06-03 21:56:17.664	2	Movimiento automático 531
3517	538	entrada	36	2025-08-17 21:56:17.664	3	Movimiento automático 532
3518	539	entrada	41	2025-10-01 21:56:17.664	4	Movimiento automático 533
3519	540	entrada	40	2025-06-26 21:56:17.664	5	Movimiento automático 534
3520	541	entrada	18	2025-12-12 21:56:17.664	6	Movimiento automático 535
3521	542	entrada	12	2026-02-13 21:56:17.664	7	Movimiento automático 536
3522	543	entrada	31	2026-05-10 21:56:17.664	8	Movimiento automático 537
3523	544	entrada	37	2025-07-22 21:56:17.664	9	Movimiento automático 538
3524	545	entrada	25	2025-11-14 21:56:17.664	10	Movimiento automático 539
3525	546	entrada	24	2026-05-26 21:56:17.664	1	Movimiento automático 540
3526	547	entrada	9	2026-01-30 21:56:17.664	2	Movimiento automático 541
3527	548	entrada	37	2025-11-15 21:56:17.664	3	Movimiento automático 542
3528	549	entrada	41	2026-03-28 21:56:17.664	4	Movimiento automático 543
3529	550	entrada	41	2026-03-09 21:56:17.664	5	Movimiento automático 544
3530	551	entrada	23	2026-03-14 21:56:17.664	6	Movimiento automático 545
3531	552	entrada	37	2025-11-24 21:56:17.664	7	Movimiento automático 546
3532	553	entrada	5	2026-04-24 21:56:17.664	8	Movimiento automático 547
3533	554	entrada	49	2026-02-28 21:56:17.664	9	Movimiento automático 548
3534	555	entrada	13	2025-06-09 21:56:17.664	10	Movimiento automático 549
3535	556	entrada	32	2026-02-27 21:56:17.664	1	Movimiento automático 550
3536	557	entrada	8	2025-07-11 21:56:17.664	2	Movimiento automático 551
3537	558	entrada	3	2026-04-16 21:56:17.664	3	Movimiento automático 552
3538	559	entrada	29	2025-10-23 21:56:17.664	4	Movimiento automático 553
3539	560	entrada	50	2026-05-27 21:56:17.664	5	Movimiento automático 554
3540	561	entrada	2	2026-02-23 21:56:17.664	6	Movimiento automático 555
3541	562	entrada	38	2025-12-15 21:56:17.664	7	Movimiento automático 556
3542	563	entrada	7	2025-06-16 21:56:17.664	8	Movimiento automático 557
3543	564	entrada	46	2025-09-19 21:56:17.664	9	Movimiento automático 558
3544	565	entrada	30	2025-08-08 21:56:17.664	10	Movimiento automático 559
3545	566	entrada	50	2025-08-28 21:56:17.664	1	Movimiento automático 560
3546	567	entrada	37	2025-09-02 21:56:17.664	2	Movimiento automático 561
3547	568	entrada	22	2025-06-23 21:56:17.664	3	Movimiento automático 562
3548	569	entrada	19	2026-04-13 21:56:17.664	4	Movimiento automático 563
3549	570	entrada	33	2025-06-28 21:56:17.664	5	Movimiento automático 564
3550	571	entrada	31	2025-09-04 21:56:17.664	6	Movimiento automático 565
3551	572	entrada	13	2025-11-08 21:56:17.664	7	Movimiento automático 566
3552	573	entrada	15	2025-08-18 21:56:17.664	8	Movimiento automático 567
3553	574	entrada	19	2025-11-08 21:56:17.664	9	Movimiento automático 568
3554	575	entrada	16	2025-11-27 21:56:17.664	10	Movimiento automático 569
3555	576	entrada	3	2026-03-28 21:56:17.664	1	Movimiento automático 570
3556	577	entrada	29	2025-07-02 21:56:17.664	2	Movimiento automático 571
3557	578	entrada	12	2025-08-23 21:56:17.664	3	Movimiento automático 572
3558	579	entrada	1	2025-10-26 21:56:17.664	4	Movimiento automático 573
3559	580	entrada	50	2026-05-16 21:56:17.664	5	Movimiento automático 574
3560	581	entrada	15	2026-05-20 21:56:17.664	6	Movimiento automático 575
3561	582	entrada	37	2026-05-29 21:56:17.664	7	Movimiento automático 576
3562	583	entrada	25	2025-09-21 21:56:17.664	8	Movimiento automático 577
3563	584	entrada	33	2026-02-07 21:56:17.664	9	Movimiento automático 578
3564	585	entrada	20	2025-07-25 21:56:17.664	10	Movimiento automático 579
3565	586	entrada	43	2026-03-01 21:56:17.664	1	Movimiento automático 580
3566	587	entrada	26	2025-07-08 21:56:17.664	2	Movimiento automático 581
3567	588	entrada	38	2025-12-25 21:56:17.664	3	Movimiento automático 582
3568	589	entrada	7	2025-12-07 21:56:17.664	4	Movimiento automático 583
3569	590	entrada	38	2025-10-14 21:56:17.664	5	Movimiento automático 584
3570	591	entrada	46	2025-08-25 21:56:17.664	6	Movimiento automático 585
3571	592	entrada	8	2026-05-13 21:56:17.664	7	Movimiento automático 586
3572	593	entrada	43	2026-03-28 21:56:17.664	8	Movimiento automático 587
3573	594	entrada	23	2026-01-12 21:56:17.664	9	Movimiento automático 588
3574	595	entrada	48	2025-09-15 21:56:17.664	10	Movimiento automático 589
3575	596	entrada	38	2025-07-28 21:56:17.664	1	Movimiento automático 590
3576	597	entrada	43	2025-09-04 21:56:17.664	2	Movimiento automático 591
3577	598	entrada	41	2025-08-05 21:56:17.664	3	Movimiento automático 592
3578	599	entrada	41	2025-07-20 21:56:17.664	4	Movimiento automático 593
3579	600	entrada	37	2026-04-28 21:56:17.664	5	Movimiento automático 594
3580	601	entrada	28	2025-07-17 21:56:17.664	6	Movimiento automático 595
3581	602	entrada	12	2025-11-28 21:56:17.664	7	Movimiento automático 596
3582	603	entrada	35	2025-09-03 21:56:17.664	8	Movimiento automático 597
3583	604	entrada	32	2025-09-15 21:56:17.664	9	Movimiento automático 598
3584	605	entrada	50	2026-04-13 21:56:17.664	10	Movimiento automático 599
3585	606	entrada	48	2025-09-27 21:56:17.664	1	Movimiento automático 600
3586	607	entrada	34	2025-12-26 21:56:17.664	2	Movimiento automático 601
3587	608	entrada	24	2026-03-03 21:56:17.664	3	Movimiento automático 602
3588	609	entrada	45	2025-09-30 21:56:17.664	4	Movimiento automático 603
3589	610	entrada	43	2026-01-02 21:56:17.664	5	Movimiento automático 604
3590	611	entrada	13	2025-09-03 21:56:17.664	6	Movimiento automático 605
3591	612	entrada	7	2026-04-04 21:56:17.664	7	Movimiento automático 606
3592	613	entrada	27	2025-06-17 21:56:17.664	8	Movimiento automático 607
3593	614	entrada	47	2026-01-19 21:56:17.664	9	Movimiento automático 608
3594	615	entrada	35	2026-04-21 21:56:17.664	10	Movimiento automático 609
3595	616	entrada	13	2025-10-28 21:56:17.664	1	Movimiento automático 610
3596	617	entrada	35	2025-11-20 21:56:17.664	2	Movimiento automático 611
3597	618	entrada	41	2026-05-10 21:56:17.664	3	Movimiento automático 612
3598	619	entrada	28	2025-10-08 21:56:17.664	4	Movimiento automático 613
3599	620	entrada	6	2025-06-07 21:56:17.664	5	Movimiento automático 614
3600	621	entrada	36	2025-08-04 21:56:17.664	6	Movimiento automático 615
3601	622	entrada	50	2025-12-04 21:56:17.664	7	Movimiento automático 616
3602	623	entrada	26	2026-04-15 21:56:17.664	8	Movimiento automático 617
3603	624	entrada	26	2025-08-25 21:56:17.664	9	Movimiento automático 618
3604	625	entrada	45	2025-08-27 21:56:17.664	10	Movimiento automático 619
3605	626	entrada	26	2025-09-26 21:56:17.664	1	Movimiento automático 620
3606	627	entrada	17	2025-06-11 21:56:17.664	2	Movimiento automático 621
3607	628	entrada	21	2025-06-06 21:56:17.664	3	Movimiento automático 622
3608	629	entrada	14	2026-01-17 21:56:17.664	4	Movimiento automático 623
3609	630	entrada	34	2026-05-12 21:56:17.664	5	Movimiento automático 624
3610	631	entrada	39	2025-11-27 21:56:17.664	6	Movimiento automático 625
3611	632	entrada	11	2025-08-21 21:56:17.664	7	Movimiento automático 626
3612	633	entrada	45	2026-03-17 21:56:17.664	8	Movimiento automático 627
3613	634	entrada	47	2025-07-07 21:56:17.664	9	Movimiento automático 628
3614	635	entrada	1	2026-01-08 21:56:17.664	10	Movimiento automático 629
3615	636	entrada	15	2026-04-01 21:56:17.664	1	Movimiento automático 630
3616	637	entrada	41	2026-05-22 21:56:17.664	2	Movimiento automático 631
3617	638	entrada	37	2026-04-06 21:56:17.664	3	Movimiento automático 632
3618	639	entrada	1	2025-06-20 21:56:17.664	4	Movimiento automático 633
3619	640	entrada	49	2025-11-11 21:56:17.664	5	Movimiento automático 634
3620	641	entrada	9	2025-06-22 21:56:17.664	6	Movimiento automático 635
3621	642	entrada	7	2026-04-16 21:56:17.664	7	Movimiento automático 636
3622	643	entrada	32	2026-03-10 21:56:17.664	8	Movimiento automático 637
3623	644	entrada	21	2025-07-03 21:56:17.664	9	Movimiento automático 638
3624	645	entrada	15	2025-09-05 21:56:17.664	10	Movimiento automático 639
3625	646	entrada	15	2025-09-26 21:56:17.664	1	Movimiento automático 640
3626	647	entrada	35	2025-10-22 21:56:17.664	2	Movimiento automático 641
3627	648	entrada	18	2026-03-28 21:56:17.664	3	Movimiento automático 642
3628	649	entrada	25	2025-06-03 21:56:17.664	4	Movimiento automático 643
3629	650	entrada	38	2025-11-20 21:56:17.664	5	Movimiento automático 644
3630	651	entrada	48	2025-10-05 21:56:17.664	6	Movimiento automático 645
3631	652	entrada	41	2026-04-24 21:56:17.664	7	Movimiento automático 646
3632	653	entrada	26	2025-12-31 21:56:17.664	8	Movimiento automático 647
3633	654	entrada	46	2026-03-28 21:56:17.664	9	Movimiento automático 648
3634	655	entrada	18	2025-12-27 21:56:17.664	10	Movimiento automático 649
3635	656	entrada	33	2026-03-01 21:56:17.664	1	Movimiento automático 650
3636	657	entrada	10	2025-06-25 21:56:17.664	2	Movimiento automático 651
3637	658	entrada	7	2026-03-02 21:56:17.664	3	Movimiento automático 652
3638	659	entrada	18	2026-02-11 21:56:17.664	4	Movimiento automático 653
3639	660	entrada	26	2026-01-11 21:56:17.664	5	Movimiento automático 654
3640	661	entrada	27	2025-08-05 21:56:17.664	6	Movimiento automático 655
3641	662	entrada	4	2025-12-27 21:56:17.664	7	Movimiento automático 656
3642	663	entrada	15	2025-06-10 21:56:17.664	8	Movimiento automático 657
3643	664	entrada	45	2025-11-18 21:56:17.664	9	Movimiento automático 658
3644	665	entrada	11	2025-10-01 21:56:17.664	10	Movimiento automático 659
3645	666	entrada	26	2025-09-28 21:56:17.664	1	Movimiento automático 660
3646	667	entrada	4	2026-01-16 21:56:17.664	2	Movimiento automático 661
3647	668	entrada	16	2025-09-28 21:56:17.664	3	Movimiento automático 662
3648	669	entrada	32	2025-10-21 21:56:17.664	4	Movimiento automático 663
3649	670	entrada	2	2025-10-16 21:56:17.664	5	Movimiento automático 664
3650	671	entrada	38	2025-11-12 21:56:17.664	6	Movimiento automático 665
3651	672	entrada	2	2025-12-17 21:56:17.664	7	Movimiento automático 666
3652	673	entrada	18	2025-08-27 21:56:17.664	8	Movimiento automático 667
3653	674	entrada	28	2026-01-26 21:56:17.664	9	Movimiento automático 668
3654	675	entrada	45	2025-12-06 21:56:17.664	10	Movimiento automático 669
3655	676	entrada	21	2025-07-23 21:56:17.664	1	Movimiento automático 670
3656	677	entrada	28	2025-09-29 21:56:17.664	2	Movimiento automático 671
3657	678	entrada	39	2025-12-30 21:56:17.664	3	Movimiento automático 672
3658	679	entrada	25	2026-03-07 21:56:17.664	4	Movimiento automático 673
3659	680	entrada	23	2026-01-10 21:56:17.664	5	Movimiento automático 674
3660	681	entrada	5	2026-04-08 21:56:17.664	6	Movimiento automático 675
3661	682	entrada	48	2025-07-19 21:56:17.664	7	Movimiento automático 676
3662	683	entrada	21	2025-07-24 21:56:17.664	8	Movimiento automático 677
3663	684	entrada	43	2025-07-29 21:56:17.664	9	Movimiento automático 678
3664	685	entrada	24	2026-05-28 21:56:17.664	10	Movimiento automático 679
3665	686	entrada	26	2026-03-22 21:56:17.664	1	Movimiento automático 680
3666	687	entrada	41	2026-05-15 21:56:17.664	2	Movimiento automático 681
3667	688	entrada	6	2025-06-13 21:56:17.664	3	Movimiento automático 682
3668	689	entrada	18	2025-10-07 21:56:17.664	4	Movimiento automático 683
3669	690	entrada	20	2025-09-06 21:56:17.664	5	Movimiento automático 684
3670	691	entrada	20	2026-04-02 21:56:17.664	6	Movimiento automático 685
3671	692	entrada	15	2025-06-28 21:56:17.664	7	Movimiento automático 686
3672	693	entrada	5	2025-12-08 21:56:17.664	8	Movimiento automático 687
3673	694	entrada	3	2026-03-16 21:56:17.664	9	Movimiento automático 688
3674	695	entrada	43	2025-10-25 21:56:17.664	10	Movimiento automático 689
3675	696	entrada	6	2025-12-25 21:56:17.664	1	Movimiento automático 690
3676	697	entrada	14	2026-01-13 21:56:17.664	2	Movimiento automático 691
3677	698	entrada	19	2025-10-31 21:56:17.664	3	Movimiento automático 692
3678	699	entrada	10	2025-06-05 21:56:17.664	4	Movimiento automático 693
3679	700	entrada	21	2026-05-10 21:56:17.664	5	Movimiento automático 694
3680	701	entrada	47	2025-12-25 21:56:17.664	6	Movimiento automático 695
3681	702	entrada	31	2025-08-15 21:56:17.664	7	Movimiento automático 696
3682	703	entrada	5	2026-01-12 21:56:17.664	8	Movimiento automático 697
3683	704	entrada	2	2026-03-12 21:56:17.664	9	Movimiento automático 698
3684	705	entrada	23	2026-04-03 21:56:17.664	10	Movimiento automático 699
3685	706	entrada	18	2026-01-07 21:56:17.664	1	Movimiento automático 700
3686	707	entrada	50	2025-08-26 21:56:17.664	2	Movimiento automático 701
3687	708	entrada	6	2025-06-08 21:56:17.664	3	Movimiento automático 702
3688	709	entrada	14	2025-12-22 21:56:17.664	4	Movimiento automático 703
3689	710	entrada	23	2025-10-18 21:56:17.664	5	Movimiento automático 704
3690	711	entrada	19	2026-04-10 21:56:17.664	6	Movimiento automático 705
3691	712	entrada	49	2026-04-16 21:56:17.664	7	Movimiento automático 706
3692	713	entrada	22	2025-08-26 21:56:17.664	8	Movimiento automático 707
3693	714	entrada	28	2026-02-12 21:56:17.664	9	Movimiento automático 708
3694	715	entrada	27	2025-06-08 21:56:17.664	10	Movimiento automático 709
3695	716	entrada	36	2025-09-01 21:56:17.664	1	Movimiento automático 710
3696	717	entrada	44	2025-08-01 21:56:17.664	2	Movimiento automático 711
3697	718	entrada	6	2025-08-23 21:56:17.664	3	Movimiento automático 712
3698	719	entrada	3	2025-08-07 21:56:17.664	4	Movimiento automático 713
3699	720	entrada	44	2026-03-31 21:56:17.664	5	Movimiento automático 714
3700	721	entrada	25	2026-05-01 21:56:17.664	6	Movimiento automático 715
3701	722	entrada	15	2025-12-22 21:56:17.664	7	Movimiento automático 716
3702	723	entrada	44	2025-07-12 21:56:17.664	8	Movimiento automático 717
3703	724	entrada	32	2025-10-28 21:56:17.664	9	Movimiento automático 718
3704	725	entrada	44	2025-11-30 21:56:17.664	10	Movimiento automático 719
3705	726	entrada	35	2025-08-02 21:56:17.664	1	Movimiento automático 720
3706	727	entrada	41	2026-05-31 21:56:17.664	2	Movimiento automático 721
3707	728	entrada	5	2025-11-15 21:56:17.664	3	Movimiento automático 722
3708	729	entrada	35	2026-03-24 21:56:17.664	4	Movimiento automático 723
3709	730	entrada	16	2026-04-12 21:56:17.664	5	Movimiento automático 724
3710	731	entrada	28	2026-05-23 21:56:17.664	6	Movimiento automático 725
3711	732	entrada	32	2025-11-09 21:56:17.664	7	Movimiento automático 726
3712	733	entrada	36	2025-08-09 21:56:17.664	8	Movimiento automático 727
3713	734	entrada	36	2025-12-09 21:56:17.664	9	Movimiento automático 728
3714	735	entrada	20	2025-09-22 21:56:17.664	10	Movimiento automático 729
3715	736	entrada	9	2025-06-17 21:56:17.664	1	Movimiento automático 730
3716	737	entrada	41	2025-08-03 21:56:17.664	2	Movimiento automático 731
3717	738	entrada	4	2026-03-23 21:56:17.664	3	Movimiento automático 732
3718	739	entrada	18	2025-12-02 21:56:17.664	4	Movimiento automático 733
3719	740	entrada	46	2025-11-25 21:56:17.664	5	Movimiento automático 734
3720	741	entrada	45	2026-03-12 21:56:17.664	6	Movimiento automático 735
3721	742	entrada	26	2025-06-07 21:56:17.664	7	Movimiento automático 736
3722	743	entrada	50	2025-07-30 21:56:17.664	8	Movimiento automático 737
3723	744	entrada	26	2025-09-24 21:56:17.664	9	Movimiento automático 738
3724	745	entrada	34	2025-08-13 21:56:17.664	10	Movimiento automático 739
3725	746	entrada	12	2025-09-26 21:56:17.664	1	Movimiento automático 740
3726	747	entrada	15	2025-08-05 21:56:17.664	2	Movimiento automático 741
3727	748	entrada	3	2025-12-09 21:56:17.664	3	Movimiento automático 742
3728	749	entrada	7	2026-04-10 21:56:17.664	4	Movimiento automático 743
3729	750	entrada	30	2025-07-14 21:56:17.664	5	Movimiento automático 744
3730	751	entrada	28	2025-09-17 21:56:17.664	6	Movimiento automático 745
3731	752	entrada	36	2025-08-07 21:56:17.664	7	Movimiento automático 746
3732	753	entrada	28	2026-02-02 21:56:17.664	8	Movimiento automático 747
3733	754	entrada	20	2025-11-07 21:56:17.664	9	Movimiento automático 748
3734	755	entrada	26	2026-03-27 21:56:17.664	10	Movimiento automático 749
3735	756	entrada	18	2025-08-07 21:56:17.664	1	Movimiento automático 750
3736	757	entrada	4	2025-08-24 21:56:17.664	2	Movimiento automático 751
3737	758	entrada	41	2025-09-21 21:56:17.664	3	Movimiento automático 752
3738	759	entrada	50	2026-04-19 21:56:17.664	4	Movimiento automático 753
3739	760	entrada	35	2026-04-17 21:56:17.664	5	Movimiento automático 754
3740	761	entrada	34	2026-05-08 21:56:17.664	6	Movimiento automático 755
3741	762	entrada	5	2026-05-25 21:56:17.664	7	Movimiento automático 756
3742	763	entrada	48	2026-02-20 21:56:17.664	8	Movimiento automático 757
3743	764	entrada	28	2025-07-13 21:56:17.664	9	Movimiento automático 758
3744	765	entrada	1	2025-11-17 21:56:17.664	10	Movimiento automático 759
3745	766	entrada	20	2026-05-01 21:56:17.664	1	Movimiento automático 760
3746	767	entrada	17	2026-04-12 21:56:17.664	2	Movimiento automático 761
3747	768	entrada	43	2025-12-20 21:56:17.664	3	Movimiento automático 762
3748	769	entrada	12	2025-08-12 21:56:17.664	4	Movimiento automático 763
3749	770	entrada	18	2026-03-11 21:56:17.664	5	Movimiento automático 764
3750	771	entrada	42	2026-05-07 21:56:17.664	6	Movimiento automático 765
3751	772	entrada	28	2026-01-08 21:56:17.664	7	Movimiento automático 766
3752	773	entrada	38	2026-03-15 21:56:17.664	8	Movimiento automático 767
3753	774	entrada	21	2025-06-13 21:56:17.664	9	Movimiento automático 768
3754	775	entrada	6	2026-01-11 21:56:17.664	10	Movimiento automático 769
3755	776	entrada	27	2025-12-23 21:56:17.664	1	Movimiento automático 770
3756	777	entrada	26	2025-07-06 21:56:17.664	2	Movimiento automático 771
3757	778	entrada	30	2025-06-19 21:56:17.664	3	Movimiento automático 772
3758	779	entrada	20	2026-01-31 21:56:17.664	4	Movimiento automático 773
3759	780	entrada	26	2026-04-29 21:56:17.664	5	Movimiento automático 774
3760	781	entrada	24	2026-01-05 21:56:17.664	6	Movimiento automático 775
3761	782	entrada	7	2026-04-29 21:56:17.664	7	Movimiento automático 776
3762	783	entrada	8	2025-11-26 21:56:17.664	8	Movimiento automático 777
3763	784	entrada	42	2025-08-23 21:56:17.664	9	Movimiento automático 778
3764	785	entrada	46	2026-04-10 21:56:17.664	10	Movimiento automático 779
3765	786	entrada	27	2026-01-07 21:56:17.664	1	Movimiento automático 780
3766	787	entrada	38	2025-07-21 21:56:17.664	2	Movimiento automático 781
3767	788	entrada	1	2026-05-09 21:56:17.664	3	Movimiento automático 782
3768	789	entrada	14	2025-09-23 21:56:17.664	4	Movimiento automático 783
3769	790	entrada	7	2025-06-19 21:56:17.664	5	Movimiento automático 784
3770	791	entrada	48	2025-07-23 21:56:17.664	6	Movimiento automático 785
3771	792	entrada	20	2025-08-23 21:56:17.664	7	Movimiento automático 786
3772	793	entrada	13	2025-06-09 21:56:17.664	8	Movimiento automático 787
3773	794	entrada	17	2025-09-21 21:56:17.664	9	Movimiento automático 788
3774	795	entrada	16	2026-05-27 21:56:17.664	10	Movimiento automático 789
3775	796	entrada	45	2025-06-24 21:56:17.664	1	Movimiento automático 790
3776	797	entrada	40	2026-05-18 21:56:17.664	2	Movimiento automático 791
3777	798	entrada	45	2025-08-22 21:56:17.664	3	Movimiento automático 792
3778	799	entrada	30	2025-06-21 21:56:17.664	4	Movimiento automático 793
3779	800	entrada	21	2025-12-18 21:56:17.664	5	Movimiento automático 794
3780	801	entrada	42	2025-08-28 21:56:17.664	6	Movimiento automático 795
3781	802	entrada	17	2026-03-30 21:56:17.664	7	Movimiento automático 796
3782	803	entrada	8	2025-11-09 21:56:17.664	8	Movimiento automático 797
3783	804	entrada	8	2026-05-15 21:56:17.664	9	Movimiento automático 798
3784	805	entrada	50	2026-05-15 21:56:17.664	10	Movimiento automático 799
3785	806	entrada	5	2025-10-17 21:56:17.664	1	Movimiento automático 800
3786	807	entrada	45	2025-06-19 21:56:17.664	2	Movimiento automático 801
3787	808	entrada	21	2025-11-07 21:56:17.664	3	Movimiento automático 802
3788	809	entrada	43	2025-11-03 21:56:17.664	4	Movimiento automático 803
3789	810	entrada	50	2025-09-06 21:56:17.664	5	Movimiento automático 804
3790	811	entrada	14	2025-10-15 21:56:17.664	6	Movimiento automático 805
3791	812	entrada	17	2025-12-08 21:56:17.664	7	Movimiento automático 806
3792	813	entrada	30	2026-01-04 21:56:17.664	8	Movimiento automático 807
3793	814	entrada	5	2025-11-11 21:56:17.664	9	Movimiento automático 808
3794	815	entrada	18	2026-01-13 21:56:17.664	10	Movimiento automático 809
3795	816	entrada	34	2026-01-31 21:56:17.664	1	Movimiento automático 810
3796	817	entrada	34	2026-05-16 21:56:17.664	2	Movimiento automático 811
3797	818	entrada	50	2025-09-09 21:56:17.664	3	Movimiento automático 812
3798	819	entrada	5	2026-01-30 21:56:17.664	4	Movimiento automático 813
3799	820	entrada	27	2025-06-22 21:56:17.664	5	Movimiento automático 814
3800	821	entrada	28	2026-05-06 21:56:17.664	6	Movimiento automático 815
3801	822	entrada	44	2026-01-22 21:56:17.664	7	Movimiento automático 816
3802	823	entrada	41	2026-04-29 21:56:17.664	8	Movimiento automático 817
3803	824	entrada	2	2025-12-31 21:56:17.664	9	Movimiento automático 818
3804	825	entrada	22	2026-02-27 21:56:17.664	10	Movimiento automático 819
3805	826	entrada	41	2026-03-14 21:56:17.664	1	Movimiento automático 820
3806	827	entrada	36	2026-05-27 21:56:17.664	2	Movimiento automático 821
3807	828	entrada	39	2026-02-13 21:56:17.664	3	Movimiento automático 822
3808	829	entrada	24	2025-08-10 21:56:17.664	4	Movimiento automático 823
3809	830	entrada	49	2025-10-19 21:56:17.664	5	Movimiento automático 824
3810	831	entrada	5	2025-11-12 21:56:17.664	6	Movimiento automático 825
3811	832	entrada	20	2026-05-22 21:56:17.664	7	Movimiento automático 826
3812	833	entrada	20	2026-04-27 21:56:17.664	8	Movimiento automático 827
3813	834	entrada	22	2026-04-09 21:56:17.664	9	Movimiento automático 828
3814	835	entrada	47	2025-12-09 21:56:17.664	10	Movimiento automático 829
3815	836	entrada	19	2026-03-11 21:56:17.664	1	Movimiento automático 830
3816	837	entrada	12	2025-09-13 21:56:17.664	2	Movimiento automático 831
3817	838	entrada	46	2025-06-22 21:56:17.664	3	Movimiento automático 832
3818	839	entrada	5	2025-12-09 21:56:17.664	4	Movimiento automático 833
3819	840	entrada	9	2025-11-01 21:56:17.664	5	Movimiento automático 834
3820	841	entrada	29	2025-09-01 21:56:17.664	6	Movimiento automático 835
3821	842	entrada	11	2026-05-26 21:56:17.664	7	Movimiento automático 836
3822	843	entrada	41	2025-08-25 21:56:17.664	8	Movimiento automático 837
3823	844	entrada	22	2025-07-19 21:56:17.664	9	Movimiento automático 838
3824	845	entrada	9	2025-07-15 21:56:17.664	10	Movimiento automático 839
3825	846	entrada	1	2026-02-05 21:56:17.664	1	Movimiento automático 840
3826	847	entrada	50	2026-03-28 21:56:17.664	2	Movimiento automático 841
3827	848	entrada	47	2025-09-28 21:56:17.664	3	Movimiento automático 842
3828	849	entrada	3	2026-02-19 21:56:17.664	4	Movimiento automático 843
3829	850	entrada	40	2026-03-13 21:56:17.664	5	Movimiento automático 844
3830	851	entrada	43	2025-09-09 21:56:17.664	6	Movimiento automático 845
3831	852	entrada	11	2025-09-17 21:56:17.664	7	Movimiento automático 846
3832	853	entrada	35	2025-12-22 21:56:17.664	8	Movimiento automático 847
3833	854	entrada	6	2025-10-14 21:56:17.664	9	Movimiento automático 848
3834	855	entrada	10	2026-03-28 21:56:17.664	10	Movimiento automático 849
3835	856	entrada	4	2026-03-31 21:56:17.664	1	Movimiento automático 850
3836	857	entrada	37	2025-07-09 21:56:17.664	2	Movimiento automático 851
3837	858	entrada	9	2026-03-09 21:56:17.664	3	Movimiento automático 852
3838	859	entrada	11	2026-02-13 21:56:17.664	4	Movimiento automático 853
3839	860	entrada	26	2026-02-03 21:56:17.664	5	Movimiento automático 854
3840	861	entrada	37	2026-01-22 21:56:17.664	6	Movimiento automático 855
3841	862	entrada	2	2026-05-07 21:56:17.664	7	Movimiento automático 856
3842	863	entrada	34	2025-06-29 21:56:17.664	8	Movimiento automático 857
3843	864	entrada	49	2025-09-29 21:56:17.664	9	Movimiento automático 858
3844	865	entrada	21	2025-11-11 21:56:17.664	10	Movimiento automático 859
3845	866	entrada	4	2026-04-23 21:56:17.664	1	Movimiento automático 860
3846	867	entrada	48	2025-08-19 21:56:17.664	2	Movimiento automático 861
3847	868	entrada	7	2025-08-03 21:56:17.664	3	Movimiento automático 862
3848	869	entrada	29	2025-12-28 21:56:17.664	4	Movimiento automático 863
3849	870	entrada	32	2026-03-20 21:56:17.664	5	Movimiento automático 864
3850	871	entrada	11	2025-08-01 21:56:17.664	6	Movimiento automático 865
3851	872	entrada	43	2025-06-09 21:56:17.664	7	Movimiento automático 866
3852	873	entrada	8	2026-05-03 21:56:17.664	8	Movimiento automático 867
3853	874	entrada	36	2025-10-18 21:56:17.664	9	Movimiento automático 868
3854	875	entrada	16	2026-04-22 21:56:17.664	10	Movimiento automático 869
3855	876	entrada	25	2025-08-30 21:56:17.664	1	Movimiento automático 870
3856	877	entrada	30	2025-12-01 21:56:17.664	2	Movimiento automático 871
3857	878	entrada	34	2025-12-08 21:56:17.664	3	Movimiento automático 872
3858	879	entrada	15	2025-11-29 21:56:17.664	4	Movimiento automático 873
3859	880	entrada	25	2025-08-18 21:56:17.664	5	Movimiento automático 874
3860	881	entrada	28	2026-05-05 21:56:17.664	6	Movimiento automático 875
3861	882	entrada	6	2026-04-07 21:56:17.664	7	Movimiento automático 876
3862	883	entrada	42	2026-05-18 21:56:17.664	8	Movimiento automático 877
3863	884	entrada	14	2025-09-02 21:56:17.664	9	Movimiento automático 878
3864	885	entrada	31	2025-09-02 21:56:17.664	10	Movimiento automático 879
3865	886	entrada	36	2026-03-27 21:56:17.664	1	Movimiento automático 880
3866	887	entrada	24	2026-05-18 21:56:17.664	2	Movimiento automático 881
3867	888	entrada	19	2026-02-22 21:56:17.664	3	Movimiento automático 882
3868	889	entrada	22	2025-11-26 21:56:17.664	4	Movimiento automático 883
3869	890	entrada	34	2026-01-29 21:56:17.664	5	Movimiento automático 884
3870	891	entrada	16	2025-07-16 21:56:17.664	6	Movimiento automático 885
3871	892	entrada	25	2025-10-13 21:56:17.664	7	Movimiento automático 886
3872	893	entrada	26	2026-05-08 21:56:17.664	8	Movimiento automático 887
3873	894	entrada	17	2025-06-24 21:56:17.664	9	Movimiento automático 888
3874	895	entrada	49	2026-04-12 21:56:17.664	10	Movimiento automático 889
3875	896	entrada	35	2026-01-28 21:56:17.664	1	Movimiento automático 890
3876	897	entrada	7	2026-01-14 21:56:17.664	2	Movimiento automático 891
3877	898	entrada	11	2025-07-08 21:56:17.664	3	Movimiento automático 892
3878	899	entrada	7	2025-08-19 21:56:17.664	4	Movimiento automático 893
3879	900	entrada	24	2025-07-05 21:56:17.664	5	Movimiento automático 894
3880	901	entrada	27	2025-09-28 21:56:17.664	6	Movimiento automático 895
3881	902	entrada	12	2025-10-07 21:56:17.664	7	Movimiento automático 896
3882	903	entrada	45	2026-02-13 21:56:17.664	8	Movimiento automático 897
3883	904	entrada	17	2025-10-02 21:56:17.664	9	Movimiento automático 898
3884	905	entrada	28	2026-03-05 21:56:17.664	10	Movimiento automático 899
3885	906	entrada	24	2026-02-20 21:56:17.664	1	Movimiento automático 900
3886	907	entrada	29	2025-07-22 21:56:17.664	2	Movimiento automático 901
3887	908	entrada	11	2025-09-16 21:56:17.664	3	Movimiento automático 902
3888	909	entrada	34	2026-04-13 21:56:17.664	4	Movimiento automático 903
3889	910	entrada	18	2025-10-19 21:56:17.664	5	Movimiento automático 904
3890	911	entrada	34	2026-04-16 21:56:17.664	6	Movimiento automático 905
3891	912	entrada	41	2025-10-20 21:56:17.664	7	Movimiento automático 906
3892	913	entrada	24	2025-08-10 21:56:17.664	8	Movimiento automático 907
3893	914	entrada	35	2025-11-14 21:56:17.664	9	Movimiento automático 908
3894	915	entrada	37	2026-04-27 21:56:17.664	10	Movimiento automático 909
3895	916	entrada	44	2025-08-19 21:56:17.664	1	Movimiento automático 910
3896	917	entrada	35	2025-09-11 21:56:17.664	2	Movimiento automático 911
3897	918	entrada	25	2025-10-22 21:56:17.664	3	Movimiento automático 912
3898	919	entrada	44	2026-02-27 21:56:17.664	4	Movimiento automático 913
3899	920	entrada	6	2025-07-19 21:56:17.664	5	Movimiento automático 914
3900	921	entrada	4	2026-04-21 21:56:17.664	6	Movimiento automático 915
3901	922	entrada	24	2025-09-19 21:56:17.664	7	Movimiento automático 916
3902	923	entrada	30	2026-01-12 21:56:17.664	8	Movimiento automático 917
3903	924	entrada	46	2026-01-15 21:56:17.664	9	Movimiento automático 918
3904	925	entrada	38	2026-05-19 21:56:17.664	10	Movimiento automático 919
3905	926	entrada	5	2025-09-21 21:56:17.664	1	Movimiento automático 920
3906	927	entrada	11	2025-12-29 21:56:17.664	2	Movimiento automático 921
3907	928	entrada	11	2025-07-08 21:56:17.664	3	Movimiento automático 922
3908	929	entrada	8	2025-07-28 21:56:17.664	4	Movimiento automático 923
3909	930	entrada	48	2025-10-04 21:56:17.664	5	Movimiento automático 924
3910	931	entrada	3	2025-09-13 21:56:17.664	6	Movimiento automático 925
3911	932	entrada	32	2026-01-26 21:56:17.664	7	Movimiento automático 926
3912	933	entrada	6	2026-01-03 21:56:17.664	8	Movimiento automático 927
3913	934	entrada	3	2025-06-20 21:56:17.664	9	Movimiento automático 928
3914	935	entrada	50	2025-07-06 21:56:17.664	10	Movimiento automático 929
3915	936	entrada	24	2026-04-06 21:56:17.664	1	Movimiento automático 930
3916	937	entrada	29	2026-01-11 21:56:17.664	2	Movimiento automático 931
3917	938	entrada	38	2025-06-14 21:56:17.664	3	Movimiento automático 932
3918	939	entrada	32	2026-04-03 21:56:17.664	4	Movimiento automático 933
3919	940	entrada	50	2025-10-05 21:56:17.664	5	Movimiento automático 934
3920	941	entrada	29	2025-06-15 21:56:17.664	6	Movimiento automático 935
3921	942	entrada	10	2026-04-25 21:56:17.664	7	Movimiento automático 936
3922	943	entrada	40	2026-01-03 21:56:17.664	8	Movimiento automático 937
3923	944	entrada	1	2026-04-07 21:56:17.664	9	Movimiento automático 938
3924	945	entrada	12	2025-09-09 21:56:17.664	10	Movimiento automático 939
3925	946	entrada	50	2025-06-10 21:56:17.664	1	Movimiento automático 940
3926	947	entrada	38	2025-10-03 21:56:17.664	2	Movimiento automático 941
3927	948	entrada	22	2025-10-05 21:56:17.664	3	Movimiento automático 942
3928	949	entrada	6	2025-12-24 21:56:17.664	4	Movimiento automático 943
3929	950	entrada	47	2025-06-27 21:56:17.664	5	Movimiento automático 944
3930	951	entrada	42	2026-05-10 21:56:17.664	6	Movimiento automático 945
3931	952	entrada	40	2025-11-23 21:56:17.664	7	Movimiento automático 946
3932	953	entrada	23	2026-02-13 21:56:17.664	8	Movimiento automático 947
3933	954	entrada	19	2025-12-01 21:56:17.664	9	Movimiento automático 948
3934	955	entrada	32	2025-11-03 21:56:17.664	10	Movimiento automático 949
3935	956	entrada	10	2025-10-08 21:56:17.664	1	Movimiento automático 950
3936	957	entrada	11	2026-04-04 21:56:17.664	2	Movimiento automático 951
3937	958	entrada	16	2025-08-02 21:56:17.664	3	Movimiento automático 952
3938	959	entrada	7	2026-01-23 21:56:17.664	4	Movimiento automático 953
3939	960	entrada	9	2025-06-30 21:56:17.664	5	Movimiento automático 954
3940	961	entrada	11	2025-11-29 21:56:17.664	6	Movimiento automático 955
3941	962	entrada	17	2025-10-06 21:56:17.664	7	Movimiento automático 956
3942	963	entrada	24	2026-03-16 21:56:17.664	8	Movimiento automático 957
3943	964	entrada	43	2025-06-21 21:56:17.664	9	Movimiento automático 958
3944	965	entrada	41	2025-07-14 21:56:17.664	10	Movimiento automático 959
3945	966	entrada	33	2025-11-22 21:56:17.664	1	Movimiento automático 960
3946	967	entrada	15	2026-02-22 21:56:17.664	2	Movimiento automático 961
3947	968	entrada	11	2026-02-12 21:56:17.664	3	Movimiento automático 962
3948	969	entrada	13	2025-09-10 21:56:17.664	4	Movimiento automático 963
3949	970	entrada	49	2025-07-24 21:56:17.664	5	Movimiento automático 964
3950	971	entrada	7	2025-06-11 21:56:17.664	6	Movimiento automático 965
3951	972	entrada	20	2025-07-13 21:56:17.664	7	Movimiento automático 966
3952	973	entrada	19	2025-11-10 21:56:17.664	8	Movimiento automático 967
3953	974	entrada	45	2026-04-02 21:56:17.664	9	Movimiento automático 968
3954	975	entrada	22	2025-08-16 21:56:17.664	10	Movimiento automático 969
3955	976	entrada	35	2026-01-17 21:56:17.664	1	Movimiento automático 970
3956	977	entrada	2	2025-11-17 21:56:17.664	2	Movimiento automático 971
3957	978	entrada	7	2026-03-09 21:56:17.664	3	Movimiento automático 972
3958	979	entrada	37	2026-04-24 21:56:17.664	4	Movimiento automático 973
3959	980	entrada	27	2025-09-10 21:56:17.664	5	Movimiento automático 974
3960	981	entrada	39	2026-02-02 21:56:17.664	6	Movimiento automático 975
3961	982	entrada	22	2026-02-19 21:56:17.664	7	Movimiento automático 976
3962	983	entrada	49	2026-05-02 21:56:17.664	8	Movimiento automático 977
3963	984	entrada	47	2026-04-22 21:56:17.664	9	Movimiento automático 978
3964	985	entrada	20	2026-02-12 21:56:17.664	10	Movimiento automático 979
3965	986	entrada	29	2025-11-22 21:56:17.664	1	Movimiento automático 980
3966	987	entrada	25	2025-10-27 21:56:17.664	2	Movimiento automático 981
3967	988	entrada	18	2026-03-25 21:56:17.664	3	Movimiento automático 982
3968	989	entrada	44	2025-10-21 21:56:17.664	4	Movimiento automático 983
3969	990	entrada	30	2026-01-06 21:56:17.664	5	Movimiento automático 984
3970	991	entrada	17	2026-02-25 21:56:17.664	6	Movimiento automático 985
3971	992	entrada	45	2026-05-01 21:56:17.664	7	Movimiento automático 986
3972	993	entrada	21	2026-01-22 21:56:17.664	8	Movimiento automático 987
3973	994	entrada	4	2025-12-07 21:56:17.664	9	Movimiento automático 988
3974	995	entrada	13	2025-07-31 21:56:17.664	10	Movimiento automático 989
3975	996	entrada	44	2025-10-13 21:56:17.664	1	Movimiento automático 990
3976	997	entrada	43	2026-01-03 21:56:17.664	2	Movimiento automático 991
3977	998	entrada	13	2025-10-27 21:56:17.664	3	Movimiento automático 992
3978	999	entrada	18	2025-09-11 21:56:17.664	4	Movimiento automático 993
3979	1000	entrada	33	2025-12-02 21:56:17.664	5	Movimiento automático 994
3980	1001	entrada	7	2025-07-05 21:56:17.664	6	Movimiento automático 995
3981	1002	entrada	39	2025-11-18 21:56:17.664	7	Movimiento automático 996
3982	1003	entrada	14	2025-06-24 21:56:17.664	8	Movimiento automático 997
3983	1004	entrada	41	2025-09-13 21:56:17.664	9	Movimiento automático 998
3984	1005	entrada	9	2026-03-26 21:56:17.664	10	Movimiento automático 999
3985	6	entrada	22	2026-02-24 21:56:17.664	1	Movimiento automático 1000
\.


--
-- Data for Name: ofertas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ofertas (id_oferta, id_producto, porcentaje_descuento, fecha_inicio, fecha_fin, estado) FROM stdin;
11	7	19.82	2026-05-21	2026-06-20	activo
12	8	5.70	2026-05-21	2026-06-20	activo
13	9	29.50	2026-05-21	2026-06-20	activo
14	10	16.25	2026-05-21	2026-06-20	activo
15	11	21.18	2026-05-21	2026-06-20	activo
16	12	24.42	2026-05-21	2026-06-20	activo
17	13	13.42	2026-05-21	2026-06-20	activo
18	14	19.42	2026-05-21	2026-06-20	activo
19	15	20.73	2026-05-21	2026-06-20	activo
20	16	12.39	2026-05-21	2026-06-20	activo
\.


--
-- Data for Name: ventas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ventas (id_venta, id_cliente, id_empleado, fecha_venta, metodo_pago, total_venta, estado) FROM stdin;
1	2	2	2025-12-16 21:56:47.501913	tarjeta	495.51	completada
2	3	3	2026-05-29 21:56:47.501913	transferencia	483.72	completada
3	4	4	2025-07-16 21:56:47.501913	credito	250.17	completada
4	5	5	2026-02-21 21:56:47.501913	efectivo	254.21	completada
5	6	6	2026-02-08 21:56:47.501913	tarjeta	502.80	completada
6	7	7	2025-06-18 21:56:47.501913	transferencia	70.02	completada
7	8	8	2025-10-18 21:56:47.501913	credito	237.70	completada
8	9	9	2025-12-17 21:56:47.501913	efectivo	375.00	completada
9	10	10	2025-12-10 21:56:47.501913	tarjeta	226.80	completada
10	1	1	2025-11-13 21:56:47.501913	transferencia	97.78	completada
11	2	2	2025-09-25 21:56:47.501913	credito	347.13	completada
12	3	3	2025-08-26 21:56:47.501913	efectivo	133.73	completada
13	4	4	2025-09-20 21:56:47.501913	tarjeta	314.57	completada
14	5	5	2025-11-08 21:56:47.501913	transferencia	118.47	completada
15	6	6	2026-04-08 21:56:47.501913	credito	221.92	completada
16	7	7	2026-03-13 21:56:47.501913	efectivo	97.55	completada
17	8	8	2025-10-17 21:56:47.501913	tarjeta	98.19	completada
18	9	9	2025-08-22 21:56:47.501913	transferencia	476.57	completada
19	10	10	2025-06-23 21:56:47.501913	credito	130.01	completada
20	1	1	2026-03-21 21:56:47.501913	efectivo	276.69	completada
21	2	2	2025-07-11 21:56:47.501913	tarjeta	408.04	completada
22	3	3	2026-02-04 21:56:47.501913	transferencia	101.00	completada
23	4	4	2026-01-28 21:56:47.501913	credito	153.06	completada
24	5	5	2025-10-15 21:56:47.501913	efectivo	399.85	completada
25	6	6	2025-06-09 21:56:47.501913	tarjeta	101.96	completada
26	7	7	2025-12-08 21:56:47.501913	transferencia	152.58	completada
27	8	8	2025-10-07 21:56:47.501913	credito	339.60	completada
28	9	9	2025-08-11 21:56:47.501913	efectivo	523.82	completada
29	10	10	2026-01-23 21:56:47.501913	tarjeta	145.36	completada
30	1	1	2025-09-05 21:56:47.501913	transferencia	538.09	completada
31	2	2	2025-06-24 21:56:47.501913	credito	343.28	completada
32	3	3	2026-02-19 21:56:47.501913	efectivo	116.24	completada
33	4	4	2026-03-04 21:56:47.501913	tarjeta	411.48	completada
34	5	5	2025-12-14 21:56:47.501913	transferencia	427.06	completada
35	6	6	2025-09-15 21:56:47.501913	credito	81.47	completada
36	7	7	2025-06-14 21:56:47.501913	efectivo	489.77	completada
37	8	8	2026-03-26 21:56:47.501913	tarjeta	278.85	completada
38	9	9	2025-08-01 21:56:47.501913	transferencia	173.51	completada
39	10	10	2025-11-23 21:56:47.501913	credito	498.46	completada
40	1	1	2025-07-12 21:56:47.501913	efectivo	389.79	completada
41	2	2	2025-10-17 21:56:47.501913	tarjeta	103.80	completada
42	3	3	2025-12-07 21:56:47.501913	transferencia	304.36	completada
43	4	4	2025-07-16 21:56:47.501913	credito	403.79	completada
44	5	5	2025-10-11 21:56:47.501913	efectivo	163.95	completada
45	6	6	2025-08-11 21:56:47.501913	tarjeta	410.29	completada
46	7	7	2026-02-16 21:56:47.501913	transferencia	95.64	completada
47	8	8	2026-01-04 21:56:47.501913	credito	445.64	completada
48	9	9	2025-10-26 21:56:47.501913	efectivo	466.91	completada
49	10	10	2025-10-18 21:56:47.501913	tarjeta	172.00	completada
50	1	1	2025-11-30 21:56:47.501913	transferencia	249.94	completada
51	2	2	2025-10-16 21:56:47.501913	credito	152.23	completada
52	3	3	2026-02-22 21:56:47.501913	efectivo	322.14	completada
53	4	4	2025-12-08 21:56:47.501913	tarjeta	472.59	completada
54	5	5	2026-03-04 21:56:47.501913	transferencia	448.07	completada
55	6	6	2025-11-06 21:56:47.501913	credito	170.21	completada
56	7	7	2026-04-25 21:56:47.501913	efectivo	388.39	completada
57	8	8	2026-02-23 21:56:47.501913	tarjeta	312.28	completada
58	9	9	2025-10-25 21:56:47.501913	transferencia	517.38	completada
59	10	10	2026-01-08 21:56:47.501913	credito	108.92	completada
60	1	1	2026-03-26 21:56:47.501913	efectivo	546.54	completada
61	2	2	2026-01-18 21:56:47.501913	tarjeta	294.14	completada
62	3	3	2025-07-23 21:56:47.501913	transferencia	181.58	completada
63	4	4	2026-02-20 21:56:47.501913	credito	161.83	completada
64	5	5	2025-12-12 21:56:47.501913	efectivo	350.77	completada
65	6	6	2025-11-10 21:56:47.501913	tarjeta	185.24	completada
66	7	7	2026-02-14 21:56:47.501913	transferencia	522.43	completada
67	8	8	2026-03-18 21:56:47.501913	credito	215.34	completada
68	9	9	2025-06-30 21:56:47.501913	efectivo	85.52	completada
69	10	10	2025-08-26 21:56:47.501913	tarjeta	374.96	completada
70	1	1	2025-08-30 21:56:47.501913	transferencia	425.21	completada
71	2	2	2026-01-01 21:56:47.501913	credito	99.98	completada
72	3	3	2025-06-11 21:56:47.501913	efectivo	137.50	completada
73	4	4	2025-07-17 21:56:47.501913	tarjeta	293.99	completada
74	5	5	2025-06-18 21:56:47.501913	transferencia	99.56	completada
75	6	6	2025-12-09 21:56:47.501913	credito	439.61	completada
76	7	7	2025-06-13 21:56:47.501913	efectivo	345.12	completada
77	8	8	2025-07-03 21:56:47.501913	tarjeta	516.64	completada
78	9	9	2025-08-20 21:56:47.501913	transferencia	247.79	completada
79	10	10	2026-01-08 21:56:47.501913	credito	62.97	completada
80	1	1	2025-12-06 21:56:47.501913	efectivo	437.06	completada
81	2	2	2026-05-31 21:56:47.501913	tarjeta	113.06	completada
82	3	3	2025-07-29 21:56:47.501913	transferencia	338.27	completada
83	4	4	2026-04-02 21:56:47.501913	credito	178.03	completada
84	5	5	2025-11-06 21:56:47.501913	efectivo	362.07	completada
85	6	6	2026-03-20 21:56:47.501913	tarjeta	126.02	completada
86	7	7	2026-04-18 21:56:47.501913	transferencia	318.71	completada
87	8	8	2025-10-24 21:56:47.501913	credito	213.30	completada
88	9	9	2025-06-26 21:56:47.501913	efectivo	174.59	completada
89	10	10	2026-02-24 21:56:47.501913	tarjeta	470.77	completada
90	1	1	2025-12-13 21:56:47.501913	transferencia	212.54	completada
91	2	2	2025-12-17 21:56:47.501913	credito	512.79	completada
92	3	3	2025-09-27 21:56:47.501913	efectivo	108.20	completada
93	4	4	2026-03-18 21:56:47.501913	tarjeta	236.62	completada
94	5	5	2025-06-10 21:56:47.501913	transferencia	68.86	completada
95	6	6	2026-01-27 21:56:47.501913	credito	538.69	completada
96	7	7	2025-12-22 21:56:47.501913	efectivo	450.15	completada
97	8	8	2025-12-24 21:56:47.501913	tarjeta	112.85	completada
98	9	9	2025-08-25 21:56:47.501913	transferencia	273.15	completada
99	10	10	2026-03-20 21:56:47.501913	credito	420.39	completada
100	1	1	2026-03-15 21:56:47.501913	efectivo	228.60	completada
101	2	2	2026-02-14 21:56:47.501913	tarjeta	259.76	completada
102	3	3	2026-02-03 21:56:47.501913	transferencia	480.83	completada
103	4	4	2025-11-18 21:56:47.501913	credito	178.53	completada
104	5	5	2025-06-01 21:56:47.501913	efectivo	506.15	completada
105	6	6	2026-02-26 21:56:47.501913	tarjeta	500.80	completada
106	7	7	2026-04-25 21:56:47.501913	transferencia	185.51	completada
107	8	8	2025-06-16 21:56:47.501913	credito	211.36	completada
108	9	9	2025-10-06 21:56:47.501913	efectivo	213.90	completada
109	10	10	2025-12-31 21:56:47.501913	tarjeta	69.39	completada
110	1	1	2026-02-26 21:56:47.501913	transferencia	216.03	completada
111	2	2	2026-05-07 21:56:47.501913	credito	542.66	completada
112	3	3	2025-09-13 21:56:47.501913	efectivo	67.33	completada
113	4	4	2026-04-15 21:56:47.501913	tarjeta	259.43	completada
114	5	5	2025-12-31 21:56:47.501913	transferencia	264.38	completada
115	6	6	2025-08-12 21:56:47.501913	credito	119.98	completada
116	7	7	2026-04-28 21:56:47.501913	efectivo	328.31	completada
117	8	8	2026-03-11 21:56:47.501913	tarjeta	65.60	completada
118	9	9	2025-11-24 21:56:47.501913	transferencia	402.75	completada
119	10	10	2025-12-19 21:56:47.501913	credito	433.11	completada
120	1	1	2025-07-06 21:56:47.501913	efectivo	243.26	completada
121	2	2	2025-09-19 21:56:47.501913	tarjeta	267.38	completada
122	3	3	2025-12-10 21:56:47.501913	transferencia	165.76	completada
123	4	4	2025-11-28 21:56:47.501913	credito	482.53	completada
124	5	5	2026-04-07 21:56:47.501913	efectivo	134.10	completada
125	6	6	2026-02-15 21:56:47.501913	tarjeta	202.44	completada
126	7	7	2025-08-24 21:56:47.501913	transferencia	542.92	completada
127	8	8	2025-06-26 21:56:47.501913	credito	421.84	completada
128	9	9	2025-10-21 21:56:47.501913	efectivo	184.84	completada
129	10	10	2026-03-08 21:56:47.501913	tarjeta	142.18	completada
130	1	1	2025-12-01 21:56:47.501913	transferencia	352.51	completada
131	2	2	2025-06-20 21:56:47.501913	credito	131.22	completada
132	3	3	2026-01-10 21:56:47.501913	efectivo	484.56	completada
133	4	4	2025-08-30 21:56:47.501913	tarjeta	465.20	completada
134	5	5	2026-05-24 21:56:47.501913	transferencia	244.75	completada
135	6	6	2025-11-19 21:56:47.501913	credito	85.53	completada
136	7	7	2025-09-07 21:56:47.501913	efectivo	407.80	completada
137	8	8	2026-01-27 21:56:47.501913	tarjeta	477.78	completada
138	9	9	2025-07-25 21:56:47.501913	transferencia	357.70	completada
139	10	10	2025-10-01 21:56:47.501913	credito	305.99	completada
140	1	1	2025-07-07 21:56:47.501913	efectivo	211.75	completada
141	2	2	2026-01-19 21:56:47.501913	tarjeta	203.84	completada
142	3	3	2025-12-06 21:56:47.501913	transferencia	283.82	completada
143	4	4	2025-08-18 21:56:47.501913	credito	323.97	completada
144	5	5	2025-06-11 21:56:47.501913	efectivo	227.73	completada
145	6	6	2026-02-14 21:56:47.501913	tarjeta	276.71	completada
146	7	7	2025-09-24 21:56:47.501913	transferencia	330.50	completada
147	8	8	2025-08-11 21:56:47.501913	credito	270.48	completada
148	9	9	2025-10-31 21:56:47.501913	efectivo	354.67	completada
149	10	10	2026-04-21 21:56:47.501913	tarjeta	110.69	completada
150	1	1	2025-09-09 21:56:47.501913	transferencia	404.32	completada
151	2	2	2025-07-01 21:56:47.501913	credito	341.13	completada
152	3	3	2025-10-26 21:56:47.501913	efectivo	529.99	completada
153	4	4	2025-08-02 21:56:47.501913	tarjeta	251.01	completada
154	5	5	2026-05-11 21:56:47.501913	transferencia	288.56	completada
155	6	6	2025-12-10 21:56:47.501913	credito	178.87	completada
156	7	7	2025-06-06 21:56:47.501913	efectivo	70.09	completada
157	8	8	2025-11-10 21:56:47.501913	tarjeta	548.69	completada
158	9	9	2026-01-18 21:56:47.501913	transferencia	234.57	completada
159	10	10	2025-07-19 21:56:47.501913	credito	391.64	completada
160	1	1	2026-04-12 21:56:47.501913	efectivo	402.46	completada
161	2	2	2025-09-30 21:56:47.501913	tarjeta	494.90	completada
162	3	3	2025-10-27 21:56:47.501913	transferencia	290.15	completada
163	4	4	2026-01-18 21:56:47.501913	credito	166.34	completada
164	5	5	2025-09-02 21:56:47.501913	efectivo	467.60	completada
165	6	6	2025-06-15 21:56:47.501913	tarjeta	386.70	completada
166	7	7	2025-08-11 21:56:47.501913	transferencia	117.85	completada
167	8	8	2025-11-12 21:56:47.501913	credito	450.39	completada
168	9	9	2025-11-09 21:56:47.501913	efectivo	289.84	completada
169	10	10	2025-09-24 21:56:47.501913	tarjeta	336.95	completada
170	1	1	2026-02-06 21:56:47.501913	transferencia	378.00	completada
171	2	2	2026-01-04 21:56:47.501913	credito	108.36	completada
172	3	3	2025-07-13 21:56:47.501913	efectivo	537.90	completada
173	4	4	2026-02-01 21:56:47.501913	tarjeta	185.30	completada
174	5	5	2025-10-14 21:56:47.501913	transferencia	411.55	completada
175	6	6	2025-07-26 21:56:47.501913	credito	373.22	completada
176	7	7	2025-08-05 21:56:47.501913	efectivo	282.41	completada
177	8	8	2026-02-18 21:56:47.501913	tarjeta	485.85	completada
178	9	9	2025-07-24 21:56:47.501913	transferencia	319.17	completada
179	10	10	2025-09-18 21:56:47.501913	credito	424.42	completada
180	1	1	2025-10-15 21:56:47.501913	efectivo	192.20	completada
181	2	2	2025-06-19 21:56:47.501913	tarjeta	227.91	completada
182	3	3	2025-07-30 21:56:47.501913	transferencia	265.87	completada
183	4	4	2025-10-21 21:56:47.501913	credito	403.26	completada
184	5	5	2026-04-05 21:56:47.501913	efectivo	454.37	completada
185	6	6	2026-03-23 21:56:47.501913	tarjeta	281.51	completada
186	7	7	2025-12-21 21:56:47.501913	transferencia	225.19	completada
187	8	8	2025-08-10 21:56:47.501913	credito	248.21	completada
188	9	9	2025-10-03 21:56:47.501913	efectivo	379.61	completada
189	10	10	2025-07-13 21:56:47.501913	tarjeta	246.74	completada
190	1	1	2026-05-03 21:56:47.501913	transferencia	463.37	completada
191	2	2	2025-06-27 21:56:47.501913	credito	269.97	completada
192	3	3	2025-10-28 21:56:47.501913	efectivo	513.38	completada
193	4	4	2025-10-31 21:56:47.501913	tarjeta	385.55	completada
194	5	5	2025-07-06 21:56:47.501913	transferencia	412.73	completada
195	6	6	2025-09-03 21:56:47.501913	credito	529.73	completada
196	7	7	2026-03-15 21:56:47.501913	efectivo	141.56	completada
197	8	8	2025-07-11 21:56:47.501913	tarjeta	434.22	completada
198	9	9	2026-01-22 21:56:47.501913	transferencia	112.52	completada
199	10	10	2025-10-31 21:56:47.501913	credito	273.14	completada
200	1	1	2025-07-11 21:56:47.501913	efectivo	527.67	completada
201	2	2	2025-11-18 21:56:47.501913	tarjeta	397.61	completada
202	3	3	2025-09-04 21:56:47.501913	transferencia	281.08	completada
203	4	4	2025-12-15 21:56:47.501913	credito	377.68	completada
204	5	5	2025-07-16 21:56:47.501913	efectivo	383.80	completada
205	6	6	2026-01-02 21:56:47.501913	tarjeta	415.79	completada
206	7	7	2025-11-16 21:56:47.501913	transferencia	245.27	completada
207	8	8	2025-09-02 21:56:47.501913	credito	112.63	completada
208	9	9	2025-12-09 21:56:47.501913	efectivo	333.80	completada
209	10	10	2026-04-19 21:56:47.501913	tarjeta	342.80	completada
210	1	1	2026-04-17 21:56:47.501913	transferencia	331.32	completada
211	2	2	2025-10-28 21:56:47.501913	credito	160.09	completada
212	3	3	2026-01-25 21:56:47.501913	efectivo	345.66	completada
213	4	4	2026-03-03 21:56:47.501913	tarjeta	315.74	completada
214	5	5	2026-04-23 21:56:47.501913	transferencia	531.00	completada
215	6	6	2026-05-09 21:56:47.501913	credito	61.34	completada
216	7	7	2026-01-22 21:56:47.501913	efectivo	361.87	completada
217	8	8	2026-05-29 21:56:47.501913	tarjeta	496.78	completada
218	9	9	2026-04-01 21:56:47.501913	transferencia	360.63	completada
219	10	10	2026-05-27 21:56:47.501913	credito	518.37	completada
220	1	1	2025-09-15 21:56:47.501913	efectivo	283.38	completada
221	2	2	2025-12-15 21:56:47.501913	tarjeta	65.76	completada
222	3	3	2026-03-22 21:56:47.501913	transferencia	220.41	completada
223	4	4	2026-01-22 21:56:47.501913	credito	53.83	completada
224	5	5	2026-03-12 21:56:47.501913	efectivo	82.95	completada
225	6	6	2025-11-30 21:56:47.501913	tarjeta	540.35	completada
226	7	7	2025-09-07 21:56:47.501913	transferencia	506.67	completada
227	8	8	2025-11-01 21:56:47.501913	credito	450.86	completada
228	9	9	2026-02-03 21:56:47.501913	efectivo	410.91	completada
229	10	10	2026-03-21 21:56:47.501913	tarjeta	322.00	completada
230	1	1	2025-09-16 21:56:47.501913	transferencia	352.44	completada
231	2	2	2025-08-04 21:56:47.501913	credito	462.77	completada
232	3	3	2026-01-20 21:56:47.501913	efectivo	177.49	completada
233	4	4	2025-06-25 21:56:47.501913	tarjeta	179.26	completada
234	5	5	2026-04-24 21:56:47.501913	transferencia	108.08	completada
235	6	6	2025-09-09 21:56:47.501913	credito	394.50	completada
236	7	7	2026-04-22 21:56:47.501913	efectivo	54.91	completada
237	8	8	2026-02-09 21:56:47.501913	tarjeta	381.50	completada
238	9	9	2025-10-28 21:56:47.501913	transferencia	424.35	completada
239	10	10	2025-08-23 21:56:47.501913	credito	262.33	completada
240	1	1	2026-01-10 21:56:47.501913	efectivo	533.82	completada
241	2	2	2025-08-19 21:56:47.501913	tarjeta	242.79	completada
242	3	3	2025-10-03 21:56:47.501913	transferencia	373.22	completada
243	4	4	2025-12-08 21:56:47.501913	credito	205.53	completada
244	5	5	2025-07-28 21:56:47.501913	efectivo	367.52	completada
245	6	6	2026-03-29 21:56:47.501913	tarjeta	78.35	completada
246	7	7	2025-08-16 21:56:47.501913	transferencia	475.34	completada
247	8	8	2026-02-14 21:56:47.501913	credito	313.06	completada
248	9	9	2025-11-17 21:56:47.501913	efectivo	154.13	completada
249	10	10	2026-01-27 21:56:47.501913	tarjeta	281.29	completada
250	1	1	2026-05-17 21:56:47.501913	transferencia	272.07	completada
251	2	2	2025-07-07 21:56:47.501913	credito	145.80	completada
252	3	3	2025-11-23 21:56:47.501913	efectivo	272.84	completada
253	4	4	2025-12-31 21:56:47.501913	tarjeta	274.21	completada
254	5	5	2025-06-02 21:56:47.501913	transferencia	519.78	completada
255	6	6	2025-12-30 21:56:47.501913	credito	285.84	completada
256	7	7	2025-10-22 21:56:47.501913	efectivo	112.88	completada
257	8	8	2025-12-27 21:56:47.501913	tarjeta	204.29	completada
258	9	9	2025-06-02 21:56:47.501913	transferencia	253.17	completada
259	10	10	2025-10-06 21:56:47.501913	credito	384.51	completada
260	1	1	2025-09-02 21:56:47.501913	efectivo	253.97	completada
261	2	2	2025-07-28 21:56:47.501913	tarjeta	105.22	completada
262	3	3	2026-04-24 21:56:47.501913	transferencia	270.92	completada
263	4	4	2026-04-17 21:56:47.501913	credito	70.27	completada
264	5	5	2025-12-25 21:56:47.501913	efectivo	377.38	completada
265	6	6	2025-09-01 21:56:47.501913	tarjeta	155.67	completada
266	7	7	2025-08-12 21:56:47.501913	transferencia	402.86	completada
267	8	8	2025-11-20 21:56:47.501913	credito	127.67	completada
268	9	9	2025-09-07 21:56:47.501913	efectivo	493.87	completada
269	10	10	2025-10-08 21:56:47.501913	tarjeta	445.38	completada
270	1	1	2026-02-10 21:56:47.501913	transferencia	173.85	completada
271	2	2	2026-01-21 21:56:47.501913	credito	288.95	completada
272	3	3	2026-02-01 21:56:47.501913	efectivo	286.85	completada
273	4	4	2026-01-02 21:56:47.501913	tarjeta	483.16	completada
274	5	5	2025-06-03 21:56:47.501913	transferencia	394.23	completada
275	6	6	2026-01-25 21:56:47.501913	credito	148.45	completada
276	7	7	2026-02-26 21:56:47.501913	efectivo	158.86	completada
277	8	8	2026-04-18 21:56:47.501913	tarjeta	172.77	completada
278	9	9	2026-01-30 21:56:47.501913	transferencia	413.75	completada
279	10	10	2026-02-06 21:56:47.501913	credito	244.16	completada
280	1	1	2025-11-08 21:56:47.501913	efectivo	68.93	completada
281	2	2	2026-02-07 21:56:47.501913	tarjeta	527.46	completada
282	3	3	2026-05-27 21:56:47.501913	transferencia	382.08	completada
283	4	4	2025-07-09 21:56:47.501913	credito	490.23	completada
284	5	5	2025-11-18 21:56:47.501913	efectivo	105.14	completada
285	6	6	2025-07-19 21:56:47.501913	tarjeta	282.63	completada
286	7	7	2025-06-28 21:56:47.501913	transferencia	113.40	completada
287	8	8	2026-03-02 21:56:47.501913	credito	430.17	completada
288	9	9	2026-01-31 21:56:47.501913	efectivo	491.77	completada
289	10	10	2026-03-13 21:56:47.501913	tarjeta	480.42	completada
290	1	1	2025-10-06 21:56:47.501913	transferencia	492.96	completada
291	2	2	2026-04-13 21:56:47.501913	credito	372.76	completada
292	3	3	2025-08-19 21:56:47.501913	efectivo	301.62	completada
293	4	4	2026-04-03 21:56:47.501913	tarjeta	86.67	completada
294	5	5	2025-08-16 21:56:47.501913	transferencia	178.72	completada
295	6	6	2025-12-04 21:56:47.501913	credito	233.23	completada
296	7	7	2025-10-13 21:56:47.501913	efectivo	481.53	completada
297	8	8	2025-11-22 21:56:47.501913	tarjeta	173.28	completada
298	9	9	2025-11-26 21:56:47.501913	transferencia	119.32	completada
299	10	10	2026-05-27 21:56:47.501913	credito	101.57	completada
300	1	1	2026-01-28 21:56:47.501913	efectivo	343.31	completada
301	2	2	2026-03-10 21:56:47.501913	tarjeta	384.95	completada
302	3	3	2026-01-16 21:56:47.501913	transferencia	355.90	completada
303	4	4	2025-06-24 21:56:47.501913	credito	311.49	completada
304	5	5	2025-12-19 21:56:47.501913	efectivo	116.42	completada
305	6	6	2025-11-06 21:56:47.501913	tarjeta	504.32	completada
306	7	7	2025-09-07 21:56:47.501913	transferencia	357.12	completada
307	8	8	2025-11-08 21:56:47.501913	credito	412.28	completada
308	9	9	2026-04-01 21:56:47.501913	efectivo	86.51	completada
309	10	10	2025-06-19 21:56:47.501913	tarjeta	192.21	completada
310	1	1	2025-07-20 21:56:47.501913	transferencia	444.34	completada
311	2	2	2025-08-30 21:56:47.501913	credito	409.37	completada
312	3	3	2026-01-22 21:56:47.501913	efectivo	363.38	completada
313	4	4	2025-08-03 21:56:47.501913	tarjeta	412.05	completada
314	5	5	2025-07-24 21:56:47.501913	transferencia	342.24	completada
315	6	6	2026-05-03 21:56:47.501913	credito	421.55	completada
316	7	7	2026-03-05 21:56:47.501913	efectivo	237.88	completada
317	8	8	2026-02-03 21:56:47.501913	tarjeta	247.50	completada
318	9	9	2026-05-11 21:56:47.501913	transferencia	284.16	completada
319	10	10	2026-02-14 21:56:47.501913	credito	195.29	completada
320	1	1	2026-05-22 21:56:47.501913	efectivo	494.39	completada
321	2	2	2025-06-27 21:56:47.501913	tarjeta	361.72	completada
322	3	3	2025-10-03 21:56:47.501913	transferencia	383.69	completada
323	4	4	2026-03-03 21:56:47.501913	credito	430.98	completada
324	5	5	2025-07-01 21:56:47.501913	efectivo	326.19	completada
325	6	6	2026-01-17 21:56:47.501913	tarjeta	448.32	completada
326	7	7	2025-11-21 21:56:47.501913	transferencia	509.89	completada
327	8	8	2026-02-09 21:56:47.501913	credito	281.33	completada
328	9	9	2025-06-23 21:56:47.501913	efectivo	336.23	completada
329	10	10	2026-04-13 21:56:47.501913	tarjeta	143.20	completada
330	1	1	2025-09-15 21:56:47.501913	transferencia	260.37	completada
331	2	2	2025-11-24 21:56:47.501913	credito	217.64	completada
332	3	3	2025-09-21 21:56:47.501913	efectivo	411.63	completada
333	4	4	2025-12-27 21:56:47.501913	tarjeta	293.24	completada
334	5	5	2025-06-11 21:56:47.501913	transferencia	124.09	completada
335	6	6	2025-09-03 21:56:47.501913	credito	203.07	completada
336	7	7	2026-04-27 21:56:47.501913	efectivo	261.77	completada
337	8	8	2025-08-05 21:56:47.501913	tarjeta	325.29	completada
338	9	9	2026-04-14 21:56:47.501913	transferencia	135.57	completada
339	10	10	2025-12-28 21:56:47.501913	credito	228.59	completada
340	1	1	2025-07-25 21:56:47.501913	efectivo	224.15	completada
341	2	2	2026-03-13 21:56:47.501913	tarjeta	244.52	completada
342	3	3	2025-08-26 21:56:47.501913	transferencia	218.73	completada
343	4	4	2026-01-10 21:56:47.501913	credito	361.83	completada
344	5	5	2025-11-15 21:56:47.501913	efectivo	486.44	completada
345	6	6	2026-03-23 21:56:47.501913	tarjeta	51.72	completada
346	7	7	2026-03-22 21:56:47.501913	transferencia	302.77	completada
347	8	8	2025-10-21 21:56:47.501913	credito	56.82	completada
348	9	9	2025-09-24 21:56:47.501913	efectivo	164.00	completada
349	10	10	2026-05-09 21:56:47.501913	tarjeta	177.75	completada
350	1	1	2026-05-21 21:56:47.501913	transferencia	399.26	completada
351	2	2	2026-04-02 21:56:47.501913	credito	460.32	completada
352	3	3	2026-05-05 21:56:47.501913	efectivo	377.24	completada
353	4	4	2025-07-07 21:56:47.501913	tarjeta	476.82	completada
354	5	5	2026-02-25 21:56:47.501913	transferencia	193.10	completada
355	6	6	2026-02-15 21:56:47.501913	credito	526.63	completada
356	7	7	2025-10-08 21:56:47.501913	efectivo	471.73	completada
357	8	8	2025-09-24 21:56:47.501913	tarjeta	214.27	completada
358	9	9	2026-02-02 21:56:47.501913	transferencia	451.65	completada
359	10	10	2026-05-30 21:56:47.501913	credito	388.21	completada
360	1	1	2025-08-03 21:56:47.501913	efectivo	542.35	completada
361	2	2	2026-05-16 21:56:47.501913	tarjeta	158.34	completada
362	3	3	2026-01-21 21:56:47.501913	transferencia	142.36	completada
363	4	4	2025-07-07 21:56:47.501913	credito	86.33	completada
364	5	5	2026-02-01 21:56:47.501913	efectivo	134.50	completada
365	6	6	2025-12-21 21:56:47.501913	tarjeta	62.40	completada
366	7	7	2025-10-18 21:56:47.501913	transferencia	355.49	completada
367	8	8	2026-01-26 21:56:47.501913	credito	271.26	completada
368	9	9	2025-11-22 21:56:47.501913	efectivo	119.16	completada
369	10	10	2025-09-15 21:56:47.501913	tarjeta	378.99	completada
370	1	1	2026-05-12 21:56:47.501913	transferencia	338.19	completada
371	2	2	2025-12-07 21:56:47.501913	credito	538.51	completada
372	3	3	2026-03-08 21:56:47.501913	efectivo	253.70	completada
373	4	4	2025-08-24 21:56:47.501913	tarjeta	299.53	completada
374	5	5	2025-10-27 21:56:47.501913	transferencia	545.32	completada
375	6	6	2026-04-27 21:56:47.501913	credito	110.90	completada
376	7	7	2025-08-23 21:56:47.501913	efectivo	396.16	completada
377	8	8	2025-07-31 21:56:47.501913	tarjeta	537.43	completada
378	9	9	2026-04-07 21:56:47.501913	transferencia	480.96	completada
379	10	10	2025-11-29 21:56:47.501913	credito	456.44	completada
380	1	1	2026-01-21 21:56:47.501913	efectivo	469.54	completada
381	2	2	2025-06-12 21:56:47.501913	tarjeta	287.54	completada
382	3	3	2025-06-09 21:56:47.501913	transferencia	507.00	completada
383	4	4	2026-05-04 21:56:47.501913	credito	302.36	completada
384	5	5	2026-01-29 21:56:47.501913	efectivo	332.21	completada
385	6	6	2025-09-13 21:56:47.501913	tarjeta	500.31	completada
386	7	7	2025-10-11 21:56:47.501913	transferencia	274.28	completada
387	8	8	2025-08-26 21:56:47.501913	credito	318.97	completada
388	9	9	2026-04-26 21:56:47.501913	efectivo	58.57	completada
389	10	10	2025-11-13 21:56:47.501913	tarjeta	293.75	completada
390	1	1	2025-09-25 21:56:47.501913	transferencia	243.94	completada
391	2	2	2025-07-29 21:56:47.501913	credito	113.62	completada
392	3	3	2026-03-17 21:56:47.501913	efectivo	269.32	completada
393	4	4	2025-10-07 21:56:47.501913	tarjeta	177.90	completada
394	5	5	2026-02-24 21:56:47.501913	transferencia	519.69	completada
395	6	6	2025-08-14 21:56:47.501913	credito	469.05	completada
396	7	7	2025-09-17 21:56:47.501913	efectivo	142.92	completada
397	8	8	2026-03-29 21:56:47.501913	tarjeta	130.69	completada
398	9	9	2025-12-16 21:56:47.501913	transferencia	88.22	completada
399	10	10	2026-01-17 21:56:47.501913	credito	157.96	completada
400	1	1	2025-06-17 21:56:47.501913	efectivo	86.97	completada
401	2	2	2026-01-18 21:56:47.501913	tarjeta	473.08	completada
402	3	3	2025-11-22 21:56:47.501913	transferencia	103.97	completada
403	4	4	2025-08-08 21:56:47.501913	credito	91.46	completada
404	5	5	2026-05-06 21:56:47.501913	efectivo	210.20	completada
405	6	6	2025-10-22 21:56:47.501913	tarjeta	399.84	completada
406	7	7	2026-05-04 21:56:47.501913	transferencia	109.64	completada
407	8	8	2026-01-12 21:56:47.501913	credito	424.34	completada
408	9	9	2025-08-20 21:56:47.501913	efectivo	211.35	completada
409	10	10	2025-10-13 21:56:47.501913	tarjeta	102.02	completada
410	1	1	2025-09-16 21:56:47.501913	transferencia	294.92	completada
411	2	2	2025-12-19 21:56:47.501913	credito	449.05	completada
412	3	3	2026-01-10 21:56:47.501913	efectivo	83.71	completada
413	4	4	2025-06-06 21:56:47.501913	tarjeta	228.65	completada
414	5	5	2026-05-24 21:56:47.501913	transferencia	386.15	completada
415	6	6	2026-05-11 21:56:47.501913	credito	411.37	completada
416	7	7	2025-11-10 21:56:47.501913	efectivo	447.97	completada
417	8	8	2025-10-19 21:56:47.501913	tarjeta	476.85	completada
418	9	9	2026-01-04 21:56:47.501913	transferencia	237.67	completada
419	10	10	2026-05-29 21:56:47.501913	credito	369.88	completada
420	1	1	2025-10-30 21:56:47.501913	efectivo	334.92	completada
421	2	2	2026-01-08 21:56:47.501913	tarjeta	488.32	completada
422	3	3	2025-10-07 21:56:47.501913	transferencia	54.44	completada
423	4	4	2026-02-26 21:56:47.501913	credito	484.36	completada
424	5	5	2025-06-02 21:56:47.501913	efectivo	388.43	completada
425	6	6	2025-10-10 21:56:47.501913	tarjeta	521.82	completada
426	7	7	2026-04-06 21:56:47.501913	transferencia	485.46	completada
427	8	8	2026-05-15 21:56:47.501913	credito	223.08	completada
428	9	9	2025-08-25 21:56:47.501913	efectivo	78.14	completada
429	10	10	2026-01-31 21:56:47.501913	tarjeta	459.81	completada
430	1	1	2026-05-30 21:56:47.501913	transferencia	418.44	completada
431	2	2	2025-09-29 21:56:47.501913	credito	148.86	completada
432	3	3	2025-07-15 21:56:47.501913	efectivo	499.85	completada
433	4	4	2026-05-03 21:56:47.501913	tarjeta	264.65	completada
434	5	5	2026-03-17 21:56:47.501913	transferencia	431.71	completada
435	6	6	2025-11-06 21:56:47.501913	credito	359.45	completada
436	7	7	2025-12-23 21:56:47.501913	efectivo	360.82	completada
437	8	8	2025-12-03 21:56:47.501913	tarjeta	351.38	completada
438	9	9	2026-03-07 21:56:47.501913	transferencia	544.59	completada
439	10	10	2025-08-19 21:56:47.501913	credito	288.74	completada
440	1	1	2026-03-13 21:56:47.501913	efectivo	264.62	completada
441	2	2	2025-11-01 21:56:47.501913	tarjeta	259.33	completada
442	3	3	2025-07-20 21:56:47.501913	transferencia	244.35	completada
443	4	4	2026-04-23 21:56:47.501913	credito	392.18	completada
444	5	5	2025-12-12 21:56:47.501913	efectivo	147.52	completada
445	6	6	2025-11-19 21:56:47.501913	tarjeta	461.51	completada
446	7	7	2025-09-27 21:56:47.501913	transferencia	473.77	completada
447	8	8	2026-05-12 21:56:47.501913	credito	343.48	completada
448	9	9	2026-01-30 21:56:47.501913	efectivo	53.37	completada
449	10	10	2026-02-02 21:56:47.501913	tarjeta	71.39	completada
450	1	1	2025-11-03 21:56:47.501913	transferencia	55.37	completada
451	2	2	2025-12-26 21:56:47.501913	credito	235.77	completada
452	3	3	2026-02-12 21:56:47.501913	efectivo	82.27	completada
453	4	4	2026-05-02 21:56:47.501913	tarjeta	455.02	completada
454	5	5	2026-01-05 21:56:47.501913	transferencia	83.53	completada
455	6	6	2025-08-26 21:56:47.501913	credito	210.13	completada
456	7	7	2026-02-08 21:56:47.501913	efectivo	84.96	completada
457	8	8	2026-01-27 21:56:47.501913	tarjeta	266.74	completada
458	9	9	2026-02-13 21:56:47.501913	transferencia	295.72	completada
459	10	10	2026-04-26 21:56:47.501913	credito	413.62	completada
460	1	1	2025-07-31 21:56:47.501913	efectivo	93.11	completada
461	2	2	2025-10-16 21:56:47.501913	tarjeta	101.76	completada
462	3	3	2026-02-12 21:56:47.501913	transferencia	377.42	completada
463	4	4	2026-04-16 21:56:47.501913	credito	486.79	completada
464	5	5	2025-09-23 21:56:47.501913	efectivo	502.36	completada
465	6	6	2025-11-29 21:56:47.501913	tarjeta	145.04	completada
466	7	7	2026-01-12 21:56:47.501913	transferencia	522.48	completada
467	8	8	2025-06-07 21:56:47.501913	credito	524.62	completada
468	9	9	2025-07-19 21:56:47.501913	efectivo	432.09	completada
469	10	10	2025-08-18 21:56:47.501913	tarjeta	360.78	completada
470	1	1	2025-08-10 21:56:47.501913	transferencia	424.30	completada
471	2	2	2026-03-06 21:56:47.501913	credito	232.08	completada
472	3	3	2025-08-15 21:56:47.501913	efectivo	367.04	completada
473	4	4	2025-09-26 21:56:47.501913	tarjeta	187.10	completada
474	5	5	2025-12-18 21:56:47.501913	transferencia	219.17	completada
475	6	6	2025-06-19 21:56:47.501913	credito	281.57	completada
476	7	7	2026-03-22 21:56:47.501913	efectivo	103.62	completada
477	8	8	2025-06-15 21:56:47.501913	tarjeta	224.60	completada
478	9	9	2026-03-15 21:56:47.501913	transferencia	200.76	completada
479	10	10	2026-04-12 21:56:47.501913	credito	365.30	completada
480	1	1	2026-05-09 21:56:47.501913	efectivo	123.34	completada
481	2	2	2026-02-24 21:56:47.501913	tarjeta	162.08	completada
482	3	3	2025-08-25 21:56:47.501913	transferencia	167.36	completada
483	4	4	2025-08-05 21:56:47.501913	credito	466.05	completada
484	5	5	2025-12-21 21:56:47.501913	efectivo	531.35	completada
485	6	6	2025-12-12 21:56:47.501913	tarjeta	470.75	completada
486	7	7	2025-11-22 21:56:47.501913	transferencia	74.73	completada
487	8	8	2025-08-19 21:56:47.501913	credito	459.94	completada
488	9	9	2025-10-16 21:56:47.501913	efectivo	408.05	completada
489	10	10	2026-05-28 21:56:47.501913	tarjeta	281.38	completada
490	1	1	2025-06-23 21:56:47.501913	transferencia	324.59	completada
491	2	2	2026-01-06 21:56:47.501913	credito	261.20	completada
492	3	3	2025-11-20 21:56:47.501913	efectivo	229.70	completada
493	4	4	2026-05-20 21:56:47.501913	tarjeta	58.17	completada
494	5	5	2025-06-21 21:56:47.501913	transferencia	120.78	completada
495	6	6	2026-05-21 21:56:47.501913	credito	262.58	completada
496	7	7	2025-08-07 21:56:47.501913	efectivo	184.71	completada
497	8	8	2025-12-11 21:56:47.501913	tarjeta	521.91	completada
498	9	9	2025-11-04 21:56:47.501913	transferencia	522.11	completada
499	10	10	2026-02-14 21:56:47.501913	credito	314.32	completada
500	1	1	2025-10-06 21:56:47.501913	efectivo	82.16	completada
501	2	2	2025-08-25 21:56:47.501913	tarjeta	240.80	completada
502	3	3	2025-06-11 21:56:47.501913	transferencia	416.15	completada
503	4	4	2025-07-22 21:56:47.501913	credito	197.83	completada
504	5	5	2026-01-31 21:56:47.501913	efectivo	192.92	completada
505	6	6	2025-07-27 21:56:47.501913	tarjeta	214.09	completada
506	7	7	2026-01-25 21:56:47.501913	transferencia	357.13	completada
507	8	8	2026-05-11 21:56:47.501913	credito	173.16	completada
508	9	9	2026-02-09 21:56:47.501913	efectivo	79.79	completada
509	10	10	2026-01-28 21:56:47.501913	tarjeta	297.21	completada
510	1	1	2025-10-09 21:56:47.501913	transferencia	474.32	completada
511	2	2	2025-08-13 21:56:47.501913	credito	539.78	completada
512	3	3	2025-06-11 21:56:47.501913	efectivo	493.69	completada
513	4	4	2025-09-05 21:56:47.501913	tarjeta	187.53	completada
514	5	5	2025-12-06 21:56:47.501913	transferencia	198.36	completada
515	6	6	2025-09-04 21:56:47.501913	credito	504.36	completada
516	7	7	2025-06-19 21:56:47.501913	efectivo	74.30	completada
517	8	8	2025-06-19 21:56:47.501913	tarjeta	320.75	completada
518	9	9	2025-11-13 21:56:47.501913	transferencia	99.58	completada
519	10	10	2025-08-02 21:56:47.501913	credito	470.74	completada
520	1	1	2025-06-02 21:56:47.501913	efectivo	389.21	completada
521	2	2	2025-12-11 21:56:47.501913	tarjeta	338.35	completada
522	3	3	2026-01-13 21:56:47.501913	transferencia	69.97	completada
523	4	4	2025-12-04 21:56:47.501913	credito	162.79	completada
524	5	5	2026-05-14 21:56:47.501913	efectivo	263.84	completada
525	6	6	2025-11-20 21:56:47.501913	tarjeta	327.07	completada
526	7	7	2026-04-27 21:56:47.501913	transferencia	215.98	completada
527	8	8	2025-08-15 21:56:47.501913	credito	66.40	completada
528	9	9	2025-06-18 21:56:47.501913	efectivo	386.39	completada
529	10	10	2026-01-20 21:56:47.501913	tarjeta	256.77	completada
530	1	1	2025-09-16 21:56:47.501913	transferencia	412.43	completada
531	2	2	2026-05-02 21:56:47.501913	credito	212.28	completada
532	3	3	2026-01-29 21:56:47.501913	efectivo	213.13	completada
533	4	4	2026-04-10 21:56:47.501913	tarjeta	135.31	completada
534	5	5	2026-03-05 21:56:47.501913	transferencia	118.45	completada
535	6	6	2026-04-20 21:56:47.501913	credito	78.63	completada
536	7	7	2025-11-06 21:56:47.501913	efectivo	61.28	completada
537	8	8	2026-04-18 21:56:47.501913	tarjeta	251.28	completada
538	9	9	2025-12-02 21:56:47.501913	transferencia	90.26	completada
539	10	10	2025-10-04 21:56:47.501913	credito	519.28	completada
540	1	1	2026-01-25 21:56:47.501913	efectivo	199.02	completada
541	2	2	2025-10-18 21:56:47.501913	tarjeta	314.50	completada
542	3	3	2026-03-21 21:56:47.501913	transferencia	448.66	completada
543	4	4	2025-07-20 21:56:47.501913	credito	296.25	completada
544	5	5	2025-06-06 21:56:47.501913	efectivo	236.54	completada
545	6	6	2026-03-14 21:56:47.501913	tarjeta	242.19	completada
546	7	7	2025-10-12 21:56:47.501913	transferencia	362.31	completada
547	8	8	2025-08-23 21:56:47.501913	credito	267.60	completada
548	9	9	2025-08-15 21:56:47.501913	efectivo	377.96	completada
549	10	10	2025-09-20 21:56:47.501913	tarjeta	379.79	completada
550	1	1	2026-03-26 21:56:47.501913	transferencia	131.14	completada
551	2	2	2025-11-04 21:56:47.501913	credito	493.39	completada
552	3	3	2025-10-07 21:56:47.501913	efectivo	162.80	completada
553	4	4	2025-10-17 21:56:47.501913	tarjeta	87.66	completada
554	5	5	2025-06-18 21:56:47.501913	transferencia	435.72	completada
555	6	6	2025-12-01 21:56:47.501913	credito	441.68	completada
556	7	7	2026-01-25 21:56:47.501913	efectivo	476.86	completada
557	8	8	2025-08-03 21:56:47.501913	tarjeta	351.74	completada
558	9	9	2025-08-21 21:56:47.501913	transferencia	533.46	completada
559	10	10	2025-11-12 21:56:47.501913	credito	425.88	completada
560	1	1	2025-11-08 21:56:47.501913	efectivo	490.66	completada
561	2	2	2026-05-01 21:56:47.501913	tarjeta	513.53	completada
562	3	3	2025-10-01 21:56:47.501913	transferencia	452.43	completada
563	4	4	2026-04-24 21:56:47.501913	credito	382.90	completada
564	5	5	2026-03-10 21:56:47.501913	efectivo	286.17	completada
565	6	6	2025-06-20 21:56:47.501913	tarjeta	184.93	completada
566	7	7	2026-05-04 21:56:47.501913	transferencia	329.64	completada
567	8	8	2026-03-11 21:56:47.501913	credito	119.51	completada
568	9	9	2025-07-07 21:56:47.501913	efectivo	427.77	completada
569	10	10	2025-07-06 21:56:47.501913	tarjeta	410.89	completada
570	1	1	2026-02-11 21:56:47.501913	transferencia	378.28	completada
571	2	2	2025-10-17 21:56:47.501913	credito	525.06	completada
572	3	3	2026-01-01 21:56:47.501913	efectivo	250.07	completada
573	4	4	2026-04-25 21:56:47.501913	tarjeta	219.13	completada
574	5	5	2026-03-03 21:56:47.501913	transferencia	218.15	completada
575	6	6	2026-03-02 21:56:47.501913	credito	166.55	completada
576	7	7	2025-07-15 21:56:47.501913	efectivo	526.47	completada
577	8	8	2025-07-23 21:56:47.501913	tarjeta	512.59	completada
578	9	9	2025-11-07 21:56:47.501913	transferencia	477.40	completada
579	10	10	2025-12-22 21:56:47.501913	credito	68.71	completada
580	1	1	2025-08-14 21:56:47.501913	efectivo	366.63	completada
581	2	2	2025-11-08 21:56:47.501913	tarjeta	150.01	completada
582	3	3	2026-01-16 21:56:47.501913	transferencia	514.65	completada
583	4	4	2026-02-28 21:56:47.501913	credito	317.51	completada
584	5	5	2025-10-24 21:56:47.501913	efectivo	373.13	completada
585	6	6	2025-06-17 21:56:47.501913	tarjeta	457.83	completada
586	7	7	2025-12-16 21:56:47.501913	transferencia	343.74	completada
587	8	8	2025-10-11 21:56:47.501913	credito	119.89	completada
588	9	9	2026-04-05 21:56:47.501913	efectivo	542.97	completada
589	10	10	2026-04-11 21:56:47.501913	tarjeta	263.49	completada
590	1	1	2025-10-16 21:56:47.501913	transferencia	123.38	completada
591	2	2	2025-10-20 21:56:47.501913	credito	148.84	completada
592	3	3	2026-01-16 21:56:47.501913	efectivo	479.14	completada
593	4	4	2025-06-17 21:56:47.501913	tarjeta	386.82	completada
594	5	5	2026-05-09 21:56:47.501913	transferencia	421.18	completada
595	6	6	2025-12-02 21:56:47.501913	credito	522.70	completada
596	7	7	2025-08-26 21:56:47.501913	efectivo	303.58	completada
597	8	8	2025-12-25 21:56:47.501913	tarjeta	367.57	completada
598	9	9	2026-01-08 21:56:47.501913	transferencia	241.58	completada
599	10	10	2026-03-29 21:56:47.501913	credito	420.61	completada
600	1	1	2025-10-16 21:56:47.501913	efectivo	291.29	completada
601	2	2	2025-06-22 21:56:47.501913	tarjeta	360.54	completada
602	3	3	2025-06-17 21:56:47.501913	transferencia	262.27	completada
603	4	4	2025-09-15 21:56:47.501913	credito	450.15	completada
604	5	5	2026-01-30 21:56:47.501913	efectivo	494.79	completada
605	6	6	2025-09-12 21:56:47.501913	tarjeta	215.85	completada
606	7	7	2025-06-17 21:56:47.501913	transferencia	93.01	completada
607	8	8	2026-03-24 21:56:47.501913	credito	493.32	completada
608	9	9	2026-04-02 21:56:47.501913	efectivo	269.67	completada
609	10	10	2025-11-17 21:56:47.501913	tarjeta	162.93	completada
610	1	1	2025-10-31 21:56:47.501913	transferencia	315.64	completada
611	2	2	2025-07-30 21:56:47.501913	credito	355.09	completada
612	3	3	2025-08-16 21:56:47.501913	efectivo	452.25	completada
613	4	4	2026-02-15 21:56:47.501913	tarjeta	371.54	completada
614	5	5	2025-08-11 21:56:47.501913	transferencia	285.62	completada
615	6	6	2026-02-10 21:56:47.501913	credito	68.93	completada
616	7	7	2025-07-07 21:56:47.501913	efectivo	177.28	completada
617	8	8	2026-03-09 21:56:47.501913	tarjeta	494.43	completada
618	9	9	2025-06-13 21:56:47.501913	transferencia	264.47	completada
619	10	10	2026-03-29 21:56:47.501913	credito	326.38	completada
620	1	1	2026-04-12 21:56:47.501913	efectivo	129.89	completada
621	2	2	2025-12-15 21:56:47.501913	tarjeta	90.86	completada
622	3	3	2026-04-26 21:56:47.501913	transferencia	119.60	completada
623	4	4	2025-06-26 21:56:47.501913	credito	77.08	completada
624	5	5	2026-05-14 21:56:47.501913	efectivo	145.27	completada
625	6	6	2025-10-15 21:56:47.501913	tarjeta	205.41	completada
626	7	7	2026-03-06 21:56:47.501913	transferencia	352.31	completada
627	8	8	2026-04-07 21:56:47.501913	credito	507.48	completada
628	9	9	2026-04-17 21:56:47.501913	efectivo	330.82	completada
629	10	10	2025-06-04 21:56:47.501913	tarjeta	137.12	completada
630	1	1	2026-01-20 21:56:47.501913	transferencia	123.71	completada
631	2	2	2026-01-23 21:56:47.501913	credito	316.21	completada
632	3	3	2025-11-05 21:56:47.501913	efectivo	481.14	completada
633	4	4	2025-08-03 21:56:47.501913	tarjeta	360.59	completada
634	5	5	2025-12-22 21:56:47.501913	transferencia	328.96	completada
635	6	6	2025-07-18 21:56:47.501913	credito	444.04	completada
636	7	7	2025-08-29 21:56:47.501913	efectivo	337.19	completada
637	8	8	2026-04-11 21:56:47.501913	tarjeta	281.09	completada
638	9	9	2025-10-02 21:56:47.501913	transferencia	355.01	completada
639	10	10	2026-05-21 21:56:47.501913	credito	331.75	completada
640	1	1	2025-12-08 21:56:47.501913	efectivo	470.96	completada
641	2	2	2025-12-24 21:56:47.501913	tarjeta	425.82	completada
642	3	3	2025-12-24 21:56:47.501913	transferencia	347.21	completada
643	4	4	2025-09-03 21:56:47.501913	credito	334.77	completada
644	5	5	2025-06-07 21:56:47.501913	efectivo	423.02	completada
645	6	6	2026-05-26 21:56:47.501913	tarjeta	528.38	completada
646	7	7	2025-08-02 21:56:47.501913	transferencia	484.63	completada
647	8	8	2026-04-04 21:56:47.501913	credito	396.74	completada
648	9	9	2026-02-05 21:56:47.501913	efectivo	184.28	completada
649	10	10	2025-09-09 21:56:47.501913	tarjeta	210.20	completada
650	1	1	2026-04-09 21:56:47.501913	transferencia	449.86	completada
651	2	2	2025-08-27 21:56:47.501913	credito	122.65	completada
652	3	3	2026-02-24 21:56:47.501913	efectivo	526.83	completada
653	4	4	2025-06-22 21:56:47.501913	tarjeta	401.81	completada
654	5	5	2026-03-21 21:56:47.501913	transferencia	212.91	completada
655	6	6	2025-10-30 21:56:47.501913	credito	104.61	completada
656	7	7	2026-03-15 21:56:47.501913	efectivo	301.81	completada
657	8	8	2025-12-16 21:56:47.501913	tarjeta	146.99	completada
658	9	9	2025-10-10 21:56:47.501913	transferencia	278.13	completada
659	10	10	2025-11-08 21:56:47.501913	credito	111.92	completada
660	1	1	2025-09-20 21:56:47.501913	efectivo	491.10	completada
661	2	2	2025-08-05 21:56:47.501913	tarjeta	295.69	completada
662	3	3	2026-03-03 21:56:47.501913	transferencia	321.93	completada
663	4	4	2026-04-10 21:56:47.501913	credito	463.02	completada
664	5	5	2025-06-12 21:56:47.501913	efectivo	345.67	completada
665	6	6	2025-12-16 21:56:47.501913	tarjeta	220.98	completada
666	7	7	2025-12-13 21:56:47.501913	transferencia	406.26	completada
667	8	8	2026-01-21 21:56:47.501913	credito	217.49	completada
668	9	9	2025-10-13 21:56:47.501913	efectivo	265.68	completada
669	10	10	2025-07-02 21:56:47.501913	tarjeta	261.61	completada
670	1	1	2026-02-12 21:56:47.501913	transferencia	469.27	completada
671	2	2	2025-12-19 21:56:47.501913	credito	381.77	completada
672	3	3	2025-10-06 21:56:47.501913	efectivo	230.63	completada
673	4	4	2025-12-25 21:56:47.501913	tarjeta	90.27	completada
674	5	5	2026-01-24 21:56:47.501913	transferencia	486.01	completada
675	6	6	2025-09-10 21:56:47.501913	credito	425.33	completada
676	7	7	2025-09-11 21:56:47.501913	efectivo	330.83	completada
677	8	8	2025-07-22 21:56:47.501913	tarjeta	454.00	completada
678	9	9	2026-04-15 21:56:47.501913	transferencia	56.71	completada
679	10	10	2026-03-27 21:56:47.501913	credito	348.24	completada
680	1	1	2026-01-07 21:56:47.501913	efectivo	475.95	completada
681	2	2	2026-03-18 21:56:47.501913	tarjeta	61.24	completada
682	3	3	2025-11-04 21:56:47.501913	transferencia	491.40	completada
683	4	4	2025-10-15 21:56:47.501913	credito	527.47	completada
684	5	5	2025-12-30 21:56:47.501913	efectivo	450.60	completada
685	6	6	2025-11-21 21:56:47.501913	tarjeta	349.31	completada
686	7	7	2026-01-27 21:56:47.501913	transferencia	488.81	completada
687	8	8	2026-05-26 21:56:47.501913	credito	362.77	completada
688	9	9	2025-09-08 21:56:47.501913	efectivo	69.85	completada
689	10	10	2026-05-29 21:56:47.501913	tarjeta	90.00	completada
690	1	1	2025-07-07 21:56:47.501913	transferencia	442.93	completada
691	2	2	2025-07-12 21:56:47.501913	credito	408.55	completada
692	3	3	2025-12-13 21:56:47.501913	efectivo	441.43	completada
693	4	4	2025-08-30 21:56:47.501913	tarjeta	423.03	completada
694	5	5	2026-01-20 21:56:47.501913	transferencia	268.40	completada
695	6	6	2025-06-09 21:56:47.501913	credito	127.72	completada
696	7	7	2025-09-18 21:56:47.501913	efectivo	134.51	completada
697	8	8	2026-05-04 21:56:47.501913	tarjeta	261.20	completada
698	9	9	2025-10-18 21:56:47.501913	transferencia	495.23	completada
699	10	10	2025-08-06 21:56:47.501913	credito	172.37	completada
700	1	1	2026-04-18 21:56:47.501913	efectivo	507.73	completada
701	2	2	2025-11-15 21:56:47.501913	tarjeta	330.47	completada
702	3	3	2026-05-02 21:56:47.501913	transferencia	249.25	completada
703	4	4	2026-02-11 21:56:47.501913	credito	274.34	completada
704	5	5	2025-12-01 21:56:47.501913	efectivo	326.41	completada
705	6	6	2026-05-16 21:56:47.501913	tarjeta	274.28	completada
706	7	7	2026-02-08 21:56:47.501913	transferencia	362.76	completada
707	8	8	2025-12-02 21:56:47.501913	credito	189.68	completada
708	9	9	2026-02-15 21:56:47.501913	efectivo	80.56	completada
709	10	10	2025-08-31 21:56:47.501913	tarjeta	485.40	completada
710	1	1	2025-10-04 21:56:47.501913	transferencia	237.51	completada
711	2	2	2026-03-06 21:56:47.501913	credito	504.08	completada
712	3	3	2026-01-28 21:56:47.501913	efectivo	548.96	completada
713	4	4	2025-09-12 21:56:47.501913	tarjeta	473.84	completada
714	5	5	2026-05-09 21:56:47.501913	transferencia	412.43	completada
715	6	6	2025-11-15 21:56:47.501913	credito	377.55	completada
716	7	7	2025-11-16 21:56:47.501913	efectivo	256.53	completada
717	8	8	2025-11-18 21:56:47.501913	tarjeta	406.85	completada
718	9	9	2026-02-22 21:56:47.501913	transferencia	346.49	completada
719	10	10	2025-09-02 21:56:47.501913	credito	527.83	completada
720	1	1	2025-08-18 21:56:47.501913	efectivo	369.47	completada
721	2	2	2025-06-07 21:56:47.501913	tarjeta	429.36	completada
722	3	3	2026-03-17 21:56:47.501913	transferencia	469.19	completada
723	4	4	2025-08-31 21:56:47.501913	credito	272.89	completada
724	5	5	2026-02-03 21:56:47.501913	efectivo	190.80	completada
725	6	6	2025-09-15 21:56:47.501913	tarjeta	536.67	completada
726	7	7	2025-09-21 21:56:47.501913	transferencia	71.34	completada
727	8	8	2025-07-29 21:56:47.501913	credito	378.07	completada
728	9	9	2026-01-21 21:56:47.501913	efectivo	184.99	completada
729	10	10	2026-01-17 21:56:47.501913	tarjeta	76.70	completada
730	1	1	2025-12-12 21:56:47.501913	transferencia	318.82	completada
731	2	2	2025-11-29 21:56:47.501913	credito	360.02	completada
732	3	3	2026-01-19 21:56:47.501913	efectivo	333.25	completada
733	4	4	2025-08-09 21:56:47.501913	tarjeta	461.95	completada
734	5	5	2026-04-15 21:56:47.501913	transferencia	549.87	completada
735	6	6	2026-03-15 21:56:47.501913	credito	282.10	completada
736	7	7	2026-01-22 21:56:47.501913	efectivo	467.17	completada
737	8	8	2025-11-18 21:56:47.501913	tarjeta	443.59	completada
738	9	9	2025-06-09 21:56:47.501913	transferencia	468.70	completada
739	10	10	2025-09-13 21:56:47.501913	credito	472.20	completada
740	1	1	2025-06-23 21:56:47.501913	efectivo	429.31	completada
741	2	2	2026-04-02 21:56:47.501913	tarjeta	233.63	completada
742	3	3	2026-03-10 21:56:47.501913	transferencia	538.35	completada
743	4	4	2025-09-05 21:56:47.501913	credito	499.13	completada
744	5	5	2025-07-23 21:56:47.501913	efectivo	308.49	completada
745	6	6	2026-01-11 21:56:47.501913	tarjeta	297.35	completada
746	7	7	2025-12-16 21:56:47.501913	transferencia	403.39	completada
747	8	8	2025-06-16 21:56:47.501913	credito	257.87	completada
748	9	9	2025-08-22 21:56:47.501913	efectivo	255.39	completada
749	10	10	2026-01-25 21:56:47.501913	tarjeta	415.22	completada
750	1	1	2026-03-21 21:56:47.501913	transferencia	363.11	completada
751	2	2	2026-02-12 21:56:47.501913	credito	260.21	completada
752	3	3	2025-10-22 21:56:47.501913	efectivo	501.14	completada
753	4	4	2026-04-19 21:56:47.501913	tarjeta	377.45	completada
754	5	5	2025-08-05 21:56:47.501913	transferencia	532.85	completada
755	6	6	2025-08-26 21:56:47.501913	credito	235.44	completada
756	7	7	2025-12-31 21:56:47.501913	efectivo	385.78	completada
757	8	8	2025-07-17 21:56:47.501913	tarjeta	384.04	completada
758	9	9	2025-07-27 21:56:47.501913	transferencia	184.50	completada
759	10	10	2025-08-11 21:56:47.501913	credito	372.95	completada
760	1	1	2026-02-18 21:56:47.501913	efectivo	173.80	completada
761	2	2	2025-11-07 21:56:47.501913	tarjeta	292.61	completada
762	3	3	2025-07-26 21:56:47.501913	transferencia	488.07	completada
763	4	4	2025-11-26 21:56:47.501913	credito	263.29	completada
764	5	5	2026-03-30 21:56:47.501913	efectivo	330.23	completada
765	6	6	2026-03-24 21:56:47.501913	tarjeta	250.09	completada
766	7	7	2025-12-22 21:56:47.501913	transferencia	164.12	completada
767	8	8	2026-04-28 21:56:47.501913	credito	52.89	completada
768	9	9	2025-07-02 21:56:47.501913	efectivo	387.36	completada
769	10	10	2025-09-02 21:56:47.501913	tarjeta	98.29	completada
770	1	1	2025-08-16 21:56:47.501913	transferencia	380.72	completada
771	2	2	2026-02-01 21:56:47.501913	credito	350.28	completada
772	3	3	2025-12-12 21:56:47.501913	efectivo	182.24	completada
773	4	4	2026-05-21 21:56:47.501913	tarjeta	279.92	completada
774	5	5	2025-11-13 21:56:47.501913	transferencia	56.35	completada
775	6	6	2025-12-15 21:56:47.501913	credito	303.47	completada
776	7	7	2026-02-18 21:56:47.501913	efectivo	158.10	completada
777	8	8	2025-10-30 21:56:47.501913	tarjeta	430.54	completada
778	9	9	2025-11-24 21:56:47.501913	transferencia	75.06	completada
779	10	10	2026-01-04 21:56:47.501913	credito	441.91	completada
780	1	1	2026-02-25 21:56:47.501913	efectivo	77.17	completada
781	2	2	2025-11-14 21:56:47.501913	tarjeta	74.77	completada
782	3	3	2026-02-11 21:56:47.501913	transferencia	185.74	completada
783	4	4	2025-06-17 21:56:47.501913	credito	370.89	completada
784	5	5	2026-05-20 21:56:47.501913	efectivo	90.98	completada
785	6	6	2025-06-11 21:56:47.501913	tarjeta	105.63	completada
786	7	7	2025-09-01 21:56:47.501913	transferencia	543.83	completada
787	8	8	2025-10-23 21:56:47.501913	credito	305.80	completada
788	9	9	2025-09-29 21:56:47.501913	efectivo	187.32	completada
789	10	10	2025-12-19 21:56:47.501913	tarjeta	437.93	completada
790	1	1	2025-09-14 21:56:47.501913	transferencia	183.13	completada
791	2	2	2025-10-26 21:56:47.501913	credito	487.48	completada
792	3	3	2026-03-30 21:56:47.501913	efectivo	239.09	completada
793	4	4	2025-11-15 21:56:47.501913	tarjeta	147.46	completada
794	5	5	2026-02-26 21:56:47.501913	transferencia	127.94	completada
795	6	6	2026-01-26 21:56:47.501913	credito	184.48	completada
796	7	7	2026-04-14 21:56:47.501913	efectivo	263.72	completada
797	8	8	2026-03-17 21:56:47.501913	tarjeta	425.11	completada
798	9	9	2026-03-06 21:56:47.501913	transferencia	124.21	completada
799	10	10	2026-01-25 21:56:47.501913	credito	208.93	completada
800	1	1	2025-08-21 21:56:47.501913	efectivo	326.31	completada
801	2	2	2026-02-19 21:56:47.501913	tarjeta	294.75	completada
802	3	3	2025-06-16 21:56:47.501913	transferencia	450.23	completada
803	4	4	2025-10-21 21:56:47.501913	credito	104.09	completada
804	5	5	2026-04-01 21:56:47.501913	efectivo	245.14	completada
805	6	6	2026-04-09 21:56:47.501913	tarjeta	71.65	completada
806	7	7	2025-11-10 21:56:47.501913	transferencia	535.52	completada
807	8	8	2026-03-07 21:56:47.501913	credito	132.93	completada
808	9	9	2025-12-05 21:56:47.501913	efectivo	267.35	completada
809	10	10	2025-06-15 21:56:47.501913	tarjeta	78.59	completada
810	1	1	2026-03-20 21:56:47.501913	transferencia	172.60	completada
811	2	2	2026-05-23 21:56:47.501913	credito	288.65	completada
812	3	3	2025-06-09 21:56:47.501913	efectivo	227.51	completada
813	4	4	2025-11-21 21:56:47.501913	tarjeta	318.78	completada
814	5	5	2025-07-25 21:56:47.501913	transferencia	425.23	completada
815	6	6	2025-10-09 21:56:47.501913	credito	67.08	completada
816	7	7	2026-05-05 21:56:47.501913	efectivo	278.99	completada
817	8	8	2025-10-25 21:56:47.501913	tarjeta	70.99	completada
818	9	9	2025-12-09 21:56:47.501913	transferencia	199.54	completada
819	10	10	2026-05-08 21:56:47.501913	credito	414.75	completada
820	1	1	2025-07-19 21:56:47.501913	efectivo	75.68	completada
821	2	2	2026-01-23 21:56:47.501913	tarjeta	74.68	completada
822	3	3	2026-01-23 21:56:47.501913	transferencia	133.67	completada
823	4	4	2025-11-24 21:56:47.501913	credito	405.43	completada
824	5	5	2025-05-31 21:56:47.501913	efectivo	54.07	completada
825	6	6	2025-06-22 21:56:47.501913	tarjeta	237.75	completada
826	7	7	2025-10-21 21:56:47.501913	transferencia	220.87	completada
827	8	8	2025-12-03 21:56:47.501913	credito	493.39	completada
828	9	9	2026-05-24 21:56:47.501913	efectivo	353.39	completada
829	10	10	2026-01-22 21:56:47.501913	tarjeta	246.90	completada
830	1	1	2025-07-29 21:56:47.501913	transferencia	373.15	completada
831	2	2	2025-07-21 21:56:47.501913	credito	297.39	completada
832	3	3	2025-07-23 21:56:47.501913	efectivo	424.57	completada
833	4	4	2026-03-18 21:56:47.501913	tarjeta	136.84	completada
834	5	5	2025-11-30 21:56:47.501913	transferencia	318.67	completada
835	6	6	2025-07-31 21:56:47.501913	credito	216.13	completada
836	7	7	2025-11-01 21:56:47.501913	efectivo	165.25	completada
837	8	8	2025-08-16 21:56:47.501913	tarjeta	391.74	completada
838	9	9	2025-09-14 21:56:47.501913	transferencia	198.01	completada
839	10	10	2026-01-28 21:56:47.501913	credito	496.93	completada
840	1	1	2026-05-12 21:56:47.501913	efectivo	67.04	completada
841	2	2	2025-09-02 21:56:47.501913	tarjeta	146.74	completada
842	3	3	2025-10-10 21:56:47.501913	transferencia	295.62	completada
843	4	4	2025-09-19 21:56:47.501913	credito	471.96	completada
844	5	5	2025-06-28 21:56:47.501913	efectivo	305.48	completada
845	6	6	2026-03-25 21:56:47.501913	tarjeta	441.12	completada
846	7	7	2026-01-14 21:56:47.501913	transferencia	184.63	completada
847	8	8	2025-09-18 21:56:47.501913	credito	320.50	completada
848	9	9	2026-04-18 21:56:47.501913	efectivo	263.34	completada
849	10	10	2026-04-14 21:56:47.501913	tarjeta	65.83	completada
850	1	1	2025-08-14 21:56:47.501913	transferencia	218.47	completada
851	2	2	2026-03-31 21:56:47.501913	credito	466.45	completada
852	3	3	2025-07-30 21:56:47.501913	efectivo	120.79	completada
853	4	4	2026-03-10 21:56:47.501913	tarjeta	202.34	completada
854	5	5	2025-06-01 21:56:47.501913	transferencia	377.09	completada
855	6	6	2026-01-19 21:56:47.501913	credito	399.72	completada
856	7	7	2025-08-20 21:56:47.501913	efectivo	206.46	completada
857	8	8	2025-09-17 21:56:47.501913	tarjeta	191.79	completada
858	9	9	2025-07-23 21:56:47.501913	transferencia	390.19	completada
859	10	10	2026-01-27 21:56:47.501913	credito	199.66	completada
860	1	1	2026-02-09 21:56:47.501913	efectivo	51.68	completada
861	2	2	2025-06-24 21:56:47.501913	tarjeta	380.24	completada
862	3	3	2025-07-29 21:56:47.501913	transferencia	201.56	completada
863	4	4	2025-09-29 21:56:47.501913	credito	496.90	completada
864	5	5	2026-05-01 21:56:47.501913	efectivo	511.69	completada
865	6	6	2025-09-25 21:56:47.501913	tarjeta	78.97	completada
866	7	7	2025-09-06 21:56:47.501913	transferencia	128.10	completada
867	8	8	2026-03-09 21:56:47.501913	credito	146.32	completada
868	9	9	2025-06-27 21:56:47.501913	efectivo	67.48	completada
869	10	10	2025-09-02 21:56:47.501913	tarjeta	66.85	completada
870	1	1	2025-06-20 21:56:47.501913	transferencia	182.24	completada
871	2	2	2025-11-19 21:56:47.501913	credito	176.04	completada
872	3	3	2025-10-31 21:56:47.501913	efectivo	225.74	completada
873	4	4	2026-01-04 21:56:47.501913	tarjeta	92.15	completada
874	5	5	2025-11-18 21:56:47.501913	transferencia	254.45	completada
875	6	6	2025-11-21 21:56:47.501913	credito	119.91	completada
876	7	7	2025-10-26 21:56:47.501913	efectivo	341.42	completada
877	8	8	2026-01-06 21:56:47.501913	tarjeta	345.08	completada
878	9	9	2026-03-01 21:56:47.501913	transferencia	108.35	completada
879	10	10	2025-12-12 21:56:47.501913	credito	481.42	completada
880	1	1	2025-12-14 21:56:47.501913	efectivo	480.89	completada
881	2	2	2025-11-09 21:56:47.501913	tarjeta	50.26	completada
882	3	3	2025-12-10 21:56:47.501913	transferencia	397.20	completada
883	4	4	2025-08-21 21:56:47.501913	credito	127.68	completada
884	5	5	2025-09-01 21:56:47.501913	efectivo	253.80	completada
885	6	6	2025-10-10 21:56:47.501913	tarjeta	439.12	completada
886	7	7	2025-09-15 21:56:47.501913	transferencia	515.72	completada
887	8	8	2025-06-28 21:56:47.501913	credito	82.58	completada
888	9	9	2026-01-23 21:56:47.501913	efectivo	383.20	completada
889	10	10	2026-02-05 21:56:47.501913	tarjeta	400.21	completada
890	1	1	2025-10-31 21:56:47.501913	transferencia	413.63	completada
891	2	2	2025-11-07 21:56:47.501913	credito	348.88	completada
892	3	3	2026-03-12 21:56:47.501913	efectivo	292.16	completada
893	4	4	2025-06-15 21:56:47.501913	tarjeta	448.33	completada
894	5	5	2026-05-06 21:56:47.501913	transferencia	437.18	completada
895	6	6	2025-12-04 21:56:47.501913	credito	422.42	completada
896	7	7	2026-01-28 21:56:47.501913	efectivo	78.65	completada
897	8	8	2025-07-10 21:56:47.501913	tarjeta	271.39	completada
898	9	9	2026-04-17 21:56:47.501913	transferencia	409.64	completada
899	10	10	2025-10-05 21:56:47.501913	credito	264.34	completada
900	1	1	2026-04-22 21:56:47.501913	efectivo	398.74	completada
901	2	2	2026-05-11 21:56:47.501913	tarjeta	356.22	completada
902	3	3	2026-03-09 21:56:47.501913	transferencia	82.43	completada
903	4	4	2025-10-17 21:56:47.501913	credito	472.04	completada
904	5	5	2025-11-06 21:56:47.501913	efectivo	121.36	completada
905	6	6	2025-12-29 21:56:47.501913	tarjeta	107.75	completada
906	7	7	2026-05-17 21:56:47.501913	transferencia	218.05	completada
907	8	8	2026-05-11 21:56:47.501913	credito	402.19	completada
908	9	9	2026-01-19 21:56:47.501913	efectivo	73.65	completada
909	10	10	2025-10-25 21:56:47.501913	tarjeta	443.52	completada
910	1	1	2026-04-28 21:56:47.501913	transferencia	440.61	completada
911	2	2	2025-08-16 21:56:47.501913	credito	311.42	completada
912	3	3	2025-11-21 21:56:47.501913	efectivo	224.32	completada
913	4	4	2026-05-14 21:56:47.501913	tarjeta	182.09	completada
914	5	5	2025-12-05 21:56:47.501913	transferencia	303.57	completada
915	6	6	2025-07-09 21:56:47.501913	credito	422.00	completada
916	7	7	2026-02-28 21:56:47.501913	efectivo	467.04	completada
917	8	8	2026-02-27 21:56:47.501913	tarjeta	151.81	completada
918	9	9	2025-09-17 21:56:47.501913	transferencia	152.33	completada
919	10	10	2025-10-03 21:56:47.501913	credito	521.90	completada
920	1	1	2025-10-09 21:56:47.501913	efectivo	489.78	completada
921	2	2	2026-03-18 21:56:47.501913	tarjeta	170.32	completada
922	3	3	2025-11-05 21:56:47.501913	transferencia	225.48	completada
923	4	4	2026-04-28 21:56:47.501913	credito	186.86	completada
924	5	5	2025-12-07 21:56:47.501913	efectivo	345.72	completada
925	6	6	2026-02-19 21:56:47.501913	tarjeta	335.59	completada
926	7	7	2025-11-13 21:56:47.501913	transferencia	180.50	completada
927	8	8	2025-09-26 21:56:47.501913	credito	515.86	completada
928	9	9	2026-02-03 21:56:47.501913	efectivo	90.47	completada
929	10	10	2025-09-12 21:56:47.501913	tarjeta	72.21	completada
930	1	1	2025-08-09 21:56:47.501913	transferencia	546.38	completada
931	2	2	2025-08-23 21:56:47.501913	credito	183.02	completada
932	3	3	2025-07-07 21:56:47.501913	efectivo	442.12	completada
933	4	4	2026-02-16 21:56:47.501913	tarjeta	378.27	completada
934	5	5	2026-05-02 21:56:47.501913	transferencia	134.15	completada
935	6	6	2026-01-13 21:56:47.501913	credito	230.29	completada
936	7	7	2025-06-05 21:56:47.501913	efectivo	197.52	completada
937	8	8	2026-02-06 21:56:47.501913	tarjeta	116.57	completada
938	9	9	2025-11-30 21:56:47.501913	transferencia	481.65	completada
939	10	10	2025-07-07 21:56:47.501913	credito	390.42	completada
940	1	1	2025-09-09 21:56:47.501913	efectivo	104.19	completada
941	2	2	2025-11-17 21:56:47.501913	tarjeta	428.84	completada
942	3	3	2026-02-13 21:56:47.501913	transferencia	471.90	completada
943	4	4	2025-12-08 21:56:47.501913	credito	183.07	completada
944	5	5	2025-11-25 21:56:47.501913	efectivo	196.85	completada
945	6	6	2025-09-11 21:56:47.501913	tarjeta	99.61	completada
946	7	7	2025-12-18 21:56:47.501913	transferencia	261.34	completada
947	8	8	2026-02-24 21:56:47.501913	credito	68.48	completada
948	9	9	2026-04-06 21:56:47.501913	efectivo	121.79	completada
949	10	10	2025-11-24 21:56:47.501913	tarjeta	427.37	completada
950	1	1	2025-06-04 21:56:47.501913	transferencia	324.08	completada
951	2	2	2025-11-04 21:56:47.501913	credito	503.20	completada
952	3	3	2025-10-20 21:56:47.501913	efectivo	373.90	completada
953	4	4	2025-06-04 21:56:47.501913	tarjeta	480.98	completada
954	5	5	2026-04-21 21:56:47.501913	transferencia	217.02	completada
955	6	6	2025-12-25 21:56:47.501913	credito	305.33	completada
956	7	7	2025-10-02 21:56:47.501913	efectivo	405.68	completada
957	8	8	2026-04-13 21:56:47.501913	tarjeta	408.82	completada
958	9	9	2025-12-08 21:56:47.501913	transferencia	407.27	completada
959	10	10	2026-02-08 21:56:47.501913	credito	354.15	completada
960	1	1	2025-09-23 21:56:47.501913	efectivo	459.98	completada
961	2	2	2025-10-18 21:56:47.501913	tarjeta	166.66	completada
962	3	3	2025-06-03 21:56:47.501913	transferencia	328.68	completada
963	4	4	2026-01-09 21:56:47.501913	credito	419.57	completada
964	5	5	2025-11-30 21:56:47.501913	efectivo	247.30	completada
965	6	6	2025-11-01 21:56:47.501913	tarjeta	408.12	completada
966	7	7	2025-07-18 21:56:47.501913	transferencia	276.92	completada
967	8	8	2025-08-16 21:56:47.501913	credito	260.89	completada
968	9	9	2025-11-20 21:56:47.501913	efectivo	400.88	completada
969	10	10	2025-07-05 21:56:47.501913	tarjeta	187.12	completada
970	1	1	2026-05-29 21:56:47.501913	transferencia	377.87	completada
971	2	2	2025-08-09 21:56:47.501913	credito	525.98	completada
972	3	3	2025-10-29 21:56:47.501913	efectivo	348.14	completada
973	4	4	2026-03-04 21:56:47.501913	tarjeta	361.44	completada
974	5	5	2025-06-12 21:56:47.501913	transferencia	487.66	completada
975	6	6	2025-06-05 21:56:47.501913	credito	334.42	completada
976	7	7	2025-08-25 21:56:47.501913	efectivo	247.18	completada
977	8	8	2026-02-18 21:56:47.501913	tarjeta	335.79	completada
978	9	9	2025-12-24 21:56:47.501913	transferencia	282.26	completada
979	10	10	2025-10-11 21:56:47.501913	credito	438.02	completada
980	1	1	2025-10-26 21:56:47.501913	efectivo	56.13	completada
981	2	2	2026-01-29 21:56:47.501913	tarjeta	543.43	completada
982	3	3	2025-08-03 21:56:47.501913	transferencia	468.98	completada
983	4	4	2025-07-15 21:56:47.501913	credito	239.28	completada
984	5	5	2025-10-01 21:56:47.501913	efectivo	288.51	completada
985	6	6	2025-12-18 21:56:47.501913	tarjeta	490.48	completada
986	7	7	2026-05-03 21:56:47.501913	transferencia	102.42	completada
987	8	8	2026-01-25 21:56:47.501913	credito	247.07	completada
988	9	9	2025-07-12 21:56:47.501913	efectivo	109.86	completada
989	10	10	2025-11-19 21:56:47.501913	tarjeta	346.02	completada
990	1	1	2026-03-22 21:56:47.501913	transferencia	282.08	completada
991	2	2	2025-06-30 21:56:47.501913	credito	445.02	completada
992	3	3	2025-12-20 21:56:47.501913	efectivo	435.73	completada
993	4	4	2026-01-02 21:56:47.501913	tarjeta	140.54	completada
994	5	5	2025-10-22 21:56:47.501913	transferencia	303.12	completada
995	6	6	2026-04-01 21:56:47.501913	credito	430.91	completada
996	7	7	2025-11-18 21:56:47.501913	efectivo	255.22	completada
997	8	8	2026-01-14 21:56:47.501913	tarjeta	156.57	completada
998	9	9	2025-06-02 21:56:47.501913	transferencia	402.09	completada
999	10	10	2025-11-20 21:56:47.501913	credito	505.14	completada
1000	1	1	2025-11-03 21:56:47.501913	efectivo	146.12	completada
\.


--
-- Data for Name: ventas_detalle; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ventas_detalle (id_detalle_venta, id_venta, id_producto, cantidad, precio_unitario, utilidad) FROM stdin;
4	5	6	2	96.31	137.60
5	6	7	2	37.55	28.42
6	7	8	2	17.10	-29.44
7	8	9	2	87.91	88.82
8	9	10	2	13.98	-7.48
9	10	11	2	60.91	31.04
\.


--
-- Name: clientes_id_cliente_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clientes_id_cliente_seq', 10, true);


--
-- Name: compras_detalle_id_detalle_compra_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.compras_detalle_id_detalle_compra_seq', 20, true);


--
-- Name: compras_id_compra_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.compras_id_compra_seq', 10, true);


--
-- Name: deudores_id_deudor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.deudores_id_deudor_seq', 10, true);


--
-- Name: empleados_id_empleado_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.empleados_id_empleado_seq', 10, true);


--
-- Name: inventarios_id_inventario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.inventarios_id_inventario_seq', 3985, true);


--
-- Name: ofertas_id_oferta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ofertas_id_oferta_seq', 20, true);


--
-- Name: productos_id_producto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.productos_id_producto_seq', 1005, true);


--
-- Name: proveedores_id_proveedor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.proveedores_id_proveedor_seq', 10, true);


--
-- Name: roles_id_rol_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.roles_id_rol_seq', 5, true);


--
-- Name: ventas_detalle_id_detalle_venta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ventas_detalle_id_detalle_venta_seq', 9, true);


--
-- Name: ventas_id_venta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ventas_id_venta_seq', 1000, true);


--
-- PostgreSQL database dump complete
--

\unrestrict q7mTnGlXc3nQGnX4oobZKVs2II0hwYbvadkZHGvfUgoIRDaN1hGcNfg1zeeXhdl


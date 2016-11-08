--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

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
-- Name: fuente; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE fuente (
    id_fuente integer NOT NULL,
    nombre character(100),
    url character(100),
    tipo character(50),
    pagina character varying(100)
);


ALTER TABLE public.fuente OWNER TO postgres;

--
-- Name: fuente_id_fuente_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE fuente_id_fuente_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fuente_id_fuente_seq OWNER TO postgres;

--
-- Name: fuente_id_fuente_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE fuente_id_fuente_seq OWNED BY fuente.id_fuente;


--
-- Name: noticia; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE noticia (
    id_noticia integer NOT NULL,
    titulo character varying(200) NOT NULL,
    copete text,
    link character varying(300),
    fecha character(100) NOT NULL,
    autor character(100),
    id_fuente integer NOT NULL,
    imagen character(200)
);


ALTER TABLE public.noticia OWNER TO postgres;

--
-- Name: noticia_id_noticia_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE noticia_id_noticia_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.noticia_id_noticia_seq OWNER TO postgres;

--
-- Name: noticia_id_noticia_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE noticia_id_noticia_seq OWNED BY noticia.id_noticia;


--
-- Name: id_fuente; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY fuente ALTER COLUMN id_fuente SET DEFAULT nextval('fuente_id_fuente_seq'::regclass);


--
-- Name: id_noticia; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY noticia ALTER COLUMN id_noticia SET DEFAULT nextval('noticia_id_noticia_seq'::regclass);


--
-- Data for Name: fuente; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO fuente VALUES (1, 'Prensa Unco                                                                                         ', 'http://prensa.uncoma.edu.ar/index.php/es/?format=feed&type=rss&title=Prensa%20Universitaria         ', 'Joomla                                            ', 'http://prensa.uncoma.edu.ar/index.php/es/');
INSERT INTO fuente VALUES (2, 'Facultad de Informática                                                                             ', 'http://faiweb.uncoma.edu.ar/index.php?format=feed&type=rss&title=Inicio                             ', 'Joomla                                            ', 'http://faiweb.uncoma.edu.ar/');
INSERT INTO fuente VALUES (3, 'FAEA                                                                                                ', 'http://faeaweb.uncoma.edu.ar/index.php?format=feed&type=rss                                         ', 'Joomla                                            ', 'http://faeaweb.uncoma.edu.ar/');
INSERT INTO fuente VALUES (4, 'Facultad de Humanidades                                                                             ', 'http://fahuweb.uncoma.edu.ar/index.php?format=feed&type=rss                                         ', 'Joomla                                            ', 'http://fahuweb.uncoma.edu.ar/');
INSERT INTO fuente VALUES (5, 'Facultad de Ciencias del Ambiente y la Salud                                                        ', 'http://faciasweb.uncoma.edu.ar/?q=rss.xml                                                           ', 'Joomla                                            ', 'http://www.faciasuncoma.com/');
INSERT INTO fuente VALUES (6, 'Facultad de Ingeniería                                                                              ', 'http://fainweb.uncoma.edu.ar/index.php?format=feed&type=rss                                         ', 'Joomla                                            ', 'http://fainweb.uncoma.edu.ar/');
INSERT INTO fuente VALUES (7, 'Facultad de Ciencias Médicas                                                                        ', 'http://medicina.uncoma.edu.ar/index.php?format=feed&type=rss                                        ', 'Joomla                                            ', 'http://medicina.uncoma.edu.ar/');
INSERT INTO fuente VALUES (8, 'Facultad de Lenguas                                                                                 ', 'http://fadelweb.uncoma.edu.ar/index.php?format=feed&type=rss                                        ', 'Joomla                                            ', 'http://fadelweb.uncoma.edu.ar/');
INSERT INTO fuente VALUES (9, 'Facultad de Ciencias y Tecnología de los Alimentos                                                  ', 'http://factaweb.uncoma.edu.ar/index.php?format=feed&type=rss                                        ', 'Joomla                                            ', 'http://factaweb.uncoma.edu.ar/');
INSERT INTO fuente VALUES (10, 'Facultad de Ciencias Agrarias                                                                       ', 'http://facaweb.uncoma.edu.ar/index.php?format=feed&type=rss                                         ', 'Joomla                                            ', 'http://facaweb.uncoma.edu.ar/');
INSERT INTO fuente VALUES (12, 'Centro Regional Universitario Bariloche                                                             ', 'http://crubweb.uncoma.edu.ar/cms/?feed=rss2                                                         ', 'Joomla                                            ', 'http://crubweb.uncoma.edu.ar/cms/');
INSERT INTO fuente VALUES (13, 'Asentamiento Universitario Zapala                                                                   ', 'http://auzaweb.uncoma.edu.ar/index.php?format=feed&type=rss                                         ', 'Joomla                                            ', 'http://auzaweb.uncoma.edu.ar/');


--
-- Name: fuente_id_fuente_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('fuente_id_fuente_seq', 13, true);


--
-- Data for Name: noticia; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO noticia VALUES (1, 'Memoria Colectiva – Actividades previstas para esta semana.', '
	


	La comisión Memoria Colectiva, de la Universidad Nacional del Comahue, en el marco de las actividades programadas por los cuarenta años del golpe cívico militar, informó el cronograma de actividades que se realizaran desde el próximo miércoles 29 de junio al 1 de julio:


	Miércoles 29 de junio; a las 19 horas, en la Biblioteca de Ernesto Sábato de la Facultad de Derecho y Ciencias Sociales se presentará el libro "Crímenes de la dictadura en Neuquén y Río Negro", elaborado por del sindicato de prensa de Neuquén y dónde han participado estudiantes de la carrera de comunicación social que tuvieron la responsabilidad de grabación del juicio causa "La escuelita dos" del 2012.


	Jueves 30 de junio; a las 18 horas se proyectará el documental "Quiero Retruco" en el aula 19 de la sede central de nuestra Universidad, luego de la presentación, artistas teatrales de la ciudad, realizarán una dramatización con texto del libro "Corredores de la Memoria”, ya presentado por esta comisión en el mes de mayo.


	Viernes 1 de Julio; en el Instituto de Formación Docente Nº 1 de Cutral Có, se presentará el libro "Crímenes de la dictadura en Neuquén y Río Negro".


	La actividad es organizada conjuntamente con hijos de detenidos desaparecidos, familiares, y testigos de los juicios a militares represores.
', 'http://prensa.uncoma.edu.ar/index.php/es/novedades/6158-memoria-colectiva-actividades-previstas-para-esta-semana', '2016-06-27 17:52:54                                                                                 ', 'prensaunco@central.uncoma.edu.ar (Prensa UNCo)                                                      ', 1, NULL);
INSERT INTO noticia VALUES (2, 'Debate sobre salud colectiva en la UNCo.', '
	


	La Facultad de Ciencias Médicas de la Universidad Nacional del Comahue propone debatir el concepto de Salud Colectiva como paradigma renovado de la salud pública, de la salud comunitaria y de la medicina preventiva y social. Las jornadas se realizarán el 1 y 2 de julio en Cipolletti y son abiertas a la comunidad.


	La salud colectiva como campo ideológico y filosófico plantea ir más allá de los individuos y pensar a las personas dentro de una comunidad. Sobre este escenario, la calidad del aire y de los alimentos, el acceso a la tierra y a los servicios básicos, la vida en armonía y sin violencias, son algunos de los indicadores que hacen a la salud colectiva y que serán debatidos en la Facultad de Ciencias Médicas de la Universidad Nacional del Comahue, institución que organiza y convoca a las primeras jornadas de salud colectiva en la ciudad de Cipolletti.


	 


	La actividad se realizará los días 1 y 2 de julio, a partir de las 9.30 hs., en la sede de la facultad ubicada en la intersección de Toschi y Arrayanes de la ciudad de Cipolletti.


	', 'http://prensa.uncoma.edu.ar/index.php/es/8-principal/6157-debate-sobre-salud-colectiva-en-la-unco', '2016-06-24 18:20:08                                                                                 ', 'prensaunco@central.uncoma.edu.ar (Prensa UNCo)                                                      ', 1, NULL);
INSERT INTO noticia VALUES (3, 'Reunión de la red latinoamericana de laboratorios analíticos referidos a problemas de contaminación.', '
	


	En la ciudad Panamá, Panamá se realizó la reunión del proyecto ARCAL RLA/7/019 “Developing Indicators to Determine the Effect of Pesticides, Heavy Metals and Emerging Contaminants on Continental Aquatic Ecosystems Important to Agriculture and Agroindustry (ARCAL CXXXIX)”, del 06 al 08 de junio de 2016.


	La reunión contó con la presencia de los representantes de los países participantes del proyecto: Argentina, Brasil, Chile, Costa Rica, Cuba, Ecuador, Guatemala, Nicaragua, Panamá, Paraguay y Uruguay; como también los representantes del OIEA (Organización Internacional de Energia Atómica): Geovanna Lucio y Britt Maestroni.  Argentina estuvo representada por la Mg Miriam Loewy del Centro de Investigaciones en Toxicología Ambiental y Agrobiotecnología del Comahue (CITAAC) de la UNCo y CONICET.


	', 'http://prensa.uncoma.edu.ar/index.php/es/8-principal/6156-reunion-de-la-red-latinoamericana-de-laboratorios-analiticos-referidos-a-problemas-de-contaminacion', '2016-06-24 17:51:17                                                                                 ', 'prensaunco@central.uncoma.edu.ar (Prensa UNCo)                                                      ', 1, NULL);
INSERT INTO noticia VALUES (4, 'Encuestas de materias del 1er cuatrimestre 2016', 'Están disponibles las encuestas a los alumnos de todas las materias dictadas en la FaI durante el primer cuatrimestre 2016. Cada alumno puede responder una encuesta por cada materia en la que haya estado inscripto dicho cuatrimestre.
Las encuestas son anónimas: Al momento de loguearse se pide el DNI para verificar que un alumno no complete la encuesta más de una vez por materia, pero luego las opiniones se almacenan por separado, sin referencia al autor.
Las encuestas tienen como objetivo saber lo que opinan los estudiantes del cursado de cada materia (contenido, docentes, modalidad de dictado, etc). La información recolectada será muy útil para mejorar el dictado de las materias a futuro.
Para acceder al sistema, el nombre de usuario es el número de DNI (la contraseña también lo es la primera vez que se ingresa y luego se puede cambiar).

[Responder las encuestas]', 'http://faiweb.uncoma.edu.ar/index.php/785-encuestas-de-materias-del-1er-cuatrimestre-2016', '2016-06-24 05:00:00                                                                                 ', 'astrid.rotten@gmail.com (Astrid Rotten)                                                             ', 2, NULL);
INSERT INTO noticia VALUES (5, 'Inscripciones Segundo Cuatrimestre 2016', 'A partir del 13 de junio estarán abiertas las preinscripciones a las siguientes carreras:

Tecnicatura Universitaria en Desarrollo Web
Tecnicatura Universitaria en Administración de Sistemas y Software Libre

Los periodos de preinscripción e inscripciones son los siguientes:

Preinscripción Web:

Lunes 13/06 al viernes 05/08/2016 PREINSCRIPCIONES ABIERTAS! [Acceso al Formulario de preinscripción]   


Inscripción y entrega de documentación:

Lunes 04/07 al jueves 7/07/2016 de 10 a 17 hs
Lunes 25/07 al viernes 12/08/2016 de 10 a 17 hs  


Comienzo de clases: Semana del 8 de agosto

Más información: Departamento de Alumnos FAI. Teléfono: 4490300 int 433 de 10 a 17 horas.', 'http://faiweb.uncoma.edu.ar/index.php/777-inscripciones-2do-cuat-2016', '2016-06-23 18:00:00                                                                                 ', 'inesreutemann@gmail.com (Ines Reutemann)                                                            ', 2, NULL);
INSERT INTO noticia VALUES (6, 'Defensa de Tesis de Licenciatura: Federico Amigone', 'Se invita a la Comunidad Educativa de la FaI a presenciar la defensa de Tesis de Licenciatura titulada "Cyclope: Un modelo de gestión de eventos académicos. Desarrollo de una Plataforma Web para la gestión integral y asistida"
Día y lugar: Martes 28 de junio de 2016 a las 18:00 hs en Salón Azul Biblioteca UNC
Tesista: Federico Amigone
Director: Dr. Luis Reynoso
Resumen
La gestión de eventos académicos constituye un desafío para las universidades latinoamericanas. En un evento académico promedio intervienen dos dimensiones diferentes pero complementarias: la académica y la logística. Actualmente, no existen propuestas de mercado que permitan a los diversos actores responsables abordar la gestión integral de ambas dimensiones utilizando un solo producto o servicio. Este trabajo parte de ésta coyuntura y atraviesa toda su problemática para confluir en un modelo de gestión totalizador junto con una plataforma que lo soporte.  Los eventos que tienen lugar en el contexto de las universidades latinoamericanas son cada vez más numerosos, significativos y pujantes. Se encuentran presente en todo el andamiaje de educación superior: en las actividades de extensión y académicas. Cada día, organizadores de cientos de eventos académicos de toda latinoamérica, abordan una complejidad particular que excede por mucho a la problemática de la gestión de un evento genérico. Nos encontramos ante un fenómeno complejo, dinámico, inserto en la realidad de la sociedad a la cual convoca. Devenido en dispositivo del saber moderno, el evento académico irrumpe en la escena universitaria como el dispositivo comunicacional de mayor peso vinculante entre la producción del saber académico y la sociedad.   El evento académico, como fenómeno de la modernidad, emerge en la escena universitaria con posterioridad a la constitución de las universidades tradicionales de latinoamérica. Esta relación asincronica e intempestiva entre el fenómeno y su contexto de gestión motiva una serie de preguntas que esta tesis busca responder: ¿están las universidades latinoamericanas haciendo uso del potencial tecnológico a la hora de abordar la gestión de este fenómeno? ¿lo están haciendo de la mejor manera posible? ¿existe un modelo de gestión superador?   La presente tesis, señala la problemática que enfrenta la academia latinoamericana y particularmente la argentina a la hora de gestionar la complejidad inherente al fenómeno en cuestión. Dimensiona el volumen de eventos académicos en la realidad regional y cuantifica sus implicancias en términos de producción e impacto social. Aborda comparativas de las soluciones disponibles en la actualidad y  señala sus limitaciones para la realidad académica latinoamericana.   Finalmente, con toda la problemática y el estado de situación intencionando sobre la búsqueda de una solución, presenta un modelo de gestión de eventos académicos basado en los conceptos fundantes de totalización funcional, entorno colaborativo, alcance geográfico y simplicidad de uso. La carencia de una solución integradora que se ajuste a la realidad regional de la académica latinoamericana queda así expuesta. Señala, también, las ventajas del uso del modelo presentado así como de la plataforma que lo implementa.    Existe una necesidad objetiva respecto del uso de herramientas tecnológicas que instrumenten el abordaje al fenómeno de los eventos académicos. La propuesta de un nuevo modelo en el contexto académico latinoamericano constituye la base de presente trabajo.
 ', 'http://faiweb.uncoma.edu.ar/index.php/782-defensa-de-tesis-de-licenciatura-federico-amigone', '2016-06-22 18:19:00                                                                                 ', 'cristian.ilabaca@dti.uncoma.edu.ar (Super Usuario)                                                  ', 2, NULL);
INSERT INTO noticia VALUES (31, 'Curso Taller PEDCO Básico (Destinado a Docentes de la Universidad Nacional del Comahue)', '
LINK FORMULARIO DE INSCRIPCIÓN: AQUI', 'http://fahuweb.uncoma.edu.ar/index.php/novedades/549-curso-taller-pedco-basico', '2016-08-02 17:34:03                                                                                 ', 'carolina.robles@dti.uncoma.edu.ar (Carolina Robles)                                                 ', 4, NULL);
INSERT INTO noticia VALUES (52, '8° Convocatoria para Proyecto de Redes', '', 'http://faciasweb.uncoma.edu.ar/?q=node/17', '2014-06-24 16:57:02                                                                                 ', '                                                                                                    ', 5, NULL);
INSERT INTO noticia VALUES (7, 'Defensa de Tesis de Licenciatura: Santiago Castro', 'Se invita a la Comunidad Educativa de la FaI a presenciar la defensa de Tesis de Licenciatura titulada "Extensión a la evaluación estructural y semántica de Servicios Web orientada a la adaptabilidad"
Día y lugar: Martes 28 de junio de 2016 a las 17:00 hs en Salón Azul Biblioteca UNC
Tesista: Santiago Castro
Director: Dr. Martín Garriga
Resumen
El propósito de este trabajo es presentar una mejora sobre un enfoque que facilita el desarrollo de Aplicaciones Orientadas a Servicios, asistiendo a un ingeniero de software en la tarea de selección de Servicios Web candidatos. Para ello se realizan procesos semi-automáticos de evaluación de servicios, a nivel de las interfaces y a nivel de comportamiento. A nivel de interfaces se analizan los documentos WSDL de las interfaces que describen las operaciones de los Servicios Web, para identificar si tales operaciones se corresponden estructuralmente (y semánticamente) con lo requerido por una aplicación cliente en desarrollo. La evaluación de comportamiento se basa en la definición de un conjunto de casos de test o Test Suite que permite observar el orden de ejecución de las operaciones declaradas en la interfaz WSDL.
 
El trabajo de investigación de esta tesis se centra en la mejora del Método de Selección de servicios; en particular, se extiende el procedimiento de Análisis Estructural y Semántico de Compatibilidad de Interfaces que explota la información semántica -- identificadores de operaciones y parámetros - utilizando la base semántica del idioma inglés WordNet, y la información estructural -- tipos de datos de operaciones, parámetros y excepciones - disponible en las interfaces de los Servicios Web. Sin embargo, resulta necesaria la extensión de las estrategias semánticas propuestas en tesis previas para analizar exhaustivaente los Tipos Complejos presentes en las interfaces de los Servicios Web, cuyo tratamiento dista de ser trivial por la cantidad de información que conllevan estos tipos. Además, se propone enriquecer y extender las nociones de equivalencia estructural-semántica de nombres y parámetros, al retorno y las excepciones definidos en las operaciones. El trabajo de mejora y adaptación, implica además que como parte de esta tesis, se realiza el correspondiente ajuste y extensión de la herramienta de soporte del método de Selección.', 'http://faiweb.uncoma.edu.ar/index.php/783-defensa-de-tesis-de-licenciatura-santiago-castro', '2016-06-22 18:19:00                                                                                 ', 'cristian.ilabaca@dti.uncoma.edu.ar (Super Usuario)                                                  ', 2, NULL);
INSERT INTO noticia VALUES (8, 'Defensa de Tesis de Licenciatura: Jerónimo Perfumo', 'Se invita a la Comunidad Educativa de la FaI a presenciar la defensa de Tesis de Licenciatura titulada "Generación automática de perfiles estereotipados para usuarios con limitaciones visuales"
Día y lugar: Martes 28 de junio de 2016 a las 16:00 hs en Salón Azul Biblioteca UNC
Tesista: Jerónimo Perfumo
Directora: Lic. Rafaela Mazzalú
Resumen
La World Wide Web (Web) fue concebida como una aplicación de Internet con el objetivo de posibilitar el intercambio de información, específicamente documentos entre integrantes del ámbito académico. El acceso a los contenidos Web se incrementó enormemente desde el momento en que fue concebida, sin embargo las interfaces se diseñan pensando en una persona estándar con todas sus capacidades físicas y cognitivas. Esta forma de diseñar interfaces de usuario frecuentemente excluye a los grupos de personas con necesidades especiales.
Para promover la accesibilidad se hace uso de ciertas herramientas que ayudan a salvar los obstáculos o barreras del entorno, consiguiendo que estos usuarios realicen la misma acción que pudiera llevar a cabo una persona sin ningún tipo de discapacidad. Dichas herramientas fueron desarrolladas con el fin de cubrir los requerimiento de accesibilidad mencionados pero las mismas trabajan en forma superficial y no diferencian grupos de usuarios. Esta circunstancia se identificó como una necesidad a ser cubierta y es la que motiva el presente trabajo.
El objetivo general de este trabajo de tesis es identificar características que conforman el perfil del usuario, crear el mismo y clasificarlo automáticamente en estereotipos de acuerdo a las discapacidades visuales que el usuario presente. Un estereotipo es la representación de las características comunes pertinentes a un grupo de usuarios, está asociada a una discapacidad y agrupa una serie de barreras de accesibilidad que deben verificarse en el sitio web al ser accedido por un usuario que pertenezca al
estereotipo.
 
Con el mencionado objetivo en mente se analizaron los datos de los usuarios según sus necesidades y se definieron los estereotipos. Se modeló la arquitectura de software teniendo en cuenta parámetros de calidad como reuso y facilidad de modificación. Se estableció la necesidad de una interfazWeb accesible para el registro de usuarios y captura de sus características, como así también una base de datos en la cual almacenar los datos ingresados por el usuario y los que surgen del procesamiento y generación de su perfil, un agente inteligente que procese las características del usuario, genere el perfil y determine que discapacidades visuales presenta y en qué grado, y que además guarde en la base de datos el resultado de dicha evaluación. Luego se estudiaron y compararon distintas herramientas con las cuales llevar adelante la implementación de la arquitectura propuesta. Seguidamente se implemento el software teniendo como componente principal al agente inteligente y se testeo utilizando datos de casos de estudio.
 
Uno de los principales requerimientos de la propuesta fue que se pueda usar el Agente Generador de Perfiles en un entorno futuro en el que interactúe con por lo menos dos agentes más: uno que en base a los estereotipos a los que pertenece un usuario identifique barreras de accesibilidad de un sitio dado; y otro que las suprima, en los casos que sea posible, para obtener un sitio accesible.
 
Como resultado se obtuvo un agente inteligente que evalúa las respuestas del usuario a un cuestionario orientado a detectar discapacidades visuales utilizando herramientas de software libre para el desarrollo del mismo.
 ', 'http://faiweb.uncoma.edu.ar/index.php/784-defensa-de-tesis-de-licenciatura-jeronimo-perfumo', '2016-06-22 18:19:00                                                                                 ', 'cristian.ilabaca@dti.uncoma.edu.ar (Super Usuario)                                                  ', 2, NULL);
INSERT INTO noticia VALUES (9, 'El jueves 7 de julio el Consejo Superior mantendrá la Sexta Reunión Ordinaria.', '
	El próximo jueves 7 de julio, el Consejo Superior de la Universidad Nacional del Comahue mantendrá la 6º Reunión Ordinaria correspondiente a 2016. El horario de inicio es a partir de las 9:00 horas.


	Asimismo, se recuerda que el miércoles 6 de julio al finalizar el trabajo en comisión, se continuará a las 14 horas con la 2º Reunión Extraordinaria de Presupuesto, que pasará a cuarto intermedio el día jueves 23 de junio de 2016.


	Cabe destacar que las comisiones funcionarán el día miércoles 6 de junio, en sus horarios habituales.


	', 'http://prensa.uncoma.edu.ar/index.php/es/8-principal/6169-el-jueves-7-de-julio-el-consejo-superior-mantendra-la-sexta-reunion-ordinaria', '2016-07-05 13:52:40                                                                                 ', 'prensaunco@central.uncoma.edu.ar (Prensa UNCo)                                                      ', 1, NULL);
INSERT INTO noticia VALUES (10, 'Somos lo que tiramos… y cómo lo tiramos... Los residuos sólidos urbanos.', '
	


	Compartimos nota producida desde el proyecto de Voluntariado Universitario “Bariloche Recicla y Separa” (BRS) sobre la producción y tratamiento de la basura en Bariloche.


	¿Qué es la basura? La basura está compuesta por todo aquello descartado en forma permanente por sus consumidores o usuarios. La basura es un subproducto de la actividad humana, que ha existido por muchos siglos, aunque su producción ha aumentado en las últimas décadas, asociada a hábitos y costumbres de la sociedad de consumo. Cuando trasladamos el concepto de basura de una casa a una ciudad, estamos tratando con Residuos Sólidos Urbanos (RSU). Éstos están compuestos por la basura doméstica, comercial e industrial, que se encuentran en distintas proporciones según la actividad económica preponderante de la ciudad. Pero concentrémonos en la basura que se produce en casa, podemos decir que en nuestros hogares descartamos restos procedentes de la limpieza o preparación de los alimentos junto a la comida que sobra, envoltorios y embalajes, y otras cosas que decidimos descartar porque se rompen o han dejado de ser útiles para nosotros. Las decisiones de compra y nuestra modalidad de consumo, influyen en la generación de nuestros propios residuos.


	', 'http://prensa.uncoma.edu.ar/index.php/es/novedades/6168-somos-lo-que-tiramos-y-como-lo-tiramos-los-residuos-solidos-urbanos', '2016-07-05 01:43:38                                                                                 ', 'prensaunco@central.uncoma.edu.ar (Prensa UNCo)                                                      ', 1, NULL);
INSERT INTO noticia VALUES (11, '“Programa mayores de 25 – Ingreso 2017”.', '
	La Secretaría Académica de la Universidad Nacional del Comahue, recuerda que hasta el 7 de julio el corriente año, están abiertas las inscripciones para los exámenes de ingreso al ciclo académico 2017 de nuestra casa de Altos Estudios, destinado a personas Mayores de 25 años sin título secundario.


	Los aspirantes deberán aprobar seis (6) materias, en los exámenes que se realizarán en las siguientes fechas:


	* BIOLOGIA - 02/12/2016


	* MATEMATICA - 05/12/2016


	* FISICA - 07/12/2016


	* LENGUA -12/12/2016


	* CIENCIAS SOCIALES - 14/12/2016


	* QUÍMICA - 16/12/2016


	Los exámenes se tomarán en las sedes de inscripción a partir de las 09:00 hs.


	En la Provincia de Neuquén:


	• San Martín de los Andes


	• Neuquén Capital


	• Zapala


	', 'http://prensa.uncoma.edu.ar/index.php/es/8-principal/6167-programa-mayores-de-25-ingreso-2017', '2016-07-04 17:24:41                                                                                 ', 'prensaunco@central.uncoma.edu.ar (Prensa UNCo)                                                      ', 1, NULL);
INSERT INTO noticia VALUES (12, 'Mesas de examen: Turno Ordinario Julio-Agosto 2016', 'Están disponibles las fechas y horarios de los exámenes del Turno Ordinario Julio-Agosto de 2016 [pdf]

Primer llamado: 26 al 29 de julio (*)
Segundo llamado: 8 al 12 de agosto (*)

(*) Algunas fechas pueden encontrarse fuera de estos periodos cuando las asignaturas son dictadas por otras facultades
Las inscripciones a las mesas estarán disponibles a partir de 5 de julio de 2016
 ', 'http://faiweb.uncoma.edu.ar/index.php/793-mesas-de-examen-turno-ordinario-julio-agosto-2016', '2016-07-04 05:00:00                                                                                 ', 'cristian.ilabaca@dti.uncoma.edu.ar (Super Usuario)                                                  ', 2, NULL);
INSERT INTO noticia VALUES (32, 'Asueto Académico - Administrativo Edificio viejo FAHU ', 'Se informa al personal de la facultad de Humanidades que el día lunes 1 de Agosto no habrá actividades administrativas ni académicas en el edificio viejo de la facultad, dado que se realizaran tareas de mantenimiento relacionadas a conexiones de gas.
Se aclara que esta medida no alcanza a las actividades que se desarrollan en el edificio nuevo y en otras sedes.
 
 
 
 
 

Área de Ausentismo Facultad de Humanidades
Universidad Nacional del Comahue
 ', 'http://fahuweb.uncoma.edu.ar/index.php/administracion/548-asueto-academico-administrativo-edificio-viejo-fahu', '2016-07-29 17:00:17                                                                                 ', 'carolina.robles@dti.uncoma.edu.ar (Carolina Robles)                                                 ', 4, NULL);
INSERT INTO noticia VALUES (13, 'Convenio entre la Facultad de Informática y el Ministerio de Educación de la Provincia del Neuquén', 'El pasado jueves 30 de junio se firmó un Convenio de Colaboración entre la Facultad de Informática de la Universidad Nacional del Comahue y el Ministerio de Educación, con el objetivo de contribuir recíprocamente a la promoción y ejecución de tareas de investigación, transferencia tecnológica, formación de recursos humanos y dictado de temas específicos que resulten de interés para ambas instituciones.
Dicho convenio da marco institucional a una amplia actividad de la Facultad de Informática en su articulación con la Escuela Media y Primaria. En el presente año se encuentran activos los siguientes proyectos de extensión:

Agentes Robots: Construcción de Prototipos en la Escuela Media
Agentes Robots: Vamos a la Escuela
Agentes Robots: Divulgando Computación en la Escuela Media
La Competencia como Eje Motivador para Acercarnos a la Programación
Realidad Aumentada: Recurso Educativo para la Enseñanza en la Educación Primaria

En representación del Ministerio firmó la Sra. Presidenta del Consejo Provincial de Educación, Prof. Stella Mary Ambrosio, y en representación de la Facultad, el Sr. Decano Mg. Claudio Vaucheret. 
Del acto participaron también el Vocal de Rama Inicial y Primaria, Prof. David Franco; la Vocal de Nivel Secundario, Prof. Ruth Flutsch; la Coordinadora de Niveles y Modalidades, Carolina Aichino; el Coordinador de Estrategias Pedagógicas, Prof. Sergio Espósito y el Vicedecano de la Facultad de Informática de la Universidad Nacional del Comahue, Lic. Guillermo Grosso.
', 'http://faiweb.uncoma.edu.ar/index.php/792-convenio-entre-la-facultad-de-informatica-y-el-ministerio-de-educacion-de-la-provincia-del-neuquen', '2016-07-01 21:24:07                                                                                 ', 'contactos@fai.uncoma.edu.ar (Administrador)                                                         ', 2, NULL);
INSERT INTO noticia VALUES (14, 'Curso de formación para docentes de Escuela Media: "La Programación y su Didáctica"', 'La Facultad de Informática, a través de un convenio con la Fundación Manuel Sadosky, dictará el curso de formación “La Programación y su Didáctica”. Esta iniciativa busca contribuir a la formación docente en el campo de la enseñanza de la programación y de las Ciencias de la Computación en la Escuela Media.
La inscripción ya está abierta!
Algunos aspectos a tener en cuenta:



Destinatarios: Docentes de nivel medio. Se dará prioridad a docentes de los espacios curriculares de computación o informática.


Modalidad: Semi-presencial.


Lugar: Junin de los Andes


Carga horaria: 90hs cátedra totales, 70hs cátedra presenciales.


Requisito de asistencia: 80%


Periodo: Agosto a noviembre de 2016. Primer encuentro: 05 y 06 de agosto.Siguientes encuentros (fechas tentativas): 26 y 27 de agosto; 16 y 17 de septiembre; 14 y 15 de octubre; 4 y 5 de noviembre.


Evaluación: con presentación de trabajos y dictado de clases.


Cupo: 70 docentes.


Consultas e inscripciones: Tel. 299-4490300 int. 644, de lunes a viernes de 8:00 a 15:00 hs. Mail: secretaria.extension@fi.uncoma.edu.ar.
 
', 'http://faiweb.uncoma.edu.ar/index.php/791-curso-de-formacion-para-docentes-de-escuela-media-la-programacion-y-su-didactica', '2016-07-01 17:35:00                                                                                 ', 'contactos@fai.uncoma.edu.ar (Administrador)                                                         ', 2, NULL);
INSERT INTO noticia VALUES (15, 'Tres Nuevos Licenciados FaI', 'La comunidad educativa de la FaI anuncia con sumo placer que los estudiantes Jerónimo Perfumo, Santiago Castro y Federico Amigone han presentado y aprobado sus Tesis de Grado, obteniendo el título de Licenciados en Ciencias de la Computación. 
Sus Tesis se titulan:

Jerónimo Perfumo: Generación automática de perfiles estereotipados para usuarios con limitaciones visuales.
Santiago Castro: Extensión a la evaluación estructural y semántica de Servicios Web orientada a la adaptabilidad.
Federico Amigone: Cyclope, Un modelo de gestión de eventos académicos. Desarrollo de una Plataforma Web para la gestión integral y asistida.

¡Felicitaciones Licenciados!  
 



[Ver otras tesis FaI]', 'http://faiweb.uncoma.edu.ar/index.php/790-2015-03-19-18-23-25', '2016-06-29 05:00:00                                                                                 ', 'cristian.ilabaca@dti.uncoma.edu.ar (Super Usuario)                                                  ', 2, NULL);
INSERT INTO noticia VALUES (16, 'El largo proceso de independencia. Reflexiones de los docentes de la Carrera de Historia UNCo Bariloche por el Bicentenario.', '
	


	Estimada Comunidad:
	Compartimos el trabajo realizado por los Docentes de la Carrera de Historia de UNCo Bariloche para reflexionar junto a la comunidad Barilochense algunos disparadores que nos permitan identificar la independencia, no desde el archivo sino como un proceso de altibajos que aún hoy debe disputarse y ponerse en juego. ¿Qué otras revoluciones se solaparon con la independencia del Virreynato? ¿Qué soberanías se planteaban? Y ¿Qué tan federalista fue el federalismo? Son algunos de los puntos que los docentes UNCo comparten.
	Repensando las nociones de pueblo, soberanía y representación a 200 años de nuestra independencia.
	Un reconocido historiador recientemente fallecido, Tulio Halperín Dongui, sostenía que los argentinos sentimos una absoluta fascinación por los números redondos, en especial por los “ceros” y “dobles ceros” y cuando estos se producen en el calendario efemérico, abundan las miradas retrospectivas, los planteos políticos y las reflexiones fecundas. Testigo de la veracidad de esta ponderación fue el despliegue acaecido en el bicentenario de 1810 así como, en esta oportunidad, frente a la conmemoración de la declaración de “Independencia”, ocurrida un 9 de julio de 1816.


	', 'http://prensa.uncoma.edu.ar/index.php/es/novedades/6171-el-largo-proceso-de-independencia-reflexiones-de-los-docentes-de-la-carrera-de-historia-unco-bariloche-por-el-bicentenario', '2016-07-07 23:33:56                                                                                 ', 'prensaunco@central.uncoma.edu.ar (Prensa UNCo)                                                      ', 1, NULL);
INSERT INTO noticia VALUES (17, 'La estación biológica de Puerto Blest en San Carlos de Bariloche va a trabajar en el eje ciencia y turismo.', '
	


	Representantes de la Administración Nacional de Parques Nacionales, el Centro Regional de la Universidad del Comahue (UNCo Bariloche) y Turisur firmaron ayer, martes 5 de julio, un acta complementaria donde se establecen criterios de colaboración mutua para el usufructo de la estación biológica de Puerto Blest.


	El acuerdo tiene por objetivo expresar la relación de cooperación y de mutuo entendimiento para ordenar y facilitar el uso de este espacio de investigación por parte de investigadores, docentes y alumnos de la Universidad Nacional del Comahue Bariloche, así para grupos de investigación de universidades nacionales y extranjeras.


	', 'http://prensa.uncoma.edu.ar/index.php/es/novedades/6170-la-estacion-biologica-de-puerto-blest-en-san-carlos-de-bariloche-va-a-trabajar-en-el-eje-ciencia-y-turismo', '2016-07-06 16:59:05                                                                                 ', 'prensaunco@central.uncoma.edu.ar (Prensa UNCo)                                                      ', 1, NULL);
INSERT INTO noticia VALUES (33, 'Presentación del libro: "La muerte juega a los dados" -', '', 'http://fahuweb.uncoma.edu.ar/index.php/academica/departamentos/dpto-letras/547-presentacion-del-libro-la-muerte-juega-a-los-dados-2', '2016-07-26 18:24:23                                                                                 ', 'carolina.robles@dti.uncoma.edu.ar (Carolina Robles)                                                 ', 4, NULL);
INSERT INTO noticia VALUES (18, 'Aniversario UNCo - Cumplimos 45 años de vida.', '
	


	El 15 de julio de 1971, el poder ejecutivo nacional sancionó y promulgó, la ley 19.117; por la cual se crea la Universidad Nacional del Comahue. Así se cumplía una de las más sentidas aspiraciones de la comunidad regional como era la culminación de un largo proceso que transitó por diversos y laboriosos caminos.


	El 15 de marzo de 1972, comenzó el primer ciclo lectivo en el nuevo complejo educativo. No se trataba de poner en marcha una casa de estudios superiores, siguiendo los lineamientos formales de las que ya funcionaban en el país, sino que se tomaba como base la experiencia de la Universidad Provincial de Neuquén y los Institutos de Río Negro, que ya habían formado varias promociones de egresados. La historia de la Universidad no ha sido fácil ni ajena a los tiempos que le tocó vivir a nuestra Argentina. Su crecimiento está íntimamente vinculado con el desarrollo de las provincias a las cuales básicamente sirve. La Universidad está físicamente asentada en dos territorios con historias equivalentes, configurados en una sola unidad humana, social y cultural. -


	', 'http://prensa.uncoma.edu.ar/index.php/es/novedades/6176-aniversario-unco-cumplimos-45-anos-de-vida', '2016-07-14 15:24:54                                                                                 ', 'prensaunco@central.uncoma.edu.ar (Prensa UNCo)                                                      ', 1, NULL);
INSERT INTO noticia VALUES (19, 'Para el verano estará en uso la nueva cancha de hockey en la UNCo.', '
	


	Por la mañana del lunes 11 de julio el rector de la Universidad Nacional del Comahue, Gustavo Crisafulli recibió al gobernador del Neuquén, Omar Gutiérrez para recorrer el campus universitario y se firmó un convenio para finalizar las obras de infraestructura deportiva que se ejecutan en el predio de la Universidad Nacional del Comahue.


	Acompaño al gobernador el subsecretario de Juventud y Deporte, Luis Sánchez junto al Subsecretario de Gobierno y Justicia de la provincia del Neuquén, Juan Pablo Prezzoli, en tanto que por la UNCo participaron el Secretario General, Ing. Atilio Sguazzini Mazuel y el Secretario de Planeamiento y Desarrollo Institucional, contador Eduardo Mutchinick.


	Se estima que para septiembre las instalaciones estarán disponibles para la práctica de hockey, en tanto que las obras anexas como los vestuarios y el playón deportivo, se extenderán durante el receso de verano de la casa de altos estudios. De esta forma la provincia invertirá un monto de 1,5 millones de pesos para completar la infraestructura que demandó un total cercano a los seis millones.


	', 'http://prensa.uncoma.edu.ar/index.php/es/novedades/6175-para-el-verano-estara-en-uso-la-nueva-cancha-de-hockey-en-la-unco', '2016-07-12 16:03:12                                                                                 ', 'prensaunco@central.uncoma.edu.ar (Prensa UNCo)                                                      ', 1, NULL);
INSERT INTO noticia VALUES (20, 'Autoridades de la provincia del Neuquén se interiorizaron de las obras por terminar en la Facultad de Economía y Administración de la UNCo. ', '
	


	El Subsecretario de Gobierno y Justicia de la provincia del Neuquén, Juan Pablo Prezzoli recorrió las instalaciones de la Facultad de Economía y Administración de la Universidad Nacional del Comahue junto al rector, Lic. Gustavo Crisafulli, el decano Pablo Alá Rúe, el   Secretario General, Ing. Atilio Sguazzini Mazuel, el Secretario de Planeamiento y Desarrollo Institucional, contador Eduardo Mutchinick y demás autoridades de la casa de altos estudios con el objetivo de interiorizarse de las obras que faltan por terminar para habilitar las nuevas aulas e instalaciones de la facultad.

', 'http://prensa.uncoma.edu.ar/index.php/es/8-principal/6174-autoridades-de-la-provincia-del-neuquen-se-interiorizaron-de-las-obras-por-terminar-en-la-facultad-de-economia-y-administracion-de-la-unco', '2016-07-12 15:56:08                                                                                 ', 'prensaunco@central.uncoma.edu.ar (Prensa UNCo)                                                      ', 1, NULL);
INSERT INTO noticia VALUES (21, 'III Taller Regional sobre Rehabilitación y Restauración en la Diagonal Árida de la Argentina.', '
	


	El Laboratorio de Rehabilitación y Restauración de Ecosistemas Áridos (LARREA) perteneciente a la Facultad de Ciencias del Ambiente y la Salud (FACIAS) convoca como parte del comité organizador a todos los interesados a participar del III Taller Regional sobre Rehabilitación y Restauración en la Diagonal Árida de la Argentina los días. 27 y 28 de octubre de 2016 en Puerto Madryn, Chubut, Patagonia Argentina.


	El primer Taller se realizó en Neuquén en el año 2011, organizado conjuntamente por el Dr. Daniel Pérez director del LARREA y los integrantes de este grupo de investigación y transferencia en conjunto con el Instituto Nacional de Tecnología Agropecuaria (INTA) y el Instituto Argentino de Investigación en Zonas Áridas (IADIZA-Conicet) en el aula magna de la Universidad Nacional del Comahue (Neuquén).


	 


	En ese año el evento tuvo un notable éxito de participación y con 250 asistentes entre los que se contaron investigadores, comunidades rurales, funcionarios de la gestión pública ambiental, estudiantes de posgrado y de grado de la Argentina. Uno de los productos fue el libro “Restauración Ecológica en la diagonal árida de la Argentina" editado por Vázquez Mazzini eds. que es una referencia nacional en el tema.


	', 'http://prensa.uncoma.edu.ar/index.php/es/novedades/6177-iii-taller-regional-sobre-rehabilitacion-y-restauracion-en-la-diagonal-arida-de-la-argentina', '2016-07-20 00:47:09                                                                                 ', 'prensaunco@central.uncoma.edu.ar (Prensa UNCo)                                                      ', 1, NULL);
INSERT INTO noticia VALUES (22, 'Mañana la Dra. Adriana Puiggrós abrirá las XIX Jornadas Argentinas de Historia de la Educación.  ', '
	


	La Doctora Puiggrós estará en la ciudad de Cipolletti, mañana miércoles 3 de agosto a las 14 horas en el Aula Mayor de la Facultad de Ciencias de la Educación. Sita en calle Yrigoyen 2000.


	El Grupo de Investigación y cátedras de Historia de la Educación de la Facultad de Ciencias de la Educación de la Universidad Nacional del Comahue y la Sociedad Argentina de Historia de la Educación invitan a participar de las XIX Jornadas Argentinas de Historia de la Educación “Emancipación, libertades y desafíos. La construcción/ deconstrucción del campo educativo en 200 años de historia” que tendrán como sede la Facultad de Ciencias de la Educación de dicha universidad durante el 3, 4 y 5 de agosto del corriente año.


	', 'http://prensa.uncoma.edu.ar/index.php/es/novedades/6190-manana-la-dra-adriana-puiggros-abrira-las-xix-jornadas-argentinas-de-historia-de-la-educacion', '2016-08-02 16:02:39                                                                                 ', 'prensaunco@central.uncoma.edu.ar (Prensa UNCo)                                                      ', 1, NULL);
INSERT INTO noticia VALUES (34, 'Taller para Ingresantes 2016', '', 'http://fahuweb.uncoma.edu.ar/index.php/ingreso/544-taller-para-ingresantes-2016', '2016-07-26 16:46:25                                                                                 ', 'carolina.robles@dti.uncoma.edu.ar (Carolina Robles)                                                 ', 4, NULL);
INSERT INTO noticia VALUES (40, 'Ciclo de Cine, Literatura y Dictadura. Ciencias Morales y La mirada invisible', 'Septiembre 2016
Ciclo de Cine, Literatura y Dictadura. Ciencias Morales y La mirada invisible
La Memoria no se ajusta, no se la persigue. La Memoria es nuestra. A 40 años del Golpe Cívico, Militar y Eclesiástico en Argentina en el contexto de las Dictaduras del Cono Sur.
 
    La Secretaría de Extensión de la Facultad de Humanidades, la Mutual del Trabajador de la Educación de Neuquén (MUTEN) en colaboración con el Centro de Estudios Críticos e Históricos de Literatura Argentina (E.C.E.H.L.A.) organizó durante octubre del 2015 el lanzamiento del ciclo de Cine y Literatura con la proyección de “Aballay, el hombre sin miedo” dirigido por Fernando Spiner y basado en el cuento de Antonio Di Benedetto “Aballay, el hombre sin miedo”. Para el lanzamiento del ciclo contamos con la presencia del director de la película, Fernando Spiner.
    Este año y en el marco de los 40 años del Golpe Cívico, Militar y Eclesiástico entre los organizadores del ciclo de Cine y Literatura decidimos proyectar la película
    “La mirada invisible” dirigida por Diego Lerman, basada en la novela “Ciencias Morales” del escritor argentino Martín Kohan.
    La proyección de la película se hará en la Casa de la Cultura de Centenario el jueves 29 de septiembre a las 19 horas, ingreso gratuito. Contaremos con la presencia del escritor Martín Kohan quien vendrá exclusivamente para la ocasión.
    La actividad cultural lleva por título: “Ciclo de Cine, Literatura y Dictadura. Ciencias Morales y La mirada invisible” a realizarse el 29 de septiembre en la Casa de la Cultura de Centenario. Esta propuesta cultural está destinada al público en general.
   Este año, docentes del departamento de Letras e integrantes del Centro de Estudios Críticos e Históricos de Literatura Argentina (E.C.E.H.L.A.), Lic. Rocío Fit, Prof. Carlos Duarte y Branco Ruiz, elaboraron una guía destinada para que docentes puedan abordar la temática en el nivel medio, terciario y universitario sobre la relación entre literatura, dictadura y cine.
 
Los propósitos específico que se ofrecen por segundo año consecutivo en el “Ciclo de Cine, Literatura y Dictadura. Ciencias Morales y La mirada invisible” son:
          •     Promover el desarrollo del conocimiento crítico sobre la última dictadura en los estudiantes de escuelas medias a partir de su acercamiento con la literatura y el cine argentinos.
           •     Incentivar la lectura crítica de la literatura en su relación con la historia nacional reciente y con otros discursos como el cinematográfico, el periodístico, el filosófico.
           •     Reflexionar sobre los modos en que actuó la última dictadura militar en las escuelas, sus restos en la escuela del presente y las construcciones de la escuela del futuro.           •     Posibilitar el encuentro y el diálogo entre los y las estudiantes con los autores de las obras literarias trabajadas en la escuela.
 
Los ejes que se proponen para que los docentes puedan trabajar en las escuelas son cinco:
         1. Los silencios del texto
         2. Perspectivas narrativas: retóricas del deber Los modos de la mirada: filosofía y ficción
         3. Literatura y cine.
         4. Producción de cortos.
         5. Diálogos con el escritor.
   



 A los docentes interesados en acceder a la guía pedagógica deben escribir a: humanidadesco2@gmail.com
Los datos que deben enviar para poder recibir la Guía Completa son: Nombre completo, Institución a la que representa, correo electrónico, celular, nivel (medio, terciario o universitario).





 
 
Organizan:
 * Secretaría de Extensión de la Facultad de Humanidades de la Universidad Nacional del Comahue,
 *  Centro de Estudios Críticos e Históricos de Literatura argentina (E.C.E.H.L.A.), Departamento de Letras, Facultad de Humanidades de la Universidad Nacional del Comahue,
 * Departamento de Letras, Facultad de Humanidades,
 * Mutual del Trabajador de la Educación de Neuquén (MUTEN),
 * Comisión Memoria Colectiva de la Universidad Nacional del Comahue,
 * Biblioteca Popular Jorge Fonseca de Centenario,
 * Secretaría de Cultura de la Municipalidad de Centenario y,
 * Proyecto de Extensión "Literatura, cine e historieta", Instituto de Formación Docente N°9, Centenario.', 'http://fahuweb.uncoma.edu.ar/index.php/extension/noticias/536-ciclo-de-cine-literatura-y-dictadura-ciencias-morales-y-la-mirada-invisible', '2016-07-06 19:19:34                                                                                 ', 'carolina.robles@dti.uncoma.edu.ar (Carolina Robles)                                                 ', 4, NULL);
INSERT INTO noticia VALUES (23, 'El jueves 4 de agosto el Consejo Superior de la UNCo mantendrá la Séptima Reunión Ordinaria.', '
	El próximo jueves 4 de agosto, el Consejo Superior de la Universidad Nacional del Comahue mantendrá la 7º Reunión Ordinaria correspondiente a 2016. El horario de inicio es a partir de las 9:00 horas.


	Cabe destacar que las comisiones funcionarán el día miércoles 3 de agosto, en sus horarios habituales.


	Comisión de Interpretación y Reglamento: 9:00 horas (horario de inicio)


	Comisión de Investigación y Extensión: 10:00 horas (hora de inicio)


	Comisión de Presupuesto y Administración: 11:00 horas (hora de inicio)


	Comisión de Docencia y Asuntos Estudiantiles: 12:00 horas (hora de inicio)


	Comisión de Beneficios Estudiantiles: 13:00 horas (hora de inicio)


	Comisión Ad-Hoc Sergio Avalos: 15:00 horas (hora de inicio)


	 


	Orden del día{phocadownload view=file|id=31|target=s}


	{phocadownload view=file|id=32|target=s}
', 'http://prensa.uncoma.edu.ar/index.php/es/8-principal/6189-el-jueves-4-de-agosto-el-consejo-superior-de-la-unco-mantendra-la-septima-reunion-ordinaria', '2016-08-02 15:40:45                                                                                 ', 'prensaunco@central.uncoma.edu.ar (Prensa UNCo)                                                      ', 1, NULL);
INSERT INTO noticia VALUES (24, 'Dictarán en la UNCo capacitación en San Martín de los Andes para guías de mountain bike.', '
	


	El curso de capacitación para Guías de Mountain Bike a dictarse en San Martín de los Andes por la Facultad de Turismo de la Universidad del Comahue, cuenta con el apoyo de la Subsecretaría de Turismo de la Provincia del Neuquén y tiene como objetivo capacitar a futuros y actuales prestadores de esta actividad de turismo aventura. El mismo, estará a cargo de expertos en la temática de la zona y docentes de la Facultad de Turismo sede San Martín de los Andes. Cuenta con el aval de Parque Nacional Lanín y la Secretaria de Turismo de San Martín de los Andes.


	La Facultad de Turismo de la Universidad del Comahue, informó que se encuentra abierta la inscripción para el Programa de Capacitación para Guías de Mountain Bike que se dictará en la Ciudad de San Martín de los Andes. El mismo cuenta con el financiamiento de La Subsecretaría de Turismo de la Provincia del Neuquén, a través de su Dirección General de Formación y Calidad. La presente propuesta de capacitación con cupos limitados y de carácter gratuito, comenzará el próximo viernes 19 de agosto y tendrá una duración de tres meses con encuentros quincenales.


	', 'http://prensa.uncoma.edu.ar/index.php/es/8-principal/6188-dictaran-en-la-unco-capacitacion-en-san-martin-de-los-andes-para-guias-de-mountain-bike', '2016-08-01 21:07:43                                                                                 ', 'prensaunco@central.uncoma.edu.ar (Prensa UNCo)                                                      ', 1, NULL);
INSERT INTO noticia VALUES (25, 'TecNap 2016 - SOCIALTHON', 'Los días 23 y 24 de Agosto de 2016, en el Espacio Duam, se llevará a cabo el evento "Socialthon: ideas para resolver problemas sociales". Es un Hackathon que promueve, a través del trabajo en equipo, esbozar ideas innovadoras y diseñar y desarrollar colectivamente proyectos que resuelvan problemas sociales, mejoren la calidad de vida de las personas, brinden más oportunidades, más autonomía y mayor independencia y agreguen valor a la comunidad de pertenencia.
Este evento fue declarado de Interés Educativo por Resolución Decanal FaI Nº 183
Consultas e inscripciones: cherzel@neuquen.gov.ar
Nº 183', 'http://faiweb.uncoma.edu.ar/index.php/802-tecnap-2016-socialthon', '2016-08-02 18:14:22                                                                                 ', 'contactos@fai.uncoma.edu.ar (Administrador)                                                         ', 2, NULL);
INSERT INTO noticia VALUES (26, 'Training Camp 2016 en la FaI', 'Del 18 al 29 de julio se está desarrollando en nuestra facultad, el Training Camp Argentina 2016. 
La Facultad de Informática es la anfitriona y responsable de la organización del evento, que cuenta con el apoyo de la Universidad Nacional del Comahue, el Gobierno de la Provincia de Neuquén, la Fundación Sadosky y la empresa Medallia.. Del mismo participan estudiantes de carreras de informática y afines, de universidades de Argentina, Bolivia, Colombia, Perú y Venezuela. 
Este tipo de evento es un entrenamiento intensivo de dos semanas, con clases teóricas durante la mañana y sesiones de práctica y simulaciones de competencias por la tarde. La capacitación está a cargo de docentes de universidades argentinas que participan como entrenadores y que han sido integrantes de equipos en competencias mundiales de programación. 
Las competencias de programación consisten en resolver problemas, utilizando razonamientos de lógica y matemática, como así también algorítmicos. Luego, la solución debe ser implementada mediante un lenguaje de programación, y se evalúa dicha solución contra un conjunto de casos de prueba que juzgan automáticamente (y en vivo) si esta es correcta o no. Se forman equipos de hasta tres integrantes que compiten, en el mismo momento en distintas sedes, resolviendo un conjunto de alrededor de diez problemas, con una sola computadora por equipo y en un plazo de cinco horas.
 


[ Ver más fotos ]
', 'http://faiweb.uncoma.edu.ar/index.php/798-training-camp-2016-en-la-fai', '2016-07-27 23:00:39                                                                                 ', 'contactos@fai.uncoma.edu.ar (Administrador)                                                         ', 2, NULL);
INSERT INTO noticia VALUES (27, 'Primer Jornada de Prevención Bucal', 'El día 09 de agosto de 2016, a las 16:30 hs, en el Salón Azul de la Biblioteca Central se llevará a cabo una jornada de cuidados y prevención de salud bucal. La misma está organizada por el Centro de Estudiantes de la Facultad de Informática y su disertante es el odontólogo José Rafael Vargas, residente interno en el Servicio de Cirugía y Traumatología Buco-Maxilo-Facial del Hospital San Roque de Gonnet  de la ciudad de La Plata.
La actividad es gratuita. Por consultas en inscripciones comunicarse a cefai@fi.uncoma.edu.ar
', 'http://faiweb.uncoma.edu.ar/index.php/799-primer-jornada-de-prevencion-bucal', '2016-07-27 23:00:03                                                                                 ', 'contactos@fai.uncoma.edu.ar (Administrador)                                                         ', 2, NULL);
INSERT INTO noticia VALUES (28, 'Concurso Interino (Departamento de Teoría de la Computación)', 'Llamado a inscripción a Concurso Interino para cubrir:

1 (un) cargo de AYUDANTE DE PRIMERA con dedicación SIMPLE para el Departamento de Teoría de la Computación, Area Fundamentos Teóricos, Orientación Teoría e Implementación de Lenguajes.

', 'http://faiweb.uncoma.edu.ar/index.php/797-concurso-interino-departamento-de-teoria-de-la-computacion-2', '2016-07-27 23:00:00                                                                                 ', 'cristian.ilabaca@dti.uncoma.edu.ar (Super Usuario)                                                  ', 2, NULL);
INSERT INTO noticia VALUES (29, 'Nueva Carrera', '
	

	Mas Información en: 

	http://faeaweb.uncoma.edu.ar/index.php/academica/carreras-de-posgrado
', 'http://faeaweb.uncoma.edu.ar/index.php/hrs/359-nueva-carrera', '2016-07-28 15:37:07                                                                                 ', 'paula.espinosa@faea.uncoma.edu.ar (Paula Espinosa)                                                  ', 3, NULL);
INSERT INTO noticia VALUES (30, '¿En tu casa te distraes?', '
	
', 'http://faeaweb.uncoma.edu.ar/index.php/76-novedades-principal/274-en-tu-casa-te-distraes', '2015-04-17 21:12:04                                                                                 ', 'cristian.ilabaca@dti.uncoma.edu.ar (Super Usuario)                                                  ', 3, NULL);
INSERT INTO noticia VALUES (35, 'Programa del IX Congreso Internacional de Minificción', '
Entre los días 26 y 28 de julio de 2016, se efectuará en nuestra Universidad Nacional del Comahue (Patagonia – Argentina) el IX Congreso Internacional de Minificción, organizado por el Centro Patagónico de Estudios Latinoamericanos, el proyecto de investigación "Espacio, palabra y escritura en la literatura actual del sur de Chile y Argentina" (04/H157) y la Cátedra libre de literatura patagónica "David Lagmanovich" de la Facultad de Humanidades, Universidad Nacional del Comahue.
 LINK: Programa IX Congreso Internacional de Minificción

 
Secretaría de Extensión de la Facultad de Humanidades
Universidad Nacional del Comahue', 'http://fahuweb.uncoma.edu.ar/index.php/extension/noticias/543-programa-del-ix-congreso-internacional-de-minificcion', '2016-07-26 16:30:04                                                                                 ', 'carolina.robles@dti.uncoma.edu.ar (Carolina Robles)                                                 ', 4, NULL);
INSERT INTO noticia VALUES (36, 'Declararon de Interés Educativo y Cultural el IX Congreso Internacional de Minificción', 'Declararon de Interés Educativo y Cultural el IX Congreso Internacional de Minificción “La Minificción hoy: balances y perspectivas”
Queremos informarles dos buenas noticias. La Legislatura de la Provincia de Neuquén Declaró de Interés Cultural N° 1881/16 y la Legislatura de la Provincia Río Negro lo Declaró de Interés Educativo y Cultural N° 141/16 el IX Congreso Internacional de Minificción “La Minificción hoy: balances y perspectivas” a realizarse en la Universidad Nacional del Comahue los días 26, 27 y 28 de julio de este este año. Agradecemos el reconocimiento a ambas Legislatura.

Lic. Marcos Muñoz
Secretaría de Extensión de la Facultad de Humanidades
Universidad Nacional del Comahue', 'http://fahuweb.uncoma.edu.ar/index.php/extension/noticias/542-declararon-de-interes-educativo-y-cultural-el-ix-congreso-internacional-de-minificcion', '2016-07-26 15:54:53                                                                                 ', 'carolina.robles@dti.uncoma.edu.ar (Carolina Robles)                                                 ', 4, NULL);
INSERT INTO noticia VALUES (37, 'Convocatorias 2016 -2017', '
CRONOGRAMA SECRETARÍA DE CIENCIA Y TÉCNICA 2016 - 2017
PROYECTOS Y PROGRAMAS 
el día 02/06/2016 se aprobo la nueva reglamentación por Consejo Superior: 
LINK: Ordenanza N° 0602 - 2016 - Reglamentación de Proyectos de Investigación.
Consultar en esta Secretaría sobre los requisitos recientemente aprobados.
Convocatoria Presentacion de Nuevos Proyectos o Programas 2017: Hasta el 22 de septiembre de 2016
Presentación de Informes Finales: Hasta el 22 de septiembre de 2016 en las Unidades Académicas. 
 
BECAS INTERNAS DE INVESTIGACIÓN - CONCURSO 2017
Ordenanza de reglamentación del Programa de Becas de Iniciación en la Investigación para Estudiantes de la Universidad Nacional del Comahue: Se aprobó la nueva reglamentación por el Consejo Superior en su reunión del día 02/06/2016. La misma se encuentra pendiente de numeración y a la brevedad estará disponible en esta página web.
Consultar en esta Secretaría sobre los requisitos recientemente aprobados.
-----------------------------------------------------------
Nueva Ordenanza de reglamentación del Porgrama de Becas de Investigación de la Universidad Nacional del Comahue para Graduados de Iniciación y Graduados de Perfeccionamiento, pendiente de tratamiento en el Consejo Superior. 
 
Consultar en esta Secretaría sobre los requesitos propuestos por el Consejo de Ciencia y Técnica de la UNCo.
 
Concurso Anual (nuevas presentaciones): desde el 23 de septiembre y hasta el 11 de octubre de 2016 en las Unidades Académicas.
 
Presentación de Información Finales:
     • Becarios que se presentan a concurso: desde el 23 de septiembre y hasta el 11 de octubre de 2016 en las Unidades Académicas.
     • Becarios que no se presentan a concurso: hasta el 22 de febrero de 2017 inclusive, en las Unidades Académicas.
 
Presentación de Informes de Avance: desde el 23 de septiembre y hasta el 11 de octubre de 2016 en las Unidades Académicas.
 

Secretaría de Ciencia y Técnica de la Facultad de Humanidades
Universidad Nacional Del Comahue
email: secretaria.investigacion@fahu.uncoma.edu.ar
teléfono: 0299-4490300 Int. 606', 'http://fahuweb.uncoma.edu.ar/index.php/investigacion/convocatorias/537-convocatorias-2016-2017', '2016-07-24 15:25:00                                                                                 ', 'carolina.robles@dti.uncoma.edu.ar (Carolina Robles)                                                 ', 4, NULL);
INSERT INTO noticia VALUES (38, 'Maestría en Estudios de las Mujeres y de Género', '
 
Maestría en Estudios de las Mujeres y de Género de la Facultad de Humanidades de la Universidad Nacional del Comahue
Ordenanza Nº 0144/14 del Consejo Superior. Acta Nº 439/2016 de la Comisión Nacional de Evaluación y Acreditación Universitaria
La Maestría tiene como propósito fundamental formar maestrandxs en el campo de los estudios de las mujeres y de género desde una perspectiva teórica interdisciplinaria, a la vez que formar calificadxs profesionales para desempeñarse en instituciones públicas y privadas.
INICIO PROGRAMADO: Septiembre
DESTINADA A: Egresadxs con título universitario de grado o título terciario (carrera no menor de cuatro años).
PLAN DE ESTUDIO estructurado y presencial. Total 740 horas:
- Seminarios básicos: 300 horas.
- Seminarios teórico-metodológicos: 120 horas.
- Seminarios de formación específica: 160 horas.
- Elaboración de Tesis: 160 horas.
PRE INSCRIPCIÓN 2016 del lunes 1 al 5 de agosto, por correo electrónico a la dirección: maestria.genero@fahu.uncoma.edu.ar
Solicitar formulario de preincripción (LINK), completarlo y adjuntar Curriculum vitae actualizado con carácter de declaración jurada.
Cada preinscriptx tendrá una entrevista orientativa y de admisión con el Comité Académico de la carrera los días 17, 18 o 19 de agosto, en horario que será debidamente comunicado.
ARANCELES:
Matrícula única: $ 1.150
24 cuotas mensuales de $ 550 (actualizada anualmente)
El personal docente de la Universidad Nacional del Comahue queda comprendido en el Art. 26 del Convenio Colectivo de Trabajo.
INFORMES (desde el 25 de julio): +54 0299 4490300 (interno 670) o a maestria.genero@fahu.uncoma.edu.ar
 ', 'http://fahuweb.uncoma.edu.ar/index.php/posgrado/539-maestria-en-estudios-de-las-mujeres-y-de-genero', '2016-07-07 22:03:48                                                                                 ', 'carolina.robles@dti.uncoma.edu.ar (Carolina Robles)                                                 ', 4, NULL);
INSERT INTO noticia VALUES (39, 'Doctorado en Historia', '
Doctorado en Historia de la Facultad de Humanidades de la Universidad Nacional del Comahue
Ordenanza Nº 0206/15 del Consejo Superior. Acta Nº 434 de la Comisión Nacional de Evaluación y Acreditación Universitaria
El Doctorado pretende formar investigadores de excelencia que impulsen y desarrollen la investigación científica. La tarea fundamental del dotorando/a es la realización de un trabajo que signifique una contribución original para el área del conocimiento elegida.
INICIO PROGRAMADO: Octubre.
DESTINADO A: Egresados con título universitario de grado (carrera no menor de cuatro años) afin a la carrera que aspira.
PLAN DE ESTUDIO: semi estructurado y presencial. Total 300 horas (30 créditos):
- Seminarios electivos: 200 horas (20 créditos).
- Seminario de Metodología de la investigación: 40 horas (4 créditos).
- Taller de tesis: 60 horas (6 créditos).
- Tesis de Doctorado de carácter individual que signifique un aporte original en el campo elegido.
PRE INSCRIPCIÓN 2016 del lunes 1 al 10 de agosto, por correo electrónico a la dirección: doctorado.historia@fahu.uncoma.edu.ar.
Solicitar formulario de preincripción (LINK), completarlo y adjuntar Curriculum vitae actualizado con carácter de declaración jurada.
Cada preinscripto tendrá una entrevista orientativa y de admisión con el Comité Académico de la Carrera los días 18 o 19 de agosto, en horario que será debidamente comunicado.
ARANCELES:
Matrícula: $ 1550
Valor por seminario (actualizado semestralmente): $ 850
El personal docente de la Universidad Nacional del Comahue queda comprendido en el Art. 26 del Convenio Colectivo de Trabajo.
INFORMES (desde el 25 de julio): +54 0299 4490300 (interno 670) o a doctorado.historia@fahu.uncoma.edu.ar', 'http://fahuweb.uncoma.edu.ar/index.php/posgrado/538-doctorado-en-historia', '2016-07-07 21:52:20                                                                                 ', 'carolina.robles@dti.uncoma.edu.ar (Carolina Robles)                                                 ', 4, NULL);
INSERT INTO noticia VALUES (41, 'Curso de español para extranjeros', '', 'http://fahuweb.uncoma.edu.ar/index.php/relaciones-internacionales-fahu/535-curso-de-espanol-para-extranjeros', '2016-07-01 19:02:09                                                                                 ', 'carolina.robles@dti.uncoma.edu.ar (Carolina Robles)                                                 ', 4, NULL);
INSERT INTO noticia VALUES (42, 'IX Congreso Internacional de Minificción Julio 2016', '
Facultad de Humanidades
Secretaría de Extensión
Neuquén, 29 de junio de 2016.-
Entre los días 26 y 28 de julio de 2016, se efectuará en nuestra Universidad Nacional del Comahue (Patagonia – Argentina)el IX Congreso Internacional de Minificción, organizado por el Centro Patagónico de Estudios Latinoamericanos, el proyecto de investigación "Espacio, palabra y escritura en la literatura actual del sur de Chile y Argentina" (04/H157) y la Cátedra libre de literatura patagónica "David Lagmanovich" de la Facultad de Humanidades, Universidad Nacional del Comahue.
En este contexto, desde la Secretaría de Extensión de la Facultad de Humanidades me encuentro gestionando ante la Legislatura de la Provincia de Neuquén como de Río Negro, la Declaración de Interés Cultural del IX Congreso Internacional de Minificción a desarrollarse el 26, 27 y 28 de julio en dicha nuestra Universidad. 
La respuesta de ambas Legislaturas ha sido y es de gran compromiso ante el destacado evento de carácter internacional que viviremos en las próximas semanas en el Alto Valle. Por lo tanto, la Declaración de Interés Cultura ante los Gobierno de ambas provincia se encuentra por muy buen camino. En este sentido, aspiramos a que en los próximos diez días contar con ambas Declaraciones.
Cordialmente
Lic. Marcos Muñoz
Secretaría de Extensión de la Facultad de Humanidades
Universidad Nacional del Comahue', 'http://fahuweb.uncoma.edu.ar/index.php/extension/noticias/534-ix-congreso-internacional-de-minificcion-julio-2016', '2016-07-01 16:10:07                                                                                 ', 'carolina.robles@dti.uncoma.edu.ar (Carolina Robles)                                                 ', 4, NULL);
INSERT INTO noticia VALUES (43, 'Programa de Movilidad Internacional para estudiantes de Grado de la UNCo - Modificado', '
Bases y Condiciones (link) y formulario (link) para la postulación.
"Atención, se agregaron nuevos convenios para la postulación, ingresar aquí (link)
Para mayor información escribir a: internacionales.humanidades@fahu.uncoma.edu.ar', 'http://fahuweb.uncoma.edu.ar/index.php/relaciones-internacionales-fahu/532-programa-de-movilidad-internacional-para-estudiantes-de-grado-de-la-unco', '2016-06-28 19:52:21                                                                                 ', 'carolina.robles@dti.uncoma.edu.ar (Carolina Robles)                                                 ', 4, NULL);
INSERT INTO noticia VALUES (44, 'Ciclo Conversatorio: Cine e historieta para vernos y pensarnos. Homenaje a Leonardo Favio', ' 
Bicentenario recargado (ciclos de pensamiento, cultura y cine argentino)
Presenta:
Ciclo Conversatorio: Cine e historieta para vernos y pensarnos.
Homenaje a Leonardo Favio

En el marco del Bicentenario de la Independencia, los integrantes del Proyecto de Extensión “Perfeccionamiento docente y extensión cultural a través del cine argentino. Una articulación entre áreas disciplinares, instituciones educativas y participación ciudadana”, dirigido por Raúl Cadús, docente de la facultad de Humanidades, presentan: El Ciclo-conversatorio está dirigido al público en general y consta de cuatro jornadas a desarrollarse en el Aula Magna de la Universidad Nacional del Comahue. Durante las primeras tres jornadas se proyectarán tres filmes de Leonardo Favio, conformándose –tras cada proyección- un panel para el debate y la conversación sobre la temática propuesta. Luego de una breve exposición se hará lugar a la participación del público, siendo éste un momento fundamental de acuerdo con el espíritu del Ciclo.
Durante la cuarta jornada tendrá lugar el espacio Bicentenario recargado invita a la Historieta Argentina, dedicado a la historieta de contenido social y político de nuestro país, consistente en una muestra que presenta un recorrido por las producciones de destacados autores regionales y nacionales, culminando en un panel con la intervención de Chelo Candia y de José Massaroli. A continuación se realizará la presentación de la Revista Aquelarre, y un cierre a cargo de los integrantes y participantes de Bicentenario Recargado.
El Ciclo Conversatorio Cine e historieta para vernos y pensarnos. Homenaje a Leonardo Favio es organizado por la Secretaría de Extensión de la Facultad de Humanidades de la UNCo, y cuenta con la colaboración de la Secretaría de Extensión de la UNCo, la Secretaría de Formación de ATEN, Seccional Capital, y el auspicio de la Secretaría de DDHH de la Provincia de Neuquén.
Asimismo, deben destacarse la participación y acompañamiento de otras instituciones, como el I.S.F.D. N° 9, la Biblioteca Popular Jorge Fonseca, ambas de la Ciudad de Centenario, la Secretaría de Cultura de la Municipalidad de Centenario, ATEN Seccional Provincial, ATEN Seccional Centenario, así como también del Centro de Estudios en Filosofía de la Cultura (UNCo).
Programa
Jueves 1 de septiembre: Nazareno Cruz y el lobo (1975) De la leyenda al drama: encrucijadas de la cultura popular y la cultura de masas en la elaboración simbólica de la realidad.
Viernes 2 de septiembre: Aniceto (2007) Devenir afectivo, devenir cuerpo, devenir arte: una transfiguración estética de la insoportable levedad de ser.
Jueves 8 de septiembre: Juan Moreira (1973) La épica en los márgenes de la historia oficial. De la literatura al cine: travelling de la cultura popular por la realidad social. 
Estos tres encuentros se desarrollarán de 19:00 a 22:00 hs.
Viernes 9 de septiembre: Jornada de cierre de Bicentenario recargado. 
15:00: Apertura del espacio Bicentenario Recargado invita a la Historieta Argentina, con una muestra de producciones e itinerarios representativos en el Hall Central del Aula Magna de la Universidad Nacional del Comahue. Recepción de instituciones educativas participantes.
16:00: Panel sobre historieta argentina de contenido social y político, con la participación de José Massaroli, Chelo Candia, y otros representantes a nivel regional.
17:00: Receso
17:30: Presentación de la Revista Aquelarre.
18:00: Panel de cierre de los integrantes y participantes de Bicentenario Recargado sobre el cine nacional, la cultura popular y sus representaciones, a la luz de estos seis años de trayectoria.
19:00 Cierre y brindis
Entrada libre y gratuita
Aula Magna Salvador Allende – Universidad Nacional del Comahue
http://fahuweb.uncoma.edu.ar/index.php
Consultas en Facebook: Bicentenario Recargado.
', 'http://fahuweb.uncoma.edu.ar/index.php/extension/noticias/530-ciclo-conversatorio-cine-e-historieta-para-vernos-y-pensarnos-homenaje-a-leonardo-favio', '2016-06-28 16:48:10                                                                                 ', 'carolina.robles@dti.uncoma.edu.ar (Carolina Robles)                                                 ', 4, NULL);
INSERT INTO noticia VALUES (45, 'Curso de Extensión El cine y la historieta en el aula', 'Curso de Extensión
El cine y la historieta en el aula
En el marco del Proyecto de Extensión “Perfeccionamiento docente y extensión cultural a través del cine argentino. Una articulación entre áreas disciplinares, instituciones educativas y participación ciudadana”, dirigido por Raúl Cadús, docente de la facultad de Humanidades, se dicta el curso de extensión “EL cine y la historieta en el aula” en el mes de septiembre. 
El dictado del curso estará a cargo del Dr. Raúl Cadús y el Especialista Daniel Bagnat. Esta propuesta extensionista pensó como público destinatario a docentes de todos los niveles/estudiantes avanzados del nivel terciario, universitario, nivel medio y al público en general que desee participar.
El presente curso articula elementos de filosofía, análisis y teoría en relación con las potencialidades del cine y la historieta como herramientas para la educación, adoptando una perspectiva de corte humanístico e interdisciplinar sobre la elaboración simbólica de la realidad por el arte y los medios audiovisuales. El curso se desarrolla mediante dos tipos de actividades: a) clases de capacitación teórica y de análisis; b) jornadas de debate y reflexión –con panelistas invitados, de alcance regional y nacional- en el marco del Ciclo Cine e historieta para vernos y pensarnos. Homenaje a Leonardo Favio, a realizarse en el Aula Magna de la Universidad Nacional del Comahue.
Fechas y horarios:
a) Jue. 1/9, Vie. 2/9; Jue. 8/9 y Vie. 9/9, de 9 a 12:30 hs.; 
b) Jue. 1/9, Vie. 2/9; Jue. 8/9, de 19 a 22; Vie. 9/9 de 15:30 a 20:30.
http://fahuweb.uncoma.edu.ar/index.php
Consultas en Facebook:  Bicentenario Recargado.', 'http://fahuweb.uncoma.edu.ar/index.php/extension/cursos-de-extension/528-curso-de-extension-el-cine-y-la-historieta-en-el-aula', '2016-06-27 18:30:52                                                                                 ', 'carolina.robles@dti.uncoma.edu.ar (Carolina Robles)                                                 ', 4, NULL);
INSERT INTO noticia VALUES (46, 'Taller para preparar finales y coloquios', '', 'http://fahuweb.uncoma.edu.ar/index.php/ingreso/527-taller-para-preparar-finales-y-coloquios', '2016-06-27 18:15:48                                                                                 ', 'carolina.robles@dti.uncoma.edu.ar (Carolina Robles)                                                 ', 4, NULL);
INSERT INTO noticia VALUES (47, 'LLamado a inscripcion 1 cargo ADSCRIPTOS HONORARIOS', 'Llamado a inscripción - 1 cargo
ADSCRIPTOS HONORARIOS
          
 “Teoría y Práctica de la Lectura y Escritura II”
 
 
CONDICIONES (Res. CD. F.H. Nº 0364/80)

Ser graduado con título expedido por Universidad Nacional, provincial o privada oficialmente reconocida.
Estudiante avanzado   de esta universidad con un 60 % de las materias del plan de estudios aprobadas. (no estar adscripto a otra cátedra).
Interés y conocimiento mínimo en la especialidad elegida.

 
 
DOCUMENTACIÓN A PRESENTAR:
 
-       Nota dirigida al Director del Departamento solicitando su inscripción al cargo.
-       Currículum Vitae y Plan de trabajo que contemple los intereses de su formación.
INSCRIPCIÓN: 7 al 10 de junio de 2016. de 8 a 13 hs.
LUGAR: Departamento de Letras -  FAHU - UNCo.', 'http://fahuweb.uncoma.edu.ar/index.php/academica/departamentos/dpto-letras/524-llamado-a-inscripcion-1-cargo-adscriptos-honorarios', '2016-06-06 19:14:59                                                                                 ', 'carolina.robles@dti.uncoma.edu.ar (Carolina Robles)                                                 ', 4, NULL);
INSERT INTO noticia VALUES (48, 'INSCRIPCIONES A CURSADO 2016', 'Asignaturas del 2°do Cuatrimestre inscripción abierta desde:01/08  al 17/08  inclusive.
​Alumnos:   La inscripción se habilitará nuevamente para aquellos alumnos que necesiten regularizar su situación luego del llamado Especial del (22 al 26 /08) a partir de:29 del 08 al 02/09 inclusive.
', 'http://faciasweb.uncoma.edu.ar/?q=node/79', '2016-08-01 16:26:58                                                                                 ', '                                                                                                    ', 5, NULL);
INSERT INTO noticia VALUES (49, 'MESA', '"COMPUTACIÓN APLICADA"
08 de Agosto a las 18 Hs.
Aula 1 - Facultad de Economía.
​
Clase de Consulta: 1 de Agosto a las 15 Hs.
', 'http://faciasweb.uncoma.edu.ar/?q=node/78', '2016-08-01 14:01:39                                                                                 ', '                                                                                                    ', 5, NULL);
INSERT INTO noticia VALUES (50, 'Control y Firma de Diplomas (Colación Septiembre 2016)', 'Información
', 'http://faciasweb.uncoma.edu.ar/?q=node/75', '2016-07-28 19:57:33                                                                                 ', '                                                                                                    ', 5, NULL);
INSERT INTO noticia VALUES (51, 'Guías Alimentarias para la Población Argentina ', 'Mensajes y gráfica de las Guías Alimentarias para la Población Argentina
Las “Guías Alimentarias para la Población Argentina” (GAPA) constituyen una herramienta fundamental para favorecer la aprehensión de conocimientos que contribuyan a generar comportamientos alimentarios y nutricionales más equitativos y saludables por parte de la población de usuarios directos e indirectos.
Las GAPA traducen las metas nutricionales establecidas para la población en mensajes prácticos para usuarios y destinatarios, redactados en un lenguaje sencillo, coloquial y comprensible, proporcionando herramientas que puedan conjugar las costumbres locales con estilos de vida más saludables.
MENSAJE 1
INCORPORAR A DIARIO ALIMENTOS DE TODOS LOS GRUPOS Y REALIZAR AL MENOS 30 MINUTOS DE ACTIVIDAD FÍSICA.
1°MS: Realizar 4 comidas al día (desayuno, almuerzo, merienda y cena) incluir verduras, frutas, legumbres, cereales, leche, yogur o queso, huevos, carnes y aceites.
2°MS: Realizar actividad física moderada continua o fraccionada todos los días para mantener una vida activa.
3°MS: Comer tranquilo, en lo posible acompañado y moderar el tamaño de las porciones.
4°MS: Elegir alimentos preparados en casa en lugar de procesados.
5°MS: Mantener una vida activa, un peso adecuado y una alimentación saludable previene enfermedades.
MENSAJE 2
TOMAR A DIARIO 8 VASOS DE AGUA SEGURA.
1°MS: A lo largo del día beber al menos 2 litros de líquidos, sin azúcar, preferentemente agua.
2°MS: No esperar a tener sed para hidratarse.
3°MS: Para lavar los alimentos y cocinar, el agua debe ser segura.
MENSAJE 3
CONSUMIR A DIARIO 5 PORCIONES DE FRUTAS Y VERDURAS EN VARIEDAD DE TIPOS Y COLORES.
1°MS: Consumir al menos medio plato de verduras en el almuerzo, medio plato en la cena y 2 o 3 frutas por día.
2°MS: Lavar las frutas y verduras con agua segura.
3°MS: Las frutas y verduras de estación son más accesibles y de mejor calidad.
4°MS: El consumo de frutas y verduras diario disminuye el riesgo de padecer obesidad, diabetes, cáncer de colon y enfermedades cardiovasculares
MENSAJE 4
REDUCIR EL USO DE SAL Y EL CONSUMO DE ALIMENTOS CON ALTO CONTENIDO DE SODIO.
1°MS: Cocinar sin sal, limitar el agregado en las comidas y evitar el salero en la mesa.
2°MS: Para reemplazar la sal utilizar condimentos de todo tipo (pimienta, perejil, ají, pimentón, orégano, etc.)
3°MS: Los fiambres, embutidos y otros alimentos procesados (como caldos, sopas y conservas) contienen elevada cantidad de sodio, al elegirlos en la compra leer las etiquetas.
4°MS: Disminuir el consumo de sal previene la hipertensión, enfermedades vasculares y renales, entre otras.
MENSAJE 5
LIMITAR EL CONSUMO DE BEBIDAS AZUCARADAS Y DE ALIMENTOS CON ELEVADO CONTENIDO DE GRASAS, AZÚCAR Y SAL.
1°MS: Limitar el consumo de golosinas, amasados de pastelería y productos de copetín (como palitos salados, papas fritas de paquete, etc.).
2°MS: Limitar el consumo de bebidas azucaradas y la cantidad de azúcar agregada a infusiones.
3°MS: Limitar el consumo de manteca, margarina, grasa animal y crema de leche.
4°MS: Si se consumen, elegir porciones pequeñas y/o individuales. El consumo en exceso de estos alimentos predispone a la obesidad, hipertensión, diabetes y enfermedades cardiovasculares, entre otras.
MENSAJE 6
CONSUMIR DIARIAMENTE LECHE, YOGUR O QUESO, PREFERENTEMENTE DESCREMADOS.
1°MS: Incluir 3 porciones al día de leche, yogur o queso.
2°MS: Al comprar mirar la fecha de vencimiento y elegirlos al final de la compra para mantener la cadena de frío.
3°MS: Elegir quesos blandos antes que duros y aquellos que tengan menor contenido de grasas y sal.
4°MS: Los alimentos de este grupo son fuente de calcio y necesarios en todas las edades
MENSAJE 7
AL CONSUMIR CARNES QUITARLE LA GRASA VISIBLE, AUMENTAR EL CONSUMO DE PESCADO E INCLUIR HUEVO.
1°MS: La porción diaria de carne se representa por el tamaño de la palma de la mano.
2°MS: Incorporar carnes con las siguientes frecuencias: pescado 2 o más veces por semana, otras carnes blancas 2 veces por semana y carnes rojas hasta 3 veces por semana.
3°MS: Incluir hasta un huevo por día especialmente si no se consume la cantidad necesaria de carne.
4°MS: Cocinar las carnes hasta que no queden partes rojas o rosadas en su interior previene las enfermedades transmitidas por alimentos.
MENSAJE 8
CONSUMIR LEGUMBRES, CEREALES PREFERENTEMENTE INTEGRALES, PAPA, BATATA, CHOCLO O MANDIOCA.
1°MS: Combinar legumbres y cereales es una alternativa para reemplazar la carne en algunas comidas.
2°MS: Entre las legumbres puede elegir arvejas, lentejas, soja, porotos y garbanzos y entre los cereales arroz integral, avena, maíz, trigo burgol, cebada y centeno, entre otros.
3°MS: Al consumir papa o batata lavarlas adecuadamente antes de la cocción y cocinarlas con cascara.
MENSAJE 9
CONSUMIR ACEITE CRUDO COMO CONDIMENTO, FRUTAS SECAS O SEMILLAS.
1°MS: Utilizar dos cucharadas soperas al día de aceite crudo.
2°MS: Optar por otras formas de cocción antes que la fritura.
3°MS: En lo posible alternar aceites (como girasol, maíz, soja, girasol alto oleico, oliva y canola).
4°MS: Utilizar al menos una vez por semana un puñado de frutas secas sin salar (maní, nueces, almendras, avellanas, castañas, etc.) o semillas sin salar (chía, girasol, sésamo, lino, etc.).
5°MS: El aceite crudo, las frutas secas y semillas aportan nutrientes esenciales.
MENSAJE 10
EL CONSUMO DE BEBIDAS ALCOHÓLICAS DEBE SER RESPONSABLE. LOS NIÑOS, ADOLESCENTES Y MUJERES EMBARAZADAS NO DEBEN CONSUMIRLAS. EVITARLAS SIEMPRE AL CONDUCIR.
1°MS: Un consumo responsable en adultos es como máximo al día, dos medidas en el hombre y una en la mujer.
2°MS: El consumo no responsable de alcohol genera daños graves y riesgos para la salud.
', 'http://faciasweb.uncoma.edu.ar/?q=node/26', '2016-05-03 23:08:16                                                                                 ', '                                                                                                    ', 5, NULL);
INSERT INTO noticia VALUES (53, 'Nuestra Historia', 'En diciembre de 1985, la Universidad Nacional del Comahue crea el Centro Universitario de Ciencias de la Salud (C.U.C.S.), por Ordenanza Nº 270/85, con el objetivo de ser el organismo responsable de las actividades relacionados con ciencias de la salud en la Universidad Nacional del Comahue. Se encargaría también de la formación y educación permanente de profesionales interesados en la salud regional.
De acuerdo al proyecto presentado por la Comisión de Estructura, con el fin de institucionalizar el mencionado Centro, se crea por Ordenanza Nº 536/98, el Instituto Universitario en Ciencias para la Salud ( I.U.C.S.), en los términos del Art. 6 del Estatuto de la Universidad, con el objeto de dirigir las actividades de investigación y extensión en las áreas de competencia en el ámbito universitario. Con el fin de coordinar las acciones de capacitación de los recursos humanos , se firman convenios con los Ministerios de Salud y Acción Social de las provincias de Neuquen y Río Negro.
 
En el año 1993, se creó el Centro Regional sobre Desastres (CRISODE). La Organización Panamericana de la Salud (OPS), aporta el material ( videos, libros, diapositivas y otros) referidos a distintos tipos de desastres. El Centro es el único en el ámbito universitario en el país y presta servicios a todo el sur argentino.
​
Por Nota 048/02, el Vicerrectorado de la Universidad elevó al Consejo Superior, el proyecto de creación de la Escuela Superior de Salud y Ambiente. En la sesión del 12 de diciembre de 2002, el Consejo Superior trató y aprobó por mayoría lo despachado por la Comisión de Docencia y Asuntos Estudiantiles. Es por ello, que el 24 de febrero de 2003, por Ordenanza Nº 202, se crea la Escuela Superior de Salud y Ambiente.
', 'http://faciasweb.uncoma.edu.ar/?q=node/11', '2014-06-19 20:20:44                                                                                 ', '                                                                                                    ', 5, NULL);
INSERT INTO noticia VALUES (54, 'Consejo Directivo', 'El Consejo Directivo está presidido por la Decana, Dra. Silvia ROCA, e integrado por representantes de docentes, graduados, estudiantes y no docentes.
 
Los integrantes del actual Consejo Directivo elegidos en mayo de 2014 son: 
 
Claustro de Docentes
 
TITULARES
SUPLENTES


Cristina CARBAJAL


Ana María MANACORDA


Emelina TIERZO


Anahí ALVAREZ


Mónica DIAZ


Angelina ILLESCAS


Leonor ILABACA


Alejandra CELESCINCO




Norma CUFRE


Florencia GONZALEZ


Marcela HINOJO


José Luis SADDI


Natalia MASSAUX


Maira KRASSER


Liliana FERNANDEZ


Ma. Cecilia NAVARRO


 
 
Claustro de No Docentes
 
TITULARES
SUPLENTES



Bruno BAEZA


Gunther GRANT


Amelia NIEVES





Gerardo BUSTAMANTE


Norma VALENZUELA


Marina GUIDO


 
 
Claustro de Estudiantes
 

TITULARES
SUPLENTES


Mauro ARIAS


Julia ARIAS


Maria C. LABRIN BRITO


Rocío TSCHERIG




Marcela BAYER


Marina AGUILERA


Cristina MELIAN


Sergio SALGADO MORALES


 
 

Claustro de Graduados
 


TITULAR
SUPLENTE


Daniel GONZALEZ




Juan FERRECCIO




 

', 'http://faciasweb.uncoma.edu.ar/?q=node/4', '2014-06-12 17:16:41                                                                                 ', '                                                                                                    ', 5, NULL);
INSERT INTO noticia VALUES (55, 'Chrome frame (2)', 'Google Chrome Frame is a retort of Google company to Internet Explorer browser which is still widely popular, despite the fact that its rendering engine remains fallen behind other internet browsers. By applying this plug-in, users can benefit from Webkit engine capabilities and, at the same time, do not loose the opportunity of using Internet Explorer interface. To make this interesting solution work, an appropriate "meta name" has to be implemented into the head section of the visited page.
In accordance with that, our template contains an appropriate option in its settings that helps the user to switch the meta name in the head section, so that all IE users that have Google Chrome Frame plug-in installed will be able to see the web site along with all facilities offered by Webkit rendering engine.
To get know more about Google Chrome Frame, please visit:
http://code.google.com/intl/en-GB/chrome/chromeframe/ - the official Project’s web side containing the link to the plug-in.
http://www.chromium.org/developers/how-tos/chrome-frame-getting-started - more info about Google Chrome Frame for developers.', 'http://fainweb.uncoma.edu.ar/index.php/joomla-pages-iii/category-list/39-chrome-frame-2', '2011-01-12 18:12:21                                                                                 ', 'barionuevozaca@gmail.com (Zacarias)                                                                 ', 6, NULL);
INSERT INTO noticia VALUES (56, 'Messages', 'Joomla! offers three different types of messages. Creatings standard information about Joomla! system is presented depending on a message type as follows:

Error 

This is a sample message

 


Error 

This is a sample warning message

 


Error 

This is a sample error message


', 'http://fainweb.uncoma.edu.ar/index.php/template-articles/messages', '2011-01-12 18:08:51                                                                                 ', 'barionuevozaca@gmail.com (Zacarias)                                                                 ', 6, NULL);
INSERT INTO noticia VALUES (57, 'Bienvenidos', '', 'http://medicina.uncoma.edu.ar/index.php/2-principal/54-pruebba', '2014-04-14 19:07:38                                                                                 ', 'cristian.ilabaca@dti.uncoma.edu.ar (Super Usuario)                                                  ', 7, NULL);
INSERT INTO noticia VALUES (58, 'RELEVAMIENTO DE ESTUDIANTES EN SITUACIÓN DE DISCAPACIDAD', '', 'http://medicina.uncoma.edu.ar/index.php/academica/novedades/530-relevamiento-de-estudiantes-en-situacion-de-discapacidad', '2016-07-29 14:07:24                                                                                 ', 'maria.mendez@dti.uncoma.edu.ar (Maria Mendez )                                                      ', 7, NULL);
INSERT INTO noticia VALUES (59, 'LLAMADO A INSCRIPCIÓN PARA CUBRIR CARGO DOCENTE  INTERINO AD HONOREM Resolución 75/16 Consejo Directivo', '', 'http://medicina.uncoma.edu.ar/index.php/academica/novedades/529-llamado-a-inscripcion-para-cubrir-cargo-docente-interino-ad-honorem-resolucion-75-16-consejo-directivo-2', '2016-07-27 14:48:20                                                                                 ', 'maria.mendez@dti.uncoma.edu.ar (Maria Mendez )                                                      ', 7, NULL);
INSERT INTO noticia VALUES (60, 'LLAMADO A INSCRIPCIÓN PARA CUBRIR CARGO DOCENTE INTERINO RENTADO (Res. N° 0072/16 Consejo Directivo)', '', 'http://medicina.uncoma.edu.ar/index.php/academica/novedades/525-llamado-a-inscripcion-para-cubrir-cargo-docente-interino-rentado-res-n-0072-16-consejo-directivo', '2016-07-25 19:46:46                                                                                 ', 'maria.mendez@dti.uncoma.edu.ar (Maria Mendez )                                                      ', 7, NULL);
INSERT INTO noticia VALUES (61, 'Acuerdo Paritario de la Comisión Negociadora del convenio Colectivo de Trabajo del Nivel Particular para el personal docente', 'Docentes de la FaCiMed: Ponemos a disposición el Acuerdo Paritario de la Comisión Negociadora del convenio Colectivo de Trabajo del Nivel Particular para el personal docente  firmado del día 22 de junio.
En los próximos días haremos llegar la Resolución que convalida y establece los mecanismos de implementación del mismo.
Acta Paritaria (Artículo 73).pdf', 'http://medicina.uncoma.edu.ar/index.php/academica/novedades/521-acuerdo-paritario-de-la-comision-negociadora-del-convenio-colectivo-de-trabajo-del-nivel-particular-para-el-personal-docente-2', '2016-06-28 18:31:31                                                                                 ', 'maria.mendez@dti.uncoma.edu.ar (Maria Mendez )                                                      ', 7, NULL);
INSERT INTO noticia VALUES (62, '', '
	


	Descargar Cronograma Completo
', 'http://fadelweb.uncoma.edu.ar/index.php/jornadas/212-cronograma-iv-congreso-2016', '1970-01-01 01:00:00                                                                                 ', 'oscarkikuchi@yahoo.com.ar (Oscar Kikuchi)                                                           ', 8, NULL);
INSERT INTO noticia VALUES (63, 'Becas INTA – AUDEAS para estudiantes', '
	


	Llamado a concurso para los becarios
	La presentación de formularios vence el 19 de FEBRERO 2016


	
		
		Costos de Producción, márgenes de contribución. Estudios de casos de empresas del sector frutícola de peras y manzanas

	
		Director de Beca: Dr. Mario Leskovar

	
		Sede de la Beca: Estación Experimental Agropecuaria Alto Valle

	
		Lugar de Trabajo: Facultad de Ciencias Agrarias de la Universidad Nacional del Comahue

	
		Perfil específico

	
		Nivel educacional: Estudiante avanzado de Ingeniería Agronómica, Licenciatura en Ciencias Ambientales o carreras afines (contar con el 70% de las materias aprobadas, adeudando tesis o trabajo final).

	
		Estipendio Mensual: $4.286,00 más bonificación por zona.

	
		Duración de la beca: 1 año (12 meses)

	
		Mayor información: http://inta.gob.ar/…/costos-de-produccion-margenes-de-contr…

	
		
		Comportamiento de precios de peras y manzanas en mercado interno y mercados de exportación. El análisis de los procesos de transmisión de precios del productor al consumidor en la cadena frutícola de la Patagonia Norte

	
		Directora de Beca: Magister Fernanda Menni

	
		Sede de la Beca: Estación Experimental Agropecuaria Alto Valle

	
		Estipendio Mensual: $4.286,00 más bonificación por zona.

	
		Perfil específico

	
		Nivel educacional: Estudiante avanzado de Ingeniería Agronómica, Licenciatura en Ciencias Ambientales o carreras afines (contar con el 70% de las materias aprobadas, adeudando tesis o trabajo final).

	
		Estipendio Mensual: $4286,00 más bonificación por zona.

	
		Duración de la beca: 1 año (12 meses)

', 'http://factaweb.uncoma.edu.ar/index.php/novedades/46-becas-inta-audeas-para-estudiantes', '2016-01-04 16:10:20                                                                                 ', 'cristian.ilabaca@dti.uncoma.edu.ar (Super Usuario)                                                  ', 9, NULL);
INSERT INTO noticia VALUES (64, 'Cursos UPAMI', '
	Primer año de cursos UPAMI. "Nuevas Tecnologías", gracias Lic. Andres Ibañez. Preciosa experiencia, no todos los alumnos pudieron asistir al acto...los esperamos el año próximo


	


	
', 'http://factaweb.uncoma.edu.ar/index.php/novedades/47-cursos-upami', '2016-01-01 16:13:00                                                                                 ', 'cristian.ilabaca@dti.uncoma.edu.ar (Super Usuario)                                                  ', 9, NULL);
INSERT INTO noticia VALUES (65, 'INSCRIPCIÓN A CUBRIR CARGOS 2015', '
	TUTORÍAS DE PARES


	INSCRIPCION A CUBRIR CARGOS EN FACTA CICLO 2015


	 


	Perfil del tutor par: Es un estudiante que ya ha transitado como mínimo los dos primeros años de su carrera y está dispuesto a acompañar, aconsejar y contener a aquellos otros, ingresantes o no a las carreras de Lic. en Tecnol. de Alimentos, Lic. en Gerenc. Gastronómico y Tecnic. en Control e Higiene de Alimentos.


	Se solicita un estudiante de LIGGA y un estudiante de LITA o TCHA.


	Carga horaria: 10 horas reloj semanales.


	Requisitos:


	Ser estudiante regular, con 18 asignaturas cursadas y 12 aprobadas (sin incluir las Actividades Específicas) de la LIGGA, o 14 materias aprobadas de LITA o TCHA.


	Indispensable contar con disponibilidad horaria.


	 


	Deberá presentar:


	1. Nota dirigida a la Secretaria Académica: Prof. Beatriz Ichiyama, indicando motivaciones personales y disponibilidad horaria.


	2. Currículum vitae.


	3. Rendimiento académico actualizado.


	Por consultas dirigirse a: mabel.vullioud@facta.uncoma.edu.ar


	 


	INSCRIPCIÓN: del 4 al 11 de febrero inclusives en el Depto. de Alumnos de 9 a 14 hs.


	Fecha del concurso: viernes 13 de febrero, 15 y 30 hs
', 'http://factaweb.uncoma.edu.ar/index.php/novedades/44-inscripcion-a-cubrir-cargos-2015', '2015-04-08 15:58:07                                                                                 ', 'cristian.ilabaca@dti.uncoma.edu.ar (Super Usuario)                                                  ', 9, NULL);
INSERT INTO noticia VALUES (66, 'Movilidad Internacional para estudiantes UNCo', 'La Facultad de Ciencias Agrarias informa que se encuentra abierta la "Convocatoria 2016 de Movilidad Internacional para Estudiantes de Grado de la UNCo"El objetivo central de esta iniciativa es ofrecer a los estudiantes de grado de la UNCo la oportunidad de cursar el 1º o 2º semestre del año 2017 en una institución extranjera contraparte, como parte de los estudios formales en desarrollo en nuestra Universidad. La UNCo otorgará 2 ayudas de $20.000 y 4 ayudas de $15.000. Las postulaciones deben realizarse hasta el 12 de agosto. Bases y Condiciones de la convocatoria - click aquí - 
Consultas específicas pueden realizarse al mail: movilidad.internacionales@central.uncoma.edu.ar
 ', 'http://facaweb.uncoma.edu.ar/index.php/15-investigacion/80-movilidad-internacional-para-estudiantes-unco', '2016-07-04 15:09:21                                                                                 ', '                                                                                                    ', 10, NULL);
INSERT INTO noticia VALUES (67, 'XVIII Jornadas Nacionales de Extensión Rural y X del Mercosur', '

La Facultad de Ciencias Agrarias de la Universidad Nacional del Comahue, continua, en conjunto con los representantes regionales de AADER y del  INTA, en la organización XVIII Jornadas Nacionales de Extensión Rural y X del Mercosur, que se realizaran el 9, 10 y 11 de Noviembre de 2016.Los objetivos serán:• Realizar este Congreso en el año del bicentenario de la independencia nacional como estímulo para incorporar esta dimensión a la discusión sobre el desarrollo rural.• Promover el intercambio de experiencias y la construcción de conocimientos entre los actores que trabajan en extensión rural y desarrollo• Debatir los lineamientos de políticas públicas de extensión rural en función de los “Modelos de Desarrollo”.• Identificar las tensiones en juego ante la diversidad cultural, social, económica y política, en la tarea del Extensionista.• Analizar enfoques teóricos y estrategias de intervención en la extensión rural que faciliten el análisis crítico de los modelos de desarrollo.Los trabajos a presentar deben estar dentro de los siguientes ejes temáticos:• Estrategias para el trabajo en extensión rural• Aportes teórico-metodológicos para el trabajo de Extensión Rural• Aportes de la comunicación• EducaciónRecepción de Resúmenes: hasta el 8 de junio del 2016
Consultas: Secretaría de Extensión, Facultad de Ciencias Agrarias - UNCo. secretaria.extension@faca.uncoma.edu.ar - Tel. 0299-4980124/0005
AADER, Marcela Martínez - aader_asel@yahoo.com.ar – Tel. 011-5276-2800
 
 ', 'http://facaweb.uncoma.edu.ar/index.php/17-noticias/79-xviii-jornadas-nacionales-de-extension-rural-y-x-del-mercosur', '2016-04-21 18:15:28                                                                                 ', '                                                                                                    ', 10, NULL);
INSERT INTO noticia VALUES (75, 'Horarios Segundo Cuatrimestre 2016', 'COMIENZO DE CLASES: SEMANA DEL 8 DE AGOSTO
----
Horarios y aulas para las materias del segundo cuatrimestre de 2016:

Licenciatura en Ciencias de la Computación y Licenciatura en Sistemas de Información [pdf]
Profesorado en Informática [pdf]
Tecnicaturas [pdf]

 
HORARIOS SUJETOS A MODIFICACIONES. POR FAVOR: ESTAR ATENTOS Y REVISAR ANTES DE DIRIGIRSE AL AULA EL PRIMER DIA DE CLASE
----
FECHAS DE INICIO DE CLASE:

Lógica para Ciencias de la Computación: Primera clase Miércoles 10/08
Conceptos Avanzados de Lenguajes: Primera clase Martes 16/08
', 'http://faiweb.uncoma.edu.ar/index.php/805-horarios-segundo-cuatrimestre-2016', '2016-08-05 21:00:00                                                                                 ', 'cristian.ilabaca@dti.uncoma.edu.ar (Super Usuario)                                                  ', 2, NULL);
INSERT INTO noticia VALUES (68, 'PASANTÍAS ESTUDIANTILES RENTADAS', '
Llamado a INSCRIPCIÓN Fundamentación: Dichas pasantías  se enmarcan en un convenio entre la Universidad Nacional del Comahue y el Ministerio de Agroindustria. Las mismas están orientadas a capacitar a los futuros profesionales de las ciencias agronómicas y forestales, a través de prácticas laborales junto a profesionales del Área Extensión de la Direcciónde Producción Forestal del Ministerio de Agroindustria de la Nación (AEF-DPF), en el territorio abarcado por las cuencas de los ríos Limay, Neuquén, Negro y Colorado. Pasantías: Dos (2)Carga horaria: 20 hs semanalesDuración: 12 meses con posibilidad de renovaciónRemuneración: proporcional al sueldo de los agentes del mencionado MinisterioRequisitos: estar cursando el 5º año de la carrera de Ingeniero AgrónomoPara mas información, la Secretaria de Extensión convoca a todos los interesados en participar en dichas pasantias a la charla informativa que se dara el día 2 de Mayo, a las 12:00 hs, en el aula 6 de la Facultad. En la misma estaran presentes un representante del AEF-DPF, antiguos pasantes y la Secretaria de Extensión de la FaCA.', 'http://facaweb.uncoma.edu.ar/index.php/17-noticias/76-pasantias-estudiantiles-rentadas', '2016-02-23 19:09:08                                                                                 ', '                                                                                                    ', 10, NULL);
INSERT INTO noticia VALUES (69, 'INGRESANTES 2016', '¡El 22 de Febrero inician las clases!Acercate a la facultad a completar tu inscripción a la carrera. A partir del 1 de Febrero de 8:00 a 15:00 hs. en el Departamento de Alumnos.Te esperamos.', 'http://facaweb.uncoma.edu.ar/index.php/17-noticias/56-porroga-vigencia-de-cursados', '2014-07-01 16:29:26                                                                                 ', '                                                                                                    ', 10, NULL);
INSERT INTO noticia VALUES (70, 'Autoridades', 'Directora: Lic. Mónica Luciana RUEDA  
Secretario Académico: Lic. Prof. Leandro Daniel SIGNORILE
 
Consejo Directivo
 




Claustro Docentes


Claustro Estudiantes


Claustro Graduados


Claustro No Docentes




Titulares:
Ing. Mario YUNIS
Ing. Claudio CHÁVEZ
Ing. Andrea HÜLSKEN
Lic. Carla MUSSO PERULÁN
Geo. Hugo MEDEOT
Lic. Sandra JARA
Suplentes:
Ing. Carlos HEDO Arq. Néstor VÁZQUEZ


Titulares:
Jaime Ignacio FUENTES ARAYA
Natalia VEGA GATICA
Rubén SAN MARTÍN
 Suplentes:
Joaquín CORNEJO
Eduardo FUENTES
Andrea HUALQUIMIL


Titular:
Lic. María Eugenia MATUZ
Suplente:
Lic. Soledad LÓPEZ


Titulares:
Ing. Pedro GARRAFA
José RUIZ
Suplentes:
Ernesto GARRIDO




 
 

 
Asentamiento Universitario Zapala
Av. 12 de julio y Rahue (8340) Zapala (Neuquén)
Tel. +54 (02942) 421847/421595
 
 ', 'http://auzaweb.uncoma.edu.ar/index.php/institucional/4-autoridades', '2014-09-04 15:31:18                                                                                 ', 'cristian.ilabaca@dti.uncoma.edu.ar (Super Usuario)                                                  ', 13, NULL);
INSERT INTO noticia VALUES (71, 'Curso Taller PEDCO Básico (Destinado a Docentes de la Universidad Nacional del Comahue)-', '
LINK FORMULARIO DE INSCRIPCIÓN: AQUI', 'http://fahuweb.uncoma.edu.ar/index.php/185-articulo-inicio/550-curso-taller-pedco-basico-2', '2016-08-02 17:34:03                                                                                 ', 'carolina.robles@dti.uncoma.edu.ar (Carolina Robles)                                                 ', 4, NULL);
INSERT INTO noticia VALUES (72, 'El rector de la UNCo participará de la reunión del comité ejecutivo del CIN.', '
	


	En la oportunidad de la séptima sesión del Consejo Superior de la Universidad Nacional del Comahue el rector Gustavo Crisafulli reiteró que se han recibido las Resoluciones de la Secretaria de Políticas Universitaria al respecto del refuerzo presupuestario extraordinario. Crisafulli indicó que “este no ha sido de 500 millones como había anunciado el Presidente de la República sino que hasta el día de la fecha solo ha habido una distribución de 100 millones de pesos de los cuales a la Universidad Nacional del Comahue nos han otorgado 1.700.000, al contrario de la solicitud formal del CIN el Ministerio decidió distribuir este refuerzo presupuestario por fuera del mecanismo del presupuesto normativo que era como hace 8 años que se venían distribuyendo los refuerzos. Tampoco adoptó el criterio de utilizar las proporcionalidades de la planilla A algo que también podía haber sido un criterio estándar y la verdad es que la distribución que ha hecho el Ministerio es una distribución discrecional porque no es, si uno lee la lista de cuanto ha recibido cada universidad nacional de esos cien millones no guarda relación con ninguno de los parámetros estandarizado que veníamos usando hasta el presente”.


	', 'http://prensa.uncoma.edu.ar/index.php/es/novedades/6199-el-rector-de-la-unco-participara-de-la-reunion-del-comite-ejecutivo-del-cin', '2016-08-08 14:50:38                                                                                 ', 'prensaunco@central.uncoma.edu.ar (Prensa UNCo)                                                      ', 1, NULL);
INSERT INTO noticia VALUES (73, '6 de agosto - día del Ingeniero Agrónomo. Saludos UNCo.', '
	Con motivo de celebrarse hoy el Día del Ingeniero Agrónomo, las autoridades de la Universidad Nacional del Comahue expresaron su especial reconocimiento a los profesionales de la Agronomía que desarrollan sus actividades académicas en la Facultad de Ciencias Agrarias de la UNCo, y a todos los que contribuyen con su valioso aporte, desde esta disciplina, al desarrollo agropecuario y socio-económico de nuestro país.


	"En este día tan especial es nuestro deseo que la jornada y los saludos, permitan a los Ingenieros Agrónomos renovar las energías, buscar nuevas metas como así también desafíos y continuar trabajando solidariamente con el compromiso que los identifica a los profesionales de la agronomía, cuyo eje central de realización es la agricultura y fruticultura."


	
		                                                Rector UNCo, licenciado Gustavo Crisafulli y el vicerrector Lic. Daniel Nataine.

', 'http://prensa.uncoma.edu.ar/index.php/es/8-principal/6198-6-de-agosto-dia-del-ingeniero-agronomo-saludos-unco', '2016-08-06 14:29:21                                                                                 ', 'prensaunco@central.uncoma.edu.ar (Agustin Orejas)                                                   ', 1, NULL);
INSERT INTO noticia VALUES (74, '“Construyendo espacios de sana convivencia” en la UNCo.', '
	


	Desde la Secretaria de Bienestar Universitario de la Universidad Nacional del Comahue se informó la realización del taller participativo sobre violencia laboral el próximo 25 de agosto en el salón azul de la biblioteca central de la UNCo.
	Por informes e inscripciones se pueden dirigir al mail: rsu.uncomahue@gmail.com  


	 
', 'http://prensa.uncoma.edu.ar/index.php/es/8-principal/6197-construyendo-espacios-de-sana-convivencia-en-la-unco', '2016-08-04 21:08:18                                                                                 ', 'prensaunco@central.uncoma.edu.ar (Prensa UNCo)                                                      ', 1, NULL);
INSERT INTO noticia VALUES (76, 'Mesas de examen: Turno Ordinario Julio-Agosto 2016 (Actualizado)', 'Están disponibles las fechas y horarios de los exámenes del Turno Ordinario Julio-Agosto de 2016 [pdf]

Primer llamado: 26 al 29 de julio (*)
Segundo llamado: 8 al 12 de agosto (*)

(*) Algunas fechas pueden encontrarse fuera de estos periodos cuando las asignaturas son dictadas por otras facultades
Las inscripciones a las mesas estarán disponibles a partir de 5 de julio de 2016
---
ATENCION: cambios en mesas del segundo llamado:

Resolución de Problemas y Algoritmos: pasa al viernes 12/08 - 15 hs. (Vence: 10/08)
Introducción a la Computación: pasa al martes 09/08 - 16 hs (Vence: 05/08)
', 'http://faiweb.uncoma.edu.ar/index.php/793-mesas-de-examen-turno-ordinario-julio-agosto-2016', '2016-08-05 05:00:00                                                                                 ', 'cristian.ilabaca@dti.uncoma.edu.ar (Super Usuario)                                                  ', 2, NULL);
INSERT INTO noticia VALUES (77, 'Jornada de Capacitación: Interoperabilidad en Sistemas de Salud', 'El día 12 de agosto de 2016, de 8:30 a 16:00 hs, en el Colegio Médico de Neuquén, se llevará a cabo una Jornada de Capacitación sobre Interoperabilidad en Sistemas de Salud. La entrada es gratuita.
Durante la jornada se brindarán conceptos sobre las necesidades de interoperabilidad actual de los sistemas de información en salud y que herramientas se disponen para lograrla.
Por consultas e inscripciones acceder al sitio web del evento

 ', 'http://faiweb.uncoma.edu.ar/index.php/804-jornada-de-capacitacion', '2016-08-03 21:30:24                                                                                 ', 'contactos@fai.uncoma.edu.ar (Administrador)                                                         ', 2, NULL);
INSERT INTO noticia VALUES (78, 'Horarios Departamento de Alumnos 3, 4 y 5 de agosto', 'Por capacitación interna, los días miércoles 3, jueves 4 y viernes 5 de agosto la ventanilla del Departamento de Alumnos atenderá de 8 a 10 hs y de 13 a 17 hs.
 ', 'http://faiweb.uncoma.edu.ar/index.php/803-horarios-departamento-de-alumnos-3-4-y-5-de-agosto', '2016-08-03 00:44:18                                                                                 ', 'contactos@fai.uncoma.edu.ar (Administrador)                                                         ', 2, NULL);
INSERT INTO noticia VALUES (79, 'TecNap 2016: SOCIALTHON', 'Los días 23 y 24 de Agosto de 2016, en el Espacio Duam, se llevará a cabo el evento "Socialthon: Ideas para resolver problemas sociales". 
Dicho evento, declarado de Interés Educativo por Resolución Decanal FaI Nº 183/16, es un Hackathon que promueve, a través del trabajo en equipo, esbozar ideas innovadoras y diseñar y desarrollar colectivamente proyectos que resuelvan problemas sociales, mejoren la calidad de vida de las personas, brinden más oportunidades, más autonomía y mayor independencia y agreguen valor a la comunidad de pertenencia.
La inscripción es gratuita. Está dirigida a innovadores, creativos, diseñadores, programadores y estudiantes de distintos niveles. Del evento pueden participar grupos de hasta 7 personas que desarrollen un proyecto. Se otorgará premio al proyecto ganador.
Por consultas e inscripciones enviar un correo electrónico a cherzel@neuquen.gov.ar
', 'http://faiweb.uncoma.edu.ar/index.php/802-tecnap-2016-socialthon', '2016-08-02 18:14:22                                                                                 ', 'contactos@fai.uncoma.edu.ar (Administrador)                                                         ', 2, NULL);
INSERT INTO noticia VALUES (80, 'Taller "Literatura y dictadura: Silencios, voces, memorias"', '
En el marco de las actividades impulsadas por el 40° aniversario del inicio de la última dictadura cívico-militar, el Centro de Estudios Críticos e Históricos de Literatura Argentina (E.C.E.H.L.A.), en colaboración con A.P.D.H.-Neuquén y la Secretaría de Extensión de la Facultad de Humanidades de la Universidad Nacional del Comahue, invita a participar del taller “Literatura y dictadura: silencios, voces, memorias”, de carácter gratuito y abierto a la comunidad, para reflexionar sobre los modos en que se articulan historia, memoria y literatura frente a un régimen dictatorial que ejerce violencia sistemática y que deja profundas marcas en la sociedad.
En este taller se trabajará con distintas expresiones literarias en relación a la última dictadura cívico-militar, organizadas en tres periodos temporales: los textos evasivos y fragmentarios producidos durante la dictadura en el país o desde el exilio; las obras literarias escritas en la postdictadura (desde la transición democrática hasta fines de los años ’90) que incursionan en nuevos modos del realismo; y los textos producidos por los/as que durante la última dictadura eran niños/as o adolescentes, es decir las jóvenes generaciones que vuelven a evocar la violencia, el horror y el miedo del que son hijos/as. Si el espacio literario, como parte del amplio campo social, se presenta atravesado por sus discursos, sus contradicciones, sus incertidumbres, sus tensiones, sus memorias, la propuesta de este taller es indagar sobre los diferentes modos de referir las experiencias en torno a este período de nuestra historia, atendiendo a las diversas estrategias narrativas/poéticas en cada época señalada y a los diálogos y tensiones entre la memoria individual y la memoria colectiva.
Aquellos/as interesados/as en realizar el taller por favor inscribirse ya que los cupos son limitados. ', 'http://fahuweb.uncoma.edu.ar/index.php/extension/noticias/551-taller-literatura-y-dictadura-silencios-voces-memorias', '2016-08-04 15:01:14                                                                                 ', 'carolina.robles@dti.uncoma.edu.ar (Carolina Robles)                                                 ', 4, NULL);
INSERT INTO noticia VALUES (81, 'LLAMADOS A INSCRIPCIÓN para cubrir CARGOS DOCENTES INTERINOS Agosto 2016', '
 
LLAMADOS A INSCRIPCIÓN para cubrir CARGOS DOCENTES INTERINOS
 



Departamento de Historia


Asignatura
Carrera
Cargo
Localidad



MUNDO ACTUAL – AFRO-ASIATICO

Prof. y Lic. en Historia
1 AYP-3
NQN - Bariloche




 

INFORMES y requisitos: lunes a viernes- Horario: de 10 a 13 hs. Desde 02 de Agosto al 16/08/16. 
INSCRIPCIÓN: Desde el  17 y 18 de Agosto de 2016. Horario 10 a 13 hs. En forma personal y/o Apoderado.
DPTO. DOCENTE- (BOX 86).  Dirección de Administración Académica FAC. HUMANIDADES.  
', 'http://fahuweb.uncoma.edu.ar/index.php/concursos15/526-llamados-a-inscripcion-para-cubrir-cargos-docentes-interinos-2', '2016-08-02 16:15:00                                                                                 ', 'carolina.robles@dti.uncoma.edu.ar (Carolina Robles)                                                 ', 4, NULL);
INSERT INTO noticia VALUES (82, 'EGRESADOS COLACION 09 SEPTIEMBRE 2016', 'Se encuentra disponible el formulario donde se debe indicar el familiar que hará la entrega del presente.
COMPLETAR FORMULARIO
*Fecha tope para completarlo: 31 de Agosto 2016.
', 'http://faciasweb.uncoma.edu.ar/?q=node/86', '2016-08-05 17:55:53                                                                                 ', '                                                                                                    ', 5, NULL);
INSERT INTO noticia VALUES (83, 'LISTADO DE ALUMNOS COLACION SEPTIEMBRE 2016', 'VER LISTADO
', 'http://faciasweb.uncoma.edu.ar/?q=node/82', '2016-08-03 14:45:57                                                                                 ', '                                                                                                    ', 5, NULL);
INSERT INTO noticia VALUES (84, 'HORARIOS DE CURSADO SEGUNDO CUATRIMESTRE 2016', 'VER HORARIOS
 
*Estimados Alumnos: tengan en cuenta que los horarios pueden estar sujetos a cambios.
Corroborar la información en la cartelera de la facultad.
', 'http://faciasweb.uncoma.edu.ar/?q=node/81', '2016-08-02 18:09:50                                                                                 ', '                                                                                                    ', 5, NULL);
INSERT INTO noticia VALUES (85, 'La UNCo instaló antenas para mejorar la conectividad entre sus sedes.', '
	


	Desde la Subsecretaría de Tecnologías de la Información de la Universidad Nacional del Comahue informó que, a partir del jueves 4 de agosto, la Facultad de Ciencias Agrarias localizada en Cinco Saltos, provincia de Río Negro, cuenta con servicio de conectividad vía radio-enlace. La falta de un proveedor que brinde un servicio con las prestaciones requeridas en esa ubicación, se convirtió en un desafío a resolver para el Rectorado, que apoyó el proyecto presentado desde esta Subsecretaría que incluía la instalación de dos antenas: una ubicada en la torre de la Barda y la otra en la torre montada sobre el Edificio Segovia, separadas por una distancia de 10,3 km. El servicio permite conectarse a un ancho de banda de aproximadamente 50 Mb desde la Dirección de Tecnologías de la Información (DTI). La inversión realizada alcanza los doscientos mil pesos aproximadamente.


	En cuanto a la red interna de la Facultad de Ciencias Agrarias, se trasladó el punto de conexión desde decanato a la Sala de Servidores ubicada en el centro de la Facultad, donde están interconectados los edificios de corrales, economía, biblioteca, decanato, comedor y posgrado. Personal del área de Soporte Tecnológico de DTI estuvo a cargo de la puesta en marcha del servicio, y de la comprobación del funcionamiento tanto dentro de la unidad académica como desde el exterior.


	Resta normalizar extensiones existentes, agregar dispositivos de red para la distribución de la conectividad y otras tareas que permitan el acceso a todo el sector.
', 'http://prensa.uncoma.edu.ar/index.php/es/8-principal/6205-la-unco-instalo-antenas-para-mejorar-la-conectividad-entre-sus-sedes', '2016-08-10 14:08:57                                                                                 ', 'prensaunco@central.uncoma.edu.ar (Prensa UNCo)                                                      ', 1, NULL);
INSERT INTO noticia VALUES (86, 'Ayudantías estudiantiles en investigación en el marco del Primer Simposio “Discusiones en torno a la escuela secundaria: formación política y trabajo” en la UNCo.', '
	


	Desde la Secretaría de Investigación de la Facultad de Ciencias de la Educación de la Universidad Nacional del Comahue informo la puesta en marcha de las Ayudantías estudiantiles en investigación en el marco del Primer Simposio “Discusiones en torno a la escuela secundaria: formación política y trabajo”. La actividad está destinada a los/las estudiantes de la Universidad Nacional del Comahue que estén cursando como mínimo el 2do año de la carrera.


	Reunión informativa: 11 de agosto a las 12 horas en el Aula A de la facultad. Actividades que realizarán los/as estudiantes en la ayudantía:


	Actividades en la organización del Simposio.


	Actividades de Formación en Investigación.


	Inscripción: desde el 1° de agosto hasta el 15 agosto en Secretaria de Investigación de la FACE. Horario de 9 a 15 hs


	Para la inscripción se solicita:


	', 'http://prensa.uncoma.edu.ar/index.php/es/8-principal/6204-ayudantias-estudiantiles-en-investigacion-en-el-marco-del-primer-simposio-discusiones-en-torno-a-la-escuela-secundaria-formacion-politica-y-trabajo-en-la-unco', '2016-08-10 13:54:49                                                                                 ', 'prensaunco@central.uncoma.edu.ar (Prensa UNCo)                                                      ', 1, NULL);
INSERT INTO noticia VALUES (87, '3ras Jornadas Académicas de Estadística en la UNCo.', '
	


	Los días 16 y 17 de agosto se desarrollarán en Neuquén las 3ras Jornadas Académicas de Estadística. Son organizadas conjuntamente por la Sociedad Argentina de Estadística (SAE), la Facultad de Economía y Administración, el Departamento de Geografía de la Universidad Nacional del Comahue y organismos provinciales del Neuquén.


	La idea de estas Jornadas surge desde la SAE como una estrategia de integración y capacitación de los profesionales del área en temas relacionados a la estadística, siendo esta la primera que se realiza en el interior del país, y está dedicada a la geo estadística.


	', 'http://prensa.uncoma.edu.ar/index.php/es/8-principal/6203-3ras-jornadas-academicas-de-estadistica-en-la-unco', '2016-08-09 22:44:11                                                                                 ', 'prensaunco@central.uncoma.edu.ar (Prensa UNCo)                                                      ', 1, NULL);
INSERT INTO noticia VALUES (88, 'Segunda Escuela de Informática Patagónica (UNSJB)', 'Del 19 al 23 de septiembre de 2016 se realizará la Segunda Escuela de Informática Patagónica en la ciudad de Puerto Madryn. La misma está destinada a alumnos avanzados y docentes de carreras de informática y profesionales del medio.
Por informacion sobre los cursos, aranceles, e inscripciones; visitar la Página Web http://www.eip.unp.edu.ar/
', 'http://faiweb.uncoma.edu.ar/index.php/807-segunda-escuela-de-informatica-patagonica-unsjb', '2016-08-10 23:51:01                                                                                 ', 'contactos@fai.uncoma.edu.ar (Administrador)                                                         ', 2, NULL);
INSERT INTO noticia VALUES (89, 'Horarios Segundo Cuatrimestre 2016 (Actualizado)', 'COMIENZO DE CLASES: SEMANA DEL 8 DE AGOSTO
----
Horarios y aulas para las materias del segundo cuatrimestre de 2016:

Licenciatura en Ciencias de la Computación y Licenciatura en Sistemas de Información [pdf]
Profesorado en Informática [pdf]
Tecnicaturas [pdf]

 
HORARIOS SUJETOS A MODIFICACIONES. POR FAVOR: ESTAR ATENTOS Y REVISAR ANTES DE DIRIGIRSE AL AULA EL PRIMER DIA DE CLASE
----
CAMBIOS EN FECHAS DE INICIO DE CLASE

Lógica para Ciencias de la Computación: Primera clase Miércoles 10/08
Conceptos Avanzados de Lenguajes: Primera clase Martes 16/08
Inglés Técnico II (Licenciaturas y Profesorado): Primera clase Martes 16/08
Inglés Técnico (Tecnicaturas): Primera clase Viernes 12/08
Frameworks e Interoperabilidad (Tecnicatura): Martes 09/08 no hay clase. Estar atentos a información en Web y Pedco
Desarrollo de Algoritmos: Primera clase Jueves 11/08 a las 8 hs
Ingeniería de Requerimientos: Primera clase Viernes 12/08
Didáctica General: Comienzo de clases Martes 16/08 a las 15 hs en Aula 42
', 'http://faiweb.uncoma.edu.ar/index.php/805-horarios-segundo-cuatrimestre-2016', '2016-08-09 21:00:00                                                                                 ', 'cristian.ilabaca@dti.uncoma.edu.ar (Super Usuario)                                                  ', 2, NULL);
INSERT INTO noticia VALUES (90, 'DIA DEL NIÑO EN EL ESPACIO DUAM', 'El Pasado día Domingo 7 de Agosto,  se llevó a cabo en el Espacio Duam, en el marco de los festejos por el "Día del Niño", actividades  de promoción y prevención con el objetivo de promover "Hábitos Saludables".
Alumnos de 1°, 2° y 3° Año de la Carrera de Licenciatura en Enfermería de nuestra Facultad, realizaron actividades de Control de TA y prevención de la Hipertensión Arterial. También se realizaron actividades con los más pequeños a partir de juegos, y canciones en las cuales se les enseñó la importancia de lavarse las manos.
Todas estas actividades fueron organizadas por el Departamento de Enfermería de la Facultad de Ciencias del Ambiente y la Salud.
 
 
imagen: ', 'http://faciasweb.uncoma.edu.ar/?q=node/89', '2016-08-09 16:24:53                                                                                 ', '                                                                                                    ', 5, NULL);
INSERT INTO noticia VALUES (91, 'La UNCo invita a participar del II Simposio de Bioeconomía en Viedma.', '
	


	En representación del Comité Organizador del II Simposio de Bioeconomía, el Rector de la Universidad Nacional del Comahue Lic. Gustavo Crisafulli, informó la realización del II Encuentro Pre-simposio, el próximo 12 de agosto desde las 10:00 hs. en la Cámara de Comercio de Viedma sito en Buenos Aires 53 Planta Baja.


	La jornada se plantea como parte de un camino iniciado en el primer encuentro realizado en julio. El objetivo es fortalecer este ámbito de vinculación a través de mesas de trabajo, presentación de experiencias productivas público-privadas, exposiciones de casos de éxito por parte de productores y emprendedores e identificación de demanda y oferta ligadas al sistema científico – tecnológico.


	Estas actividades se realizan en el marco de la organización y difusión del II Simposio Regional Patagónico de Bioeconomía Argentina 2016 que se realizará el 17 y 18 de noviembre en las ciudades de Neuquén y Cipolletti bajo el lema “Patagonia: Integración para la acción”. Ellas forman parte de una iniciativa nacional liderada por el Ministerio de Ciencia, Tecnología e Innovación Productiva y los gobiernos de las provincias anfitrionas, Río Negro y Neuquén, con el acompañamiento de las provincias de la Región, actores de la economía, instituciones de la sociedad civil y el sector científico – tecnológico.


	', 'http://prensa.uncoma.edu.ar/index.php/es/8-principal/6208-la-unco-invita-a-participar-del-ii-simposio-de-bioeconomia-en-viedma', '2016-08-11 17:39:20                                                                                 ', 'prensaunco@central.uncoma.edu.ar (Prensa UNCo)                                                      ', 1, NULL);
INSERT INTO noticia VALUES (92, 'Se concretará la primera plantación de especies nativas en el Parque Industrial del Neuquén. ', '
	


	Desde el Laboratorio LARREA, de la Facultad de Ciencias del Ambiente y la Salud de la Universidad Nacional del Comahue se informó que se realizará la primera plantación con especies nativas, prevista en el proyecto de reforestación del PIN con especies nativas y bajos requerimientos hídricos" proyecto que se acordó a comienzo de año entre el CAPIN, la universidad, FUNYDER, y la Coop. de Trabajo RESTAURAR Ltda.


	La actividad está prevista para el jueves 18 de agosto desde las 13,30 horas en el predio de CAPIN.


	El programa es el siguiente:


	', 'http://prensa.uncoma.edu.ar/index.php/es/8-principal/6207-se-concretara-la-primera-plantacion-de-especies-nativas-en-el-parque-industrial-del-neuquen', '2016-08-11 16:59:37                                                                                 ', 'prensaunco@central.uncoma.edu.ar (Prensa UNCo)                                                      ', 1, NULL);
INSERT INTO noticia VALUES (93, 'Prórroga en la presentación de documentación en el Programa de Movilidad Internacional para Estudiantes de Grado.', '
	


	La Subsecretaría de Relaciones Internacionales de la Universidad Nacional del Comahue anuncia una prórroga para la “Convocatoria de Movilidad Internacional para Estudiantes de Grado de la UNCo” que tiene el objetivo de permitir a nuestros estudiantes realizar intercambios internacionales en el 1o o 2o semestre del año 2017.


	Requisitos para participar


	- Ser estudiante regular de la UNCo


	', 'http://prensa.uncoma.edu.ar/index.php/es/8-principal/6206-prorroga-en-la-presentacion-de-documentacion-en-el-programa-de-movilidad-internacional-para-estudiantes-de-grado', '2016-08-11 16:53:42                                                                                 ', 'prensaunco@central.uncoma.edu.ar (Prensa UNCo)                                                      ', 1, NULL);
INSERT INTO noticia VALUES (94, 'Presentación de la colección de Geología y Petróleo en la Biblioteca Central de la Universidad Nacional del Comahue.', '
	


	La Dirección de la Biblioteca Central de la UNCo y el Director de la Carrera de Licenciatura en Ciencias Geológicas de la Facultad de Ingeniería, Dr. Jorge Vallés, invitan a compartir la presentación de la Colección bibliográfica y documental de Geología y Petróleo, el 16 de agosto en el horario de 11 a 13hs., en el espacio destinado a este servicio dentro de la Biblioteca.


	Durante la actividad, se informará acerca del contenido y localización física del material según las diferentes temáticas que componen la colección, así como de los sistemas de búsqueda de la información requerida. La compilación, está conformada por libros, revistas y otros documentos científico-técnicos hace especial énfasis en las Ciencias de la Tierra en su conjunto y las Ingenierías y Tecnologías del petróleo y del gas. Nuclea las existencias obrantes en la Biblioteca Central, los materiales donados por Apache Argentina y el Instituto Argentino del Petróleo y del Gas, la importante donación de la AAPG, American Association of Petroleum Geology con la participación de Medanito S.A. y todos los títulos que se vayan incorporando en el futuro enfocando a la demanda y requerimientos de la comunidad académica y científica.

', 'http://prensa.uncoma.edu.ar/index.php/es/8-principal/6209-presentacion-de-la-coleccion-de-geologia-y-petroleo-en-la-biblioteca-central-de-la-universidad-nacional-del-comahue', '2016-08-12 17:04:26                                                                                 ', 'prensaunco@central.uncoma.edu.ar (Prensa UNCo)                                                      ', 1, NULL);
INSERT INTO noticia VALUES (95, 'CICLO DE CONFERENCIAS DE AMBIENTE Y SEGURIDAD', '', 'http://faciasweb.uncoma.edu.ar/?q=node/92', '2016-08-12 18:13:49                                                                                 ', '                                                                                                    ', 5, NULL);
INSERT INTO noticia VALUES (96, 'Un paso más hacia la aplicación del convenio colectivo de trabajo para los docentes en la UNCo.', '
	


	El 12 de agosto, al mediodía, se reunió la Comisión Negociadora del Convenio Colectivo de Trabajo del Nivel Particular para el Personal Docente de la Universidad Nacional del Comahue con el fin de completar la firma del Acuerdo Paritario referido a la aplicación del Artículo N°73 del CCT. En representación del Rectorado, estuvieron presentes la Secretaria Académica, Dra. María Alejandra Minelli, el Secretario General, Ing. Atilio Sguazzini y el Secretario de Hacienda. Cdor. Néstor Fernández; en representación de los trabajadores docentes de la Universidad Nacional del Comahue los referentes gremiales de ADUNC y CEDIUNCo, los docentes, Inés Trpín, Jorge Caliani, Esteban Jockers y Susana Nicolet.

', 'http://prensa.uncoma.edu.ar/index.php/es/8-principal/6210-un-paso-mas-hacia-la-aplicacion-del-convenio-colectivo-de-trabajo-para-los-docentes-en-la-unco', '2016-08-12 23:53:22                                                                                 ', 'prensaunco@central.uncoma.edu.ar (Prensa UNCo)                                                      ', 1, NULL);
INSERT INTO noticia VALUES (97, 'Ciclo Conversatorio: Cine e historieta para vernos y pensarnos. Homenaje a Leonardo Favio', ' 
Bicentenario recargado (ciclos de pensamiento, cultura y cine argentino)
Presenta: 
Ciclo Conversatorio: Cine e historieta para vernos y pensarnos.
Homenaje a Leonardo Favio

En el marco del Bicentenario de la Independencia, los integrantes del Proyecto de Extensión “Perfeccionamiento docente y extensión cultural a través del cine argentino. Una articulación entre áreas disciplinares, instituciones educativas y participación ciudadana”, dirigido por Raúl Cadús, docente de la facultad de Humanidades, presentan: El Ciclo-conversatorio está dirigido al público en general y consta de cuatro jornadas a desarrollarse en el Aula Magna de la Universidad Nacional del Comahue. Durante las primeras tres jornadas se proyectarán tres filmes de Leonardo Favio, conformándose –tras cada proyección- un panel para el debate y la conversación sobre la temática propuesta. Luego de una breve exposición se hará lugar a la participación del público, siendo éste un momento fundamental de acuerdo con el espíritu del Ciclo.
Durante la cuarta jornada tendrá lugar el espacio Bicentenario recargado invita a la Historieta Argentina, dedicado a la historieta de contenido social y político de nuestro país, consistente en una muestra que presenta un recorrido por las producciones de destacados autores regionales y nacionales, culminando en un panel con la intervención de Chelo Candia y de José Massaroli. A continuación se realizará la presentación de la Revista Aquelarre, y un cierre a cargo de los integrantes y participantes de Bicentenario Recargado.
El Ciclo Conversatorio Cine e historieta para vernos y pensarnos. Homenaje a Leonardo Favio es organizado por la Secretaría de Extensión de la Facultad de Humanidades de la UNCo, y cuenta con la colaboración de la Secretaría de Extensión de la UNCo, la Secretaría de Formación de ATEN, Seccional Capital, y el auspicio de la Secretaría de DDHH de la Provincia de Neuquén.
Asimismo, deben destacarse la participación y acompañamiento de otras instituciones, como el I.S.F.D. N° 9, la Biblioteca Popular Jorge Fonseca, ambas de la Ciudad de Centenario, la Secretaría de Cultura de la Municipalidad de Centenario, ATEN Seccional Provincial, ATEN Seccional Centenario, así como también del Centro de Estudios en Filosofía de la Cultura (UNCo).
 
Programa:
 
Jueves 1 de septiembre: Nazareno Cruz y el lobo (1975) De la leyenda al drama: encrucijadas de la cultura popular y la cultura de masas en la elaboración simbólica de la realidad.
Viernes 2 de septiembre: Aniceto (2007) Devenir afectivo, devenir cuerpo, devenir arte: una transfiguración estética de la insoportable levedad de ser.
Jueves 8 de septiembre: Juan Moreira (1973) La épica en los márgenes de la historia oficial. De la literatura al cine: travelling de la cultura popular por la realidad social. 
Estos tres encuentros se desarrollarán de 19:00 a 22:00 hs.
Viernes 9 de septiembre: Jornada de cierre de Bicentenario recargado. 
15:00: Apertura del espacio Bicentenario Recargado invita a la Historieta Argentina, con una muestra de producciones e itinerarios representativos en el Hall Central del Aula Magna de la Universidad Nacional del Comahue. Recepción de instituciones educativas participantes.
16:00: Panel sobre historieta argentina de contenido social y político, con la participación de José Massaroli, Chelo Candia, y otros representantes a nivel regional.
17:00: Receso
17:30: Presentación de la Revista Aquelarre.
18:00: Panel de cierre de los integrantes y participantes de Bicentenario Recargado sobre el cine nacional, la cultura popular y sus representaciones, a la luz de estos seis años de trayectoria.
19:00 Cierre y brindis
Entrada libre y gratuita
Aula Magna Salvador Allende – Universidad Nacional del Comahue
http://fahuweb.uncoma.edu.ar/index.php
Consultas en Facebook: Bicentenario Recargado.
', 'http://fahuweb.uncoma.edu.ar/index.php/extension/noticias/530-ciclo-conversatorio-cine-e-historieta-para-vernos-y-pensarnos-homenaje-a-leonardo-favio', '2016-08-16 12:48:00                                                                                 ', 'carolina.robles@dti.uncoma.edu.ar (Carolina Robles)                                                 ', 4, NULL);
INSERT INTO noticia VALUES (98, 'Curso de Extensión El cine y la historieta en el aula', 'Curso de Extensión
El cine y la historieta en el aula
En el marco del Proyecto de Extensión “Perfeccionamiento docente y extensión cultural a través del cine argentino. Una articulación entre áreas disciplinares, instituciones educativas y participación ciudadana”, dirigido por Raúl Cadús, docente de la facultad de Humanidades, se dicta el curso de extensión “EL cine y la historieta en el aula” en el mes de septiembre. 
El dictado del curso estará a cargo del Dr. Raúl Cadús y el Especialista Daniel Bagnat. Esta propuesta extensionista pensó como público destinatario a docentes de todos los niveles/estudiantes avanzados del nivel terciario, universitario, nivel medio y al público en general que desee participar.
El presente curso articula elementos de filosofía, análisis y teoría en relación con las potencialidades del cine y la historieta como herramientas para la educación, adoptando una perspectiva de corte humanístico e interdisciplinar sobre la elaboración simbólica de la realidad por el arte y los medios audiovisuales. El curso se desarrolla mediante dos tipos de actividades: a) clases de capacitación teórica y de análisis; b) jornadas de debate y reflexión –con panelistas invitados, de alcance regional y nacional- en el marco del Ciclo Cine e historieta para vernos y pensarnos. Homenaje a Leonardo Favio, a realizarse en el Aula Magna de la Universidad Nacional del Comahue.
Fechas y horarios:
a) Jue. 1/9, Vie. 2/9; Jue. 8/9 y Vie. 9/9, de 9 a 12:30 hs.; 
b) Jue. 1/9, Vie. 2/9; Jue. 8/9, de 19 a 22; Vie. 9/9 de 15:30 a 20:30.
http://fahuweb.uncoma.edu.ar/index.php
Consultas en Facebook:  Bicentenario Recargado.', 'http://fahuweb.uncoma.edu.ar/index.php/extension/cursos-de-extension/528-curso-de-extension-el-cine-y-la-historieta-en-el-aula', '2016-08-16 12:30:00                                                                                 ', 'carolina.robles@dti.uncoma.edu.ar (Carolina Robles)                                                 ', 4, NULL);
INSERT INTO noticia VALUES (99, 'Permanecer en el plan de estudio 1032/05', 'Resolución 0086-16.pdf', 'http://medicina.uncoma.edu.ar/index.php/academica/novedades/503-permanecer-en-el-plan-de-estudio-1032-05', '2016-05-31 13:55:07                                                                                 ', 'maria.mendez@dti.uncoma.edu.ar (Maria Mendez )                                                      ', 7, NULL);
INSERT INTO noticia VALUES (100, 'Se realizó el lanzamiento del Curso de Guías de Mountain Bike dictado por la Facultad de Turismo de la UNCo.', '
	


	Quedó inaugurado en San Martín de los Andes el programa de capacitación para guías de Mountain Bike dictado por la Universidad Nacional del Comahue. Participaron del acto el gobernador del Neuquén, Omar Gutiérrez, el vicegobernador Rolando Figueroa; la diputada Alma Sapag; el subsecretario de Turismo, Andrés Méndez y la Decana de la Facultad de Turismo de la UNCo, Maria Alejandra Gazzera. El curso lo dictará la Facultad de Turismo de la Universidad Nacional del Comahue con la certificación de la Subsecretaría de Turismo de la provincia. En total hay 36 inscriptos que realizarán el curso el cual tendrá una duración de tres meses y medio, y que se dictará en la sede del Asentamiento Universitario de esa localidad.


	', 'http://prensa.uncoma.edu.ar/index.php/es/8-principal/6220-se-realizo-el-lanzamiento-del-curso-de-guias-de-mountain-bike-dictado-por-la-facultad-de-turismo-de-la-unco', '2016-08-20 03:15:43                                                                                 ', 'prensaunco@central.uncoma.edu.ar (Prensa UNCo)                                                      ', 1, NULL);
INSERT INTO noticia VALUES (101, 'La UNCo recibió a estudiantes internacionales.', '
	


	Por la mañana del viernes 19 de agosto, se realizó en el ámbito de la Subsecretaría de Relaciones Internacionales de la Universidad Nacional del Comahue, la bienvenida a estudiantes internacionales, encuentro del que participaron los estudiantes de nuestra Universidad que regresaron de sus estancias en el exterior y los estudiantes extranjeros que llegan para cursar el 2° Semestre en nuestra casa.


	Presidio el encuentro la Subsecretaria de Relaciones Internacionales, Magíster Gabriela Tedeschi Cano y autoridades académicas representantes de la Facultades donde se forman los estudiantes.


	', 'http://prensa.uncoma.edu.ar/index.php/es/8-principal/6219-la-unco-recibio-a-estudiantes-internacionales', '2016-08-19 18:04:38                                                                                 ', 'prensaunco@central.uncoma.edu.ar (Prensa UNCo)                                                      ', 1, NULL);
INSERT INTO noticia VALUES (102, 'Programa de subsidios UNCo para la finalización de posgrados en etapa de tesis.', '
	Convocatoria para docentes de la UNCo que se encuentran en etapa de elaboración de tesis de maestría o doctorado. Fecha límite para la presentación de la documentación en las facultades: 14 de octubre de 2016 (inclusive).


	Resolución N° 674/16


	EL RECTOR DE LA UNIVERSIDAD NACIONAL DEL COMAHUE RESUELVE:


	ARTÍCULO 1°: Apoyar a los docentes posgraduandos de la Universidad Nacional del Comahue que se encuentran en etapa de elaboración de tesis de maestría o doctorado, cuyos planes de tesis hayan sido aprobados con posterioridad al 1° de julio de 2014, oportunamente seleccionados por una Comisión ad hoc del Consejo de Posgrado.


	ARTÍCULO 2°: Establecer que los docentes deben revestir su cargo con una dedicación parcial o exclusiva y no haber gozado, durante el presente año, de ningún beneficio (beca o subsidio) que contribuyera a financiar sus estudios de posgrado. Las carreras a cuyos títulos se aspira deberán contar con el correspondiente reconocimiento oficial (universidades nacionales) o su equivalente en cuanto al cumplimiento de los mecanismos de validación vigentes en el país otorgante del título (universidades extrajeras).


	ARTÍCULO 3°: Asignar, bajo las condiciones establecidas en los artículos 1° y 2° a los docentes seleccionados, hasta un máximo de 20 (veinte) doctorandos y 10 (diez) maestrandos, que se encuentren en etapa de elaboración de sus tesis, la suma única de 5000 (cinco mil) pesos en caso de doctorado y la suma única de 3000 (tres mil) pesos en caso de maestría.


	', 'http://prensa.uncoma.edu.ar/index.php/es/8-principal/6218-programa-de-subsidios-unco-para-la-finalizacion-de-posgrados-en-etapa-de-tesis', '2016-08-19 14:40:01                                                                                 ', 'prensaunco@central.uncoma.edu.ar (Prensa UNCo)                                                      ', 1, NULL);
INSERT INTO noticia VALUES (103, 'Mesas de examen: Turno Ordinario Julio-Agosto 2016 (Actualizado)', 'Están disponibles las fechas y horarios de los exámenes del Turno Ordinario Julio-Agosto de 2016 [pdf]

Primer llamado: 26 al 29 de julio (*)
Segundo llamado: 8 al 12 de agosto (*)

(*) Algunas fechas pueden encontrarse fuera de estos periodos cuando las asignaturas son dictadas por otras facultades
Las inscripciones a las mesas estarán disponibles a partir de 5 de julio de 2016
---
ATENCION: cambios en mesas del segundo llamado:

Didáctica General: pasa al jueves 1/09 en el mismo horario (Vence: 30/08)
Resolución de Problemas y Algoritmos: pasa al viernes 12/08 - 15 hs. (Vence: 10/08)
Introducción a la Computación: pasa al martes 09/08 - 16 hs (Vence: 05/08)
', 'http://faiweb.uncoma.edu.ar/index.php/793-mesas-de-examen-turno-ordinario-julio-agosto-2016', '2016-08-17 05:00:00                                                                                 ', 'cristian.ilabaca@dti.uncoma.edu.ar (Super Usuario)                                                  ', 2, NULL);
INSERT INTO noticia VALUES (104, 'LLAMADOS A INSCRIPCIÓN para cubrir CARGOS DOCENTES INTERINOS Departamento de Historia - Agosto 2016', '
 
LLAMADOS A INSCRIPCIÓN para cubrir CARGOS DOCENTES INTERINOS
 



Departamento de Historia


Asignatura
Carrera
Cargo
Localidad


Universal II (1870 a nuestros días)
Prof. y Lic. en Historia
1 AYP-3 *
Neuquén



Metodología y Técnica de la Investigación Histórica

Prof. y Lic. en Historia
1 AYP-3
Neuquén




 

OBSERVACIONES: * Mientras la docente permanezca con Licencia.
INFORMES y requisitos: desde 18/08/16 al 31/08/16 Horario: de 10 a 13 hs.
INSCRIPCIÓN: 01 y 02/09/2016. Horario 10 a 13 hs. En forma personal y/o apoderado.
DPTO. DOCENTE- (BOX 86) Dirección de Administración Académica FAC. HUMANIDADES.
 
', 'http://fahuweb.uncoma.edu.ar/index.php/concursos15/555-llamados-a-inscripcion-para-cubrir-cargos-docentes-interinos-departamento-de-historia-agosto-2016', '2016-08-18 12:15:00                                                                                 ', 'carolina.robles@dti.uncoma.edu.ar (Carolina Robles)                                                 ', 4, NULL);
INSERT INTO noticia VALUES (105, 'Ciclo Conversatorio: Cine e historieta para vernos y pensarnos. Homenaje a Leonardo Favio', 'Bicentenario recargado (ciclos de pensamiento, cultura y cine argentino)Presenta:Ciclo Conversatorio: Cine e historieta para vernos y pensarnos.Homenaje a Leonardo Favio
En el marco del Bicentenario de la Independencia, los integrantes del Proyecto de Extensión “Perfeccionamiento docente y extensión cultural a través del cine argentino. Una articulación entre áreas disciplinares, instituciones educativas y participación ciudadana”, dirigido por Raúl Cadús, docente de la facultad de Humanidades, presentan: El Ciclo-conversatorio está dirigido al público en general y consta de cuatro jornadas a desarrollarse en el Aula Magna de la Universidad Nacional del Comahue. Durante las primeras tres jornadas se proyectarán tres filmes de Leonardo Favio, conformándose –tras cada proyección- un panel para el debate y la conversación sobre la temática propuesta. Luego de una breve exposición se hará lugar a la participación del público, siendo éste un momento fundamental de acuerdo con el espíritu del Ciclo.Durante la cuarta jornada tendrá lugar el espacio Bicentenario recargado invita a la Historieta Argentina, dedicado a la historieta de contenido social y político de nuestro país, consistente en una muestra que presenta un recorrido por las producciones de destacados autores regionales y nacionales, culminando en un panel con la intervención de Chelo Candia, José Massaroli, y otros representantes a nivel local. A continuación se realizará la presentación de la Revista Aquelarre, y un cierre a cargo de los integrantes y participantes de Bicentenario Recargado.El Ciclo Conversatorio Cine e historieta para vernos y pensarnos. Homenaje a Leonardo Favio es organizado por la Secretaría de Extensión de la Facultad de Humanidades de la UNCo, y cuenta con la colaboración de la Secretaría de Extensión de la UNCo, la Secretaría de Formación de ATEN, Seccional Capital, y el auspicio de la Dirección de Memoria, Verdad y Justicia-Subsecretaría de Derechos Humanos-Ministerio de Ciudadanía de la Provincia de Neuquén.Asimismo, deben destacarse la participación y acompañamiento de otras instituciones, como el I.S.F.D. N° 9, la Biblioteca Popular Jorge Fonseca, ambas de la Ciudad de Centenario, la Secretaría de Cultura de la Municipalidad de Centenario, ATEN Seccional Provincial, ATEN Seccional Centenario, así como también del Centro de Estudios en Filosofía de la Cultura (UNCo).
Programa
Jueves 1 de septiembre: Nazareno Cruz y el lobo (1975) De la leyenda al drama: encrucijadas de la cultura popular y la cultura de masas en la elaboración simbólica de la realidad.
Viernes 2 de septiembre: Aniceto (2007) Devenir afectivo, devenir cuerpo, devenir arte: una transfiguración estética de la insoportable levedad de ser.
Jueves 8 de septiembre: Juan Moreira (1973) La épica en los márgenes de la historia oficial. De la literatura al cine: travelling de la cultura popular por la realidad social. Estos tres encuentros se desarrollarán de 19:00 a 22:00 hs.
Viernes 9 de septiembre: Jornada de cierre de Bicentenario recargado. 
 15:00: Apertura del espacio Bicentenario Recargado invita a la Historieta Argentina, con una muestra de producciones e itinerarios representativos en el Hall Central del Aula Magna de la Universidad Nacional del Comahue. Recepción de instituciones educativas participantes.
 16:00: Panel sobre historieta argentina de contenido social y político, con la participación de José Massaroli (Bs. As.), Chelo Candia (Fiske Menuco-Roca, Río Negro) y Marcelo Alejandro Quiroga (Plottier, Neuquén).
 17:00: Receso
 17:30: Presentación de la Revista Aquelarre. Revista de Literatura Infantil y Juvenil
 18:00: Panel de cierre de los integrantes y participantes de Bicentenario Recargado sobre el cine nacional, la cultura popular y sus representaciones, a la luz de estos seis años de trayectoria.
 19:00 Cierre. Número artístico-musical: presentación de la obra de títeres para adultos Vairoletto. Pechito libertario.
 
 Entrada libre y gratuita
 Aula Magna Salvador Allende – Universidad Nacional del Comahue
 Mas información en Facebook:  Bicentenario Recargado 
 Tambien en: http://fahuweb.uncoma.edu.ar/index.php', 'http://fahuweb.uncoma.edu.ar/index.php/extension/noticias/554-ciclo-conversatorio-cine-e-historieta-para-vernos-y-pensarnos-homenaje-a-leonardo-favio-2', '2016-08-17 16:10:07                                                                                 ', 'carolina.robles@dti.uncoma.edu.ar (Carolina Robles)                                                 ', 4, NULL);
INSERT INTO noticia VALUES (106, 'Secretaría de Ciencia, Técnica y Posgrado Informa:', 'Se encuentra abierta la convocatoria: "Programa de subsidios para la finalización de Posgrados I"
Link para acceder al programa: http://posgrado.uncoma.edu.ar/index.php/programas/unco-pgfrrhh

Fecha límite para la presentación de la documentación: 14 de octubre de 2016 (inclusive).
', 'http://faciasweb.uncoma.edu.ar/?q=node/95', '2016-08-17 20:02:58                                                                                 ', '                                                                                                    ', 5, NULL);
INSERT INTO noticia VALUES (107, 'Secretaría de Ciencia, Técnica y Posgrado Informa:', 'Se encuentran abiertas las inscripciones a los siguientes cursos de Posgrado y Jornadas de Capacitación:
Jornada de  Capacitación: “Acceso Venosos Cuidado de la Piel y Uso de Antisépticos”
Dictada por el Lic. Cristián INZUNZA, Especialista en Enfermería Neonatal. Destinatarios: Estudiantes y Graduados de la carrera y Lic. En Enfermería.Fecha de inicio: 20/08/2016 Aula Magna. Costo de inscripción: $350. Estudiantes no abonan.
Para mayor información comunicarse a los siguientes correos electrónicos:posgradofacias@hotmail.comcienciaytecnicafacias@hotmail.com
Curso de Posgrado: “Enfermería Laboral”
Responsables a cargo: Directora: Médica Laboral Susana Coria. Secretario: Enf. Javier Ciccioli. Destinatarios: Enfermeros/as y Lic. en Enfermería.Fecha de Inicio: 06/08/2016  Primer sábado de cada mes a partir de Agosto a Noviembre (en el horario de 09 a 15 hs en aula designada). Valor del curso: Inscripción: $300 Cuota Mensual: $ 700 Enfermeros --- $ 800 Licenciados. Total de cuotas: 4 (cuatro) 

Para mayor información comunicarse a los siguientes correos electrónicos:posgradofacias@hotmail.comcienciaytecnicafacias@hotmail.com

Curso de Posgrado: Ventilación Mecánica Invasiva y no invasiva, para Enfermería (120 hs)
Destinatarios: Licenciados en Enfermería y Enfermeros.Valor del curso: Inscripción: $300 . Cuota Mensual: $ 700 Enfermeros/ $ 800 Licenciados.Fecha de Inicio: Noviembre 2016

Para mayor información comunicarse a los siguientes correos electrónicos:posgradofacias@hotmail.comcienciaytecnicafacias@hotmail.com

Especialización  en Higiene y Seguridad en el Trabajo  (Presencial - duración 2 años) – 566 hs

Destinatarios: Licenciados en Ciencias Ambientales, Ingenieros, Bioquímicos, Licenciados en Química. Fecha de Inicio: Octubre 2016 – Finaliza en 2018 
Cursadas  viernes y sábados cada 15 días (Viernes de 18 a 21 – Sábados de 09 a 13)
Valor del curso: Inscripción $500 – Cuotas mensuales de $1.800
Para mayor información comunicarse a los siguientes correos electrónicos:posgradofacias@hotmail.comcienciaytecnicafacias@hotmail.com

 

', 'http://faciasweb.uncoma.edu.ar/?q=node/94', '2016-08-17 19:26:43                                                                                 ', '                                                                                                    ', 5, NULL);
INSERT INTO noticia VALUES (108, 'PLANTACION DE ESPECIES NATIVAS DE BAJOS REQUERIMIENTOS HIDRICOS EN EL PARQUE INDUSTRIAL NEUQUEN (PIN)', 'La Secretaria de Extensión y Vinculación Técnica de FACIAS los invita a la  primera plantación de Plantas Nativas de bajos requerimiento hídricos, este jueves 18/8 a partir de las 13,30 hs en el Parque Industrial de la Ciudad Neuquèn. 
La plantación estará a cargo de alumnos de 4 grado de la Escuela 175 del Barrio Ciudad Industrial y miembros de la Cooperativa de Trabajo Restaurar Ltda.
La mencionada actividad se realizará  gracias al convenio que se firmo en conjunto con el CAPIN, UNCo, FACIAS, LARREA y la Coop. de Trabajo RESTAURAR Ltda.
', 'http://faciasweb.uncoma.edu.ar/?q=node/93', '2016-08-17 14:08:39                                                                                 ', '                                                                                                    ', 5, NULL);
INSERT INTO noticia VALUES (109, 'ART', '', 'http://medicina.uncoma.edu.ar/index.php/administracion/recursos-humanos/541-art', '2016-08-18 20:04:49                                                                                 ', 'maria.mendez@dti.uncoma.edu.ar (Maria Mendez )                                                      ', 7, NULL);
INSERT INTO noticia VALUES (110, 'Presentación de las planillas de Declaración Jurada de Cargos del personal docente', 'INSTRUCTIVO PARA COMPLETAR DECLARACIONES JURADAS DE CARGOS.pdf
DECLARACION JURADA DE DATOS PERSONALES Y LABORALES DEL PERSONAL UNIVERSITARIO', 'http://medicina.uncoma.edu.ar/index.php/administracion/recursos-humanos/462-presentacion-de-las-planillas-de-declaracion-jurada-de-cargos-del-personal-docente', '2016-02-19 12:45:16                                                                                 ', 'maria.mendez@dti.uncoma.edu.ar (Maria Mendez )                                                      ', 7, NULL);
INSERT INTO noticia VALUES (111, 'Convocatoria a representantes de la FaCiMed en el Consejo Consultivo de la Comisión Universitaria de Accesibilidad al Medio Físico y Social (CUAMFyS)', '

SECRETARIA DE BIENESTAR UNIVERSITARIO
Convocatoria a representantes de la FaCiMed en el Consejo Consultivo de la Comisión Universitaria de Accesibilidad al Medio Físico y Social (CUAMFyS)
La FaCiMed necesita seleccionar representantes de los claustros docentes, estudiantes y personal administrativo para integrar el Consejo Consultivo de la Comisión de Accesibilidad al Medio Físico y Social de la Universidad Nacional del Comahue. Se requiere 1 (un) titular y 1 (un) suplente por cada claustro. Los mismos deberán representar a la Facultad en las 2 o 3 reuniones anuales que organiza la Comisión y llevar a la misma inquietudes relacionadas con temas de accesibilidad, discapacidad y derechos humanos que ocurran en el ámbito universitario.
Quienes quieran postularse deben acercar nota a la Secretaría de Bienestar y Vinculación Universitaria (sede Toschi).
Para mas información dirigirse a la Secretaría de Bienestar (secretaria.bienestar@facimed.uncoma.edu.ar) o a la Secretaría de Cátedras de Toschi (catedrastoschi.medicina@gmail.com).

', 'http://medicina.uncoma.edu.ar/index.php/becas/novedades/470-convocatoria-a-representantes-de-la-facimed-en-el-consejo-consultivo-de-la-comision-universitaria-de-accesibilidad-al-medio-fisico-y-social-cuamfys', '2016-02-26 12:56:49                                                                                 ', 'maria.mendez@dti.uncoma.edu.ar (Maria Mendez )                                                      ', 7, NULL);
INSERT INTO noticia VALUES (112, 'Comienza el dictado de la carrera "Licenciatura en Gestión y Administración Universitaria" para el personal Nodocente de la UNCo.', '
	


	El próximo lunes 22 de agosto se comenzará con la inscripción, para la carrera "Licenciatura en gestión y Administración Universitaria". La carrera integra la oferta académica que brinda la Facultad de Economía y Administración de la Universidad Nacional del Comahue.


	Desde la Facultad de Economía y Administración -con el apoyo de las autoridades superiores de la UNCo, el gremio APUNC y el personal de la Secretaría Académica de la UNCo, se ha propuesto iniciar el dictado simultáneo de la Licenciatura en Gestión y Administración Universitaria (Ordenanza 437/15.) y del Ciclo Complementario Licenciatura en Gestión y Administración Universitaria (Ordenanza 438/15) a partir de septiembre de 2016.


	Para ello el equipo de la Secretaría Académica de la FaEA ha dispuesto el siguiente cronograma:


	A partir del lunes 22 de agosto y hasta el viernes 2 de septiembre, en el horario de 9 a 12 se abrirá la preinscripción junto a la entrega de documentación para cursar la Carrera Licenciatura en Gestión y Administración Universitaria y el Ciclo Complementario.


	', 'http://prensa.uncoma.edu.ar/index.php/es/novedades/6221-comienza-el-dictado-de-la-carrera-licenciatura-en-gestion-y-administracion-universitaria-para-el-personal-nodocente-de-la-unco', '2016-08-21 02:28:39                                                                                 ', 'prensaunco@central.uncoma.edu.ar (Prensa UNCo)                                                      ', 1, NULL);
INSERT INTO noticia VALUES (113, 'INVITACIÓN AL ACTO ACADÉMICO DE COLACIÓN DE GRADOS', 'El Decano de la Facultad de Informática tiene el agrado de invitar a la comunidad FAI al Acto Académico de Jura y Entrega de Diplomas, a realizarse el día viernes 26 de agosto de 2016 a las 18 hs en el Aula Magna de nuestra Universidad.
 
En esta oportunidad los Graduados son:
 
Licenciatura en Ciencias de la Computación 
Yanina Paola PEREZ
Valeria ZORATTO
 
Analista en Computación 
Cristian Adrian Matias NAVARRO
 
Analista Programador Universitario
Juan Pablo ORLANDO
Esteban Lucas RUIZ DE GALARRETA
 
Tecnicatura Universitaria en Desarrollo Web
Elizabeth del Carmen FINCHEIRA
María de las Mercedes Agustina LESPI
Gonzalo MOURE
Dannae Aracelli OLMOS
Maximiliano Vittorio PEREZ
 
Tecnicatura Universitaria en Administración de Sistemas y Software Libre
Luis Amadeo SCHERGER
Eduardo Ariel ZAMORA', 'http://faiweb.uncoma.edu.ar/index.php/810-invitacion-al-acto-academico-de-colacion-de-grados', '2016-08-22 18:56:03                                                                                 ', 'contactos@fai.uncoma.edu.ar (Administrador)                                                         ', 2, NULL);
INSERT INTO noticia VALUES (114, 'Taller de Escritura Académica', '', 'http://fahuweb.uncoma.edu.ar/index.php/185-articulo-inicio/556-taller-de-escritura-academica', '2016-08-22 17:49:12                                                                                 ', 'carolina.robles@dti.uncoma.edu.ar (Carolina Robles)                                                 ', 4, NULL);
INSERT INTO noticia VALUES (115, 'Socialthon 2016 - Cronograma de Actividades', 'Los días 23 y 24 de Agosto de 2016, en el Espacio Duam, se llevará a cabo el evento "Socialthon: Ideas para resolver problemas sociales".
La actividad es gratuita y está dirigida a innovadores, creativos, diseñadores, programadores y estudiantes de distintos niveles.
El evento será transmitido online en http://hackathon.neuquen.gob.ar
Por consultas e inscripciones enviar un correo electrónico a cherzel@neuquen.gov.ar 
', 'http://faiweb.uncoma.edu.ar/index.php/811-socialthon-2016-cronograma-de-actividades', '2016-08-22 22:18:28                                                                                 ', 'contactos@fai.uncoma.edu.ar (Administrador)                                                         ', 2, NULL);
INSERT INTO noticia VALUES (116, 'TAP: Torneo Argentino de Programación', '
INSCRIPCIONES ABIERTAS
http://torneoprogramacion.com.ar/2016/07/30/tap-2016-inscripcion-abierta/
¿Qué es el Torneo Argentino de Programación?
Es una competencia por equipos de 3 estudiantes de la misma institución de educación superior de Argentina. La competencia tiene 5 horas de duración, en las que cada equipo deberá resolver un conjunto de problemas algorítmicos, creando un programa que solucione cada problema.
¿Qué lenguajes están permitidos?
Se puede utilizar C, C++ o Java. No es necesario que todos sus programas estén escritos en el mismo lenguaje.
¿Cómo nos inscribimos?
La inscripción se hará en http://icpc.baylor.edu/regionals/finder/tap-2015 , y cada participante debe tener un usuario. Si tienen un entrenador, también deberá tener un usuario. Si no, pueden inscribir como entrenador a uno de los participantes, que actuará como contacto principal (Si el equipo decide participar de la competencia regional ACM, podrá luego cambiar su entrenador ya que en esa instancia no puede ser participante). Cada inscripción será confirmada luego del cierre por un organizador local.
¿Pueden varios equipos tener el mismo entrenador?
Sí, pero un participante solo puede actuar como entrenador de su propio equipo.', 'http://faiweb.uncoma.edu.ar/index.php/812-tap-torneo-argentino-de-programacion', '2016-08-22 23:22:17                                                                                 ', 'contactos@fai.uncoma.edu.ar (Administrador)                                                         ', 2, NULL);
INSERT INTO noticia VALUES (117, 'Horarios ingreso y permanencia', '   
  
 ', 'http://fahuweb.uncoma.edu.ar/index.php/ingreso/558-horarios-ingreso-y-permanencia', '2016-08-22 20:19:46                                                                                 ', 'carolina.robles@dti.uncoma.edu.ar (Carolina Robles)                                                 ', 4, NULL);
INSERT INTO noticia VALUES (118, 'Invitación al XXXVI Acto Académico de Colación de Grados', 'El Decano de la Facultad de Informática tiene el agrado de invitar a la comunidad FAI al XXXVI Acto Académico de Jura y Entrega de Diplomas, a realizarse el día viernes 26 de agosto de 2016 a las 18 hs en el Aula Magna de nuestra Universidad.
En esta oportunidad los Graduados son:

Licenciatura en Ciencias de la Computación

Yanina Paola PEREZ
Valeria ZORATTO


Analista en Computación

Cristian Adrian Matias NAVARRO


Analista Programador Universitario

Juan Pablo ORLANDO
Esteban Lucas RUIZ DE GALARRETA


Tecnicatura Universitaria en Desarrollo Web

Elizabeth del Carmen FINCHEIRA
María de las Mercedes Agustina LESPI
Gonzalo MOURE
Dannae Aracelli OLMOS
Maximiliano Vittorio PEREZ


Tecnicatura Universitaria en Administración de Sistemas y Software Libre

Luis Amadeo SCHERGER
Eduardo Ariel ZAMORA


', 'http://faiweb.uncoma.edu.ar/index.php/810-invitacion-al-acto-academico-de-colacion-de-grados', '2016-08-22 18:56:03                                                                                 ', 'contactos@fai.uncoma.edu.ar (Administrador)                                                         ', 2, NULL);
INSERT INTO noticia VALUES (119, 'Actualización y Nuevo Diseño de Pedco-UNCOMA.', '
	


	Desde la Subsecretaría de Tecnologías de la Información de la Universidad Nacional del Comahue, se informa que se actualizó el diseño y migración de la Plataforma de Educación a Distancia http://pedco.uncoma.edu.ar


	En la actualidad, son 27877 usuarios que utilizan este medio de enseñanza-aprendizaje.


	A su vez, existen 1500 profesores activos que utilizan la plataforma e interactúan con sus alumnos a través de la herramienta en todo el ámbito de la Universidad Nacional del Comahue.


	', 'http://prensa.uncoma.edu.ar/index.php/es/novedades/6223-actualizacion-y-nuevo-diseno-de-pedco-uncoma', '2016-08-22 23:33:15                                                                                 ', 'prensaunco@central.uncoma.edu.ar (Prensa UNCo)                                                      ', 1, NULL);
INSERT INTO noticia VALUES (120, 'Programa de subsidios UNCo para la finalización de posgrados II.', '
	Convocatoria para el personal docente y técnico-administrativo de la Universidad Nacional del Comahue que se encuentra realizando su formación de posgrado en la misma


	Descargar Resolución N° 682/16


	http://posgrado.uncoma.edu.ar/images/sampledata/Documentos/2016_resol_0682_2016_47.pdf


	Fecha límite para la presentación de la documentación en las facultades: 14 de octubre de 2016 (inclusive).


	EL RECTOR DE LA UNIVERSIDAD NACIONAL DEL COMAHUE RESUELVE:


	ARTÍCULO 1°: APOYAR la formación del personal docente y técnico - administrativo de la Universidad Nacional del Comahue que reviste el carácter de “alumno regular de Posgrado” (Ord. N° 263/15 Art. 8°), en carreras de esta misma Institución que ofrecen títulos con reconocimiento oficial vigente, oportunamente seleccionados por una Comisión ad hoc del Consejo de Posgrado.


	', 'http://prensa.uncoma.edu.ar/index.php/es/8-principal/6222-programa-de-subsidios-unco-para-la-finalizacion-de-posgrados-ii', '2016-08-22 23:28:50                                                                                 ', 'prensaunco@central.uncoma.edu.ar (Prensa UNCo)                                                      ', 1, NULL);
INSERT INTO noticia VALUES (121, 'Llamado a Inscripción Para Cubrir Cargos', 'Localización: NEUQUEN
', 'http://faciasweb.uncoma.edu.ar/?q=node/97', '2016-08-23 14:01:26                                                                                 ', '                                                                                                    ', 5, NULL);
INSERT INTO noticia VALUES (122, 'Departamento Docente Informa', 'Llamado a Inscripción Para Cubrir Cargos:
Localización: NEUQUEN
', 'http://faciasweb.uncoma.edu.ar/?q=node/97', '2016-08-23 14:01:26                                                                                 ', '                                                                                                    ', 5, NULL);
INSERT INTO noticia VALUES (123, 'Departamento Docente Informa:', 'Llamado a Inscripción Para Cubrir Cargos:
Localización: NEUQUEN
', 'http://faciasweb.uncoma.edu.ar/?q=node/97', '2016-08-23 14:01:26                                                                                 ', '                                                                                                    ', 5, NULL);
INSERT INTO noticia VALUES (124, 'Proyecto Neies MERCOSUR: Internacionalización e Integración: Percepciones, Concepciones y Prácticas en las Universidades de la Región.', '
	


	La Subsecretaría de Relaciones Internacionales de la Universidad Nacional del Comahue realizó una jornada de trabajo correspondiente a la ejecución del Proyecto Neies MERCOSUR: Internacionalización e Integración: Percepciones, Concepciones y Prácticas en las Universidades de la Región durante el 17 y 18 de agosto, producto de la Convocatoria del Programa de Internacionalización de la Educación Superior y Cooperación Internacional (PIESCI) de la Secretaria de Políticas Universitarias, organismo que financia esta iniciativa.


	El proyecto tiene como objetivo general: relevar, identificar y analizar las concepciones sobre la internacionalización universitaria así como las prácticas concretas de cooperación internacional llevadas a cabo por los diferentes actores de las comunidades académicas y de gestión en universidades de la región (especialmente de: Argentina, Brasil y Chile) y su relación con el proceso de integración regional, a fin de aportar orientaciones que permitan la elaboración de políticas generales y propuestas efectivas para consolidar la integración universitaria a nivel regional.


	A la jornada de trabajo de dos días asistieron:


	Gustavo Crisafulli (Rector de la Universidad Nacional del Comahue y Director del proyecto)


	Lionel Korsunsky (Secretario de Extensión de la Universidad Nacional del Comahue, Argentina y, uno de los responsables del proyecto)


	Gabriela Tedeschi Cano (Subsecretaria de Relaciones Internacionales de la Universidad Nacional del Comahue, Argentina)


	 


	Liley López Fernández (Responsable Área de Proyectos de la Subsecretaría de relaciones Internacionales de la Universidad Nacional del Comahue, Argentina)


	Valeria Pattacini (Directora de Relaciones Internacionales de la Universidad Nacional de San Martín, Argentina)


	Fiorella Wernicke (Responsable de Cooperación Internacional de la Universidad Nacional del Avellaneda, Argentina)


	Paulina Latorre Bahamóndez (Directora de Relaciones internacionales de la Universidad Católica de Temuco, Chile)


	Martha Ramírez (Directora de Cooperación Internacional de la Universidad de la Frontera, Chile)


	María Amalia Oliva (Asistente de proyectos de la Universidad Estadual Paulista “Julio de Mesquita Filhio, Brasil)


	Paloma Dias Silveira (Técnica de la Secretaria de Relaciones Internacionales de la Universidad Federal do Rio Grande do Sul, Brasil)


	Estas acciones del Sector Educativo del MERCOSUR, son promovidas por la Comisión Regional Coordinadora de Educación Superior en el marco de las Metas y Acciones para Educación Superior correspondientes al Plan Estratégico 2006-2010, para lo cual se estableció la creación de un Núcleo de Estudios e Investigaciones en Educación Superior (NEIES) del MERCOSUR con el objetivo de contribuir con la cooperación interinstitucional entre los sistemas universitarios de los países del MERCOSUR."
', 'http://prensa.uncoma.edu.ar/index.php/es/8-principal/6224-proyecto-neies-mercosur-internacionalizacion-e-integracion-percepciones-concepciones-y-practicas-en-las-universidades-de-la-region', '2016-08-23 15:37:02                                                                                 ', 'prensaunco@central.uncoma.edu.ar (Prensa UNCo)                                                      ', 1, NULL);
INSERT INTO noticia VALUES (125, 'Tesis Defendidas de Licenciatura en Saneamiento y Protección Ambiental  ', 'Lic.  Kraser, Maira Vanina  defendió su tesis de Grado el pasado día  11 de Agosto. 
Título de las Tesis: Fuentes de contaminación: Un aporte al estudio de la calidad del agua del Arroyo Durán 
Directora: Msc. Ana Cecilia Dufilho y Co directora: Lic. María Cecilia Navarro
 
Lic. Rusconi , Noelia defendió su tesis de Grado el dia 10 de agosto
Titulo: Evaluación de riesgo para la salud humana por consumo de productos hortícolas con residuos de plaguicidas 
Directora: Dra. Mónica Montagna y Co directora: Lic. Patricia Ohaco
 
La comunidad de FACIAS, saluda y felicita a sus nuevas Licenciadas.
', 'http://faciasweb.uncoma.edu.ar/?q=node/98', '2016-08-23 17:49:18                                                                                 ', '                                                                                                    ', 5, NULL);
INSERT INTO noticia VALUES (126, 'Charla informativa sobre la calle interna "Libres Pensadores" ubicada en la sede Neuquén de la UNCo.', '
	


	Las autoridades de la Universidad Nacional del Comahue indicaron que, a partir de la solicitud enviada por parte del intendente Horacio Quiroga en representación del Municipio de la ciudad de Neuquén, a la Universidad para disponer del uso público de la calle interna "Libres Pensadores" se ha resuelto disponer de una serie de actividades que permitan dar la mayor difusión y participación de la comunidad universitaria como de la sociedad en general. La calle Libres Pensadores es una arteria interna que posee la institución dentro de su campus universitario para comunicar sus facultades y el resto de sus dependencias académicas e institucionales.


	', 'http://prensa.uncoma.edu.ar/index.php/es/8-principal/6225-charla-informativa-sobre-la-calle-interna-libres-pensadores-ubicada-en-la-sede-neuquen-de-la-unco', '2016-08-23 21:54:17                                                                                 ', 'prensaunco@central.uncoma.edu.ar (Prensa UNCo)                                                      ', 1, NULL);
INSERT INTO noticia VALUES (127, 'Estudiantes y docentes de locución de la UNCo produjeron una campaña radial de educación vial.', '
	


	Los estudiantes y docentes de la cátedra Practica Integral de Radio, de la Orientación Locución en la Carrera de Comunicación Social de la Facultad de Derecho y Ciencias Sociales de la Universidad Nacional del Comahue, produjeron una serie de micros de educación vial que serán emitidos en la programación de Radio Antena Libre (FM 89.1 General Roca).


	Los spots contienen información necesaria para los automovilistas a tener en cuenta en situaciones que se producen durante el manejo de un automóvil. Como manejar con la presencia de agua en el asfalto, los conductores que están medicados y las medidas de seguridad para con los niños son algunos de los temas tratados. La temática, sobre la educación vial, es un capitulo que se aborda en el desarrollo de un proyecto mucho más amplio como es una “Campaña de Educación Social” donde además se prevé desarrollar diferentes piezas comunicacionales sobre salud y medidas preventivas en el ámbito privado o público que a diario compartimos en la sociedad.


	', 'http://prensa.uncoma.edu.ar/index.php/es/8-principal/6226-estudiantes-y-docentes-de-locucion-de-la-unco-produjeron-una-campana-radial-de-educacion-vial', '2016-08-24 14:08:15                                                                                 ', 'prensaunco@central.uncoma.edu.ar (Prensa UNCo)                                                      ', 1, NULL);
INSERT INTO noticia VALUES (144, 'Talleres de técnicas de estudio (inscripciones abiertas - cupos limitados)', 'Están abiertas las inscripciones para talleres dictados por la Universidad.
HAY SOLO 10 CUPOS PARA ESTUDIANTES FAI!!

TALLER COMPRENSION DE TEXTOS Y REALIZACION DE RESUMENES: Viernes 2, 9 y 16 de septiembre de 9 a 11:30 hs
TALLER ORGANIZACION DEL TIEMPO:  Viernes 23 de septiembre de 9 a 11:30 hs
TALLER INTERPRETACION DE CONSIGNAS: Viernes 30/9, 1 Y 8 de Octubre de 9 a 11:30 hs
TALLER PREPARACION DE UN EXAMEN FINAL: Viernes 14, 21 y 28 de Octubre de 9 a 11:30 hs

Interesados enviar mail a secretaria.academica@fi.uncoma.edu.ar hasta el miércoles 31/08 indicando nombre, apellido y legajo', 'http://faiweb.uncoma.edu.ar/index.php/814-talleres-de-tecnicas-de-estudio-inscripciones-abiertas-cupos-limitados', '2016-08-29 23:01:08                                                                                 ', 'contactos@fai.uncoma.edu.ar (Administrador)                                                         ', 2, '                                                                                                                                                                                                        ');
INSERT INTO noticia VALUES (128, 'Se reunió el Consejo de Extensión de la UNCo.', '
	


	El pasado jueves 10 de agosto sesionó el Consejo de Extensión de la Universidad Nacional del Comahue en el Salón del Consejo Superior de la casa de Altos estudios. De la reunión participaron 14 unidades académicas y fue presidido el encuentro por el rector Gustavo Crisafulli y vicerrector, Daniel Nataine, quienes presentaron al nuevo equipo de gestión.


	Los temas abordados durante el encuentro fueron: la articulación entre la secretaria y las sedes universitarias que posee la UNCo en tres provincias, el desarrollo de mecanismos de difusión de información para lo cual se trabaja en desarrollar una página web del área, calendarios de eventos, mailing, etc. Por otro lado, se presentaron las convocatorias de la Secretaria de Política Universitarias (SPU) que se encuentran en curso y las que se abrirán próximamente. Se debatió además sobre los llamados de presentación de proyectos de extensión en el 2016-2017.   


	El Secretario de Extensión Universitaria, Magister Lionel Korsunsky indicó al finalizar la actividad “que se fortalecerá la vinculación con las unidades académicas a través de un trabajo en conjunto y participativo. Por lo que propuso reuniones periódicas para ir abordado diferentes temas que competen al área. Al finalizar la actividad se acordó mantener la segunda reunión el 7 de septiembre. 
', 'http://prensa.uncoma.edu.ar/index.php/es/novedades/6227-se-reunio-el-consejo-de-extension-de-la-unco', '2016-08-24 16:31:11                                                                                 ', 'prensaunco@central.uncoma.edu.ar (Prensa UNCo)                                                      ', 1, NULL);
INSERT INTO noticia VALUES (129, 'Se presentó en la UNCo el Proyecto: “Estrategias para la gestión sustentable de recursos hídricos ante escenarios de estrés hídrico en la región del Comahue”.', '
	


	Por la mañana del miércoles 24 de agosto se realizó el encuentro denominado proyecto Climagua que lidera la Fundación Bariloche junto a la Universidad Nacional del Comahue y el The Stockholm Environment Institute (SEI) en el Aula Magna de la UNCo.


	En la oportunidad se realizó la presentación del resultado del proyecto de adaptación de población vulnerable al estrés hídrico producido por el Cambio Climático en la región del Comahue – Argentina. El proyecto CLIMAGUA busca fortalecer la capacidad de adaptación al estrés hídrico en la región del Comahue (Neuquén y Río Negro) mediante el apoyo a la formulación de políticas hídricas y la implementación de medidas de adaptación en el contexto del Cambio Climático y otros factores de perturbación que sufre la región. El proyecto está financiado por el International Development Research Centre de Canadá (IDRC). Es un proyecto de 36 meses que se inició en marzo de 2013.


	', 'http://prensa.uncoma.edu.ar/index.php/es/8-principal/6228-se-presento-en-la-unco-el-proyecto-estrategias-para-la-gestion-sustentable-de-recursos-hidricos-ante-escenarios-de-estres-hidrico-en-la-region-del-comahue', '2016-08-24 16:35:08                                                                                 ', 'prensaunco@central.uncoma.edu.ar (Prensa UNCo)                                                      ', 1, NULL);
INSERT INTO noticia VALUES (130, 'Convocatoria para asistir a la Segunda Escuela de Informática Patagónica (UNSJB)', 'Del 19 al 23 de septiembre de 2016 se realizará la "Segunda Escuela de Informática Patagónica" en la sede Puerto Madryn de la Universidad Nacional de la Patagonia San Juan Bosco (UNPSJB).
La UNPSJB, en conjunto con la Facultad de Informática, ofrece a los alumnos avanzados de las carreras que se dictan en la facultad, las siguientes ayudas para que puedan asistir:


Alojamiento gratuito


Becas de comida


Pasajes ida y vuelta a Madryn.


Talleres gratuitos


Los interesados deberán postularse enviando su Rendimiento Académico y datos de contacto a secretaria.extension@fi.uncoma.edu.ar indicando en el asunto: "Convocatoria Escuela de Informática"
Fecha límite de postulación: 01 de septiembre de 2016.
Cupos limitados.
Los cursos a dictarse son:


Introducción a la Programación Web con AngularJS.


Middleware con Node.JS Introducción a servidores Javascript asincrónicos.


Taller introductorio a Libertya ERP


Programación de Aplicaciones Móviles: un código, muchas plataformas.


Sistemas embebidos y de tiempo real.


Introducción al lenguaje Python.


Más información en http://www.eip.unp.edu.ar/', 'http://faiweb.uncoma.edu.ar/index.php/813-convocatoria-para-asistir-a-la-segunda-escuela-de-informatica-patagonica-unsjb', '2016-08-24 21:43:42                                                                                 ', 'contactos@fai.uncoma.edu.ar (Administrador)                                                         ', 2, NULL);
INSERT INTO noticia VALUES (131, 'Convocatoria 2017 para la presentación de Proyectos de Investigación  (PIN)', ' 


Convocatoria 2017 para la presentación de Proyectos de Investigación  (PIN)
La Secretaría de Investigación y Vinculación Tecnológica, comunica que los Proyectos para la Convocatoria 2017, podrán presentarse en la Facultad hasta el 30/08/16.
Para mayor información comunicarse a: investigacion.medicina@gmail.com 

', 'http://medicina.uncoma.edu.ar/index.php/investigacion/novedades/537-convocatoria-2017-para-la-presentacion-de-proyectos-de-investigacion-pin', '2016-08-17 19:42:43                                                                                 ', 'maria.mendez@dti.uncoma.edu.ar (Maria Mendez )                                                      ', 7, NULL);
INSERT INTO noticia VALUES (132, 'Cursos de posgrado sobre dependencia de drogas “Diagnóstico precoz y afrontamiento básico”', 'Cursos de posgrado sobre dependencia de drogas “Diagnóstico precoz y afrontamiento básico”. (Resolución CD Nº 88/16)
Modalidad semipresencial.

Tres módulos presenciales de un día cada uno, los días 17 de Septiembre, 12 de Octubre y 12 de Noviembre. En el horario de 9 a 17 hs.
Tres módulos online.


La Secretaría de Posgrado de la Facultad de Ciencias Médicas de la UNCo informa que se encuentra abierta la inscripción para el Curso de Posgrado sobre dependencia de drogas “Diagnóstico precoz y afrontamiento básico”, que comenzará el próximo 17 de septiembre en la sede de la Facultad, ubicada entre las calles Toschi y Arrayanes de la ciudad de Cipolletti.


El curso apunta a presentar conceptos básicos relacionados con la dependencia de drogas y a seleccionar los conceptos necesarios para diagnosticar y tratar adecuadamente esta dependencia.


Está destinado a profesionales y auxiliares integrantes de los equipos de salud e instituciones relacionadas, con una carga horaria de 50 horas reloj en modalidad semipresencial (3 presenciales y 3 en aula virtual). Las fechas de los encuentros presenciales son: 17 de septiembre/ 15 de octubre y 12 de noviembre de 2016.


El arancel total es de $6000 (6 cuotas de $1000). Arancel con descuento a grupos institucionales.




(los interesados deberán enviar e-mail con datos de contacto: nombre, apellido, DNI, teléfono).






Informes: posgrado.facimed@gmail.com.


Teléfonos 0299/4776140 Int. 18 // Cel. 154084034 


Inscripcion: medicina.uncoma.edu.ar/inscripciones



 ', 'http://medicina.uncoma.edu.ar/index.php/posgrado/cursos/545-cursos-de-posgrado-sobre-dependencia-de-drogas-diagnostico-precoz-y-afrontamiento-basico', '2016-08-24 19:14:42                                                                                 ', 'maria.mendez@dti.uncoma.edu.ar (Maria Mendez )                                                      ', 7, NULL);
INSERT INTO noticia VALUES (133, 'Cursos de posgrado sobre dependencia de drogas “Investigación, diagnóstico y tratamiento”', '
Cursos de posgrado sobre dependencia de drogas “Investigación, diagnóstico y tratamiento”
Modalidad Virtual. 10 módulos. Inicio 3 de Octubre de 2016.


La Secretaría de Posgrado de la Facultad de Ciencias Médicas de la UNCo informa que se encuentra abierta la inscripción para el Curso de Posgrado sobre dependencia de drogas “Investigación, diagnóstico y tratamiento”, que comenzará el próximo 17 de septiembre en la sede de la Facultad, ubicada entre las calles Toschi y Arrayanes de la ciudad de Cipolletti.


El curso apunta a aprender a investigar la dependencia de drogas “legales” e “ilegales”, a diagnosticar la dependencia y a conocer los tipos de tratamiento.


Está destinado a profesionales de la salud humana e investigadores y científicos de todas las ciencias fácticas y formales, con una carga horaria de 110 horas reloj bajo modalidad virtual (10 encuentros).


El arancel total es de $15.000 (10 cuotas de $1.500). Las actividades son en cuotas y con descuento a grupos institucionales.


Informes: posgrado.facimed@gmail.com.
Teléfonos 0299/4776140 Int. 18 // Cel. 154084034 
Inscripcion: medicina.uncoma.edu.ar/inscripciones
 

 ', 'http://medicina.uncoma.edu.ar/index.php/posgrado/cursos/546-cursos-de-posgrado-sobre-dependencia-de-drogas-investigacion-diagnostico-y-tratamiento', '2016-08-24 18:37:45                                                                                 ', 'maria.mendez@dti.uncoma.edu.ar (Maria Mendez )                                                      ', 7, NULL);
INSERT INTO noticia VALUES (134, 'UNCo - Seminario Ecotono “Una revisión del fuego como promotor de las invasiones de pinos en el Hemisferio Sur”.', '
	El Comité organizador del ciclo de seminarios del Laboratorio Ecotono dependiente del Centro Regional Universitario Bariloche de la Universidad Nacional del Comahue informó la realización el próximo viernes 26 de agosto a las 15 horas a un seminario del ciclo de seminarios 2016 del Laboratorio Ecotono, en la sala Eddy Rapoport.


	El título de la disertación es: Una revisión del fuego como promotor de las invasiones de pinos en el Hemisferio Sur, siendo su expositor: Jorgelina Franzese, Lab. Ecotono. INIBIOMA (CONICET-UNComahue)


	Resumen:


	', 'http://prensa.uncoma.edu.ar/index.php/es/8-principal/6229-unco-seminario-ecotono-una-revision-del-fuego-como-promotor-de-las-invasiones-de-pinos-en-el-hemisferio-sur', '2016-08-25 14:41:40                                                                                 ', 'prensaunco@central.uncoma.edu.ar (Prensa UNCo)                                                      ', 1, NULL);
INSERT INTO noticia VALUES (135, 'Se encuentra abierta la inscripción en la UNCo al Curso de Posgrado: LEGISLACIÓN ALIMENTARIA', '
	La Facultad de Ciencia y Tecnología de los Alimentos de la UNCo.


	Informa que se encuentra abierta la inscripción al Curso de Posgrado: LEGISLACIÓN ALIMENTARIA.


	 


	El mismo tiene modalidad teórico práctica con algunas actividades a distancia, el dictado estará a cargo del Mg. Fabián Benitez jefe del departamento de Inscripción de productos de consumo de la dirección de alimentos del ministerio de salud de la provincia de Buenos Aires. Profesor Adjunto de Bromatología, Higiene e Inspección de Alimentos y de la cátedra de Tecnología Aplicada a los productos alimenticios de la Facultad de Ciencias Veterinarias de la Universidad Nacional de la Plata.El curso se dictará durante toda la jornada de los días 16-17 de Setiembre, 14-15 de Octubre y 11-12 de Noviembre en la ciudad de Ingeniero Huergo, Río Negro.


	', 'http://prensa.uncoma.edu.ar/index.php/es/8-principal/6230-se-encuentra-abierta-la-inscripcion-en-la-unco-al-curso-de-posgrado-legislacion-alimentaria', '2016-08-25 15:02:04                                                                                 ', 'prensaunco@central.uncoma.edu.ar (Prensa UNCo)                                                      ', 1, NULL);
INSERT INTO noticia VALUES (136, 'TALLER "Aprendiendo a usar el software Elan: Nociones básicas"', '
 
{mp4remote} http://fahuweb.uncoma.edu.ar/phocadownload/VideosExtension/VIDEO_1_rotated.mp4 |650|400 {/mp4remote}
{mp4remote} http://fahuweb.uncoma.edu.ar/phocadownload/VideosExtension/VIDEO_2_rotated1.mp4 |650|400 {/mp4remote}', 'http://fahuweb.uncoma.edu.ar/index.php/extension/noticias/560-taller-aprendiendo-a-usar-el-software-elan-nociones-basicas', '2016-08-25 20:14:20                                                                                 ', 'carolina.robles@dti.uncoma.edu.ar (Carolina Robles)                                                 ', 4, NULL);
INSERT INTO noticia VALUES (137, 'Se realizó la Charla informativa sobre la situación de la calle interna "Libres Pensadores" ubicada en la sede Neuquén de la UNCo.', '
	


	Las autoridades de la Universidad Nacional del Comahue presidieron al mediodía del jueves 25 de agosto una reunión en el aula 102 del sector de aulas comunes para informar las acciones en curso frente al pedido del Municipio de Neuquén de ceder como arteria pública la calle interna "Libres Pensadores" del Campus de la Universidad.


	En la oportunidad se brindó la información acerca del estado de situación, así como de las acciones que se están realizando, desde la nueva convocatoria a la comisión mixta Universidad-Municipio hasta la elaboración de un Informe técnico sobre el impacto de este pedido en la vida del Campus.


	', 'http://prensa.uncoma.edu.ar/index.php/es/novedades/6231-se-realizo-la-charla-informativa-sobre-la-situacion-de-la-calle-interna-libres-pensadores-ubicada-en-la-sede-neuquen-de-la-unco', '2016-08-25 22:50:24                                                                                 ', 'prensaunco@central.uncoma.edu.ar (Prensa UNCo)                                                      ', 1, NULL);
INSERT INTO noticia VALUES (138, '“Etnografía, memoria y sujeto histórico”', '
La Etnografía es una metodología de investigación desarrollada por la Antropología desde principios del siglo XX. Surgió como un método especialmente elaborado y utilizado por los antropólogos para conocer a las “culturas” distintas de la europea occidental. En el comienzo, todos los esfuerzos se abocaron a largos viajes que los antropólogos realizaban a “vivir” en culturas extrañas. Debido a la inmensa cantidad y variedad de trabajos etnográficos, la Antropología se consolidó como disciplina científica, pero, además, demostró la necesidad de poner en cuestión la idea de la “universalidad de la razón” provocando que las demás disciplinas sociales buscaran comprender mejor el concepto de Cultura. 
El objetivo de este taller es brindar una base sólida acerca de esta metodología a no antropólogos con dos propósitos bien definidos: uno, que en cualquier investigación los cursantes puedan incorporar trabajos etnográficos y; dos, que los cursantes puedan incorporar a sus investigaciones algunos aspectos teóricos y epistemológicos que le son propios al trabajo de campo. 
Primer Encuentro: viernes 23/09.
Segundo Encuentro: viernes 30/09.
Tercer Encuentro: viernes 7/10.
Cuarto Encuentro: viernes 14/10.
 
Lugar: Ex Biblioteca. Facultad de Humanidades. Av. Argentina 1400. Horario: 10 a 13 horas.
Organiza e Invita: 
Secretaria de Extensiòn
Facultad De Humanidades
Universidad Nacional del Comahue  
 
  


Consultas e inscripciones: 
humanidadesco@gmail.com
http://fahuweb.uncoma.edu.ar/', 'http://fahuweb.uncoma.edu.ar/index.php/extension/noticias/562-etnografia-memoria-y-sujeto-historico', '2016-08-26 15:10:29                                                                                 ', 'carolina.robles@dti.uncoma.edu.ar (Carolina Robles)                                                 ', 4, NULL);
INSERT INTO noticia VALUES (139, 'Autoridades de la UNCo y del municipio de Cipolletti firmaron un convenio para fomentar la integración de la ciudad con la casa de altos estudios. ', '
	


	El pasado viernes 26 de agosto el intendente de Cipolletti, Aníbal Tortoriello y el Rector de la Universidad el Lic. Gustavo Víctor Crisafulli concretaron la firma de un convenio marco con la Fundación FUNYDER de la Universidad Nacional del Comahue.


	Participaron del encuentro el Subsecretario de Vinculación y Transferencia Tecnológica y FUNYDER, Lic. Gustavo Ferreyra, la presidenta del Consejo Deliberante de la Ciudad Magister Marisa Lazzaretti y la Directora de Planeamiento, Sabrina Fernández.


	El objeto del presente convenio, será brindar un marco formal a las diversas iniciativas conjuntas de cooperación recíproca que proponen promover e impulsar la Fundación de la Universidad Nacional del Comahue para el Desarrollo Regional y el Municipio, en investigación científica, asesoramiento, actividades artísticas, capacitación, promoción humana, y todo tipo de actividades tendientes al fortalecimiento institucional de ambas.


	El rector de la UNCo, Gustavo Crisafulli “remarcó la importancia del mismo y agregó que habilita las futuras firmas de convenios específicos para el trabajo de anteproyectos de obras de infraestructura para avanzar en la viabilidad de los mismos”.


	', 'http://prensa.uncoma.edu.ar/index.php/es/novedades/6232-autoridades-de-la-unco-y-del-municipio-de-cipolletti-firmaron-un-convenio-para-fomentar-la-integracion-de-la-ciudad-con-la-casa-de-altos-estudios', '2016-08-27 01:05:38                                                                                 ', 'prensaunco@central.uncoma.edu.ar (Prensa UNCo)                                                      ', 1, 'http://prensa.uncoma.edu.ar/images/14067485_1839942152904519_7709274964275118533_n.jpg                                                                                                                  ');
INSERT INTO noticia VALUES (140, '"El defensor del Pueblo de la ciudad de Neuquén se reunió con autoridades de la UNCo".  ', '
	


	El rector de la Universidad Nacional del Comahue, Gustavo Crisafulli, se reunió el pasado viernes 26 de agosto al defensor del Pueblo de la ciudad de Neuquén Ricardo Riva, En la oportunidad se retomó el trabajo para avanzar en la creación de una defensoría de la comunidad dentro de la Universidad Nacional del Comahue (UNCo). Mientras que también se intercambió información respecto al pedido realizada por las autoridades del municipio sobre la calle interna “Libres Pensadores” la cual está dentro del Campus Universitario. Participaron además del encuentro el Vicerrector, Daniel Nataine, el secretario de Ciencia y Técnica, Doctor Enrique Mases y el secretario General de la UNCo, Ing. Atilio Sguazzini Mazuel y profesionales de la defensoría.

', 'http://prensa.uncoma.edu.ar/index.php/es/novedades/6233-el-defensor-del-pueblo-de-la-ciudad-de-neuquen-se-reunio-con-autoridades-de-la-unco', '2016-08-27 15:19:38                                                                                 ', 'prensaunco@central.uncoma.edu.ar (Prensa UNCo)                                                      ', 1, 'http://prensa.uncoma.edu.ar/images/14100402_1840191752879559_730739964246096000_n.jpg                                                                                                                   ');
INSERT INTO noticia VALUES (141, ' Presentación del libro "Apuntes de la Literatura Europea y Norteamericana".', '
La Secretaría de Extensión de la Facultad de Humanidades de la Universidad Nacional del Comahue invita a la presentación del libro "Apuntes de la Literatura Europea y Norteamericana" con artículos de Hebe Castaño, Graciela Mayet, Fernando Frasetto, Emilio Alochis, Flavia Rorai, Carolina Ciucci y Alejandro Finzi, el sábado 10 de septiembre a las 18 horas en el Museo Nacional de Bellas Artes de la ciudad de Neuquén. INGRESO LIBRE.
', 'http://fahuweb.uncoma.edu.ar/index.php/extension/noticias/564-presentacion-del-libro-apuntes-de-la-literatura-europea-y-norteamericana-2', '2016-08-29 14:48:19                                                                                 ', 'carolina.robles@dti.uncoma.edu.ar (Carolina Robles)                                                 ', 4, 'http://fahuweb.uncoma.edu.ar/images/Departamentos/extension/Tapa_Apuntes_de_Literatura_Europea_y_Norteamericana.jpg                                                                                     ');
INSERT INTO noticia VALUES (142, 'SEMINARIOS', 'IMPORTANTE - SEMINARIOS
Recordamos a todos los estudiantes de las carreras de "Lic. en Saneamiento y Protección Ambiental", y de la "Lic. en Enfermería", que se encuentran abiertas
las inscripciones para la realización de seminarios curriculares, y extracurriculares.
Listado de Seminarios:Epidemiología de la Zoonosis.
Hábitat y Energía para un Desarrollo Sustentable.
Residuos Peligrosos y/o Especiales.
Química Sustentable: Fundamentos y Prevención del Medio Ambiente.
Auditorías Ambientales.
Cartografía Ambiental y Sistemas de Información Geográficas (GIS 2016).
Introducción al Análisis Multivariado.
Tratamiento de Efluentes Industriales.
Gestión del Hábitat Sustentable.
Taller de Tesis.
', 'http://faciasweb.uncoma.edu.ar/?q=node/99', '2016-08-29 17:11:49                                                                                 ', '                                                                                                    ', 5, '                                                                                                                                                                                                        ');
INSERT INTO noticia VALUES (143, 'Informe UNCo sobre el varamiento de un ejemplar hembra juvenil de Ballena Franca Austral, ocurrido 24 de junio del corriente año en el interior de la Caleta de los Loros.', '
	


	Desde ESCiMa-UNCo (Escuela Superior de Ciencias Marinas- Universidad Nacional del Comahue)  se entregó el informe técnico realizado por el equipo científico de CIMAS (Centro de Investigación Aplicada y Transferencia Tecnológica en Recursos Marinos Almirante Storni) integrado por el Dr. Guillermo Svendsen, la Lic. Magdalena Arias, Lic Nadia Cursio y el Dr. Raúl Gonzales, sobre el varamiento de un ejemplar hembra juvenil de Ballena Franca Austral, ocurrido el 24 de junio del corriente año en el interior de la Caleta de los Loros.


	Se envía link con el material y video.


	file:///C:/Users/compumundo/Downloads/ReporteVaramientoFrancaCaletaLoros_2016_firmas.pdf


	https://www.youtube.com/watch?v=OwspjK-AGX0&feature=youtu.be 
', 'http://prensa.uncoma.edu.ar/index.php/es/novedades/6234-informe-unco-sobre-el-varamiento-de-un-ejemplar-hembra-juvenil-de-ballena-franca-austral-ocurrido-24-de-junio-del-corriente-ano-en-el-interior-de-la-caleta-de-los-loros', '2016-08-29 17:22:48                                                                                 ', 'prensaunco@central.uncoma.edu.ar (Prensa UNCo)                                                      ', 1, 'http://prensa.uncoma.edu.ar/images/0000001234567890.jpg                                                                                                                                                 ');


--
-- Name: noticia_id_noticia_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('noticia_id_noticia_seq', 144, true);


--
-- Name: fuente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY fuente
    ADD CONSTRAINT fuente_pkey PRIMARY KEY (id_fuente);


--
-- Name: noticia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY noticia
    ADD CONSTRAINT noticia_pkey PRIMARY KEY (titulo, fecha, id_fuente);


--
-- Name: noticia_id_fuente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY noticia
    ADD CONSTRAINT noticia_id_fuente_fkey FOREIGN KEY (id_fuente) REFERENCES fuente(id_fuente);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--


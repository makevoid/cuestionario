def str_format(str)
  str.split("\n").map{ |s| s.strip }
end

project_names = <<-STR
Oficina de Coordinación OCO (Coordinada por Diputación de Barcelona)
Proyecto Fronteras Turísticas (coordinado por Frosinone, Italia)
Proyecto emiDel (coordinado por L’Hospitalet de Llobregat, España)
Proyecto La basura sirve (coordinado por Arezzo, Italia)
Proyecto INTEGRATION (coordinado por Stuttgart, Alemania)
Proyecto MELGODEPRO (coordinado por Alcorcón, España)
Proyecto URB-AL Pampa (coordinado por Borba, Portugal)
Proyecto Políticas locales de prevención de la violencia (coordinado por Pernambuco, Brasil)
Proyecto Línea Internacional. Unión de dos pueblos (coordinado por Ponta Porã, Brasil)
Proyecto COCAP (coordinado por Veneto, Italia)
Proyecto PACEF (coordinado por Sicilia, Italia)
Proyecto Innovación Institucional (coordinado por Santa Fe, Argentina)
Proyecto Habitar Goes (coordinado por Montevideo, Uruguay)
Proyecto EU-LA-WIN (coordinado por Emilia-Romagna, Italia)
Proyecto UNE (coordinado por Irún, España)
Proyecto Gente diversa, Gente equivalente (coordinado por Santa Tecla, El Salvador)
Proyecto Gestión Urbana y Territorial Participativa (coordinado por Toscana, Italia)
Proyecto RESSOC (coordinado por Área Metropolitana de Barcelona, España)
Proyecto IDEAL (coordinado por Michoacán, México)
Proyecto GIT (coordinado por Puerto Cortés, Honduras)
Proyecto Integración Regional (coordinado por Mancomunidad Trinacional Fronteriza Río Lempa, Guatemala)
STR

functions = <<STR
Autoridad electa de gobierno local o intermedio
Directivo/Técnico de gobierno local o intermedio
Staff de coordinación del proyecto
Directivo/Técnico de organización colaboradora
Directivo/Técnico de organización beneficiaria
Beneficiario de las actividades del proyecto
Asesor/consultor
STR

partners = [
%{Diputación de Barcelona (España)
Fundación Internacional y para Iberoamérica de Administración y Políticas Públicas (FIIAPP, Madrid)
Región de Toscana (Italia)
Observatorio Interregional para la Cooperación al Desarrollo (OICS, Roma)
Municipalidad de San José (Costa Rica)
Alcaldía Mayor de Bogotá (Colombia)
Gobierno de la Provincia de Santa Fe (Argentina).},

%{Provincia de Frosinone (Italia)
Provincia Autónoma de Bolzano (Italia)
Comisión Municipal de Purmamarca (Argentina)
Asociación para el Desarrollo Social (ADESO, Argentina)
Municipalidad de San Pedro de Quemes y Calacoto (Bolivia)
Observatorio Interregional sobre Cooperación al Desarrollo (OICS)
Prefectura de Oruro (Bolivia)
Gobierno de Jujuy (Argentina)},

%{Ayuntamiento de L’Hospitalet (Barcelona, España)
Gobierno Autónomo Municipal de La Paz (Bolivia)
Alcaldía Municipal de Santa Tecla (El Salvador)
Intendencia Municipal de Canelones (Uruguay)
Diputación de Barcelona (España)
tividades
Formación de 150 técnicos municipales en desarrollo económico
Formación de 150 emprendedores para elaborar sus planes de empresa
Asistencia técnica a 440 emprendedores mediante atención personalizada.
Habilitación de 5 espacios en apoyo a la emprendeduría
Elaboración de un Documento marco de reflexión sobre emprendedurismo e innovación social
Desarrollo de una herramienta para la identificación online de buenas prácticas
Implementación de la Estrategia de Mercados Alternativos en La Paz
Ralización de 8 acciones de mercado social},

%{Municipio de Arezzo (Italia)
Municipio de Santiago de Surco (Perú)
EMAC – Empresa Pública Municipal de Aseo (Cuenca, Ecuador)
Municipalidad de Lago Agrio (Ecuador)
Municipalidad General Pico (Argentina)
Municipio de Arica (Chile)
Gobierno de la Provincia de Buenos Aires (Argentina)
Oxfam Italia (Italia)
Lille Metropole (Francia)
Sociedad Anónima de Economía mixta TRISELEC (Francia)
Fundación UOCRA (Argentina)
PREMA ECOLOGIA, cooperativa de provisión y exportación para productores de residuos reciclados limitada (Argentina)},

%{Ciudad de Stuttgart (Alemania)
Estado de Chihuahua (México)
Ayuntamiento de Guadalajara (México)
Alcaldía de Bogotá (Colombia)
Municipio del Distrito Metropolitano de Quito (Ecuador)
Prefeitura da Cidade de São Paulo (Brasil)
Prefeitura da Cidade do Rio de Janeiro (Brasil)
KATE – Centro de Desarrollo & Ecología (Alemania)
ICLEI – Gobiernos Locales para la Sustentabilidad (Brasil) Colaboradores
Agencia Federal de Medio Ambiente (Alemania)
Comisión de Planeación Urbana, Ayuntamiento de Guadalajara (México)
Coordinación General de Innovación y Desarrollo del Gobierno de Jalisco (México)
Instituto para la Política de Transporte y Desarrollo (México)},

%{Ayuntamiento de Alcorcón (Madrid, España)
Municipio de Pimampiro (Ecuador)
Municipio de Curahuara de Carangas (Oruro, Bolivia)
Municipio de Valparaíso (Zacatecas, México)
Cámara Municipal de São João da Madeira (Portugal)
AMIBE en Curahuara. Asociación de Emigrantes (Bolivia)
Asociación de amas de casa por el desarrollo en Pimampiro. Familiares de emigrantes (Ecuador)
Asociación Hispano Ecuatoriana Rumiñahui (España)
Asociación Hispano Boliviana ACOBE (España)
Federación Española de Municipios y Provincias},

%{Câmara Municipal de Borba (Portugal)
Intendencia Departamental de Rivera (Uruguay)
Municipio de Alegrete (Brasil) 
Municipio de Quaraí (Brasil
Municipio de Rosário do Sul (Brasil)
Municipio de Santana do Livramento (Brasil)
Fundación Maronna (Brasil)  },

%{Estado de Pernambuco (Brasil)
Intendencia de Paysandú (Uruguay)
Gobierno de la Región Loreto (Perú)
Cesvi fundación (Italia)
Comune di Bergamo (Italia)},

%{Prefeitura de Ponta Porã (Brasil)
Municipalidad de Pedro Juan Caballero (Paraguay)
Diputación de Málaga (España)
Paz y Desarrollo ONGD (España)},

%{Regione Veneto (Italia)
Provincia de San Juan (Argentina)
Estado do Rio Grande do Sul (Brasil)
Departamento de Misiones (Paraguay)
Fondazione di Venezia (Italia)},

%{Gobierno de la Provincia de Buenos Aires (Argentina)
Gobernación Departamento Central (Paraguay)
Alcaldía Sacaba (Bolivia)
Alcaldía Vinto (Bolivia)
Mancomunidad de la Región Andina de Cochabamba (Bolivia)
Asociación de Municipios de Cochabamba (Bolivia)
Regione Sicilia (Italia)
ASAEL – Asociación Aragonesa de Entidades Locales (España)},

%{Gobierno de la Provincia de Santa Fe (Argentina)
COAMSS – Consejo de Alcaldes del Área Metropolitana de San Salvador (El Salvador)
Gobierno Regional de Arequipa (Perú)
Fundación Nacional para el Desarrollo (El Salvador)
Diputación de Barcelona (España)},

%{Intendencia Municipal de Montevideo (Uruguay)
Intendencia Municipal de Florida (Uruguay)
Municipalidad de Rosario (Argentina)
Alcaldía Municipal de San Salvador (El Salvador)
Gobierno Municipal de La Paz (Bolivia)
Ayuntamiento de Bilbao (España)
Ayuntamiento de Santa Cruz de Tenerife (España)},

%{Regione Emilia-Romagna – Servizio Politiche Europee e Relazioni Internazionali (Italia)
Gobierno de la Provincia de Buenos Aires (Argentina)
Secretaria de Estado da Agricultura e do Abastecimento do Paraná (Brasil)
Municipio de General Pueyrredón (Argentina)
IDEA – Instituto para el Desarrollo de Antioquia (Colombia)
Municipio Mar del Plata (Uruguay)
Región Marche (Italia)
Comune di Roma – Municipio XVII (Italia)
CISP – Comitato Internazionale per lo Sviluppo dei Popoli (Italia)
CESTAS – Centro di Educazione Sanitaria e tecnologie appropriate sanitarie (Italia)
Mancomunidad de la Ribera Alta (España)},

%{Ayuntamiento de Irún (País Vasco, España)
Gobierno Regional de Arica Parinacota (Chile)
Gobierno Regional de Tacna (Perú)
Municipalidad de Santa Rosa de Copán (Honduras)
Ayuntamiento de Zapotlán el Grande (México)
Junta de Castilla y León (España)
AMHON – Asociación de Municipalidades de Honduras (Honduras)
IJALTI – Instituto Jalisciense de Tecnologías de la Información (México)
FOSIS – Fondo de Solidaridad e Inversión Social (Chile)
FONCODES – Fondo de Cooperación para el Desarrollo Social (Perú)
Consorcio Transfronterizo Bidasoa-Txingudi (España)},

%{Alcaldía de Santa Tecla (El Salvador)
Distrito Metropolitano de Quito (Ecuador)
Ayuntamiento de Saint Denis (Francia)},

%{Regione Toscana (Italia)
Comunidad Regional Punilla (Argentina)
Municipalidad de Viña del Mar (Chile)
Asamblea Municipal Poder Popular Centro Habana (Cuba)
Alcaldía Municipal de León (Nicaragua)
Municipalidad de Antigua (Guatemala)
Departamento Provence-Alpes-Côte d’Azur (Francia)
Associazione Co.opera (Italia) Colaboradores
Circondario Empolese Valdelsa (Italia)
Comune di Follonica (Italia)
Comune di Livorno (Italia)
Comune di Pontedera (Italia)
Comune di Roccastrada (Italia)
Comune di Siena (Italia)
Grupo para el Desarrollo Integral de la Capital (Cuba)
Agencia Córdoba Turismo – Gobierno de la Provincia de Córdoba (Argentina)},

%{Área Metropolitana de Barcelona (España)
Alcaldía Municipal de San Salvador y Área Metropolitana de San Salvador (El Salvador)
Municipalidad Provincial del Callao (Perú)
Alcaldía de Managua (Nicaragua)
Mairie de Toulouse (Francia)
Intendencia Municipal de Montevideo (Uruguay)},

%{Gobierno del Estado de Michoacán (México)
Intermunicipalidad del Gran S. Miguel de Tucumán (Argentina)
Mancomunidad de municipios del Norte Paceño Tropical (Bolivia)
Intermunicipalidad Huista (Guatemala)
Municipalidad Tuma La Dalia, asociando a Intermunicipalidad AMUPEBLAN (Nicaragua)
Centro Intermunicipal para el Tratamiento Integral de Residuos Sólidos -CITIRS- Monarca de Oriente A.C. (Estado de Michoacán, México)
Ayuntamiento de San Sebastián de los Reyes (Madrid, España)
Consejo General de los Altos Pirineos (Francia)},

%{Municipalidad de Puerto Cortés (Honduras)
Municipalidad de Tela (Honduras)
Municipalidad de Omoa (Honduras)
Municipalidad de Puerto Barrios (Guatemala)
Kadaster (Holanda)},

%{Mancomunidad Trinacional Fronteriza Río Lempa (Guatemala)
Mancomunidad Copán Chortí (Guatemala)
Mancomunidad de Nororiente (Guatemala)
Mancomunidad Lago de Guija (Guatemala)
AMVAS – Asociación de Municipios del Valle de Sesecapa (Honduras)
Asociación de Municipios Trifinio (El Salvador)
Asociación de Municipios Cayaguanca (El Salvador)
Diputación Provincial de Huelva (España)
Región de Lombardia (Italia)},
]

activities = [

%{Todas las actividades del proyecto
Asegurar la coordinación y el buen funcionamiento de los proyectos del Lote1
Asegurar la coherencia de las acciones del Lote 1 entre sí y con los objetivo sdel Lote1
Promover la reflexión estratégica sobre las políticas locales y regionales de cohesión soonal
Favorecer la visibilidad de las experiencias y las buenas prácticas surgidas  de las acciones del Programa
Crear y animar una Red de gobiernos subnacionales, y otros actores, comprometidos con la cohesión social},

%{Todas las actividades del proyecto
Asistencia a emprendedores turísticos
Capacitación a prestadores de servicios turísticos no estatales
Puesta en valor de sitios turísticos
Participación en la creación  la  Ruta Camino Andino
Creción de los  centros de acceso a nuevas tecnologías},

%{Todas las actividades del proyecto
Formación técnica municipal en desarrollo económico
Formación  para elaborar  planes de empresa
Asistencia técnica para  emprendedores mediante atención personalizada.
Utilización de los espacios  habilitados en apoyo a la emprendeduría
Participación en la elaboración de un Documento sobre emprendedurismo e innovación social
Participación en el desarrollo de una herramienta online de buenas prácticas
Participación en la implementación de la Estrategia de Mercados Alternativos en La Paz
Participación en la realización de acciones de mercado social},

%{Todas las actividades del proyecto
Promoción de cooperativa de recicladores
Apoyo técnico para la constitución de las cooperativas recicladoras
Participación como reciclador en el sistema de gestión de los residuos
Participación como funcionario municipal y de instituciones nacionales en los seminarios de difusión de las experiencias
Difusión de la cultura medioambiental entre la población
Implicación de escuelas y empresas privadas en el sistema de segregación en origen},

%{Todas las actividades del proyecto
Mejora de los instrumentos de desarrollo sostenible en las zonas urbanas en desuso
Implementación de procedimientos sostenibles de planeación integrados interdisciplinaria y participativa
Revitalización de zonas en desuso destinadas a la creación de espacios verdes y lugares públicos
Construcción de viviendas de bajo costo para grupos socialmente desfavorecidos
Participación activa de personas de la sociedad civil en la fase de planificación de los proyectos piloto
Realización de eventos públicos para incentivar a los actores locales y a las inversiones privadas},

%{Todas las actividades del proyecto
Capacitación técnica para diseñar, dirigir y ejecutar acciones de promoción productiva-económica
Formación en cultura emprendedora para docentes y jóvenes
Incorporación formal del currículo orientado al emprendedurismo en las escuelas e institutos
Fortalecimiento o creación de  emprendimientos
Establecimiento de canales de comunicación con  asociaciones de migrantes para la articulación de fondos de remesas
Adecuación del Modelo de Ciudades Emprendedoras con Apoyo de Emigrados (CEAE) de México
Consolidación y fortalecimiento de Oficinas de Desarrollo Económico Local (ODEL) en Bolivia
Consolidación y fortalecimiento de Unidades de Promoción Económica en Pimampiro
Consolidación y fortalecimiento de una unidad especializada DEL en Paysandú
Consolidación y fortalecimiento de una Unidad de Promoción Económica y Productiva en Valparaíso
Establecimiento de pactos sociales por el desarrollo económico de los municipios con todos los agentes},

%{Todas las actividades del proyecto
Apoyar el desarrollo de proyectos de creación de ingresos
Seminarios y actividades de formación e intercambio de experiencias
Capacitación de mujeres en telar y lana rústica
Desarrollo de  proyectos pilotos de productores rurales
Desarrollo de  senderos turísticos
Desarrollo del «Estudio de Normativas»},

%{Todas las actividades del proyecto
Capacitación de jóvenes para ser insertados laboralmente
Capacitación de gestores y/o técnicos sobre prevención de la violencia
Participación en proyectos/acciones/programas de inclusión social, cultural y cívica
Capacitación de  líderes comunitarios y actores de la sociedad civil como multiplicadores
Participación en debates, seminarios, encuentros sobre prevención de la violencia
Elaboración del Plan Piloto en Paysandú que apoya los Faroles Comunitarios
Implantación de una red de Prevención en Pernambuco, que fomenta sinergias entre actores
Elaboración del Diagnóstico Participativo de Belén para el Comité de Seguridad Ciudadana
Impulso o fortalecimiento de 7 políticas públicas},

%{Todas las actividades del proyecto
Censo de  comerciantes informales 
Realización del diagnóstico participativo comerciantes informales
Capacitación de  funcionarios
Capacitación de funcionarios y comerciantes en el intercambio de experiencias en gestión de espacios públicos
Capacitación de  miembros de comisiones barriales en cuidado de espacios públicos, participación ciudadana y género
Construcción de  «casillas» de venta
Capacitación de  comerciantes informales en gestión administrativa
Creación/modificación de 3 legislaciones municipales
Intercambios de experiencias con otras administraciones locales/regionales de URB-AL III},

%{Todas las actividades del proyecto
Desarrollo de una metodología innovadora para el intercambio de conocimientos y experiencias
Desarrollo de una comunidad en red permanente con función de cámaras de compensación
Formación de agentes de desarrollo local de las cadenas productivas
Mejora de las competencias de los actores económicos, sociales e institucionales para el posicionamiento en mercados nacionales e internacionales
Aumento del nivel de vinculación entre el capital social y los sistemas productivos locales
Desarrollo de un modelo de finanzas de distrito con nuevas herramientas financieras para las MIPYMES
Investigaciones sobre las aportaciones del proyecto al capital social en los territorios de intervención},

%{Todas las actividades del proyecto
Capacitación de  mujeres en los Pactos Formativos Locales de Género
Capacitación de técnicos municipales en la gestión de políticas de ocupación y género
Promoción de la ocupación femenina a través de los Pactos Formativos Locales de Género
Elaboración de un Plan local para las políticas de género
Creación de una Agencia para la Empleabilidad Femenina y 10 Secretarías de la Mujer en el Departamento Central (Paraguay)
Aumento de la participación femenina en la toma de decisiones y consolidación de los derechos de la mujer
Realización de ferias y promoción de productos de mujeres capacitadas en el marco del proyecto
Elaboración de Planes de desarrollo municipal con enfoque de género
Ejecución de talleres de sensibilización y capacitación a las concejalas y asambleístas mujeres en género
Incorporación de aspectos de género en el estatuto autonómico departamental, la ley de desarrollo humano y las cartas orgánicas municipales de Bolivia},

%{Todas las actividades del proyecto
Reimpresión, difusión, implementación y seguimiento del Plan Estratégico Provincial (PEP)
Construcción de Plan Estratégico Provincial Visión 2030
Consolidación del proceso de planificación estratégica participativa como política de Estado
Creación y puesta en marcha de consejos regionales de planificación estratégica
Equipamiento y puesta en funcionamiento de centros cívicos
Realización de  seminarios temáticos y  congresos de la Red de Ciudades de la provincia de Santa Fe
Capacitaciones a  autoridades locales y facilitadores
Realización de  jornadas interministeriales con los equipos técnicos- políticos del Gobierno de Santa Fe
Sensibilización y capacitación de funcionarios públicos en un proceso  sobre temáticas surgidas del PEP
Realización y publicación de un Programa de pasantías para gobiernos intermedios latinoamericanos
Realización de encuentros presenciales de trabajo entre los socios del proyecto
Realización de un sistema de indicadores regionales desarrollado
Realización de encuentros de intercambio y transferencia sobre innovación institucional en gobiernos intermedios
Sistematización y publicación de experiencias del proyecto},

%{Todas las actividades del proyecto
Puesta en funcionamiento de1 centro de desarrollo económico (CEDECO) y del centro de promoción laboral
Capacitación de  personas en programas de inserción laboral y emprendimientos
Asesoramiento a  personas en microfinanzas y otorgamiento de microcréditos
Capacitaciones en microfinanzas y receptor de microcreditos
Realización de una convocatorias a artistas jóvenes: pinturas murales en espacios públicos
Rehabilitación de plazas Fugazot, Reducto, Centro Cultural Terminal Goes y Mercado Agrícola (Montevideo),
Rehabilitación de plaza Independencia, microcentro, sede del gobierno y Teatro 25 de Agosto (Florida)
Instalación de 1 centro cultural (Montevideo)
Realización de campañas de sensibilización
Instalación de mobiliario urbano
Realización de muestras públicas «Hechos con deshechos» en coordinación con centros educativos (Montevideo)
Elaboración de la publicación de la sistematización del impacto del proyecto en Goes y libro de relatos infantiles},

%{Todas las actividades del proyecto
Realización de análisis FODA sobre las necesidades territoriales
Constitución de  grupos de trabajo con actores claves del territorio y reuniones interinstitucionales y multiniveles
Elaboración de acuerdos territoriales para el desarrollo socioeconómico
Realización  eventos locales de difusión
Capacitación de  de  funcionarios públicos y  técnicos  en planificación de desarrollo local
Participación en  intercambios UE/LA
Planificación/implementación del Plan Estratégico Subregional Oriente (Antioquia)
Creación de empresas en sectores emergentes (Paraná)
Fortalecimiento de Agencias de Desarrollo Local (Buenos Aires)
Creación de un dispositivo territorial para coordinación multisectorial (General Pueyrredón)
Elaboración y publicación del Manual de buenas prácticas y procedimientos dpara la Agencia de Desarrollo de Olavarría
Elaboración y publicación del libro Cohesión social y territorio: algunas reflexiones a partir de la experiencia de EU-LA
Sistematización y publicaciones de documentos sobre planes estratégicos de diferentes regiones del Departamento de Antioquia},

%{Todas las actividades del proyecto
Implementación en Honduras de un plan de empleo juvenil
Implantación de proyectos de  apoyo a creación de empresas
Desarrollo en México de un modelo para la incubadora interinstitucional de apoyo a las empresas de base tecnológica (INCU- BT)
Creación de la red de facilitadores de la incubadora y delas oficinas de enlace en los centros de educación superior
Adaptación en Chile de la metodología del Gobierno Vasco para el desarrollo del «Programa Piloto de Agendas de Innovación»
Desarrollo de la metodología de agendas de innovación},

%{Todas las actividades del proyecto
Participación en la construcción de la Política Metropolitana de Inclusión Social
Diagnóstico de inequidades sociales y apoyo a la Política Metropolitana de Inclusión Social mediante el Plan Metropolitano de Desarrollo de Quito
Apoyo a la propuesta de la Red de Jóvenes de Pueblos y Nacionalidades para la agenda juvenil de pueblos y nacionalidades en Quito
Fortalecimiento de las casas de las juventudes en Quito
Equipamiento  y adecuación de espacios comunitarios en Santa Tecla
Realización de eventos culturales realizados de Santa Tecla y en Quito
Apoyo a PPL de equidad, género, niñez, adolescencia y juventud en Santa Tecla
Capacitación de  técnicos, funcionarios municipales y tomadores de decisión sobre políticas públicas locales en Santa Tecla
Capacitación  en comunicación popular, audiovisual y alfabetización digital en Santa Tecla
Realización/participación en ferias de la convivencia urbano y rural, rescatando la cultura del municipio},

%{Todas las actividades del proyecto
Capacitación de  funcionarios públicos en SIG-PP (Sistema de Información Geográfica Público y Participativo)
Realización de  talleres participativos
Realización de análisis de los conflictos sociales y territoriales mediante la metodología experimental de conflictos
Implementación de la plataforma Sistema de Integración Territorial (SIT) en cada uno de los cinco territorios
Sensibilización de ciudadanos/as en Punilla a través de encuentros públicos
Sensibilización de  personas en Viña del Mar mediante  encuentros públicos
Sensibilización de ciudadanos/as
Elaboración de diagnósticos y censos poblacionales
Celebración de seminarios sobre acuerdos público-privados para el desarrollo urbano
Elaboración de  un Plan Maestro en Viña del Mar},

%{Todas las actividades del proyecto
Capacitación de recolectores en gestión de sus microempresas y en sus actividades ocupacionales
Creación de  microempresas de los sectores del reciclaje y la actividad agrícola
Constitución legal de cooperativas de recicladores y una cooperativa mixta de reciclaje y actividad agrícola (Managua)
Sensibilización de vecinos, alumnos escolares y maestros en la mejora de la recogida selectiva
Construcción de red de ecoestaciones, planta de selección y transferencia de residuos, ressourcerie, actividad agrícola, red de compostadoras y puestos de venta de los nuevos productos
Constitución de redes de microempresas para gestionar las infraestructuras creadas.
Creación de organismos de concertación entre los diferentes agentes públicos, privados y organismos internacionales que apoyen las acciones de RESSOC},

%{Todas las actividades del proyecto
Creación del Consorcio Público Metropolitano para la Gestión Integral de Residuos Sólidos Urbanos en El Gran San Miguel, Tucumán, Argentina
Capacitación y asesoramiento a las autoridades municipales, técnicos y actores supramunicipales en la Mancomunidad del Norte Paceño Tropical, Bolivia
Foro sobre territorio, poder local, derechos de los pueblos indígenas e intermunicipalismo, suscripción de Carta de Territorialidad de los Huista, en San Antonio Huista, Guatemala
Institucionalización de la intermunicipalidad CITIRS «Monarca de Oriente A.C.», que integran 7 municipios de Michoacán, México
Fomento a la intermunicipalidad, trabajo conjunto con las alcaldías que componen la AMUPEBLAN en Tuma La Dalia, Nicaragua
Elaboración, edición y publicación del libro: La Intermunicipalidad: una nueva estrategia de gobernanza local},

%{Todas las actividades del proyecto
Catastro  de Más del 90% del territorio (91,531 predios) de los municipios beneficiarios
Elaboración de tres planes de desarrollo municipal con enfoque en ordenamiento territorial
Desarrollo e implementación en cuatro municipalidades del Sistema de Gestión Integral de Tierras basado en LADM (Land Administration Domain Model) y STDM (Social Tenure Domain Model)
Fortalecimiento o creación de departamentos municipales
Socialización y concientización de los temas catastrales y de ordenamiento territorial con toda la población},

%{Todas las actividades del proyecto
Homologación y promocción en siete mancomunidades de los tres países de la política pública «Ciudad Limpia»
Homologación y promocción en 20 municipios de 5 mancomunidades de los tres países de la política pública «Territorio Indivisible»
Aprobación en 7 municipios de la Mancomunidad Trinacional de ordenanzas municipales para la implementación de la política «Bosques para Siempre» y «Aguas Compartidas»
Coordinacción de acciones entre 12 instituciones públicas nacionales y locales, junto a tres instituciones regionales centroamericanas, para la cohesión social y la gestión territorial fronteriza
Creación de instrumentos de diálogo y concertación: Mesa de Gerentes de las Mancomunidades, Mesas de Alcaldes, Mesas Multisectoriales, COMTRISGEST
Creación de instrumentos para el fortalecimiento institucional: OPLAGEST, PIDET y SINTET
Creación de alianzas estratégicas regionales (colaboración con CTPT y SICA) y con varios actores territoriales},


]

objectives = [

"Contribuir a consecución del objetivo general y específico del Programa URB-AL III para incrementar la cohesión social y territorial en colectividades locales y regionales en América latina",

"Desarrollar e implementar un corredor turístico de integración de las zonas de frontera",

"Incrementar las capacidades de los gobiernos locales para apoyar y promover a los emprendedores",

"Mejorar la gestión de residuos sólidos urbanos con la incorporación o el aumento de la recolección diferenciada y el reciclaje",

"Generar un desarrollo urbano integrado y sostenible y la revitalización de sitios contaminados en desuso en América Latina",

"Generar un modelo de planificación y gestión municipal del Desarrollo Productiva",

"Creación y fortalecimiento de nuevas fuentes de renta",

"Fortalecer las políticas locales de prevención de la violencia en áreas urbanas marginales",

"Mejorar el funcionamiento urbano del espacio transfronterizo de Ponta Porã (Brasil) y Pedro Juan Caballero (Paraguay)",

"Reforzar la Cohesión Social a través de la mejora competitiva de las cadenas productivas",

"Promover la ocupación femenina y el desarrollo territorial en areas de América Latina",

"Desarrollar un proceso participativo de innovación institucional en los gobiernos intermedios que promueva una democracia de proximidad",

"Incrementar la Cohesión Social y Territorial a través de la revitalización sociourbana",

"Consolidar e innovar políticas de bienestar",

"Fortalecer las Estructuras Regionales a partir del trabajo en red, de procesos de colaboración y de la participación público-privada",

"Promover condiciones de interacción y convivencia social en equidad",

"Impulsar procesos de gestión urbana y territorial participada",

"Potenciar la Cohesión Social mediante la integración de los sectores que subsisten con actividades informales relacionadas con los residuos",

"Fomentar la Cohesión Social Territorial" ,

"Mejorar la Seguridad Jurídica de los derechos de la propiedad inmueble de los municipios",

"Contribuir a la Cohesión Social y la gestión transfronteriza",

]


politics = [

"Políticas de desarrollo económico local y emprendedurismo",
"Políticas de medio ambiente y gestión de residuos",
"Políticas de gestión y ordenamiento territorial",
"Políticas ocupacionales y de apoyo a migrantes",
"Políticas de participación ciudadana",
"Políticas de cooperación transfronteriza",
"Políticas de rehabilitación sociourbana",
"Políticas de seguridad pública",
"Políticas de fiscalidad",
"Políticas de fortalecimiento institucional",

]

partners    = partners.map{   |str| str_format str }
activities  = activities.map{ |str| str_format str }
objectives  = objectives.map{ |str| str_format str }

{
  project_names:  str_format(project_names),
  functions:      str_format(functions    ),
  partners:       partners,
  objectives:     objectives,
  activities:     activities,
  politics:       politics,
}

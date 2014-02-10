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
PREMA ECOLOGIA, cooperativa de provisión y exportación para productores de  residuos reciclados limitada (Argentina)},

%{Ciudad de Stuttgart (Alemania) 
Estado de Chihuahua (México) 
Ayuntamiento de Guadalajara (México) 
Alcaldía de Bogotá (Colombia) 
Municipio del Distrito Metropolitano de Quito (Ecuador) 
Prefeitura da Cidade de São Paulo (Brasil) 
Prefeitura da Cidade do Rio de Janeiro (Brasil) 
KATE – Centro de Desarrollo & Ecología (Alemania) 
ICLEI – Gobiernos Locales para la Sustentabilidad (Brasil)  Colaboradores 
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
Asociación de amas de casa por el desarrollo en Pimampiro. Familiares de  emigrantes (Ecuador) 
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
COAMSS – Consejo de Alcaldes del Área Metropolitana de San Salvador (El  Salvador) 
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
Associazione Co.opera (Italia)  Colaboradores 
Circondario Empolese Valdelsa (Italia) 
Comune di Follonica (Italia) 
Comune di Livorno (Italia) 
Comune di Pontedera (Italia) 
Comune di Roccastrada (Italia) 
Comune di Siena (Italia) 
Grupo para el Desarrollo Integral de la Capital (Cuba) 
Agencia Córdoba Turismo – Gobierno de la Provincia de Córdoba (Argentina)},

%{Área Metropolitana de Barcelona (España) 
Alcaldía Municipal de San Salvador y Área Metropolitana de San Salvador (El  Salvador) 
Municipalidad Provincial del Callao (Perú) 
Alcaldía de Managua (Nicaragua) 
Mairie de Toulouse (Francia) 
Intendencia Municipal de Montevideo (Uruguay)},

%{Gobierno del Estado de Michoacán (México) 
Intermunicipalidad del Gran S. Miguel de Tucumán (Argentina) 
Mancomunidad de municipios del Norte Paceño Tropical (Bolivia) 
Intermunicipalidad Huista (Guatemala) 
Municipalidad Tuma La Dalia, asociando a Intermunicipalidad AMUPEBLAN (Nicaragua) 
Centro Intermunicipal para el Tratamiento Integral de Residuos Sólidos -CITIRS-  Monarca de Oriente A.C. (Estado de Michoacán, México) 
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

activities = []
objectives = []

partners    = partners.map{   |str| str_format str }
activities  = activities.map{ |str| str_format str }
objectives  = objectives.map{ |str| str_format str }

{
  project_names:  str_format(project_names),
  functions:      str_format(functions    ),
  partners:       partners,
  objectives:     objectives,
}
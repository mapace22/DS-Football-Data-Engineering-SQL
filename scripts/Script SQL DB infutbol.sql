########################################################################################################
#                 TABLA DE CONTENIDOS DEL PROYECTO SQL                                                 #
########################################################################################################
#  I. FASE INICIAL: Base de datos lista para poblar ER 
#  II. CREAR TABLAS NORMALIZADAS: Excel y Script SQL. 
# III. POBLAR TABLAS NORMALIZADAS: Script desde la tabla 'infutbol' (BD en CSV convertida a SQL)
#  IV. CONSULTAS SQL: 20 Consultas SQL para el análisis de datos.   
#  V. VISUALIZACIÓN DEL MODELO DE BASE DE DATOS ER: Diagrama E-R ("Reverse Engineer" MySQL Workbench).
#       FIN DE LA TABLA DE CONTENIDOS DEL PROYECTO                                                     #
########################################################################################################


######################################################
#  I. FASE INICIAL: Base de datos lista para poblar ER 
######################################################

# BD 'liga'

USE liga;

DROP TABLE IF EXISTS infutbol;
# Crear tabla infutbol
# Se aumenta longitudes de VARCHAR para evitar truncamientos
# Se eliminan restricciones NOT NULL de columnas que pueden contener NULLs
# Cambio de 'fecha' a DATE (INSERTs en formato YYYY-MM-DD)

CREATE TABLE infutbol(
    equipo_local          VARCHAR(255),
    equipo_visitante      VARCHAR(255),
    jugador_local         VARCHAR(255),
    posicion_local        VARCHAR(255),
    nacionalidad_local    VARCHAR(255),
    edad_local            INT,          # Permitir NULL si es necesario
    camiseta_local        INT,          # Permitir NULL si es necesario
    jugador_visitante     VARCHAR(255),
    nacionalidad_visitante VARCHAR(255),
    edad_visitante        INT,          # Permitir NULL si es necesario
    camiseta_visitante    INT,          # Permitir NULL si es necesario (visto en INSERTs)    
    `posición_visitante`  VARCHAR(255),
    fecha                 DATE,         -- Tipo DATE ya que el formato en los INSERTs está corregido
    goles_local           INT,          -- Permitir NULL si es necesario (aunque lo cambiaremos a 0 en INSERTs)
    goles_visitante       INT,          -- Permitir NULL si es necesario (aunque lo cambiaremos a 0 en INSERTs)
    estadio               VARCHAR(255),
    arbitro               VARCHAR(255)
);

-- Original: VALUES ('Real Madrid','Barcelona','Sergio Ramos','Defensa','Español',34,4,'Lionel Messi','Argentino',33,10,'Delantero','2023-06-01',NULL,1,'Santiago Bernabéu','Antonio Mateu Lahoz');
INSERT INTO infutbol(equipo_local,equipo_visitante,jugador_local,posicion_local,nacionalidad_local,edad_local,camiseta_local,jugador_visitante,nacionalidad_visitante,edad_visitante,camiseta_visitante,`posición_visitante`,fecha,goles_local,goles_visitante,estadio,arbitro) VALUES ('Real Madrid','Barcelona','Sergio Ramos','Defensa','Español',34,4,'Lionel Messi','Argentino',33,10,'Delantero','2023-06-01',2,1,'Santiago Bernabéu','Antonio Mateu Lahoz');

-- Original: VALUES ('Real Madrid','Barcelona','Karim Benzema','Delantero','Frances',3,9,'Gerard Piqué','Español',33,3,'Defensa','2023-06-01',NULL,1,'Santiago Bernabéu','Antonio Mateu Lahoz');
INSERT INTO infutbol(equipo_local,equipo_visitante,jugador_local,posicion_local,nacionalidad_local,edad_local,camiseta_local,jugador_visitante,nacionalidad_visitante,edad_visitante,camiseta_visitante,`posición_visitante`,fecha,goles_local,goles_visitante,estadio,arbitro) VALUES ('Real Madrid','Barcelona','Karim Benzema','Delantero','Frances',32,9,'Gerard Piqué','Español',33,3,'Defensa','2023-06-01',2,1,'Santiago Bernabéu','Antonio Mateu Lahoz');

-- Original: VALUES ('Barcelona','Real Madrid','Lionel Messi','Delantero','Argentino',33,10,'Sergio Ramos','Español',34,4,'Defensa','2023-12-01',3,NULL,'Camp Nou','Carlos del Cerro Grande');
INSERT INTO infutbol(equipo_local,equipo_visitante,jugador_local,posicion_local,nacionalidad_local,edad_local,camiseta_local,jugador_visitante,nacionalidad_visitante,edad_visitante,camiseta_visitante,`posición_visitante`,fecha,goles_local,goles_visitante,estadio,arbitro) VALUES ('Barcelona','Real Madrid','Lionel Messi','Delantero','Argentino',33,10,'Sergio Ramos','Español',34,4,'Defensa','2023-12-01',3,2,'Camp Nou','Carlos del Cerro Grande');

-- Original: VALUES ('Barcelona','Real Madrid','Gerard Piqué','Defensa','Español',33,3,'Karim Benzema','Frances',3,9,'Delantero','2023-12-01',3,NULL,'Camp Nou','Carlos del Cerro Grande');
INSERT INTO infutbol(equipo_local,equipo_visitante,jugador_local,posicion_local,nacionalidad_local,edad_local,camiseta_local,jugador_visitante,nacionalidad_visitante,edad_visitante,camiseta_visitante,`posición_visitante`,fecha,goles_local,goles_visitante,estadio,arbitro) VALUES ('Barcelona','Real Madrid','Gerard Piqué','Defensa','Español',33,3,'Karim Benzema','Frances',32,9,'Delantero','2023-12-01',3,2,'Camp Nou','Carlos del Cerro Grande');

-- Original: VALUES ('Atlético Madrid','Valencia','Jan Oblak','Portero','Esloveno',7,13,'José Gayà','Español',5,14,'Defensa','2023-07-10',1,1,'Wanda Metropolitano','Alejandro Hernández');
INSERT INTO infutbol(equipo_local,equipo_visitante,jugador_local,posicion_local,nacionalidad_local,edad_local,camiseta_local,jugador_visitante,nacionalidad_visitante,edad_visitante,camiseta_visitante,`posición_visitante`,fecha,goles_local,goles_visitante,estadio,arbitro) VALUES ('Atlético Madrid','Valencia','Jan Oblak','Portero','Esloveno',27,13,'José Gayà','Español',25,14,'Defensa','2023-07-10',1,1,'Wanda Metropolitano','Alejandro Hernández');

-- Original: VALUES ('Atlético Madrid','Valencia','Koke','Mediocampista','Español',8,6,'Carlos Soler','Español',3,8,'Mediocampista','2023-07-10',1,1,'Wanda Metropolitano','Alejandro Hernández');
INSERT INTO infutbol(equipo_local,equipo_visitante,jugador_local,posicion_local,nacionalidad_local,edad_local,camiseta_local,jugador_visitante,nacionalidad_visitante,edad_visitante,camiseta_visitante,`posición_visitante`,fecha,goles_local,goles_visitante,estadio,arbitro) VALUES ('Atlético Madrid','Valencia','Koke','Mediocampista','Español',28,6,'Carlos Soler','Español',23,8,'Mediocampista','2023-07-10',1,1,'Wanda Metropolitano','Alejandro Hernández');

-- Original: VALUES ('Valencia','Atlético Madrid','José Gayà','Defensa','Español',5,14,'Jan Oblak','Esloveno',7,13,'Portero','2023-11-15',0,0,'Mestalla','Jesús Gil Manzano');
INSERT INTO infutbol(equipo_local,equipo_visitante,jugador_local,posicion_local,nacionalidad_local,edad_local,camiseta_local,jugador_visitante,nacionalidad_visitante,edad_visitante,camiseta_visitante,`posición_visitante`,fecha,goles_local,goles_visitante,estadio,arbitro) VALUES ('Valencia','Atlético Madrid','José Gayà','Defensa','Español',25,14,'Jan Oblak','Esloveno',27,13,'Portero','2023-11-15',0,0,'Mestalla','Jesús Gil Manzano');

-- Original: VALUES ('Valencia','Atlético Madrid','Carlos Soler','Mediocampista','Español',3,8,'Koke','Español',8,6,'Mediocampista','2023-11-15',0,0,'Mestalla','Jesús Gil Manzano');
INSERT INTO infutbol(equipo_local,equipo_visitante,jugador_local,posicion_local,nacionalidad_local,edad_local,camiseta_local,jugador_visitante,nacionalidad_visitante,edad_visitante,camiseta_visitante,`posición_visitante`,fecha,goles_local,goles_visitante,estadio,arbitro) VALUES ('Valencia','Atlético Madrid','Carlos Soler','Mediocampista','Español',23,8,'Koke','Español',28,6,'Mediocampista','2023-11-15',0,0,'Mestalla','Jesús Gil Manzano');

-- Original: VALUES ('Sevilla','Villarreal','Jesús Navas','Defensa','Español',34,16,'Gerard Moreno','Español',8,7,'Delantero','2023-08-20',NULL,NULL,'Ramón Sánchez Pizjuá','José María Sánchez');
INSERT INTO infutbol(equipo_local,equipo_visitante,jugador_local,posicion_local,nacionalidad_local,edad_local,camiseta_local,jugador_visitante,nacionalidad_visitante,edad_visitante,camiseta_visitante,`posición_visitante`,fecha,goles_local,goles_visitante,estadio,arbitro) VALUES ('Sevilla','Villarreal','Jesús Navas','Defensa','Español',34,16,'Gerard Moreno','Español',28,7,'Delantero','2023-08-20',2,2,'Ramón Sánchez Pizjuá','José María Sánchez');

-- Original: VALUES ('Sevilla','Villarreal','Ivan Rakitić','Mediocampista','Croata',3,10,'Pau Torres','Español',3,4,'Defensa','2023-08-20',NULL,NULL,'Ramón Sánchez Pizjuá','José María Sánchez');
INSERT INTO infutbol(equipo_local,equipo_visitante,jugador_local,posicion_local,nacionalidad_local,edad_local,camiseta_local,jugador_visitante,nacionalidad_visitante,edad_visitante,camiseta_visitante,`posición_visitante`,fecha,goles_local,goles_visitante,estadio,arbitro) VALUES ('Sevilla','Villarreal','Ivan Rakitić','Mediocampista','Croata',32,10,'Pau Torres','Español',23,4,'Defensa','2023-08-20',2,2,'Ramón Sánchez Pizjuá','José María Sánchez');

-- Original: VALUES ('Villarreal','Sevilla','Gerard Moreno','Delantero','Español',8,7,'Jesús Navas','Español',34,16,'Defensa','2023-10-30',1,3,'Estadio de la Cerámica','Ricardo de Burgos');
INSERT INTO infutbol(equipo_local,equipo_visitante,jugador_local,posicion_local,nacionalidad_local,edad_local,camiseta_local,jugador_visitante,nacionalidad_visitante,edad_visitante,camiseta_visitante,`posición_visitante`,fecha,goles_local,goles_visitante,estadio,arbitro) VALUES ('Villarreal','Sevilla','Gerard Moreno','Delantero','Español',28,7,'Jesús Navas','Español',34,16,'Defensa','2023-10-30',1,3,'Estadio de la Cerámica','Ricardo de Burgos');

-- Original: VALUES ('Villarreal','Sevilla','Pau Torres','Defensa','Español',3,4,'Ivan Rakitić','Croata',3,10,'Mediocampista','2023-10-30',1,3,'Estadio de la Cerámica','Ricardo de Burgos');
INSERT INTO infutbol(equipo_local,equipo_visitante,jugador_local,posicion_local,nacionalidad_local,edad_local,camiseta_local,jugador_visitante,nacionalidad_visitante,edad_visitante,camiseta_visitante,`posición_visitante`,fecha,goles_local,goles_visitante,estadio,arbitro) VALUES ('Villarreal','Sevilla','Pau Torres','Defensa','Español',23,4,'Ivan Rakitić','Croata',32,10,'Mediocampista','2023-10-30',1,3,'Estadio de la Cerámica','Ricardo de Burgos');

-- Original: VALUES ('Real Sociedad','Athletic Club','Mikel Oyarzabal','Delantero','Español',3,10,'Iñaki Williams','Español',3,10,'Delantero','2023-09-14',NULL,NULL,'Reale Arena','Santiago Jaime Latre');
INSERT INTO infutbol(equipo_local,equipo_visitante,jugador_local,posicion_local,nacionalidad_local,edad_local,camiseta_local,jugador_visitante,nacionalidad_visitante,edad_visitante,camiseta_visitante,`posición_visitante`,fecha,goles_local,goles_visitante,estadio,arbitro) VALUES ('Real Sociedad','Athletic Club','Mikel Oyarzabal','Delantero','Español',23,10,'Iñaki Williams','Español',23,10,'Delantero','2023-09-14',2,2,'Reale Arena','Santiago Jaime Latre');

-- Original: VALUES ('Real Sociedad','Athletic Club','David Silva','Mediocampista','Español',34,1,'Iker Muniain','Español',34,1,'Mediocampista','2023-09-14',NULL,NULL,'Reale Arena','Santiago Jaime Latre');
INSERT INTO infutbol(equipo_local,equipo_visitante,jugador_local,posicion_local,nacionalidad_local,edad_local,camiseta_local,jugador_visitante,nacionalidad_visitante,edad_visitante,camiseta_visitante,`posición_visitante`,fecha,goles_local,goles_visitante,estadio,arbitro) VALUES ('Real Sociedad','Athletic Club','David Silva','Mediocampista','Español',34,21,'Iker Muniain','Español',34,21,'Mediocampista','2023-09-14',2,2,'Reale Arena','Santiago Jaime Latre');

-- Original: VALUES ('Athletic Club','Real Sociedad','Iñaki Williams','Delantero','Español',6,9,'Mikel Oyarzabal','Español',6,9,'Delantero','2023-12-05',1,1,'San Mamés','Javier Alberola Rojas');
INSERT INTO infutbol(equipo_local,equipo_visitante,jugador_local,posicion_local,nacionalidad_local,edad_local,camiseta_local,jugador_visitante,nacionalidad_visitante,edad_visitante,camiseta_visitante,`posición_visitante`,fecha,goles_local,goles_visitante,estadio,arbitro) VALUES ('Athletic Club','Real Sociedad','Iñaki Williams','Delantero','Español',26,9,'Mikel Oyarzabal','Español',26,9,'Delantero','2023-12-05',1,1,'San Mamés','Javier Alberola Rojas');

-- Original: VALUES ('Athletic Club','Real Sociedad','Iker Muniain','Mediocampista','Español',7,10,'David Silva','Español',7,10,'Mediocampista','2023-12-05',1,1,'San Mamés','Javier Alberola Rojas');
INSERT INTO infutbol(equipo_local,equipo_visitante,jugador_local,posicion_local,nacionalidad_local,edad_local,camiseta_local,jugador_visitante,nacionalidad_visitante,edad_visitante,camiseta_visitante,`posición_visitante`,fecha,goles_local,goles_visitante,estadio,arbitro) VALUES ('Athletic Club','Real Sociedad','Iker Muniain','Mediocampista','Español',27,10,'David Silva','Español',27,10,'Mediocampista','2023-12-05',1,1,'San Mamés','Javier Alberola Rojas');

-- Original: VALUES ('Valencia','Real Madrid','Gonçalo Guedes','Delantero','Portugués',4,7,'Luka Modrić','Croata',35,10,'Mediocampista','2023-10-02',1,1,'Mestalla','Alejandro Hernández');
INSERT INTO infutbol(equipo_local,equipo_visitante,jugador_local,posicion_local,nacionalidad_local,edad_local,camiseta_local,jugador_visitante,nacionalidad_visitante,edad_visitante,camiseta_visitante,`posición_visitante`,fecha,goles_local,goles_visitante,estadio,arbitro) VALUES ('Valencia','Real Madrid','Gonçalo Guedes','Delantero','Portugués',24,7,'Luka Modrić','Croata',35,10,'Mediocampista','2023-10-02',1,1,'Mestalla','Alejandro Hernández');

-- Original: VALUES ('Valencia','Real Madrid','Maxi Gómez','Delantero','Uruguayo',5,NULL,'Toni Kroos','Alemán',31,8,'Mediocampista','2023-10-02',1,1,'Mestalla','Alejandro Hernández');
INSERT INTO infutbol(equipo_local,equipo_visitante,jugador_local,posicion_local,nacionalidad_local,edad_local,camiseta_local,jugador_visitante,nacionalidad_visitante,edad_visitante,camiseta_visitante,`posición_visitante`,fecha,goles_local,goles_visitante,estadio,arbitro) VALUES ('Valencia','Real Madrid','Maxi Gómez','Delantero','Uruguayo',25,22,'Toni Kroos','Alemán',31,8,'Mediocampista','2023-10-02',1,1,'Mestalla','Alejandro Hernández'); -- Camiseta local de NULL a 0

-- Original: VALUES ('Villarreal','Barcelona','Pau Torres','Defensa','Español',3,4,'Antoine Griezmann','Francés',9,7,'Delantero','2023-11-06',1,NULL,'Estadio de la Cerámica','José María Sánchez');
INSERT INTO infutbol(equipo_local,equipo_visitante,jugador_local,posicion_local,nacionalidad_local,edad_local,camiseta_local,jugador_visitante,nacionalidad_visitante,edad_visitante,camiseta_visitante,`posición_visitante`,fecha,goles_local,goles_visitante,estadio,arbitro) VALUES ('Villarreal','Barcelona','Pau Torres','Defensa','Español',23,4,'Antoine Griezmann','Francés',29,7,'Delantero','2023-11-06',1,2,'Estadio de la Cerámica','José María Sánchez');

-- Original: VALUES ('Villarreal','Barcelona','Dani Parejo','Mediocampista','Español',31,5,'Frenkie de Jong','Neerlandés',4,1,'Mediocampista','2023-11-06',1,NULL,'Estadio de la Cerámica','José María Sánchez');
INSERT INTO infutbol(equipo_local,equipo_visitante,jugador_local,posicion_local,nacionalidad_local,edad_local,camiseta_local,jugador_visitante,nacionalidad_visitante,edad_visitante,camiseta_visitante,`posición_visitante`,fecha,goles_local,goles_visitante,estadio,arbitro) VALUES ('Villarreal','Barcelona','Dani Parejo','Mediocampista','Español',31,5,'Frenkie de Jong','Neerlandés',24,21,'Mediocampista','2023-11-06',1,2,'Estadio de la Cerámica','José María Sánchez');



######################################################
##  II. CREAR TABLAS NORMALIZADAS: Excel y Script SQL. 
######################################################
SET FOREIGN_KEY_CHECKS = 0;

# Elimina tablas en orden inverso de dependencias para evitar errores
DROP TABLE IF EXISTS Participacion_Jugadores_Partidos;
DROP TABLE IF EXISTS Partidos;
DROP TABLE IF EXISTS Jugadores;
DROP TABLE IF EXISTS Equipos;
DROP TABLE IF EXISTS Estadios;
DROP TABLE IF EXISTS Arbitros;

# Crear tabla Arbitros
CREATE TABLE Arbitros (
    id_arbitro INT AUTO_INCREMENT PRIMARY KEY,
    nombre_arbitro VARCHAR(255) NOT NULL UNIQUE
);

# Crea tabla Equipos
CREATE TABLE Equipos (
    id_equipo INT AUTO_INCREMENT PRIMARY KEY,
    nombre_equipo VARCHAR(255) NOT NULL UNIQUE
);

# Crea tabla Estadios
CREATE TABLE Estadios (
    id_estadio INT AUTO_INCREMENT PRIMARY KEY,
    nombre_estadio VARCHAR(255) NOT NULL UNIQUE
);

# Crea tabla Jugadores
CREATE TABLE Jugadores (
    id_jugador INT AUTO_INCREMENT PRIMARY KEY,
    nombre_jugador VARCHAR(255) NOT NULL,
    nacionalidad VARCHAR(255),
    edad_actual INT,
    UNIQUE (nombre_jugador, nacionalidad) #Jugador único por nombre y nacionalidad
);

# Crea tabla Partidos
CREATE TABLE Partidos (
    id_partido INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATE NOT NULL,
    goles_local INT,
    goles_visitante INT,
    id_estadio INT,
    id_arbitro INT,
    id_equipo_local INT,
    id_equipo_visitante INT,
    FOREIGN KEY (id_estadio) REFERENCES Estadios(id_estadio),
    FOREIGN KEY (id_arbitro) REFERENCES Arbitros(id_arbitro),
    FOREIGN KEY (id_equipo_local) REFERENCES Equipos(id_equipo),
    FOREIGN KEY (id_equipo_visitante) REFERENCES Equipos(id_equipo),
    UNIQUE (fecha, id_equipo_local, id_equipo_visitante)  # Un partido único por fecha y equipos
);

# Crea tabla Participacion_Jugadores_Partidos
CREATE TABLE Participacion_Jugadores_Partidos (
    id_participacion INT AUTO_INCREMENT PRIMARY KEY,
    id_partido INT NOT NULL,
    id_jugador INT NOT NULL,
    id_equipo_jugador INT NOT NULL,    # Equipo al que pertenece el jugador en ese partido
    rol_jugador ENUM('local', 'visitante') NOT NULL,
    posicion_partido VARCHAR(255),
    numero_camiseta_partido INT,
    edad_partido INT, 
    FOREIGN KEY (id_partido) REFERENCES Partidos(id_partido),
    FOREIGN KEY (id_jugador) REFERENCES Jugadores(id_jugador),
    FOREIGN KEY (id_equipo_jugador) REFERENCES Equipos(id_equipo),
    UNIQUE (id_partido, id_jugador)    # Un jugador participa una única vez por partido
);

# Reiniciar los contadores AUTO_INCREMENT (IDs inicien desde 1 de nuevo)
ALTER TABLE Arbitros AUTO_INCREMENT = 1;
ALTER TABLE Equipos AUTO_INCREMENT = 1;
ALTER TABLE Estadios AUTO_INCREMENT = 1;
ALTER TABLE Jugadores AUTO_INCREMENT = 1;
ALTER TABLE Partidos AUTO_INCREMENT = 1;
ALTER TABLE Participacion_Jugadores_Partidos AUTO_INCREMENT = 1;


#########################################################
# III. POBLAR TABLAS NORMALIZADAS: Script desde 'infutbol'
#########################################################

# Poblar Equipos
# Inserta equipos únicos de las columnas local y visitante de infutbol
INSERT IGNORE INTO Equipos (nombre_equipo)
SELECT DISTINCT equipo_local FROM infutbol
WHERE equipo_local IS NOT NULL AND TRIM(equipo_local) != ''
UNION
SELECT DISTINCT equipo_visitante FROM infutbol
WHERE equipo_visitante IS NOT NULL AND TRIM(equipo_visitante) != '';

# Poblar Estadios
# Inserta estadios únicos de infutbol
INSERT IGNORE INTO Estadios (nombre_estadio)
SELECT DISTINCT estadio FROM infutbol
WHERE estadio IS NOT NULL AND TRIM(estadio) != '';

# Poblar Arbitros
# Inserta árbitros únicos de infutbol
INSERT IGNORE INTO Arbitros (nombre_arbitro)
SELECT DISTINCT arbitro FROM infutbol
WHERE arbitro IS NOT NULL AND TRIM(arbitro) != '';

# Poblar Jugadores
# Inserta jugadores únicos de las columnas local y visitante de infutbol
# Incluye nacionalidad y edad_actual (última edad registrada)
INSERT IGNORE INTO Jugadores (nombre_jugador, nacionalidad, edad_actual)
SELECT DISTINCT jugador_local, nacionalidad_local, edad_local FROM infutbol
WHERE jugador_local IS NOT NULL AND TRIM(jugador_local) != ''
UNION
SELECT DISTINCT jugador_visitante, nacionalidad_visitante, edad_visitante FROM infutbol
WHERE jugador_visitante IS NOT NULL AND TRIM(jugador_visitante) != '';

# Poblar Partidos
# Inserta detalles de cada partido (IDs de tablas normalizadas)
INSERT INTO Partidos (fecha, goles_local, goles_visitante, id_estadio, id_arbitro, id_equipo_local, id_equipo_visitante)
SELECT
    STR_TO_DATE(dbp.fecha, '%Y-%m-%d') AS fecha_formato_correcto,    # Convierte fecha de STRING a DATE
    COALESCE(dbp.goles_local, 0), # Reemplaza NULLs con 0 para goles
    COALESCE(dbp.goles_visitante, 0), # Reemplaza NULLs con 0 para goles
    e.id_estadio,
    a.id_arbitro,
    el.id_equipo AS id_equipo_local,
    ev.id_equipo AS id_equipo_visitante
FROM
    infutbol dbp
JOIN
    Estadios e ON dbp.estadio = e.nombre_estadio
JOIN
    Arbitros a ON dbp.arbitro = a.nombre_arbitro
JOIN
    Equipos el ON dbp.equipo_local = el.nombre_equipo
JOIN
    Equipos ev ON dbp.equipo_visitante = ev.nombre_equipo
GROUP BY
    dbp.fecha, dbp.equipo_local, dbp.equipo_visitante, dbp.estadio, dbp.arbitro, dbp.goles_local, dbp.goles_visitante;


# Poblar Participacion_Jugadores_Partidos (Parte Local)
# Participación de jugadores locales en cada partido
INSERT  INTO Participacion_Jugadores_Partidos (id_partido, id_jugador, id_equipo_jugador, rol_jugador, posicion_partido, numero_camiseta_partido, edad_partido)
SELECT
    p.id_partido,
    j.id_jugador,
    eq.id_equipo AS id_equipo_jugador,
    'local' AS rol_jugador,
    dbp.posicion_local,
    COALESCE(dbp.camiseta_local, 0), # Reemplaza NULLs con 0 para camiseta
    dbp.edad_local
FROM
    infutbol dbp
JOIN
    Partidos p ON STR_TO_DATE(dbp.fecha, '%Y-%m-%d') = p.fecha
                AND   COALESCE(dbp.goles_local, 0) = p.goles_local
                AND COALESCE(dbp.goles_visitante, 0) = p.goles_visitante
                AND p.id_equipo_local = (SELECT id_equipo FROM Equipos WHERE nombre_equipo = dbp.equipo_local)
                AND p.id_equipo_visitante = (SELECT id_equipo FROM Equipos WHERE nombre_equipo = dbp.equipo_visitante)
JOIN
    Equipos eq ON dbp.equipo_local = eq.nombre_equipo
JOIN
    Jugadores j ON dbp.jugador_local = j.nombre_jugador AND dbp.nacionalidad_local = j.nacionalidad
WHERE
    dbp.jugador_local IS NOT NULL AND TRIM(dbp.jugador_local) != '';


# Poblar Participacion_Jugadores_Partidos (Parte Visitante)
# Participación de los jugadores visitantes en cada partido
INSERT INTO Participacion_Jugadores_Partidos (id_partido, id_jugador, id_equipo_jugador, rol_jugador, posicion_partido, numero_camiseta_partido, edad_partido)
SELECT
    p.id_partido,
    j.id_jugador,
    eq.id_equipo AS id_equipo_jugador,
    'visitante' AS rol_jugador,    
    dbp.`posición_visitante`,
    COALESCE(dbp.camiseta_visitante, 0), # Reemplaza NULLs con 0 para camiseta
    dbp.edad_visitante
FROM
    infutbol dbp
JOIN
    Partidos p ON STR_TO_DATE(dbp.fecha, '%Y-%m-%d') = p.fecha
                AND COALESCE(dbp.goles_local, 0) = p.goles_local
                AND COALESCE(dbp.goles_visitante, 0) = p.goles_visitante
                AND p.id_equipo_local = (SELECT id_equipo FROM Equipos WHERE nombre_equipo = dbp.equipo_local)
                AND p.id_equipo_visitante = (SELECT id_equipo FROM Equipos WHERE nombre_equipo = dbp.equipo_visitante)
JOIN
    Equipos eq ON dbp.equipo_visitante = eq.nombre_equipo
JOIN
    Jugadores j ON dbp.jugador_visitante = j.nombre_jugador AND dbp.nacionalidad_visitante = j.nacionalidad
WHERE
    dbp.jugador_visitante IS NOT NULL AND TRIM(dbp.jugador_visitante) != '';

# Habilitar las comprobaciones de claves foráneas
SET FOREIGN_KEY_CHECKS = 1;



################################################################   
#  V. VISUALIZACIÓN DEL MODELO DE BASE DE DATOS ER: Diagrama E-R
################################################################
# Generación de Diagrama E-R: Uso de "Reverse Engineer" en MySQL Workbench.
# Por favor, ver el archivo de diagrama correspondiente adjunto, o en su defecto, el archivo de Excel adjunto.
# Estructura y Relaciones: Cardinalidades (1:1, 1:N, N:M) y su aplicación en la BD.
# 
# Relaciones Específicas en la Base de Datos:
# | Relación               | Tipo de Cardinalidad | Explicación                                                                                                                   |
# | :--------------------- | :------------------- | :-----------------------------------------------------------------------------------------------------------------------------|
# | Estadios a Partidos    | Uno a Muchos (1:N)   | Un Estadio alberga muchos Partidos, pero un Partido se juega en un único Estadio.                                             |
# | Arbitros a Partidos    | Uno a Muchos (1:N)   | Un Árbitro arbitra muchos Partidos, pero un Partido es arbitrado por un único Árbitro.                                        |
# | Equipos a Partidos     | Uno a Muchos (1:N)   | Un Equipo puede ser local/visitante en muchos Partidos, pero un Partido tiene un único equipo local/visitante.                |
# | Partidos a PJP         | Uno a Muchos (1:N)   | Un Partido tiene muchas Participaciones de Jugadores, pero cada Participación es de un único Partido.                         |
# | Jugadores a PJP        | Uno a Muchos (1:N)   | Un Jugador tiene muchas Participaciones en Partidos, pero cada Participación es de un único Jugador.                          |
# | Equipos a PJP          | Uno a Muchos (1:N)   | Un Equipo tiene muchos Jugadores en Participaciones, pero cada Participación es de un único Equipo.                           |
# | Jugadores a Partidos   | Muchos a Muchos (N:M)| Un Jugador participa en muchos Partidos, y un Partido tiene muchos Jugadores. (Resuelto con tabla auxiliar u asociativa: PJP) |
# | Relaciones Uno a Uno   | No aplica            | No hay relaciones uno a uno explícitas en este modelo de base de datos.                                                       |
# ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Nota: PJP es Participacion_Jugadores_Partidos
# ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



#################################################################
#  V. CONSULTAS SQL: 20 Consultas SQL para el análisis de datos.   
#################################################################

# CONSULTAS 

#1. Obtener todos los partidos jugados en el Estadio Santiago Bernabéu (incluir fecha, nombre y goles del equipo local y visitante, y estadio )
SELECT p.fecha, el.nombre_equipo AS equipo_local, p.goles_local, p.goles_visitante, ev.nombre_equipo AS equipo_visitante, e.nombre_estadio
FROM liga.partidos p
JOIN liga.estadios e 
ON p.id_estadio = e.id_estadio
JOIN liga.equipos el 
ON p.id_equipo_local = el.id_equipo
JOIN liga.equipos ev 
ON p.id_equipo_visitante = ev.id_equipo
WHERE e.nombre_estadio = 'Santiago Bernabéu';

#2. Listar todos los jugadores que han jugado en el equipo Barcelona
SELECT DISTINCT j.nombre_jugador, j.nacionalidad
FROM liga.jugadores j
JOIN liga.participacion_jugadores_partidos pjp
ON j.id_jugador = pjp.id_jugador
JOIN liga.equipos e
ON pjp.id_equipo_jugador = e.id_equipo
WHERE e.nombre_equipo = "Barcelona";

#3 Calcular la cantidad total de goles marcados en todos los partidos.
SELECT SUM(goles_local) + SUM(goles_visitante) AS total_goles_marcados
FROM liga.partidos p;

#4 Mostrar todos los partidos jugados por el equipo Real Madrid.
SELECT p.fecha, el.nombre_equipo AS equipo_local, p.goles_local,
	p.goles_visitante, ev.nombre_equipo AS equipo_visitante, e.nombre_estadio
FROM liga.partidos p
JOIN liga.equipos el
ON p.id_equipo_local = el.id_equipo
JOIN liga.equipos ev
ON p.id_equipo_visitante = ev.id_equipo
JOIN liga.estadios e
ON p.id_estadio = e.id_estadio
WHERE el.nombre_equipo = "Real Madrid" OR ev.nombre_equipo = "Real Madrid";

#5 Encontrar la cantidad total de partidos arbitrados por cada árbitro.
SELECT a.nombre_arbitro, COUNT(p.id_partido) AS total_partidos_arbitrados
FROM liga.arbitros a
JOIN liga.partidos p
ON a.id_arbitro = p.id_arbitro
GROUP BY a.nombre_arbitro
ORDER BY total_partidos_arbitrados DESC;

#6. Obtener el promedio de edad de los jugadores que han jugado en el equipo Atlético Madrid.(edad_actual del jugador)
SELECT e.nombre_equipo, AVG(j.edad_actual) AS promedio_edad_jugadores
FROM liga.jugadores j
JOIN liga.participacion_jugadores_partidos pjp
ON j.id_jugador = pjp.id_jugador
JOIN liga.equipos e
ON pjp.id_equipo_jugador = e.id_equipo
WHERE e.nombre_equipo = 'Atlético Madrid';

#7. Listar los partidos donde el resultado terminó en empate.
SELECT p.fecha, el.nombre_equipo AS equipo_local, p.goles_local,
	p.goles_visitante, ev.nombre_equipo AS equipo_visitante, e.nombre_estadio
FROM liga.partidos p
JOIN liga.equipos el
ON p.id_equipo_local = el.id_equipo
JOIN liga.equipos ev
ON p.id_equipo_visitante = ev.id_equipo
JOIN liga.estadios e
ON p.id_estadio = e.id_estadio
WHERE p.goles_local = p.goles_visitante;

#8. Encontrar el jugador más joven que ha jugado en cada posición (edad_actual, no edad_partido)
SELECT DISTINCT pjp_outer.posicion_partido, j_outer.nombre_jugador, j_outer.edad_actual AS edad_mas_joven
FROM liga.jugadores j_outer
JOIN liga.participacion_jugadores_partidos pjp_outer
ON j_outer.id_jugador = pjp_outer.id_jugador
WHERE (pjp_outer.posicion_partido, j_outer.edad_actual) IN (
    SELECT pjp_inner.posicion_partido, MIN(j_inner.edad_actual)
    FROM liga.jugadores j_inner
    JOIN participacion_jugadores_partidos pjp_inner
    ON j_inner.id_jugador = pjp_inner.id_jugador
    GROUP BY pjp_inner.posicion_partido
)
ORDER BY pjp_outer.posicion_partido, j_outer.edad_actual;

#9. Mostrar el número total de partidos jugados en el año 2023.
SELECT COUNT(id_partido) AS total_partidos_2023
FROM liga.partidos
WHERE YEAR(fecha) = 2023;

#10. Obtener el jugador con más apariciones.
SELECT j.nombre_jugador,
    COUNT(pjp.id_participacion) AS total_apariciones
FROM liga.jugadores j
JOIN liga.participacion_jugadores_partidos pjp
ON j.id_jugador = pjp.id_jugador
GROUP BY j.nombre_jugador
ORDER BY total_apariciones DESC
LIMIT 1;

#11. Listar los partidos donde el equipo local ha ganado.
SELECT p.fecha, el.nombre_equipo AS equipo_local, p.goles_local,
    p.goles_visitante, ev.nombre_equipo AS equipo_visitante, e.nombre_estadio
FROM liga.partidos p 
JOIN liga.equipos el 
ON p.id_equipo_local = el.id_equipo
JOIN liga. equipos ev
ON p.id_equipo_visitante = ev.id_equipo
JOIN liga.estadios e
ON p.id_estadio = e.id_estadio
WHERE p.goles_local > p.goles_visitante;

#12. Encontrar el número de partidos jugados en cada estadio.
SELECT e.nombre_estadio,
    COUNT(p.id_partido) AS numero_de_partidos
FROM liga.estadios e
JOIN liga.partidos p
ON e.id_estadio = p.id_estadio
GROUP BY e.nombre_estadio
ORDER BY numero_de_partidos DESC;

#13. Calcular el total de goles marcados por cada equipo en la temporada 2023 (Sumar goles marcados como local y visitante)
SELECT eq.nombre_equipo,
    SUM(CASE
        WHEN p.id_equipo_local = eq.id_equipo THEN p.goles_local
        ELSE p.goles_visitante
    END) AS total_goles_2023
FROM liga.equipos eq
JOIN liga.partidos p
ON eq.id_equipo = p.id_equipo_local
OR eq.id_equipo = p.id_equipo_visitante
WHERE YEAR(p.fecha) = 2023
GROUP BY eq.nombre_equipo
ORDER BY total_goles_2023 DESC;

#14. Obtener la cantidad total de partidos jugados por cada equipo como local.
SELECT eq.nombre_equipo,
    COUNT(p.id_partido) AS partidos_como_local
FROM liga.equipos eq
JOIN liga.partidos p
ON eq.id_equipo = p.id_equipo_local
GROUP BY eq.nombre_equipo
ORDER BY partidos_como_local DESC;

#15. Encontrar el equipo con más goles marcados como visitante.
SELECT eq.nombre_equipo,
    SUM(p.goles_visitante) AS total_goles_visitante
FROM liga.equipos eq
JOIN liga.partidos p
ON eq.id_equipo = p.id_equipo_visitante
GROUP BY eq.nombre_equipo
ORDER BY total_goles_visitante DESC
LIMIT 1;

#16. Mostrar los partidos jugados por el jugador Karim Benzema.
SELECT p.fecha, el.nombre_equipo AS equipo_local, p.goles_local,
	p.goles_visitante, ev.nombre_equipo AS equipo_visitante, e.nombre_estadio, pjp.rol_jugador, pjp.posicion_partido
FROM liga.partidos p
JOIN liga.equipos el
ON p.id_equipo_local = el.id_equipo
JOIN liga.equipos ev
ON p.id_equipo_visitante = ev.id_equipo
JOIN liga.estadios e
ON p.id_estadio = e.id_estadio
JOIN liga.participacion_jugadores_partidos pjp
ON p.id_partido = pjp.id_partido
JOIN liga.jugadores j
ON pjp.id_jugador = j.id_jugador
WHERE j.nombre_jugador = "Karim Benzema"
ORDER BY p.fecha;

#17. Contar el número de jugadores por nacionalidad.
SELECT j.nacionalidad, COUNT(j.id_jugador) AS total_jugadores
FROM liga.jugadores j
GROUP BY j.nacionalidad
ORDER BY total_jugadores DESC;

#18. Total de goles marcados por cada equipo (total histórico, local y visitante combinados)
SELECT eq.nombre_equipo,
    SUM(CASE
        WHEN p.id_equipo_local = eq.id_equipo THEN p.goles_local
        ELSE p.goles_visitante
    END) AS total_goles_marcados
FROM liga.equipos eq
LEFT JOIN liga.partidos p
ON eq.id_equipo = p.id_equipo_local
OR eq.id_equipo = p.id_equipo_visitante
GROUP BY eq.nombre_equipo
ORDER BY total_goles_marcados DESC;

#19. Listar partidos con más de 5 goles en total.
SELECT p.fecha, el.nombre_equipo AS equipo_local, p.goles_local,
	p.goles_visitante, ev.nombre_equipo AS equipo_visitante,
    (p.goles_local + p.goles_visitante) AS goles_totales
FROM liga.partidos p
JOIN liga.equipos el
ON p.id_equipo_local = el.id_equipo
JOIN liga.equipos ev
ON p.id_equipo_visitante = ev.id_equipo
WHERE (p.goles_local + p.goles_visitante) > 3
ORDER BY goles_totales DESC;

#20. Árbitros que han arbitrado partidos en el Estadio Real Madrid.
SELECT DISTINCT a.nombre_arbitro
FROM liga.arbitros a
JOIN liga.partidos p
ON a.id_arbitro = p.id_arbitro
JOIN estadios e
ON p.id_estadio = e.id_estadio
WHERE e.nombre_estadio = "Wanda Metropolitano" OR e.nombre_estadio = "Santiago Bernabéu"
ORDER BY a.nombre_arbitro;




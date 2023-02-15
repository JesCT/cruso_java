
create schema `viajes` ;

//Tabla turista
create table vaijes.turista (
  `id_turista` int NOT NULL,
  `pais` varchar(50) NOT NULL,
  `sexo` char(1) NOT NULL,
  `edad` int NOT NULL,
  `idioma` int,
  FOREIGN KEY (`idioma`) REFERENCES idioma(`id_idioma`),
  PRIMARY KEY (`id_turista`)
)

//Tabla recorrido
create table vaijes.recorrido (
  `id_recorrido` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`id_recorrido`),
  UNIQUE KEY `nombre` (`nombre`)
)

//Tabla bitacora
create table vaijes.bitacora (
  `id_bitacora` int NOT NULL,
  `id_turista` int NOT NULL,
  `id_recorrido` int NOT NULL,
  `fecha` date,
  PRIMARY KEY (`id_bitacora`),
  FOREIGN KEY (`id_bitacora`) REFERENCES turista(`id_turista`),
  FOREIGN KEY (`id_recorrido`) REFERENCES recorrido(`id_recorrido`)
)


//Tabla idioma
create table vaijes.idioma (
  `id_idioma` int NOT NULL,
  `idioma` varchar(50) NOT NULL,
  PRIMARY KEY (`id_idioma`)
)


//Insert turista
INSERT INTO Turista (id_Turista, pais, sexo, edad, nombre) VALUES(1,'Guatemala', 'F', '16', 'Camila');

//Insert recorrido
INSERT INTO recorrido (id_recorrido, nombre, descripcion) VALUES (1, 'Caminata', 'Centro de Huehuetenango');

//Insert idioma
INSERT INTO idioma (id_idioma, idioma) VALUES (1,'Español');

//Actualizacion
UPDATE turista SET idioma = 1 WHERE id_turista = 1;

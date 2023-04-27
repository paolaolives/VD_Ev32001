-- Crear tabla usuario
CREATE TABLE usuario (
  id_usuario INT PRIMARY KEY,
  nombre_usuario VARCHAR(50),
  correo VARCHAR(50),
  contrasena VARCHAR(50)
);
-- Crear tabla pelicula
CREATE TABLE pelicula (
  id_pelicula INT PRIMARY KEY,
  titulo VARCHAR(100),
  director VARCHAR(100),
  sinopsis TEXT,
  anio INT,
  genero VARCHAR(50)
);
-- Crear tabla reseña
CREATE TABLE resena (
  id_resena INT PRIMARY KEY,
  id_pelicula INT,
  id_usuario INT,
  texto TEXT,
  puntuacion CHAR(2),
  fecha DATE,
  FOREIGN KEY (id_pelicula) REFERENCES pelicula(id_pelicula),
  FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);
-- Crear tabla comentario
CREATE TABLE comentario (
  id_comentario INT PRIMARY KEY,
  id_resena INT,
  id_usuario INT,
  texto TEXT,
  fecha DATE,
  FOREIGN KEY (id_resena) REFERENCES resena(id_resena),
  FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);
-- Crear tabla favorito
CREATE TABLE favorito (
  id_favorito INT PRIMARY KEY,
  id_pelicula INT,
  id_usuario INT,
  FOREIGN KEY (id_pelicula) REFERENCES pelicula(id_pelicula),
  FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

-- Datos
INSERT INTO usuario (id_usuario, nombre_usuario, correo, contrasena)
VALUES 
(1, 'Headbot', 'headbot@gmail.com', 'contrasena'),
(2, 'DevAsh', 'devash@hotmail.com', 'contrasena'),
(3, 'Effery', 'effery@outlook.com', 'contrasena'),
(4, 'Journati', 'journati@uanll.com', 'contrasena'),
(5, 'BooshChunky', 'boosh@gmail.com', 'contrasena');

INSERT INTO pelicula (id_pelicula, titulo, director, sinopsis, anio, genero)
VALUES 
(1, 'Parásitos', 'Bong Joon-ho', 'Una familia de bajos ingresos se infiltra en la casa de una familia adinerada, lo que lleva a consecuencias inesperadas.', 2019, 'Drama'),
(2, 'El Señor de los Anillos: La comunidad del anillo', 'Peter Jackson', 'Frodo Bolsón emprende un peligroso viaje para destruir un anillo poderoso antes de que caiga en manos del malvado Sauron.', 2001, 'Fantasía'),
(3, 'Forrest Gump', 'Robert Zemeckis', 'Forrest Gump, un hombre con discapacidad intelectual, vive una vida plena y sorprendente, llegando a ser un héroe nacional.', 1994, 'Comedia'),
(4, 'La La Land', 'Damien Chazelle', 'Un pianista de jazz y una aspirante a actriz se enamoran mientras tratan de lograr sus sueños en Los Ángeles.', 2016, 'Musical'),
(5, 'El Pianista', 'Roman Polanski', 'Un pianista judío polaco sobrevive a la ocupación nazi de Varsovia.', 2002,'Drama'),
(6, 'El castillo vagabundo', 'Hayao Miyazaki', 'Una joven es transformada en una anciana por una bruja y se refugia en un castillo vagabundo habitado por un joven hechicero.', 2004, 'Animación'),
(7, 'À la folie... pas du tout', 'Laetitia Colombani', 'Una joven estudiante se obsesiona con un médico casado después de tener una aventura con él.', 2002, 'Drama'),
(8, 'Home: No hay lugar como el hogar', 'Tim Johnson', 'Tras ser expulsados de su planeta por unos alienígenas enemigos, los Boov, liderados por el Capitán Smek, encuentran a la Tierra y deciden colonizarla. Pero al hacerlo, desplazan a los humanos de sus hogares, incluyendo a una chica llamada Tip y a su gato, Pig. Tip y un Boov renegado llamado Oh se unen en una búsqueda para encontrar a la madre de Tip y salvar el planeta de la destrucción.', 2015, 'Animación'),
(9, 'Jefe en pañales', 'Tom McGrath', 'Un bebé con un traje y una actitud de jefe se une a su hermano mayor para detener los malvados planes de una empresa de mascotas.', 2017, 'Animación'),
(10, 'Super Mario Bros.', 'Annabel Jankel y Rocky Morton', 'Dos hermanos de Brooklyn se ven arrastrados a un mundo paralelo donde deben luchar contra un tirano para regresar a casa.', 1993, 'Aventura'),
(11, 'Jumanji: En la selva', 'Jake Kasdan', 'Cuatro adolescentes son absorbidos por un videojuego, en el que se convierten en avatares de personajes adultos. Allí vivirán múltiples aventuras y deberán resolver el misterio para poder regresar a casa.', 2017, 'Aventura'),
(12, 'Rápidos y furiosos: Hobbs & Shaw', 'David Leitch', 'Spin-off de la saga Fast and Furious protagonizado por Dwayne Johnson y Jason Statham. Los dos personajes tendrán que unir fuerzas para enfrentarse a una amenaza que podría poner en peligro al mundo entero.', 2019, 'Acción'),
(13, 'San Andrés', 'Brad Peyton', 'Cuando la falla de San Andrés provoca un terremoto de magnitud 9 en California, un piloto de helicóptero de búsqueda y rescate (interpretado por Dwayne Johnson) y su ex esposa deciden viajar a San Francisco para salvar a su única hija.', 2015, 'Drama'),
(14, 'El rey Escorpión', 'Chuck Russell', 'En la antigua ciudad de Gomorrah, un guerrero llamado Mathayus (interpretado por The Rock) busca venganza contra un siniestro hechicero que asesinó a su hermano.', 2002, 'Aventura'),
(15, 'Harry Potter y el Prisionero de Azkaban', 'Alfonso Cuarón', 'Harry Potter y sus amigos vuelven a Hogwarts para su tercer año de estudios, pero se encuentran con que un peligroso fugitivo de la prisión de Azkaban está buscándolos.', 2004, 'Fantasía'),
(16, 'Harry Potter y el Cáliz de Fuego', 'Mike Newell', 'Harry Potter es seleccionado para participar en el Torneo de los Tres Magos, una competición peligrosa y mortal entre las tres principales escuelas de magia de Europa.', 2005, 'Fantasía'),
(17, 'Harry Potter y la Orden del Fénix', 'David Yates', 'Después de regresar a Hogwarts, Harry Potter se entera de que el Ministerio de Magia se niega a reconocer el regreso de Lord Voldemort y ha enviado a Dolores Umbridge para ser la nueva profesora de Defensa Contra las Artes Oscuras.', 2007, 'Fantasía'),
(18, 'Harry Potter y el Misterio del Príncipe', 'David Yates', 'Con la ayuda del profesor Dumbledore, Harry Potter descubre la conexión entre Lord Voldemort y su pasado, mientras se prepara para una batalla épica en Hogwarts.', 2009, 'Fantasía'),
(19, 'Harry Potter y las Reliquias de la Muerte - Parte 1', 'David Yates', 'Harry, Ron y Hermione deciden no volver a Hogwarts para encontrar y destruir los Horrocruxes de Voldemort, mientras son perseguidos por los seguidores de Voldemort.', 2010, 'Fantasía'),
(20, 'Dumb and Dumber', 'Peter Farrelly', 'Dos amigos idiotas se embarcan en una aventura para devolver una maleta perdida a su dueño.', 1994, 'Comedia');

INSERT INTO resena (id_resena, id_pelicula, id_usuario, texto, puntuacion, fecha) VALUES 
(1, 1, 1, 'Esta es una gran película, definitivamente una de las mejores de este año. Incluso ganó varios Oscar', '10', '2023-04-25'),
(2, 17, 2, 'Una de mis favoritas de la saga de Harry Potter', '9', '2023-04-26'),
(3, 20, 3, 'Super divertida y sale uno de mis actores fav', '8', '2023-04-27'),
(4, 1, 4, 'Una crítica a la sociedad capitalista, dos universos opuestos en un solo mundo', '8', '2023-04-26'),
(5, 8, 5, 'Me gusta que salgan las canciones de Rihanna, mis hijos lo disfrutaron mucho', '8', '2023-04-25'),
(6, 7, 1, 'Una de las mejores películas francesas que puedan existir, con un final inesperado.', '8', '2023-04-28'),
(7, 6, 2, 'Studio Ghibli se caracteriza por buenas películas, ésta reinando como mi favorita de todas', '9', '2023-04-25');

INSERT INTO comentario (id_comentario, id_resena, id_usuario, texto, fecha) VALUES 
(1, 7, 3, 'Totalmente de acuerdo, esta película es increíble :)', '2023-04-26'),
(2, 1, 5, 'Considero que destaca mucho los estereotipos comúnes de: "pobre malo, rico bueno", just sayin', '2023-04-27'),
(3, 6, 4, 'Me gusta también ese toque psicoanalítico de la protagonista, pero había partes un poco aburridas jaja', '2023-04-26');

INSERT INTO favorito (id_favorito, id_pelicula, id_usuario) VALUES 
(1, 4, 2),
(2, 5, 3),
(3, 14, 4),
(4, 10, 5),
(5, 10, 1);

select * from usuario;
select * from pelicula;
select usuario.nombre_usuario, pelicula.titulo, texto, puntuacion, fecha from resena
JOIN pelicula ON resena.id_pelicula = pelicula.id_pelicula
JOIN usuario ON resena.id_usuario = usuario.id_usuario;

SELECT pelicula.titulo, u1.nombre_usuario AS nombre_usuario_resena, 
resena.texto, 
u2.nombre_usuario AS nombre_usuario_comentario, 
c.texto, c.fecha 
FROM comentario c
JOIN resena ON resena.id_resena = c.id_resena
JOIN usuario u1 ON u1.id_usuario = resena.id_usuario
JOIN usuario u2 ON u2.id_usuario = c.id_usuario
JOIN pelicula ON pelicula.id_pelicula = resena.id_pelicula;

SELECT pelicula.titulo AS TOP, COUNT(*) AS Cantidad_de_MeGusta
FROM favorito
join pelicula on pelicula.id_pelicula = favorito.id_pelicula
GROUP BY pelicula.titulo
ORDER BY Cantidad_de_MeGusta DESC;

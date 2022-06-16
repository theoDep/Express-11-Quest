DROP TABLE IF EXISTS `movies`;
CREATE TABLE `movies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `director` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `color` tinyint(1) NOT NULL,
  `duration` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
);
INSERT INTO
  `movies` (title, director, year, color, duration, user_id)
VALUES
  ('Citizen Kane', 'Orson Wells', '1941', 0, 120, 1),
  (
    'The Godfather',
    'Francis Ford Coppola',
    '1972',
    1,
    180,
    1
  ),
  (
    'Pulp Fiction',
    'Quentin Tarantino',
    '1994',
    1,
    180,
    1
  ),
  (
    'Apocalypse Now',
    'Francis Ford Coppola',
    '1979',
    1,
    150,
    1
  ),
  (
    '2001 a space odyssey',
    'Stanley Kubrick',
    '1968',
    1,
    160,
    1
  ),
  (
    'The Dark Knight',
    'Christopher Nolan',
    '2008',
    1,
    150,
    1
  );
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
    `id` int NOT NULL AUTO_INCREMENT,
    `firstname` varchar(255) NOT NULL,
    `lastname` varchar(255) NOT NULL,
    `email` varchar(255) UNIQUE NOT NULL,
    `city` varchar(255) DEFAULT NULL,
    `language` varchar(255) DEFAULT NULL,
    `hashedPassword` varchar(255) NOT NULL,
    `token` varchar(255) NOT NULL,
    PRIMARY KEY (`id`)
  );
INSERT INTO
  `users` (firstname, lastname, email, city, language, hashedPassword, token)
VALUES
  (
    'John',
    'Doe',
    'john.doe@example.com',
    'Paris',
    'English',
    "$argon2id$v=19$m=65536,t=5,p=1$jHITg7fV+frX0WW5a+g1Og$qfe+ZDRfHN0wtRh5iUDK3jJOGX56OOCzFjE6cWMBje0",
    "446cd3bb8993cd0114a2ce6df0cf4cd1"

  ),(
    'Valeriy',
    'Appius',
    'valeriy.ppius@example.com',
    'Moscow',
    'Russian',
    '$argon2id$v=19$m=65536,t=5,p=1$jHITg7fV+frX0WW5a+g1Og$qfe+ZDRfHN0wtRh5iUDK3jJOGX56OOCzFjE6cWMBje0',
    "d3caee5b58d232bc516f5cf20f627c5e"
  ),(
    'Ralf',
    'Geronimo',
    'ralf.geronimo@example.com',
    'New York',
    'Italian',
    '$argon2id$v=19$m=65536,t=5,p=1$jHITg7fV+frX0WW5a+g1Og$qfe+ZDRfHN0wtRh5iUDK3jJOGX56OOCzFjE6cWMBje0',
    "1baea32247615faa3d046b151a72a10e"
  );
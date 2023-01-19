CREATE DATABASE Human_Friends;
USE Human_Friends


DROP TABLE IF EXISTS pets;
CREATE TABLE pets (
	id SERIAL,
	name VARCHAR(50)
);

INSERT INTO `pets` (`id`, `name`) 
VALUES 
('1', 'Dogs'),
('2', 'Cats'),
('3', 'Hamsters');

DROP TABLE IF EXISTS pack_animals;
CREATE TABLE pack_animals (
	id SERIAL,
	name VARCHAR(50)
);

INSERT INTO `pack_animals` (`id`, `name`) 
VALUES 
('1', 'Horses'),
('2', 'Camels'),
('3', 'Donkeys');


DROP TABLE IF EXISTS dogs;
CREATE TABLE dogs (
	id BIGINT UNSIGNED NOT NULL PRIMARY KEY, AUTO_INCREMENT
	name VARCHAR(50),
  	date_of_birth DATETIME DEFAULT NOW(),
    pets_id BIGINT UNSIGNED NOT NULL,
    commands VARCHAR(50)
    
  	FOREIGN KEY (pets_id) REFERENCES pets(id)
);

INSERT INTO `dogs` (`id`, `name`, `date_of_birth`, `pets_id`, `commands`) 
VALUES 
('1', 'Bob', '05-05-2020', '1', 'Sit'),
('2', 'Steve', '06-05-2020', '2', 'lie down'),
('3', 'Bred', '07-05-2020', '3', 'voice');

DROP TABLE IF EXISTS ñats;
CREATE TABLE ñats (
	id BIGINT UNSIGNED NOT NULL PRIMARY KEY, AUTO_INCREMENT
	name VARCHAR(50),
  	date_of_birth DATETIME DEFAULT NOW(),
    pets_id BIGINT UNSIGNED NOT NULL,
    commands VARCHAR(50)
    
  	FOREIGN KEY (pets_id) REFERENCES pets(id)
);

INSERT INTO `ñats` (`id`, `name`, `date_of_birth`, `pets_id`, `commands`) 
VALUES 
('1', 'Bob', '05-05-2020', '1', 'Sit'),
('2', 'Steve', '06-05-2020', '2', 'lie down'),
('3', 'Bred', '07-05-2020', '3', 'run');

DROP TABLE IF EXISTS hamsters;
CREATE TABLE hamsters (
	id BIGINT UNSIGNED NOT NULL PRIMARY KEY, AUTO_INCREMENT
	name VARCHAR(50),
  	date_of_birth DATETIME DEFAULT NOW(),
    pets_id BIGINT UNSIGNED NOT NULL,
    commands VARCHAR(50)
    
  	FOREIGN KEY (pets_id) REFERENCES pets(id)
);

INSERT INTO `hamsters` (`id`, `name`, `date_of_birth`, `pets_id`, `commands`) 
VALUES 
('1', 'Bob', '05-05-2020', '1', 'Sit'),
('2', 'Steve', '06-05-2020', '2', 'lie down'),
('3', 'Bred', '07-05-2020', '3', 'run');

DROP TABLE IF EXISTS horses;
CREATE TABLE horses (
	id BIGINT UNSIGNED NOT NULL PRIMARY KEY, AUTO_INCREMENT
	name VARCHAR(50),
  	date_of_birth DATETIME DEFAULT NOW(),
    pack_animals_id BIGINT UNSIGNED NOT NULL,
    commands VARCHAR(50)
    
  	FOREIGN KEY (pets_id) REFERENCES pack_animals(id)
);

INSERT INTO `horses` (`id`, `name`, `date_of_birth`, `pack_animals_id`, `commands`) 
VALUES 
('1', 'Bob', '05-05-2020', '1', 'Sit'),
('2', 'Steve', '06-05-2020', '2', 'lie down'),
('3', 'Bred', '07-05-2020', '3', 'run');

DROP TABLE IF EXISTS camels;
CREATE TABLE camels (
	id BIGINT UNSIGNED NOT NULL PRIMARY KEY, AUTO_INCREMENT
	name VARCHAR(50),
  	date_of_birth DATETIME DEFAULT NOW(),
    pack_animals_id BIGINT UNSIGNED NOT NULL,
    commands VARCHAR(50)
    
  	FOREIGN KEY (pets_id) REFERENCES pack_animals(id)
);

INSERT INTO `camels` (`id`, `name`, `date_of_birth`, `pack_animals_id`, `commands`) 
VALUES 
('1', 'Bob', '05-05-2020', '1', 'Sit'),
('2', 'Steve', '06-05-2020', '2', 'lie down'),
('3', 'Bred', '07-05-2020', '3', 'run');

DROP TABLE IF EXISTS donkeys;
CREATE TABLE donkeys (
	id BIGINT UNSIGNED NOT NULL PRIMARY KEY, AUTO_INCREMENT
	name VARCHAR(50),
  	date_of_birth DATETIME DEFAULT NOW(),
    pack_animals_id BIGINT UNSIGNED NOT NULL,
    commands VARCHAR(50)
    
  	FOREIGN KEY (pets_id) REFERENCES pack_animals(id)
);

INSERT INTO `donkeys` (`id`, `name`, `date_of_birth`, `pack_animals_id`, `commands`) 
VALUES 
('1', 'Bob', '05-05-2020', '1', 'Sit'),
('2', 'Steve', '06-05-2020', '2', 'lie down'),
('3', 'Bred', '07-05-2020', '3', 'run');

DROP TABLE IF EXISTS camels;
    
select	*, 
	TIMESTAMPDIFF(year_month, date_of_birth, NOW()) as age
from 
	dogs
	join ñats on ñats.id = dogs.id
	join hamsters on hamsters.id = dogs.id
	join horses on horses.id = dogs.id
	join camels on camels.id = dogs.id
	join donkeys on donkeys.id = dogs.id
WHERE
	3 > age > 1;
	
select	*
from 
	dogs
	join ñats on ñats.id = dogs.id
	join hamsters on hamsters.id = dogs.id
	join horses on horses.id = dogs.id
	join camels on camels.id = dogs.id
	join donkeys on donkeys.id = dogs.id
	join pets on pets.id = dogs.pets_id
	join pack_animals on pack_animals.id = camels.pack_animals_id;

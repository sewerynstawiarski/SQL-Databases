DESCRIBE pets;

ALTER TABLE pets
CHANGE species animal_type VARCHAR(20);

ALTER TABLE pets
RENAME COLUMN animal_type TO species;

ALTER TABLE pets
RENAME COLUMN species TO `animal type`;
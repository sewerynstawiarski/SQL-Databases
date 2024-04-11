DESCRIBE pets;
DESCRIBE people;
DESCRIBE addresses;

ALTER TABLE pets
ADD PRIMARY KEY (id);

ALTER TABLE pets
ADD CONSTRAINT FK_owner_id
FOREIGN KEY (owner_id) REFERENCES people(id);

ALTER TABLE people
ADD COLUMN email VARCHAR(30);

ALTER TABLE people
ADD CONSTRAINT u_email UNIQUE (email);

ALTER TABLE pets
RENAME COLUMN name TO first_name;

ALTER TABLE addresses
MODIFY postcode CHAR(7);

ALTEr TABLE addresses
CHANGE COLUMN postcode postcode CHAR(7);
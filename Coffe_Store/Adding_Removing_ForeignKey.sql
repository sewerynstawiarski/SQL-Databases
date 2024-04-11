DESCRIBE addresses;
DESCRIBE people;

ALTER TABLE people
ADD CONSTRAINT FK_PeopleAddress
FOREIGN KEY (address_id) REFERENCES addresses(id);

ALTER TABLE people
DROP FOREIGN KEY FK_PeopleAddress,
DROP INDEX FK_PeopleAddress;
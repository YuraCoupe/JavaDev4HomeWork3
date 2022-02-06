ALTER TABLE developers ADD COLUMN salary integer;

UPDATE developers SET salary = 2000 WHERE last_name = 'Atkinson';
UPDATE developers SET salary = 2500 WHERE last_name = 'Buschmann';
UPDATE developers SET salary = 4500 WHERE last_name = 'Clein';
UPDATE developers SET salary = 3000 WHERE last_name = 'Deboa';
UPDATE developers SET salary = 3700 WHERE last_name = 'Errano';
UPDATE developers SET salary = 5000 WHERE last_name = 'Ferodo';
UPDATE developers SET salary = 5600 WHERE last_name = 'Ganesha';
UPDATE developers SET salary = 4300 WHERE last_name = 'Hord';
UPDATE developers SET salary = 2700 WHERE last_name = 'Indi';
UPDATE developers SET salary = 2200 WHERE last_name = 'Kanepa';
UPDATE developers SET salary = 2600 WHERE last_name = 'Luis';
UPDATE developers SET salary = 5000 WHERE last_name = 'Miller';
UPDATE developers SET salary = 4100 WHERE last_name = 'Neoni';
UPDATE developers SET salary = 3500 WHERE last_name = 'Oruel';
UPDATE developers SET salary = 2900 WHERE last_name = 'Pele';

ALTER TABLE developers ALTER COLUMN salary SET NOT NULL;
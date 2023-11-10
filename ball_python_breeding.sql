CREATE TABLE breeder_male (
    male_id VARCHAR PRIMARY KEY,
    morph VARCHAR(50),
    proven BOOLEAN DEFAULT FALSE,
    active BOOLEAN DEFAULT TRUE
);

CREATE TABLE breeder_female (
    female_id VARCHAR PRIMARY KEY,
    morph VARCHAR(50),
    proven BOOLEAN DEFAULT FALSE,
    active BOOLEAN DEFAULT TRUE
);

CREATE TABLE pairing (
    pairing_id VARCHAR PRIMARY KEY,
    male VARCHAR REFERENCES breeder_male(male_id) NOT NULL,
    female VARCHAR REFERENCES breeder_female(female_id) NOT NULL,
    locks INT,
    success BOOLEAN DEFAULT FALSE,
    clutch VARCHAR UNIQUE
);

CREATE TABLE clutch (
    clutch_id VARCHAR PRIMARY KEY REFERENCES pairing(clutch),
    sire VARCHAR REFERENCES breeder_male(male_id) NOT NULL,
    dame VARCHAR REFERENCES breeder_female(female_id) NOT NULL,
    eggs INT,
    slugs INT,
    hatchlings INT
);

INSERT INTO breeder_male
VALUES ('Creature', 'Pastel Pied hLav', TRUE, TRUE),
('Tarzan', 'Leopard Clown', TRUE, FALSE),
('Zuko', 'Fire Clown', TRUE, FALSE),
('Mozart', 'BP Pied hLav', TRUE, FALSE),
('Callum', 'Mahogany hLav pos hPied', TRUE, FALSE),
('Ezran', 'Mahogany hPied', TRUE, FALSE),
('Monty', 'Clown hLav hPied', TRUE, TRUE),
('Charming', 'Pastel Lav hPied', TRUE, TRUE),
('SugarDaddy', 'Enchi YB BH Lav hPied', TRUE, TRUE),
('Rune', 'Leopard Spotnose Clown', TRUE, TRUE),
('Disco', 'Firefly Clown', TRUE, TRUE);

INSERT INTO breeder_female
VALUES ('Buffy', 'hLav', TRUE, FALSE),
('Sabrina', 'hLav', TRUE, FALSE),
('Belle', 'Lavender', TRUE, FALSE),
('Sylvia', 'Spotnose', TRUE, FALSE),
('Tilly', 'Spotnose hClown', TRUE, FALSE),
('Ishtar', 'S.Pastel Mojave hClown', TRUE, FALSE),
('Cleo', 'Enchi Mystic', TRUE, FALSE),
('Jenny', 'YB Mojave', TRUE, FALSE),
('Katniss', 'Mahogany hPied', TRUE, FALSE),
('Roulette', 'Special', TRUE, FALSE),
('Minerva', 'BP hPied', TRUE, FALSE),
('McGonagall', 'BP hPied', TRUE, FALSE),
('Tigerlily', 'Lavender hPied', TRUE, TRUE),
('Sakura', 'Enchi Clown', TRUE, TRUE),
('Diva', 'Pastel Clown pos hHypo', TRUE, TRUE),
('Odette', 'Lavender', TRUE, TRUE),
('Arwen', 'Pied hLav', TRUE, TRUE),
('Winifred', 'Pdox Leopard hClown 66hLav', FALSE, TRUE),
('Mary', 'Leopard hClown', TRUE, TRUE),
('Sarah', 'Leopard hClown 66hLav', FALSE, TRUE),
('Rayla', 'Leopard Spotnose hLav hClown', TRUE, TRUE),
('BESusan', 'Pdox Pastel Lav hPied', TRUE, TRUE)
('Lilac', 'Pastel Pied hLav', FALSE, FALSE);

INSERT INTO pairing
VALUES ('23_Disco_1', 'Disco', 'Sakura', 5, TRUE, '23_6'),
('23_Rune_1', 'Rune', 'Diva', 4, TRUE, '23_2'),
('23_Charming_1', 'Charming', 'Tigerlily', 3, TRUE, '23_3'),
('23_SugarDaddy_1', 'SugarDaddy', 'BESusan', 4, TRUE, '23_4'),
('23_SugarDaddy_2', 'SugarDaddy', 'Lilac', 0, FALSE, NULL),
('23_SugarDaddy_3', 'SugarDaddy', 'Odette', 2, TRUE, '23_7'),
('23_Creature_1', 'Creature', 'Arwen', 5, TRUE, '23_5'),
('23_Monty_1', 'Monty', 'Winifred', 2, FALSE, NULL),
('23_Monty_2', 'Monty', 'Mary', 1, TRUE, '23_1'),
('23_Monty_3', 'Monty', 'Sarah', 0, FALSE, NULL),
('23_Monty_4', 'Monty', 'Rayla', 2, TRUE, '22_7'),
('22_Mozart_1', 'Mozart', 'Buffy', 2, TRUE, '22_5'),
('22_Mozart_2', 'Mozart', 'Sabrina', 0, FALSE, NULL),
('22_Mozart_3', 'Mozart', 'Tigerlily', 0, FALSE, NULL),
('22_Creature_1', 'Creature', 'Sabrina', 2, TRUE, '22_10'),
('22_Creature_2', 'Creature', 'Tigerlily', 2, FALSE, NULL),
('22_Creature_3', 'Creature', 'Cleo', 2, TRUE, '22_9'),
('22_Creature_4', 'Creature', 'Jenny', 4, TRUE, '22_13'),
('22_Creature_5', 'Creature', 'Katniss', 6, TRUE, '22_12'),
('22_Ezran_1', 'Ezran', 'Minerva', 4, TRUE, '22_6'),
('22_Ezran_2', 'Ezran', 'McGonagall', 2, FALSE, NULL),
('22_Ezran_3', 'Ezran', 'Belle', 4, TRUE, '22_3'),
('22_Monty_1', 'Monty', 'Odette', 1, FALSE, NULL),
('22_Monty_2', 'Monty', 'Rayla', 3, FALSE, NULL),
('22_Monty_3', 'Monty', 'Arwen', 0, FALSE, NULL),
('22_Tarzan_1', 'Tarzan', 'Sylvia', 3, TRUE, '22_11'),
('22_Tarzan_2', 'Tarzan', 'Tilly', 1, TRUE, '22_2'),
('22_Tarzan_3', 'Tarzan', 'Diva', 3, TRUE, '22_4'),
('22_Zuko_1', 'Zuko', 'Ishtar', 5, FALSE, NULL),
('22_Zuko_2', 'Zuko', 'Roulette', 5, TRUE, '22_1'),
('22_Zuko_3', 'Zuko', 'Sakura', 6, TRUE, '22_8'),
('21_Creature_1', 'Creature', 'Cleo', 0, FALSE, NULL),
('21_Mozart_1', 'Mozart', 'Belle', 0, FALSE, NULL),
('21_Mozart_2', 'Mozart', 'Odette', 0, FALSE, NULL),
('21_Callum_1', 'Callum', 'Sabrina', 8, TRUE, '21_5'),
('21_Callum_2', 'Callum', 'McGonagall', 7, TRUE, '21_2'),
('21_Callum_3', 'Callum', 'Minerva', 2, FALSE, NULL),
('21_Monty_1', 'Monty', 'Tigerlily', 1, TRUE, '21_7'),
('21_Monty_2', 'Monty', 'Arwen', 0, FALSE, NULL),
('21_Zuko_1', 'Zuko', 'Ishtar', 1, TRUE, '21_3'),
('21_Zuko_2', 'Zuko', 'Sakura', 6, TRUE, '21_4'),
('21_Zuko_3', 'Zuko', 'Roulette', 2, FALSE, NULL),
('21_Tarzan_1', 'Tarzan', 'Tilly', 3, TRUE, '21_1'),
('21_Tarzan_2', 'Tarzan', 'Diva', 4, FALSE, NULL),
('21_Tarzan_3', 'Tarzan', 'Sylvia', 5, TRUE, '21_6'),
('20_Creature_1', 'Creature', 'Sabrina', 7, TRUE, '20_3'),
('20_Creature_2', 'Creature', 'Tigerlily', 3, TRUE, '20_4'),
('20_Mozart_1', 'Mozart', 'Sabrina', 0, FALSE, NULL),
('20_Mozart_2', 'Mozart', 'Tigerlily', 0, FALSE, NULL),
('20_Tarzan_1', 'Tarzan', 'Buffy', 2, TRUE, '20_1'),
('20_Tarzan_2', 'Tarzan', 'Belle', 4, TRUE, '20_2'),
('20_Tarzan_3', 'Tarzan', 'Tilly', 7, FALSE, NULL),
('20_Tarzan_4', 'Tarzan', 'Sylvia', 2, TRUE, '20_5'),
('20_Zuko_1', 'Zuko', 'Sylvia', 5, FALSE, NULL);

INSERT INTO clutch
VALUES ('23_1', 'Monty', 'Mary', 5, 0, 5),
('23_2', 'Rune', 'Diva', 9, 1, 7),
('23_3', 'Charming', 'Tigerlily', 7, 0, 7),
('23_4', 'SugarDaddy', 'BESusan', 6, 0, 6),
('23_5', 'Creature', 'Arwen', 7, 0, 7),
('23_6', 'Disco', 'Sakura', 7, 0, 7),
('23_7', 'SugarDaddy', 'Odette', 6, 0, 5),
('22_1', 'Zuko', 'Roulette', 4, 0, 4),
('22_2', 'Tarzan', 'Tilly', 6, 0, 6),
('22_3', 'Ezran', 'Belle', 6, 0, 6),
('22_4', 'Tarzan', 'Diva', 6, 1, 6),
('22_5', 'Mozart', 'Buffy', 8, 0, 8),
('22_6', 'Ezran', 'Minerva', 6, 0, 6),
('22_7', 'Monty', 'Rayla', 5, 0, 5),
('22_8', 'Zuko', 'Sakura', 7, 0, 7),
('22_9', 'Creature', 'Cleo', 8, 1, 8),
('22_10', 'Creature', 'Sabrina', 7, 0, 7),
('22_11', 'Tarzan', 'Sylvia', 8, 0, 8),
('22_12', 'Creature', 'Katniss', 6, 0, 6),
('22_13', 'Creature', 'Jenny', 7, 1, 7),
('21_1', 'Tarzan', 'Tilly', 7, 0, 8),
('21_2', 'Callum', 'McGonagall', 6, 0, 6),
('21_3', 'Zuko', 'Ishtar', 8, 0, 8),
('21_4', 'Zuko', 'Sakura', 7, 0, 7),
('21_5', 'Callum', 'Sabrina', 5, 0, 5),
('21_6', 'Tarzan', 'Sylvia', 5, 0, 4),
('21_7', 'Monty', 'Tigerlily', 5, 0, 5),
('20_1', 'Tarzan', 'Buffy', 8, 0, 7),
('20_2', 'Tarzan', 'Belle', 6, 0, 6),
('20_3', 'Creature', 'Sabrina', 5, 0, 5),
('20_4', 'Creature', 'Tigerlily', 5, 0, 5),
('20_5', 'Tarzan', 'Sylvia', 4, 2, 4);

--Added columns to breeder_males so that their success can be tracked
ALTER TABLE breeder_male,
ADD COLUMN total_pairings INTEGER,
ADD COLUMN total_clutches INTEGER,
ADD COLUMN success_percent INTEGER,
ADD COLUMN avg_slugs_per_clutch INTEGER;

--Added columns to breeder_females so that their success can be tracked
ALTER TABLE breeder_female,
ADD COLUMN total_years_bred INTEGER,
ADD COLUMN total_clutches INTEGER,
ADD COLUMN success_percent INTEGER,
ADD COLUMN avg_eggs_per_clutch INTEGER;

--Added and updated season column in pairing and clutch tables to late make it possible to select only current season
ALTER TABLE pairing
ADD COLUMN season VARCHAR(2);
ALTER TABLE clutch
ADD COLUMN season VARCHAR(2);
update pairing 
set season=
    (LEFT(pairing_id,2)
    );
update clutch
set season=
    (LEFT(clutch_id,2)
    );

--Updates columns in breeder_male based on data in pairing and clutch tables
update breeder_male m 
set total_pairings=
    (
        select COUNT(*) 
        from pairing p 
        where m.male_id=p.male
    ) 
where exists 
    (
        select 1 
        from pairing p 
        where m.male_id=p.male
    );
update breeder_male m 
set total_clutches=
    (
        select COUNT(clutch) 
        from pairing p 
        where m.male_id=p.male
    ) 
where exists 
    (
        select 1 
        from pairing p 
        where m.male_id=p.male
    );
update breeder_male m 
set avg_slugs_per_clutch=
    (
        select ROUND(AVG(slugs),3)
        from clutch c 
        where m.male_id=c.sire
    ) 
where exists 
    (
        select 1 
        from clutch c 
        where m.male_id=c.sire
    );
update breeder_male m 
set success_percent=
    (ROUND(100 * total_clutches/total_pairings)
    );



--Updates columns in breeder_female based on data in pairing and clutch tables
update breeder_female f 
set total_years_bred=
    (
        select COUNT(DISTINCT season) 
        from pairing p 
        where f.female_id=p.female
    ) 
where exists 
    (
        select 1 
        from pairing p 
        where f.female_id=p.female
    );
update breeder_female f 
set total_clutches=
    (
        select COUNT(clutch) 
        from pairing p 
        where f.female_id=p.female
    ) 
where exists 
    (
        select 1 
        from pairing p 
        where f.female_id=p.female
    );
update breeder_female f 
set avg_eggs_per_clutch	=
    (
        select ROUND(AVG(eggs),2)
        from clutch c 
        where f.female_id=c.dame
    ) 
where exists 
    (
        select 1 
        from clutch c 
        where f.female_id=c.dame
    );
update breeder_female f 
set success_percent=
    (ROUND(100 * total_clutches/total_years_bred)
    );

--Updates proven data to TRUE for males and females if a clutch has been laid
UPDATE breeder_male
SET proven = TRUE
WHERE total_clutches > 0;
UPDATE breeder_female
SET proven = TRUE
WHERE total_clutches > 0;

-----------------VIEWS----------------------------------------
--Used as a way to give Role:employee access to update current season data only
CREATE VIEW pair_emp_view AS
    SELECT *
    FROM pairing 
    WHERE season = (
      SELECT MAX (season)
      FROM pairing);
CREATE VIEW clutch_emp_view AS
    SELECT *
    FROM clutch 
    WHERE season = (
      SELECT MAX (season)
      FROM clutch);
--Used to simplify data needed for current/active breeders
CREATE VIEW active_m AS
    SELECT *
    FROM breeder_male 
    WHERE active is TRUE;
CREATE VIEW active_f AS
    SELECT *
    FROM breeder_female 
    WHERE active is TRUE;    
--Used to quickly look up traits for pairings and clutches in order to identify possible traits in hatchlings
CREATE VIEW pair_traits AS
    SELECT
    	pairing.pairing_id, pairing.male, pairing.female, breeder_male.morph AS m_morph, breeder_female.morph AS f_morph
    FROM pairing
    JOIN breeder_male ON pairing.male = breeder_male.male_id
    JOIN breeder_female ON pairing.female = breeder_female.female_id
    WHERE pairing.season = (
      SELECT MAX (pairing.season)
      FROM pairing )
    ORDER BY pairing.pairing_id ASC;
CREATE VIEW clutch_traits AS
    SELECT
    	clutch.clutch_id, clutch.hatchlings, clutch.sire, clutch.dame, breeder_male.morph AS m_morph, breeder_female.morph AS f_morph
    FROM clutch
    JOIN breeder_male ON clutch.sire = breeder_male.male_id
    JOIN breeder_female ON clutch.dame = breeder_female.female_id
    WHERE clutch.season = (
      SELECT MAX (clutch.season)
      FROM clutch )
    ORDER BY clutch.clutch_id ASC;

----------------------ROLES------------------------------------
CREATE ROLE breeder WITH NOSUPERUSER LOGIN;
CREATE ROLE employee WITH NOSUPERUSER LOGIN;
--Role:breeder granted ability to view and change data in all tables as needed, including setting up new pairings
GRANT SELECT, UPDATE, INSERT, DELETE
ON ALL TABLES IN SCHEMA public
TO breeder;
--Role:employee granted select to view active breeders, pairings, clutches
GRANT SELECT
ON public.pair_emp_view, public.clutch_emp_view, public.active_f, public.active_m
TO employee;
--Role:employee granted update on current season pairings(locks and clutch) and clutches (parents, eggs, slugs, hatchlings)
--This prevents Role:employee from making any changes to past season data or breeder's chosen pairings for current season
GRANT UPDATE (locks, clutch)
ON public.pair_emp_view
TO employee;
GRANT UPDATE (sire, dame, eggs, slugs, hatchlings)
ON public.clutch_emp_view
TO employee;

VACUUM FULL;
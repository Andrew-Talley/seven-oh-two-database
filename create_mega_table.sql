-- ================= --
-- DATABASE CREATION --
-- ================= --

DROP DATABASE IF EXISTS project2;
CREATE DATABASE project2;

USE project2;

CREATE TABLE megatable(
	ballot_id INT, -- Used as our primary key
	team_num SMALLINT,
	round_num CHAR(3),
	opp_num SMALLINT,
	side CHAR(1),
	pd SMALLINT,
	ballot__result CHAR(6),
	total_wins TINYINT,
	total_ties TINYINT,
	total_losses TINYINT,
	total_ballots TINYINT,
	record VARCHAR(10),
	total_cs DECIMAL(4,1),
	total_ocs DECIMAL(5,1),
	total_pd SMALLINT,
	team_rank TINYINT,
	team_name VARCHAR(75),
	opp_name VARCHAR(75),
	school VARCHAR(75),
	letter_rank CHAR(1),
	opp_school VARCHAR(75),
	opp_letter_rank CHAR(1),
	tpr_rank VARCHAR(75),
	tpr_points VARCHAR(75),
	tpr_group_designator VARCHAR(75),
	earned_bid VARCHAR(75),
	earned_honorable_mention VARCHAR(75),
	won_spamta VARCHAR(75),
	spamta_honorable_mention VARCHAR(75),
	spamta_ranks VARCHAR(75),
	student_0 VARCHAR(75),
	role_0 VARCHAR(75),
	ranks_0 VARCHAR(75),
	side_0 VARCHAR(75),
	student_1 VARCHAR(75),
	role_1 VARCHAR(75),
	ranks_1 VARCHAR(75),
	side_1 VARCHAR(75),
	student_2 VARCHAR(75),
	role_2 VARCHAR(75),
	ranks_2 VARCHAR(75),
	side_2 VARCHAR(75),
	tournament_name VARCHAR(75),
	division VARCHAR(75),
	start_date VARCHAR(75),
	end_date VARCHAR(75),
	tournament_host VARCHAR(75),
	tournament_level VARCHAR(75),
	tournament_year VARCHAR(75),
	amta_rep_0 VARCHAR(75),
	amta_rep_1 VARCHAR(75),
	tab_note_0 VARCHAR(75),
	tab_note_1 VARCHAR(75),
	tournament_year_1 VARCHAR(75),
	case_name VARCHAR(75),
	full_case VARCHAR(95),
	nationals_case VARCHAR(75),
	case_type VARCHAR(10),
	charge_1 VARCHAR(75),
	charge_2 VARCHAR(150),
	charge_3 VARCHAR(75),
	witness_1_name VARCHAR(20),
	witness_1_type VARCHAR(20),
	witness_1_side VARCHAR(20),
	witness_1_affidavit VARCHAR(110),
	witness_2_name VARCHAR(20),
	witness_2_type VARCHAR(20),
	witness_2_side VARCHAR(20),
	witness_2_affidavit VARCHAR(110),
	witness_3_name VARCHAR(20),
	witness_3_type VARCHAR(20),
	witness_3_side VARCHAR(20),
	witness_3_affidavit VARCHAR(110),
	witness_4_name VARCHAR(20),
	witness_4_type VARCHAR(20),
	witness_4_side VARCHAR(20),
	witness_4_affidavit VARCHAR(110),
	witness_5_name VARCHAR(20),
	witness_5_type VARCHAR(20),
	witness_5_side VARCHAR(20),
	witness_5_affidavit VARCHAR(110),
	witness_6_name VARCHAR(20),
	witness_6_type VARCHAR(20),
	witness_6_side VARCHAR(20),
	witness_6_affidavit VARCHAR(110),
	witness_7_name VARCHAR(20),
	witness_7_type VARCHAR(20),
	witness_7_side VARCHAR(20),
	witness_7_affidavit VARCHAR(110),
	witness_8_name VARCHAR(20),
	witness_8_type VARCHAR(20),
	witness_8_side VARCHAR(20),
	witness_8_affidavit VARCHAR(110),
	witness_9_name VARCHAR(20),
	witness_9_type VARCHAR(20),
	witness_9_side VARCHAR(20),
	witness_9_affidavit VARCHAR(110),
	witness_10_name VARCHAR(20),
	witness_10_type VARCHAR(20),
	witness_10_side VARCHAR(20),
	witness_10_affidavit VARCHAR(110),
	witness_11_name VARCHAR(20),
	witness_11_type VARCHAR(20),
	witness_11_side VARCHAR(20),
	witness_11_affidavit VARCHAR(110),
	witness_12_name VARCHAR(20),
	witness_12_type VARCHAR(20),
	witness_12_side VARCHAR(20),
	witness_12_affidavit VARCHAR(110),
	exhibit_1_name VARCHAR(80),
	exhibit_1_url VARCHAR(134),
	exhibit_2_name VARCHAR(80),
	exhibit_2_url VARCHAR(134),
	exhibit_3_name VARCHAR(80),
	exhibit_3_url VARCHAR(134),
	exhibit_4_name VARCHAR(80),
	exhibit_4_url VARCHAR(134),
	exhibit_5_name VARCHAR(80),
	exhibit_5_url VARCHAR(134),
	exhibit_6_name VARCHAR(90),
	exhibit_6_url VARCHAR(134),
	exhibit_7_name VARCHAR(80),
	exhibit_7_url VARCHAR(134),
	exhibit_8_name VARCHAR(80),
	exhibit_8_url VARCHAR(134),
	exhibit_9_name VARCHAR(134),
	exhibit_9_url VARCHAR(134),
	exhibit_10_name VARCHAR(75),
	exhibit_10_url VARCHAR(134),
	exhibit_11_name VARCHAR(75),
	exhibit_11_url VARCHAR(134),
	exhibit_12_name VARCHAR(75),
	exhibit_12_url VARCHAR(134),
	exhibit_13_name VARCHAR(75),
	exhibit_13_url VARCHAR(134),
	exhibit_14_name VARCHAR(75),
	exhibit_14_url VARCHAR(152),
	exhibit_15_name VARCHAR(75),
	exhibit_15_url VARCHAR(134),
	exhibit_16_name VARCHAR(75),
	exhibit_16_url VARCHAR(134),
	exhibit_17_name VARCHAR(75),
	exhibit_17_url VARCHAR(134),
	exhibit_18_name VARCHAR(75),
	exhibit_18_url VARCHAR(134),
	exhibit_19_name VARCHAR(75),
	exhibit_19_url VARCHAR(134),
	exhibit_20_name VARCHAR(75),
	exhibit_20_url VARCHAR(134),
	exhibit_21_name VARCHAR(75),
	exhibit_21_url VARCHAR(134),
	exhibit_22_name VARCHAR(75),
	exhibit_22_url VARCHAR(134),
	exhibit_23_name VARCHAR(75),
	exhibit_23_url VARCHAR(134),
	exhibit_24_name VARCHAR(75),
	exhibit_24_url VARCHAR(134),
	exhibit_25_name VARCHAR(75),
	exhibit_25_url VARCHAR(134),
	exhibit_26_name VARCHAR(75),
	exhibit_26_url VARCHAR(134),
	exhibit_27_name VARCHAR(75),
	exhibit_27_url VARCHAR(134),
	exhibit_28_name VARCHAR(75),
	exhibit_28_url VARCHAR(134),
	exhibit_29_name VARCHAR(75),
	exhibit_29_url VARCHAR(134),
	exhibit_30_name VARCHAR(75),
	exhibit_30_url VARCHAR(134),
	exhibit_31_name VARCHAR(75),
	exhibit_31_url VARCHAR(134),
	bid_start_date VARCHAR(75),
	bid_end_date VARCHAR(75),
	bid_location VARCHAR(75),
	tab_note_2 VARCHAR(75),
	student_3 VARCHAR(75),
	role_3 VARCHAR(75),
	ranks_3 VARCHAR(75),
	side_3 VARCHAR(75),
	student_4 VARCHAR(75),
	role_4 VARCHAR(75),
	ranks_4 VARCHAR(75),
	side_4 VARCHAR(75),
	student_5 VARCHAR(75),
	role_5 VARCHAR(75),
	ranks_5 VARCHAR(75),
	side_5 VARCHAR(75),
	tab_note_3 VARCHAR(75),
	location VARCHAR(75),
	ballot_result VARCHAR(75),
	amta_rep_2 VARCHAR(75),
    PRIMARY KEY(ballot_id)
);

-- -----------------------------------------------------
-- Table `project2`.`CaseNames`
-- -----------------------------------------------------
DROP TABLE IF EXISTS CaseNames;

CREATE TABLE IF NOT EXISTS `project2`.`CaseNames` (
  `year` INT NOT NULL,
  `level` VARCHAR(45) NOT NULL,
  `case_name` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`year`, `level`),
  INDEX `case_name` (`case_name` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `project2`.`Tournament`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `project2`.`Tournament` ;

CREATE TABLE IF NOT EXISTS `project2`.`Tournament` (
  `tournament_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(75) NULL,
  `division` VARCHAR(75) NULL,
  `start_date` DATE NULL,
  `end_date` DATE NULL,
  `host` VARCHAR(75) NULL,
  `location` VARCHAR(75) NULL,
  `first_coin_flip` VARCHAR(45) NULL CHECK IN ('Heads', 'Tails'),
  `second_coin_flip` VARCHAR(45) NULL CHECK IN ('Heads', 'Tails'),
  `bid_start_date` DATE NULL,
  `bid_end_date` DATE NULL,
  `bid_location` VARCHAR(45) NULL,
  `level` VARCHAR(45) NOT NULL,
  `bids_plus_one_after_r3` VARCHAR(45) NULL,
  `number_of_bids` TINYINT NULL,
  `year` INT NOT NULL,
  PRIMARY KEY (`tournament_id`),
  INDEX `fk_Tournament_CaseName_idx` (`year` ASC, `level` ASC),
  CONSTRAINT `fk_Tournament_CaseName`
    FOREIGN KEY (`year` , `level`)
    REFERENCES `project2`.`CaseNames` (`year` , `level`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `project2`.`TeamInfo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `project2`.`TeamInfo` ;

CREATE TABLE IF NOT EXISTS `project2`.`TeamInfo` (
  `team_num` SMALLINT NOT NULL,
  `year` INT NOT NULL,
  `team_name` VARCHAR(75) NULL,
  `tpr_rank` SMALLINT NULL,
  `tpr_points` DECIMAL(4,2) NULL,
  `school` VARCHAR(75) NULL,
  PRIMARY KEY (`team_num`, `year`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `project2`.`TeamTournamentResults`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `project2`.`TeamTournamentResults` ;

CREATE TABLE IF NOT EXISTS `project2`.`TeamTournamentResults` (
  `tournament_id` INT UNSIGNED NOT NULL,
  `team_num` SMALLINT NOT NULL,
  `won_SPAMTA` TINYINT NULL,
  `SPAMTA_honorable_mention` TINYINT NULL,
  `tpr_group_designator` CHAR(1) NULL,
  `SPAMTA_ranks` TINYINT NULL,
  PRIMARY KEY (`tournament_id`, `team_num`),
  INDEX `fk_TeamName_team_num_idx` (`team_num` ASC),
  INDEX `fk_Team_Tournament1_idx` (`tournament_id` ASC),
  CONSTRAINT `fk_TeamName_team_num`
    FOREIGN KEY (`team_num`)
    REFERENCES `project2`.`TeamInfo` (`team_num`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Team_Tournament1`
    FOREIGN KEY (`tournament_id`)
    REFERENCES `project2`.`Tournament` (`tournament_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `project2`.`Student`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `project2`.`Student` ;

CREATE TABLE IF NOT EXISTS `project2`.`Student` (
  `student_id` INT UNSIGNED NOT NULL,
  `tournament_id` INT NOT NULL,
  `team_num` SMALLINT NOT NULL,
  `student` VARCHAR(75) NOT NULL,
  `role` VARCHAR(8) NOT NULL CHECK IN ('Attorney', 'Witness'),
  `ranks` TINYINT UNSIGNED NOT NULL,
  `side` VARCHAR(8) NOT NULL CHECK IN ('π', '∆'),
  PRIMARY KEY (`student_id`, `tournament_id`, `team_num`),
  INDEX `fk_Student_Team1_idx` (`tournament_id` ASC, `team_num` ASC),
  CONSTRAINT `fk_Student_Team1`
    FOREIGN KEY (`team_num`)
    REFERENCES `project2`.`TeamTournamentResults` (`team_num`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `project2`.`AMTARep`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `project2`.`AMTARep` ;

CREATE TABLE IF NOT EXISTS `project2`.`AMTARep` (
  `tournament_id` INT UNSIGNED NOT NULL,
  `amta_rep_num` INT UNSIGNED NOT NULL,
  `amta_rep` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`tournament_id`, `amta_rep_num`),
  INDEX `fk_AMTARep_Tournament_idx` (`tournament_id` ASC),
  CONSTRAINT `fk_AMTARep_Tournament`
    FOREIGN KEY (`tournament_id`)
    REFERENCES `project2`.`Tournament` (`tournament_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `project2`.`Matchup`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `project2`.`Matchup` ;

CREATE TABLE IF NOT EXISTS `project2`.`Matchup` (
  `tournament_id` INT UNSIGNED NOT NULL,
  `pi_num` SMALLINT NOT NULL,
  `round_num` SMALLINT NOT NULL,
  `def_num` SMALLINT NOT NULL,
  PRIMARY KEY (`pi_num`, `round_num`, `tournament_id`),
  INDEX `fk_Matchup_Team1_idx` (`tournament_id` ASC, `pi_num` ASC),
  INDEX `fk_TeamTournamentResults_def_idx` (`tournament_id` ASC, `def_num` ASC),
  CONSTRAINT `fk_TeamTournamentResults_pi`
    FOREIGN KEY (`tournament_id` , `pi_num`)
    REFERENCES `project2`.`TeamTournamentResults` (`tournament_id` , `team_num`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_TeamTournamentResults_def`
    FOREIGN KEY (`tournament_id` , `def_num`)
    REFERENCES `project2`.`TeamTournamentResults` (`tournament_id` , `team_num`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `project2`.`Ballot`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `project2`.`Ballot` ;

CREATE TABLE IF NOT EXISTS `project2`.`Ballot` (
  `ballot_id` INT NOT NULL,
  `Matchup_tournament_id` INT UNSIGNED NOT NULL,
  `Matchup_pi_num` SMALLINT NOT NULL,
  `Matchup_round_num` SMALLINT NOT NULL,
  `pd` SMALLINT NOT NULL,
  PRIMARY KEY (`ballot_id`),
  INDEX `fk_Ballot_Matchup1_idx` (`Matchup_tournament_id` ASC, `Matchup_pi_num` ASC, `Matchup_round_num` ASC),
  CONSTRAINT `fk_Ballot_Matchup1`
    FOREIGN KEY (`Matchup_tournament_id` , `Matchup_pi_num` , `Matchup_round_num`)
    REFERENCES `project2`.`Matchup` (`tournament_id` , `pi_num` , `round_num`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `project2`.`CaseDetails`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `project2`.`CaseDetails` ;

CREATE TABLE IF NOT EXISTS `project2`.`CaseDetails` (
  `case_name` VARCHAR(60) NOT NULL,
  `full_case` VARCHAR(150) NULL,
  `nationals_case` TINYINT NULL,
  `type_charge` VARCHAR(10) NULL CHECK IN ('Criminal', 'Civil'),
  PRIMARY KEY (`case_name`),
  CONSTRAINT `fk_CaseName_CaseDetails`
    FOREIGN KEY (`case_name`)
    REFERENCES `project2`.`CaseNames` (`case_name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `project2`.`CaseComponents`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `project2`.`CaseComponents` ;
CREATE TABLE IF NOT EXISTS `project2`.`CaseComponents` (
  `case_name` VARCHAR(60) NOT NULL,
  `n_key` TINYINT NOT NULL,
  `charge` VARCHAR(45) NULL,
  `witness_name` VARCHAR(45) NULL,
  `exhibit_url` VARCHAR(152) NULL,
  PRIMARY KEY (`case_name`, `n_key`),
  INDEX `exhibit_url` (`exhibit_url` ASC),
  INDEX `witness_name` (`witness_name` ASC),
  CONSTRAINT `fk_CaseDetails_CaseComponents`
    FOREIGN KEY (`case_name`)
    REFERENCES `project2`.`CaseDetails` (`case_name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `project2`.`WitnessDetails`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `project2`.`WitnessDetails` ;

CREATE TABLE IF NOT EXISTS `project2`.`WitnessDetails` (
  `witness_name` VARCHAR(45) NOT NULL,
  `witness_type` VARCHAR(45) NULL CHECK IN ('Character', 'Police Officer', 'Expert', 'Defendant', 'Party Representative'),
  `witness_side` VARCHAR(8) NULL CHECK IN ('π', '∆', 'Swing'),
  `witness_affidaivit` VARCHAR(110) NULL,
  INDEX `fk_WitnessDetails_CaseComponents_idx` (`witness_name` ASC),
  PRIMARY KEY (`witness_name`),
  CONSTRAINT `fk_WitnessDetails_CaseComponents`
    FOREIGN KEY (`witness_name`)
    REFERENCES `project2`.`CaseComponents` (`witness_name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `project2`.`Exhibit Details`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `project2`.`ExhibitDetails` ;

CREATE TABLE IF NOT EXISTS `project2`.`ExhibitDetails` (
  `exhibit_name` VARCHAR(100) NOT NULL,
  `exhibit_url` VARCHAR(152) NOT NULL,
  PRIMARY KEY (`exhibit_url`),
  INDEX `fk_Exhibit Details_CaseComponents1_idx` (`exhibit_url` ASC))
ENGINE = MyISAM;










-- ============== --
-- DATA INSERTION --
-- ============== --


-- LOAD DATA INFILE 'C:\\wamp64\\tmp\\full-data.csv'
LOAD DATA INFILE '~/Documents/GitHub/seven-oh-two/full-data.csv'
	IGNORE -- The file that we uses has a lot of unnecessary columns, so this gets rid of those
	INTO TABLE megatable
	FIELDS TERMINATED BY ','
	OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES; -- The first line has the names of the columns




-- CLEAN DATA --

SET SQL_SAFE_UPDATES=0;

-- A team playing itself is, essentially, a null result, so it should be deleted
DELETE FROM megatable
	WHERE team_num = opp_num; 

-- The data has each ballot twice – once from perspective of prosecution (π), once from defense (∆). Delete everything from the perspective of the defense
DELETE FROM megatable
	WHERE Side = "∆"; 
    
-- If it's empty, it's meant to be null
UPDATE megatable
	SET start_date = NULL
WHERE start_date = "";
UPDATE megatable
	SET end_date = NULL
WHERE end_date = "";

UPDATE megatable
	SET bid_start_date = NULL
WHERE bid_start_date = "";
UPDATE megatable
	SET bid_end_date = NULL
WHERE bid_end_date = "";

UPDATE megatable
	SET SPAMTA_ranks = NULL
WHERE SPAMTA_ranks = "";

UPDATE megatable
	SET tpr_rank = NULL
WHERE tpr_rank = '';

UPDATE megatable
	SET tpr_points = NULL
WHERE tpr_points = '';



-- Convert everything to a date
UPDATE megatable
	SET start_date = STR_TO_DATE(start_date, '%M %e, %Y')
WHERE start_date IS NOT NULL;
UPDATE megatable
	SET end_date = STR_TO_DATE(end_date, '%M %e, %Y')
WHERE end_date IS NOT NULL;

UPDATE megatable
	SET bid_start_date = STR_TO_DATE(bid_start_date, '%M %e, %Y')
WHERE bid_start_date IS NOT NULL;
UPDATE megatable
	SET bid_end_date = STR_TO_DATE(bid_end_date, '%M %e, %Y')
WHERE bid_end_date IS NOT NULL;

    
SET SQL_SAFE_UPDATES=1;


-- BEGIN INSERTING DATA --
    
-- Insert case data
INSERT INTO CaseNames
	SELECT DISTINCT tournament_year, tournament_level, case_name
		FROM megatable
	WHERE case_name <> '';

INSERT INTO CaseDetails
	SELECT DISTINCT case_name, full_case, IF(LOWER(nationals_case) = 'true', 1, 0), case_type 
		FROM megatable
	WHERE full_case <> '';


-- Insert Tournament data
INSERT INTO Tournament (name, division, start_date, end_date, host, location, bid_start_date, bid_end_date, bid_location, level, year)
	SELECT DISTINCT tournament_name AS name, division, start_date, end_date, tournament_host AS host, location, bid_start_date, bid_end_date, bid_location, tournament_level AS level, tournament_year AS year
		FROM megatable
	WHERE tournament_year != ""; -- There is some faulty data in the database – this helps fix that
    

-- The code below a) adds a tournament_id column to the megatable for future reference, and b) cleans faulty data from the dataset
SET SQL_SAFE_UPDATES=0;
ALTER TABLE megatable
	ADD COLUMN tournament_id INT UNSIGNED;

UPDATE megatable M
	INNER JOIN Tournament T ON M.tournament_name = T.name AND T.year = M.tournament_year AND T.division = M.division AND T.year = M.tournament_year
SET M.tournament_id = T.tournament_id
WHERE M.tournament_year != "";

DELETE FROM megatable
	WHERE tournament_id IS NULL;
    

DROP TABLE IF EXISTS TEMP_faulty_tournament_id;
CREATE TABLE TEMP_faulty_tournament_id (
	tournament_id INT
);

-- If there are multiple distinct tab notes at a given index for a single tournament_id, that means the tournament data
-- must be wrong. This data also needs to be removed
INSERT INTO TEMP_faulty_tournament_id
	SELECT M1.tournament_id
		FROM (SELECT DISTINCT tournament_id, tab_note_0
				FROM megatable M2) M1
	GROUP BY M1.tournament_id
	HAVING COUNT(*) > 1;
    
DELETE FROM megatable
	WHERE tournament_id IN
		(SELECT tournament_id FROM TEMP_faulty_tournament_id);

DELETE FROM Tournament
	WHERE tournament_id IN
		(SELECT tournament_id FROM TEMP_faulty_tournament_id);

DROP TABLE TEMP_faulty_tournament_id;

SET SQL_SAFE_UPDATES=1;


-- Insert tab notes
-- Because the order of tab notes can get jumbled, we join them into a single table, process them, then modify the tournaments
DROP TABLE IF EXISTS TEMP_tab_notes;
CREATE TABLE TEMP_tab_notes (
	tournament_id INT UNSIGNED NOT NULL,
    num TINYINT,
    note VARCHAR(75),
    
    PRIMARY KEY (tournament_id, num)
);

INSERT INTO TEMP_tab_notes
	SELECT DISTINCT tournament_id, 1, tab_note_1
		FROM megatable;
INSERT INTO TEMP_tab_notes
	SELECT DISTINCT tournament_id, 2, tab_note_2
		FROM megatable;
INSERT INTO TEMP_tab_notes
	SELECT DISTINCT tournament_id, 3, tab_note_3
		FROM megatable;

UPDATE Tournament T
	INNER JOIN TEMP_tab_notes N ON T.tournament_id = N.tournament_id
SET T.first_coin_flip = SUBSTRING(note, 19, 5)
WHERE note LIKE 'Opening coin flip: Heads%' OR note LIKE 'Opening coin flip: Tails%';

UPDATE Tournament T
	INNER JOIN TEMP_tab_notes N ON T.tournament_id = N.tournament_id
SET T.second_coin_flip = SUBSTRING(note, 19, 5)
WHERE note LIKE 'Round 3 coin flip: Heads%' OR note LIKE 'Round 3 coin flip: Tails%';

UPDATE Tournament T
	INNER JOIN TEMP_tab_notes N ON T.tournament_id = N.tournament_id
SET T.bids_plus_one_after_r3 = SUBSTRING(note, 32)
WHERE note LIKE '_th place record after round 3:%';

UPDATE Tournament T
	INNER JOIN (
		SELECT tournament_id, COUNT(*) AS number_of_bids
			FROM megatable
		WHERE earned_bid = 'TRUE'
        GROUP BY tournament_id
    ) R ON T.tournament_id = R.tournament_id
SET T.number_of_bids = R.number_of_bids
WHERE R.number_of_bids > 0;



-- Insert team data
INSERT INTO TeamInfo
	SELECT DISTINCT team_num, tournament_year, team_name, tpr_rank, tpr_points, school
		FROM megatable WHERE school <> '';
        
INSERT INTO TeamTournamentResults
	SELECT DISTINCT tournament_id, team_num, IF(won_spamta = 'TRUE', 1, 0), IF(spamta_honorable_mention = 'TRUE', 1, 0), 'A', SPAMTA_ranks
		FROM megatable;
        
-- There are a couple teams (mostly bye-buster teams) that are never on the prosecution, so this adds them
INSERT INTO TeamTournamentResults
	SELECT DISTINCT tournament_id, opp_num, IF(won_spamta = 'TRUE', 1, 0) AS 'spamta_honorable', IF(spamta_honorable_mention = 'TRUE', 1, 0), 'A', SPAMTA_ranks
		FROM megatable
	WHERE (tournament_id, opp_num) NOT IN (
		SELECT tournament_id, team_num
			FROM TeamTournamentResults
	);
    

-- This is similar to the strategy above – some of the data is a little faulty, so we find the minimum group designator at a given tournament, then use that to insert into the database
DROP TABLE IF EXISTS TEMP_Group_Deisgnator;
CREATE TABLE TEMP_Group_Deisgnator (
	`tournament_id` INT UNSIGNED NOT NULL,
	`team_num` SMALLINT NOT NULL,
	`tpr_group_designator` CHAR(1) NULL
);

INSERT INTO TEMP_Group_Deisgnator
	SELECT tournament_id, team_num, MIN(tpr_group_designator)
		FROM megatable
	GROUP BY tournament_id, team_num;
INSERT INTO TEMP_Group_Deisgnator
	SELECT tournament_id, opp_num, MIN(tpr_group_designator)
		FROM megatable
	WHERE (tournament_id, opp_num) NOT IN (
		SELECT tournament_id, team_num
			FROM TeamTournamentResults
	)
    GROUP BY tournament_id, opp_num;
    
    
    
SET SQL_SAFE_UPDATES=0;
UPDATE TeamTournamentResults T
	INNER JOIN TEMP_Group_Deisgnator G ON T.tournament_id = G.tournament_id AND T.team_num = G.team_num
	SET T.tpr_group_designator = G.tpr_group_designator;
SET SQL_SAFE_UPDATES=1;


-- INSERT Students
DROP PROCEDURE IF EXISTS insert_students;

DELIMITER //

CREATE PROCEDURE insert_students()

BEGIN
	DECLARE student_num INT;
	DECLARE sql_str VARCHAR(1000);
	
	SET student_num = 0;
	SET SQL_SAFE_UPDATES=0;

	-- Loop over range [0, 5]
	WHILE student_num <= 5 DO
    
		-- For the next 4 statements – set data to null where it is empty for student_[student_num]
		SELECT CONCAT("UPDATE megatable SET student_", student_num, " = NULL WHERE student_", student_num, " = ''") INTO @sql_str;
		PREPARE statement FROM @sql_str;           
		EXECUTE statement;

		SELECT CONCAT("UPDATE megatable SET role_", student_num, " = NULL WHERE role_", student_num, " = ''") INTO @sql_str;
		PREPARE statement FROM @sql_str;           
		EXECUTE statement;

		SELECT CONCAT("UPDATE megatable SET ranks_", student_num, " = NULL WHERE ranks_", student_num, " = ''") INTO @sql_str;
		PREPARE statement FROM @sql_str;           
		EXECUTE statement;

		SELECT CONCAT("UPDATE megatable SET side_", student_num, " = NULL WHERE side_", student_num, " = ''") INTO @sql_str;
		PREPARE statement FROM @sql_str;           
		EXECUTE statement;

		-- Insert the data for student_[student_num] into the `Student` table
		SELECT CONCAT("INSERT INTO Student SELECT DISTINCT ", student_num, ", tournament_id, team_num, student_", student_num, " AS 'student', role_", student_num, " AS 'role', ranks_", student_num, " AS 'ranks', side_", student_num, " AS 'side' FROM megatable WHERE student_", student_num, " IS NOT NULL AND role_", student_num, " IS NOT NULL AND ranks_", student_num, " IS NOT NULL AND side_", student_num, " IS NOT NULL") INTO @sql_str;                           
        PREPARE statement FROM @sql_str;           
		EXECUTE statement;

		SET student_num = student_num + 1;
	END WHILE;
    
    SET SQL_SAFE_UPDATES=1;
END //

DELIMITER ;

CALL insert_students();


-- Insert AMTA Representatives        
INSERT INTO AMTARep
	SELECT DISTINCT tournament_id, 0, amta_rep_0
		FROM megatable;
INSERT INTO AMTARep
	SELECT DISTINCT tournament_id, 1, amta_rep_1
		FROM megatable;
INSERT INTO AMTARep
	SELECT DISTINCT tournament_id, 2, amta_rep_2
		FROM megatable
	WHERE amta_rep_2 NOT LIKE '%coin flip%';
    

-- Insert matchups and ballots the round number, wrongly, is repreesnted as a float in the original dataset
INSERT INTO Matchup
	SELECT DISTINCT tournament_id, team_num, ROUND(CAST(round_num AS DECIMAL(2,1))), opp_num
		FROM megatable;
        
INSERT INTO Ballot
	SELECT ballot_id, tournament_id, team_num, ROUND(CAST(round_num AS DECIMAL(2,1))), pd
		FROM megatable;


/* 
	This is necessary because case components has a FK on WitnessDetails but not all case components
    will have an entry for all 12 witness slots.
*/
DROP TABLE IF EXISTS TmpExhibitDetails;
CREATE TABLE TmpExhibitDetails(
	exhibit_name VARCHAR(150),
  exhibit_url VARCHAR(152)
) ENGINE InnoDB;


DROP PROCEDURE IF EXISTS insert_tmp_exhibit_details;

DELIMITER //

CREATE PROCEDURE insert_tmp_exhibit_details()
BEGIN
	DECLARE iter INT;
    DECLARE sql_str VARCHAR(1000);
    
    SET iter = 1;
    
		-- Iterate over range[1, 31]
    WHILE iter <= 31 DO
    BEGIN
			-- Insert the exhibit into a temporary table
			SELECT CONCAT('INSERT INTO TmpExhibitDetails SELECT DISTINCT exhibit_', iter, '_name, ',
						'exhibit_', iter, '_url FROM megatable WHERE exhibit_', iter, '_name <> "" ',
											'AND exhibit_', iter, '_url <> ""') INTO @sql_str;
			PREPARE statement FROM @sql_str;
					EXECUTE statement;
					
					SET iter = iter + 1;
		END;
    END WHILE;
    
END //

DELIMITER ;
CALL insert_tmp_exhibit_details();

-- Clean data
SET SQL_SAFE_UPDATES = 0;
UPDATE TmpExhibitDetails
	SET exhibit_name = 'Notice and Waiver of Miranda Rights v1'
    WHERE exhibit_url = 'http://www.collegemocktrial.org/secure-17-18%20Ex2%20Miranda%20Waiver.pdf';
    
UPDATE TmpExhibitDetails
	SET exhibit_name = 'Notice and Waiver of Miranda Rights v2'
    WHERE exhibit_url = 'http://www.collegemocktrial.org/secure-17-18%20Ex2%20Miranda%20Waiver.pdf';
    
UPDATE TmpExhibitDetails
	SET exhibit_name = 'Email v1'
    WHERE exhibit_url = 'http://www.collegemocktrial.org/Ex%2016.pdf';
    
UPDATE TmpExhibitDetails
	SET exhibit_name = 'Email v2'
    WHERE exhibit_url = 'http://www.collegemocktrial.org/Ex%2017.pdf';
SET SQL_SAFE_UPDATES = 1;

DROP TABLE IF EXISTS tmp_case_components;
CREATE TABLE tmp_case_components(
	case_name VARCHAR(75),
    n_key TINYINT(4),
    charge VARCHAR(45),
    witness_name VARCHAR(45),
    exhibit_name VARCHAR(100),
    exhibit_url VARCHAR(152)
) ENGINE InnoDB;


-- Add all the case data for the first three elements of everything
DROP PROCEDURE IF EXISTS insert_case_components_charge3;

DELIMITER //

CREATE PROCEDURE insert_case_components_charge3()
BEGIN
	DECLARE iter INT;
    DECLARE sql_str VARCHAR(1000);
    
    SET iter = 1;
    
    WHILE iter <= 3 DO
    BEGIN
		SELECT CONCAT('INSERT INTO tmp_case_components SELECT DISTINCT case_name, ', iter, ' AS n_key, ',
					'charge_', iter, ', witness_', iter, '_name, exhibit_', iter, '_name, ',
                    'exhibit_', iter, '_url FROM megatable WHERE exhibit_', iter, '_name <> "" ',
                    'AND exhibit_', iter, '_url <> "" AND case_name <> ""') INTO @sql_str;
		PREPARE statement FROM @sql_str;
        EXECUTE statement;
        
        SET iter = iter + 1;
	END;
    END WHILE;
    
END //

DELIMITER ;

CALL insert_case_components_charge3();



-- Add the next 9 elements (everything but the charges)
DROP PROCEDURE IF EXISTS insert_case_components_witness12;

DELIMITER //

CREATE PROCEDURE insert_case_components_witness12()
BEGIN
	DECLARE iter INT;
    DECLARE sql_str VARCHAR(1000);
    
    -- Already put in the first 3 witnesses in the previous procedure
    SET iter = 4;
    
    WHILE iter <= 12 DO
    BEGIN
		SELECT CONCAT('INSERT INTO tmp_case_components SELECT DISTINCT case_name, ', iter, ' AS n_key, ',
					'"" AS charge, witness_', iter, '_name, exhibit_', iter, '_name, ',
                    'exhibit_', iter, '_url FROM megatable WHERE exhibit_', iter, '_name <> "" ',
                    'AND case_name <> ""') INTO @sql_str;
		PREPARE statement FROM @sql_str;
        EXECUTE statement;
        
        SET iter = iter + 1;
	END;
    END WHILE;
    
END //

DELIMITER ;

CALL insert_case_components_witness12();


-- Add the rest of the exhibits to Tmp_Case_Components
DROP PROCEDURE IF EXISTS insert_case_components_exhibit31;

DELIMITER //

CREATE PROCEDURE insert_case_components_exhibit31()
BEGIN
	DECLARE iter INT;
    DECLARE sql_str VARCHAR(1000);
    
    -- Already put in the first 12 exhibits in the previous procedures
    SET iter = 13;
    
    WHILE iter <= 31 DO
    BEGIN
		SELECT CONCAT('INSERT INTO tmp_case_components SELECT DISTINCT case_name, ', iter, ' AS n_key, ',
					'"" AS charge, "" AS witness_name, exhibit_', iter, '_name, ',
                    'exhibit_', iter, '_url FROM megatable WHERE exhibit_', iter, '_name <> "" ',
                    'AND case_name <> ""') INTO @sql_str;
		PREPARE statement FROM @sql_str;
        EXECUTE statement;
        
        SET iter = iter + 1;
	END;
    END WHILE;
    
END //

DELIMITER ;

CALL insert_case_components_exhibit31();

SET SQL_SAFE_UPDATES = 0;
UPDATE tmp_case_components
	SET exhibit_name = 'Notice and Waiver of Miranda Rights v1'
    WHERE exhibit_url = 'http://www.collegemocktrial.org/secure-17-18%20Ex2%20Miranda%20Waiver.pdf';
    
UPDATE tmp_case_components
	SET exhibit_name = 'Notice and Waiver of Miranda Rights v2'
    WHERE exhibit_url = 'http://www.collegemocktrial.org/secure-17-18%20Ex2%20Miranda%20Waiver.pdf';
    
UPDATE tmp_case_components
	SET exhibit_name = 'Email v1'
    WHERE exhibit_url = 'http://www.collegemocktrial.org/Ex%2016.pdf';
    
UPDATE tmp_case_components
	SET exhibit_name = 'Email v2'
    WHERE exhibit_url = 'http://www.collegemocktrial.org/Ex%2017.pdf';
SET SQL_SAFE_UPDATES = 1;

-- Transfer over the case info
INSERT INTO CaseComponents
	SELECT case_name, n_key, charge, witness_name, exhibit_url
		FROM tmp_case_components;
        
INSERT INTO ExhibitDetails
	SELECT * FROM TmpExhibitDetails;
    

-- Add in the witness information
DROP PROCEDURE IF EXISTS insert_witness_details;
DELIMITER //

CREATE PROCEDURE insert_witness_details()
BEGIN
	DECLARE iter INT;
    DECLARE sql_str VARCHAR(1000);
    
    SET iter = 1;
    
    WHILE iter <= 12 DO
    BEGIN
		SELECT CONCAT('INSERT INTO WitnessDetails SELECT DISTINCT witness_', iter, '_name, witness_', iter, '_type, ',
					'witness_', iter, '_side, witness_', iter, '_affidavit FROM megatable WHERE witness_', iter, '_name <> ""') INTO @sql_str;
        PREPARE statement FROM @sql_str;
        EXECUTE statement;
        
        SET iter = iter + 1;
	END;
    END WHILE;
    
END //

DELIMITER ;

SET SQL_SAFE_UPDATES = 0;
DELETE FROM WitnessDetails;
SET SQL_SAFE_UPDATES = 1;

CALL insert_witness_details();
        
DROP TABLE tmpexhibitdetails;
DROP TABLE tmp_case_components;







-- ================= --
-- APP FUNCTIONALITY --
-- ================= --










-- This is only used for other views, not read by the client
DROP VIEW IF EXISTS BallotMatchupJoinView;
CREATE VIEW BallotMatchupJoinView AS
	SELECT B.ballot_id, M.tournament_id, M.pi_num, M.round_num, M.def_num, B.pd
		FROM Ballot B
			INNER JOIN Matchup M ON B.matchup_tournament_id = M.tournament_id
								AND B.matchup_pi_num = M.pi_num
                                AND B.matchup_round_num = M.round_num;


-- We store data only from the plaintiff perspective, but that's almost never truly useful. This makes it easy to query data where a team was on either side, and get the side they were on
DROP VIEW IF EXISTS DetailedBallotView;
CREATE VIEW DetailedBallotView AS
	SELECT ballot_id, tournament_id, round_num, pi_num AS team_num, def_num AS 'opp_num', pd, 'π' AS side
		FROM BallotMatchupJoinView
	UNION
    SELECT ballot_id, tournament_id, round_num, def_num AS team_num, pi_num AS team_num, -pd AS 'pd', '∆' AS side
		FROM BallotMatchupJoinView;

-- This does the same thing as above
DROP VIEW IF EXISTS DetailedMatchupView;
CREATE VIEW DetailedMatchupView AS
	SELECT tournament_id, round_num, pi_num AS team_num, def_num AS 'opp_num', 'π' AS side
		FROM Matchup
	UNION
    SELECT tournament_id, round_num, def_num AS team_num, pi_num AS 'opp_num', '∆' AS side
		FROM Matchup;



-- Get a team's record
DROP VIEW IF EXISTS TeamTournamentRecord;
CREATE VIEW TeamTournamentRecord AS
	SELECT tournament_id, team_num, 
			SUM(CASE WHEN pd > 0 THEN 1 ELSE 0 END) AS wins,
			SUM(CASE WHEN pd = 0 THEN 1 ELSE 0 END) AS ties,
			SUM(CASE WHEN pd < 0 THEN 1 ELSE 0 END) AS losses
		FROM DetailedBallotView
	GROUP BY tournament_id, team_num;
    

-- Get the sum of the PD's across the ballot
DROP VIEW IF EXISTS TeamTotalPD;
CREATE VIEW TeamTotalPD AS
	SELECT tournament_id, team_num, SUM(pd) AS totalPD
		FROM DetailedBallotView
	GROUP BY tournament_id, team_num;

-- Now, we start doing more complicated calculations. Like in sports, a tie is worth half of a win
DROP VIEW IF EXISTS TeamTournamentBallots;
CREATE VIEW TeamTournamentBallots AS
	SELECT tournament_id, team_num, SUM(wins) + (0.5 * SUM(ties)) AS ballots
		FROM TeamTournamentRecord
	GROUP BY tournament_id, team_num;

-- Then, we calculate how many ballots this team's opponents faced won. This measures how hard the schedule was
DROP VIEW IF EXISTS TeamTournamentCS;
CREATE VIEW TeamTournamentCS AS
SELECT m.tournament_id, m.team_num, SUM(b.ballots) AS totalCS
FROM DetailedMatchupView m
	INNER JOIN TeamTournamentBallots b ON m.tournament_id = b.tournament_id AND m.opp_num = b.team_num
GROUP BY m.tournament_id, m.team_num;

-- Then, we calculate how many ballots this team's opponents' opponents won, to see if the CS is high just because all of their opponents had a really lucky schedule
DROP VIEW IF EXISTS TeamTournamentOCS;
CREATE VIEW TeamTournamentOCS AS
SELECT m.tournament_id, m.team_num, SUM(c.totalCS) AS totalOCS
FROM DetailedMatchupView m
	INNER JOIN TeamTournamentCS c ON m.tournament_id = c.tournament_id AND m.opp_num = c.team_num
GROUP BY m.tournament_id, m.team_num;


-- This sums up all the information we collected above
DROP VIEW IF EXISTS TournamentTeamInfo;
CREATE VIEW TournamentTeamInfo AS
SELECT o.tournament_id, c.team_num AS team_num, r.wins, r.ties, r.losses, p.totalPD, c.totalCS, o.totalOCS, t.year
FROM TeamTournamentOCS o
	INNER JOIN TeamTournamentCS c ON o.tournament_id = c.tournament_id AND o.team_num = c.team_num
    INNER JOIN TeamTotalPD p ON p.tournament_id = o.tournament_id AND p.team_num = o.team_num
    INNER JOIN TeamTournamentRecord r ON o.tournament_id = r.tournament_id AND o.team_num = r.team_num
    INNER JOIN Tournament t ON o.tournament_id = t.tournament_id;
        
DROP VIEW IF EXISTS allTournamentsInfo;
CREATE VIEW allTournamentsInfo AS
	SELECT t.name, t.tournament_id, t.level, t.start_date, t.end_date, t.host, COUNT(ti.team_num) AS teamCount, AVG(ti.tpr_points) AS avgPoints
	FROM tournament t
		LEFT JOIN teamtournamentresults ttr ON t.tournament_id = ttr.tournament_id
		LEFT JOIN teaminfo ti ON ttr.team_num = ti.team_num AND t.year = ti.year
	GROUP BY t.tournament_id;







-- STATS VIEWS --


-- This finds the single round where the average judge said one team won by the most
DROP VIEW IF EXISTS BestRoundPD;
CREATE VIEW BestRoundPD AS
	SELECT D.team_num, D.opp_num, D.tournament_id, D.round_num, AVG(D.pd) AS 'avg_pd', T.name AS 'tournament_name', T.start_date, E.team_name, O.team_name AS "opp_name"
		FROM DetailedBallotView D
			INNER JOIN Tournament T ON D.tournament_id = T.tournament_id
            INNER JOIN TeamInfo E ON D.team_num = E.team_num AND T.year = E.year
            INNER JOIN TeamInfo O ON D.opp_num = O.team_num AND T.year = O.year
	GROUP BY D.tournament_id, D.team_num, D.round_num, D.opp_num, T.year
    HAVING AVG(D.pd) < 140
    ORDER BY AVG(D.pd) DESC
    LIMIT 1;
    

-- Find the single ballot with the highest disparity in performance
DROP VIEW IF EXISTS SingleBestPD;
CREATE VIEW SingleBestPD AS
	SELECT D.*, T.name AS 'tournament_name', T.start_date, E.team_name, O.team_name AS "opp_name"
		FROM DetailedBallotView D
			INNER JOIN Tournament T ON D.tournament_id = T.tournament_id
            INNER JOIN TeamInfo E ON D.team_num = E.team_num AND T.year = E.year
            INNER JOIN TeamInfo O ON D.opp_num = O.team_num AND T.year = E.year
	WHERE D.pd < 140
    ORDER BY D.pd DESC
    LIMIT 1;



-- Calculate the most extreme – the best and worst records – in AMTA
DROP PROCEDURE IF EXISTS create_extreme_records;

DELIMITER //

CREATE PROCEDURE create_extreme_records()

BEGIN

	-- Since this is a temporary table that will need regular updates and should have
    -- no dependencies, data integrity isn't really a concern. Instead, improving
    -- performance is more relevant, and so it isn't in BCNF. The only reason it
    -- isn't done as a view is for performance concerns.
	DROP TABLE IF EXISTS project2.ExtremeRecords;
	CREATE TABLE project2.ExtremeRecords (
		`type` VARCHAR(10) NOT NULL,
		tournament_id INT UNSIGNED NOT NULL,
		team_num SMALLINT UNSIGNED NOT NULL,
		team_name VARCHAR(75) NOT NULL,
		wins TINYINT UNSIGNED NOT NULL,
		ties TINYINT UNSIGNED NOT NULL,
		losses TINYINT UNSIGNED NOT NULL,
		totalPD INT NOT NULL,
		totalCS INT NOT NULL,
        totalOCS INT NOT NULL,
		`year` INT NOT NULL,
		tournament_name VARCHAR(75) NOT NULL,
        `level` VARCHAR(10),
        
        PRIMARY KEY (`type`)
	);

	INSERT INTO ExtremeRecords
		SELECT 'best', I.tournament_id, I.team_num, E.team_name, I.wins, I.ties, I.losses, I.totalPD, I.totalCS, I.totalOCS, I.year, T.name AS 'tournament_name', T.level
			FROM TournamentTeamInfo I
				INNER JOIN Tournament T ON I.tournament_id = T.tournament_id
				INNER JOIN TeamInfo E ON I.team_num = E.team_num AND T.year = E.year
		WHERE (T.level = 'regionals' OR T.level = 'orcs' OR T.level = 'nationals') AND (wins+ties+losses >= 8)
		ORDER BY (wins+ties/2)/(wins+ties+losses) DESC, totalCS/(wins+ties+losses) DESC, totalOCS/(wins+ties+losses) DESC, totalPD/(wins+ties+losses) DESC
		LIMIT 1;


	INSERT INTO ExtremeRecords
		SELECT 'worst', I.tournament_id, I.team_num, E.team_name, I.wins, I.ties, I.losses, I.totalPD, I.totalCS, I.totalOCS, I.year, T.name AS 'tournament_name', T.level
			FROM TournamentTeamInfo I
				INNER JOIN Tournament T ON I.tournament_id = T.tournament_id
				INNER JOIN TeamInfo E ON I.team_num = E.team_num AND T.year = E.year
		WHERE (T.level = 'regionals' OR T.level = 'orcs' OR T.level = 'nationals') AND (wins+ties+losses >= 8)
		ORDER BY (I.wins+I.ties/2)/(I.wins+I.ties+I.losses) ASC, I.totalCS/(I.wins+I.ties+I.losses) ASC, I.totalOCS/(I.wins+I.ties+I.losses) ASC, I.totalPD/(I.wins+I.ties+I.losses) ASC
		LIMIT 1;

END //

DELIMITER ;

CALL create_extreme_records();


-- Calculate stats for how often teams win based on their group designation
CREATE OR REPLACE VIEW GroupMatchups AS
	SELECT 
			SUM(CASE WHEN D.pd > 0 THEN 1 ELSE 0 END)/SUM(CASE WHEN D.pd = 0 THEN 0 ELSE 1 END) AS 'percent-wins', 
            RTeam.tpr_group_designator AS 'designator', 
            ROpp.tpr_group_designator AS 'opp_designator'
		FROM DetailedBallotView D
			INNER JOIN Tournament T ON D.tournament_id = T.tournament_id
			INNER JOIN TeamTournamentResults RTeam ON D.tournament_id = RTeam.tournament_id AND D.team_num = RTeam.team_num
            INNER JOIN TeamTournamentResults ROpp ON D.tournament_id = ROpp.tournament_id AND D.opp_num = ROpp.team_num
	WHERE T.level = 'orcs' AND D.round_num = 1
    GROUP BY RTeam.tpr_group_designator, ROpp.tpr_group_designator;


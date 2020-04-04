DROP DATABASE IF EXISTS project2;
CREATE DATABASE project2;

USE project2;

CREATE TABLE megatable(
	ballot_id INT,
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
	team_name VARCHAR(50),
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

LOAD DATA INFILE '~/Google Drive/College Work/Junior/Spring/Databases/full-data.csv'
	IGNORE
	INTO TABLE megatable
	FIELDS TERMINATED BY ','
	OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES;


SET SQL_SAFE_UPDATES=0;

DELETE FROM megatable
	WHERE team_num = opp_num; # A team should never be playing itself – this means a team dropped out, so the tab shows them "playing themselves"

DELETE FROM megatable
	WHERE Side = "Δ";
    
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

UPDATE megatable
	SET SPAMTA_ranks = NULL
WHERE SPAMTA_ranks = "";

    
SET SQL_SAFE_UPDATES=1;

-- -------------------- --
--   Generate tables	--
-- -------------------- --

DROP TABLE IF EXISTS CaseNames;

CREATE TABLE IF NOT EXISTS CaseNames (
  `year` INT NOT NULL,
  `level` VARCHAR(45) NOT NULL,
  `case_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`year`, `level`),
  UNIQUE INDEX `case_name_UNIQUE` (`case_name` ASC))
ENGINE = InnoDB;


DROP TABLE IF EXISTS Tournament;

CREATE TABLE IF NOT EXISTS Tournament (
  `tournament_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(75) NULL,
  `division` VARCHAR(45) NULL,
  `start_date` DATE NULL,
  `end_date` DATE NULL,
  `host` VARCHAR(75) NULL,
  `location` VARCHAR(65) NULL,
  `first_coin_flip` VARCHAR(45) NULL,
  `second_coin_flip` VARCHAR(45) NULL,
  `bid_start_date` DATE NULL,
  `bid_end_date` DATE NULL,
  `bid_location` VARCHAR(45) NULL,
  `level` VARCHAR(45) NOT NULL,
  `bids_plus_one_after_r3` VARCHAR(45) NULL,
  `number_of_bids` TINYINT NULL,
  `year` INT NOT NULL,
  PRIMARY KEY (`tournament_id`),
  INDEX `fk_Tournament_CaseName_idx` (`year` ASC, `level` ASC)
--  CONSTRAINT `fk_Tournament_CaseName`
--    FOREIGN KEY (`year` , `level`)
--    REFERENCES `project2`.`CaseNames` (`year` , `level`)
--    ON DELETE NO ACTION
--    ON UPDATE NO ACTION
);

DROP TABLE IF EXISTS `project2`.`TeamInfo` ;
CREATE TABLE IF NOT EXISTS `project2`.`TeamInfo` (
  `team_num` SMALLINT NOT NULL,
  `year` INT NOT NULL,
  `team_name` VARCHAR(45) NULL,
  `tpr_rank` TINYINT NULL,
  `tpr_points` TINYINT NULL,
  `school` VARCHAR(45) NULL,
  PRIMARY KEY (`team_num`, `year`))
ENGINE = InnoDB;

DROP TABLE IF EXISTS TeamTournamentResults;
CREATE TABLE IF NOT EXISTS TeamTournamentResults (
  `tournament_id` INT UNSIGNED NOT NULL,
  `team_num` SMALLINT NOT NULL,
  `won_SPAMTA` BOOLEAN NULL,
  `SPAMTA_honorable_mention` BOOLEAN NULL,
  `SPAMTA_ranks` TINYINT NULL,
  PRIMARY KEY (`tournament_id`, `team_num`),
  INDEX `fk_TeamName_team_num_idx` (`team_num` ASC),
  INDEX `fk_Team_Tournament1_idx` (`tournament_id` ASC),
/*  CONSTRAINT `fk_TeamName_team_num`
    FOREIGN KEY (`team_num`)
    REFERENCES `project2`.`TeamInfo` (`team_num`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,*/
  CONSTRAINT `fk_Team_Tournament1`
    FOREIGN KEY (`tournament_id`)
    REFERENCES `project2`.`Tournament` (`tournament_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
DROP TABLE IF EXISTS `project2`.`Student` ;
CREATE TABLE IF NOT EXISTS `project2`.`Student` (
  `student_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `tournament_id` INT NOT NULL,
  `team_num` INT NOT NULL,
  `student` VARCHAR(1000) NOT NULL,
  `role` VARCHAR(8) NOT NULL,
  `ranks` TINYINT UNSIGNED NOT NULL,
  `side` VARCHAR(8) NOT NULL,
  PRIMARY KEY (`student_id`, `tournament_id`, `team_num`),
  INDEX `fk_Student_Team1_idx` (`tournament_id` ASC, `team_num` ASC)
--   CONSTRAINT `fk_Student_Team1`
--     FOREIGN KEY (`team_num`)
--     REFERENCES `project2`.`TeamTournamentResults` (`team_num`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION
) ENGINE = InnoDB;


DROP TABLE IF EXISTS `project2`.`AMTARep` ;

CREATE TABLE IF NOT EXISTS `project2`.`AMTARep` (
  `tournament_id` INT UNSIGNED NOT NULL,
  `amta_rep_num` INT UNSIGNED NOT NULL,
  `amta_rep` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`amta_rep_num`, `tournament_id`),
  INDEX `fk_AMTARep_Tournament_idx` (`tournament_id` ASC),
  CONSTRAINT `fk_AMTARep_Tournament`
    FOREIGN KEY (`tournament_id`)
    REFERENCES `project2`.`Tournament` (`tournament_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


DROP TABLE IF EXISTS `project2`.`Matchup` ;

CREATE TABLE IF NOT EXISTS `project2`.`Matchup` (
  `tournament_id` INT UNSIGNED NOT NULL,
  `pl_num` SMALLINT NOT NULL,
  `round_num` SMALLINT NOT NULL,
  `def_num` SMALLINT NOT NULL,
  PRIMARY KEY (`pl_num`, `round_num`),
  INDEX `fk_Matchup_Team1_idx` (`tournament_id` ASC, `pl_num` ASC),
  INDEX `fk_TeamTournamentResults_def_idx` (`tournament_id` ASC, `def_num` ASC),
  CONSTRAINT `fk_TeamTournamentResults_pl`
    FOREIGN KEY (`tournament_id` , `pl_num`)
    REFERENCES `project2`.`TeamTournamentResults` (`tournament_id` , `team_num`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_TeamTournamentResults_def`
    FOREIGN KEY (`tournament_id` , `def_num`)
    REFERENCES `project2`.`TeamTournamentResults` (`tournament_id` , `team_num`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


DROP TABLE IF EXISTS `project2`.`Ballot` ;

CREATE TABLE IF NOT EXISTS `project2`.`Ballot` (
  `ballot_id` INT NOT NULL,
  `Matchup_tournament_id` INT UNSIGNED NOT NULL,
  `Matchup_pl_num` SMALLINT NOT NULL,
  `Matchup_round_num` SMALLINT NOT NULL,
  `pd` SMALLINT NOT NULL,
  `ballot_result` CHAR(1) NOT NULL,
  PRIMARY KEY (`ballot_id`, `Matchup_tournament_id`, `Matchup_pl_num`, `Matchup_round_num`),
  INDEX `fk_Ballot_Matchup1_idx` (`Matchup_tournament_id` ASC, `Matchup_pl_num` ASC, `Matchup_round_num` ASC),
  CONSTRAINT `fk_Ballot_Matchup1`
    FOREIGN KEY (`Matchup_tournament_id` , `Matchup_pl_num` , `Matchup_round_num`)
    REFERENCES `project2`.`Matchup` (`tournament_id` , `pl_num` , `round_num`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


DROP TABLE IF EXISTS `project2`.`CaseDetails` ;

CREATE TABLE IF NOT EXISTS `project2`.`CaseDetails` (
  `case_name` VARCHAR(45) NOT NULL,
  `full_case` VARCHAR(45) NULL,
  `nationals_case` VARCHAR(45) NULL,
  `type_charge` VARCHAR(45) NULL,
  PRIMARY KEY (`case_name`),
  CONSTRAINT `fk_CaseName_CaseDetails`
    FOREIGN KEY (`case_name`)
    REFERENCES `project2`.`CaseNames` (`case_name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


DROP TABLE IF EXISTS `project2`.`CaseComponents` ;

CREATE TABLE IF NOT EXISTS `project2`.`CaseComponents` (
  `case_name` VARCHAR(45) NOT NULL,
  `n_key` TINYINT NOT NULL,
  `charge` VARCHAR(45) NULL,
  `witness_name` VARCHAR(45) NULL,
  `exhibit_name` VARCHAR(45) NULL,
  `exhibit_url` VARCHAR(152) NULL,
  PRIMARY KEY (`case_name`, `n_key`),
  UNIQUE INDEX `witness_name_UNIQUE` (`witness_name` ASC),
  INDEX `exhibit_name` (`exhibit_name` ASC),
  CONSTRAINT `fk_CaseDetails_CaseComponents`
    FOREIGN KEY (`case_name`)
    REFERENCES `project2`.`CaseDetails` (`case_name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `project2`.`WitnessDetails`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `project2`.`WitnessDetails` ;

CREATE TABLE IF NOT EXISTS `project2`.`WitnessDetails` (
  `witness_name` VARCHAR(45) NOT NULL,
  `witness_type` VARCHAR(45) NULL,
  `witness_side` VARCHAR(8) NULL,
  `witness_affidaivit` VARCHAR(45) NULL,
  INDEX `fk_WitnessDetails_CaseComponents_idx` (`witness_name` ASC),
  PRIMARY KEY (`witness_name`),
  CONSTRAINT `fk_WitnessDetails_CaseComponents`
    FOREIGN KEY (`witness_name`)
    REFERENCES `project2`.`CaseComponents` (`witness_name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


DROP TABLE IF EXISTS `project2`.`Exhibit Details` ;

CREATE TABLE IF NOT EXISTS `project2`.`Exhibit Details` (
  `exhibit_name` VARCHAR(45) NOT NULL,
  `exhibit_url` VARCHAR(152) NOT NULL,
  INDEX `fk_case_components_exhibit_idx` (`exhibit_name` ASC),
  PRIMARY KEY (`exhibit_name`));


INSERT INTO Tournament (name, division, start_date, end_date, host, location, bid_start_date, bid_end_date, bid_location, level, year)
	SELECT DISTINCT tournament_name AS name, division, start_date, end_date, tournament_host AS host, location, bid_start_date, bid_end_date, bid_location, tournament_level AS level, tournament_year AS year
		FROM megatable
	WHERE tournament_year != "";
    
ALTER TABLE megatable
	ADD COLUMN tournament_id INT UNSIGNED;

SET SQL_SAFE_UPDATES=0;
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

DROP TABLE IF EXISTS TEMP_tab_notes;

CREATE TABLE TEMP_tab_notes (
	tournament_id INT UNSIGNED NOT NULL,
    num TINYINT,
    note VARCHAR(75),
    
    PRIMARY KEY (tournament_id, num)
);

SELECT DISTINCT tournament_id, tab_note_1, tournament_name, tournament_year
	FROM megatable;

SELECT * FROM megatable WHERE tournament_id = 163;
    
SELECT Tournament.* FROM Tournament WHERE tournament_id IN (
	SELECT M1.tournament_id
	FROM (SELECT DISTINCT tournament_id, tab_note_0
				FROM megatable M2) M1
	GROUP BY M1.tournament_id
    HAVING COUNT(*) > 1);

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

INSERT INTO TeamTournamentResults
	SELECT DISTINCT tournament_id, team_num, IF(spamta_honorable_mention = 'TRUE', 1, 0), IF(spamta_honorable_mention = 'TRUE', 1, 0), SPAMTA_ranks
		FROM megatable;

DROP PROCEDURE IF EXISTS insert_students;

DELIMITER //

CREATE PROCEDURE insert_students()

BEGIN
	DECLARE student_num INT;
    DECLARE sql_str VARCHAR(1000);
    
    SET student_num = 1;
    SET SQL_SAFE_UPDATES=0;

	WHILE student_num <= 5 DO
    BEGIN
    
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

		SELECT CONCAT("INSERT INTO Student SELECT DISTINCT ", student_num, ", tournament_id, team_num, student_", student_num, " AS 'student', role_", student_num, " AS 'role', ranks_", student_num, " AS 'ranks', side_", student_num, " AS 'side' FROM megatable WHERE student_", student_num, " IS NOT NULL AND role_", student_num, " IS NOT NULL AND ranks_", student_num, " IS NOT NULL AND side_", student_num, " IS NOT NULL") INTO @sql_str;                           
        PREPARE statement FROM @sql_str;           
		EXECUTE statement;

		SET student_num = student_num + 1;
	END;
	END WHILE;
    
    SET SQL_SAFE_UPDATES=1;
    
    SELECT * FROM Student;
END //

DELIMITER ;

CALL insert_students();

SELECT * FROM megatable WHERE tournament_id = 566 AND team_num = 1051;

INSERT INTO Student
	(SELECT DISTINCT 1, tournament_id, team_num, student_1 AS 'student', role_1 AS 'role', ranks_1 AS 'ranks', side_1 AS 'side' 
		FROM megatable 
	WHERE student_1 IS NOT NULL AND role_1 IS NOT NULL AND ranks_1 IS NOT NULL AND side_1 IS NOT NULL);
    
SELECT DISTINCT 1, tournament_id, team_num, student_1 AS 'student', role_1 AS 'role', ranks_1 AS 'ranks', side_1 AS 'side' 
		FROM megatable 
	WHERE student_1 IS NOT NULL AND role_1 IS NOT NULL AND ranks_1 IS NOT NULL AND side_1 IS NOT NULL;

SELECT * FROM megatable LIMIT 3 OFFSET 44118;
        
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

SELECT * FROM TeamTournamentResults;

INSERT INTO Ballot
	SELECT ballot_id, tournament_id, team_num, ROUND(CAST(round_num AS DECIMAL(2,1))), pd, LEFT(ballot__result, 1)
		FROM megatable;
        
INSERT INTO Matchup
	SELECT DISTINCT tournament_id, team_num, ROUND(CAST(round_num AS DECIMAL(2,1))), opp_num
		FROM megatable;
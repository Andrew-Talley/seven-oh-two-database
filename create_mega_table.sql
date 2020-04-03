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
	full_case VARCHAR(75),
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
	exhibit_6_name VARCHAR(80),
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
	exhibit_32_name CHAR(1),
	exhibit_32_url CHAR(1),
	exhibit_33_name CHAR(1),
	exhibit_33_url CHAR(1),
	exhibit_34_name CHAR(1),
	exhibit_34_url CHAR(1),
	exhibit_35_name CHAR(1),
	exhibit_35_url CHAR(1),
	exhibit_36_name CHAR(1),
	exhibit_36_url CHAR(1),
	exhibit_37_name CHAR(1),
	exhibit_37_url CHAR(1),
	exhibit_38_name CHAR(1),
	exhibit_38_url CHAR(1),
	exhibit_39_name CHAR(1),
	exhibit_39_url CHAR(1),
	exhibit_40_name CHAR(1),
	exhibit_40_url CHAR(1),
	exhibit_41_name CHAR(1),
	exhibit_41_url CHAR(1),
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
	SET start_date = STR_TO_DATE(start_date, '%M %e, %Y')
WHERE start_date IS NOT NULL AND start_date != "";
UPDATE megatable
	SET end_date = STR_TO_DATE(end_date, '%M %e, %Y')
WHERE end_date IS NOT NULL AND end_date != "";
    
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
  `name` VARCHAR(45) NULL,
  `division` VARCHAR(45) NULL,
  `start_date` DATE NULL,
  `end_date` DATE NULL,
  `host` VARCHAR(45) NULL,
  `location` VARCHAR(45) NULL,
  `first_coin_flip` VARCHAR(45) NULL,
  `second_coin_flip` VARCHAR(45) NULL,
  `bid_start_date` DATE NULL,
  `bid_end_date` DATE NULL,
  `bid_location` VARCHAR(45) NULL,
  `level` VARCHAR(45) NOT NULL,
  `7th_place_after_r3` VARCHAR(45) NULL,
  `number_of_bids` TINYINT NULL,
  `year` INT NOT NULL,
  PRIMARY KEY (`tournament_id`),
  INDEX `fk_Tournament_CaseName_idx` (`year` ASC, `level` ASC),
  CONSTRAINT `fk_Tournament_CaseName`
    FOREIGN KEY (`year` , `level`)
    REFERENCES `project2`.`CaseNames` (`year` , `level`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
        
INSERT INTO Tournament (name, division, start_date, end_date, host, location, bid_start_date, bid_end_date, bid_location, level, year)
	SELECT DISTINCT tournament_name AS name, division, STR_TO_DATE(start_date, '%M %e, %Y'), STR_TO_DATE(end_date, '%M %e, %Y'), tournament_host AS host, location, bid_start_date, bid_end_date, bid_location, tournament_level AS level, tournament_year AS year
		FROM megatable;


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


DROP TABLE IF EXISTS `project2`.`TeamTournamentResults` ;
CREATE TABLE IF NOT EXISTS `project2`.`TeamTournamentResults` (
  `tournament_id` INT UNSIGNED NOT NULL,
  `team_num` SMALLINT NOT NULL,
  `total_wins` TINYINT NULL,
  `total_ties` TINYINT NULL,
  `total_losses` TINYINT NULL,
  `won_SPAMTA` TINYINT NULL,
  `SPAMTA_honorable_mention` TINYINT NULL,
  `SPAMTA_ranks` TINYINT NULL,
  `total_cs` TINYINT NULL,
  `total_ocs` SMALLINT NULL,
  `total_pd` SMALLINT NULL,
  `rank` TINYINT NULL,
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


DROP TABLE IF EXISTS `project2`.`Student` ;
CREATE TABLE IF NOT EXISTS `project2`.`Student` (
  `student_id` INT UNSIGNED NOT NULL,
  `tournament_id` INT NOT NULL,
  `team_num` INT NOT NULL,
  `student` VARCHAR(45) NOT NULL,
  `role` VARCHAR(8) NOT NULL,
  `ranks` TINYINT UNSIGNED NOT NULL,
  `side` VARCHAR(8) COLLATE 'DEFAULT' NOT NULL,
  PRIMARY KEY (`student_id`, `tournament_id`, `team_num`),
  INDEX `fk_Student_Team1_idx` (`tournament_id` ASC, `team_num` ASC),
  CONSTRAINT `fk_Student_Team1`
    FOREIGN KEY (`team_num`)
    REFERENCES `project2`.`TeamTournamentResults` (`team_num`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


DROP TABLE IF EXISTS `project2`.`AMTARep` ;

CREATE TABLE IF NOT EXISTS `project2`.`AMTARep` (
  `amta_rep_num` INT UNSIGNED NOT NULL,
  `amta_rep` VARCHAR(45) NOT NULL,
  `tournament_id` INT UNSIGNED NOT NULL,
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


INSERT INTO Ballot
	SELECT ballot_id, 1, team_num, ROUND(CAST(round_num AS DECIMAL(2,1))), pd, LEFT(ballot__result, 1)
		FROM megatable; # Need to fix the tournament_id at some point
        
INSERT INTO Matchup
	SELECT DISTINCT 1, team_num, ROUND(CAST(round_num AS DECIMAL(2,1))), opp_num
		FROM megatable;
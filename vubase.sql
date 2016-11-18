-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema vubase
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `vubase` ;

-- -----------------------------------------------------
-- Schema vubase
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `vubase` DEFAULT CHARACTER SET utf8 ;
USE `vubase` ;

-- -----------------------------------------------------
-- Table `Location`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Location` ;

CREATE TABLE IF NOT EXISTS `Location` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `address` VARCHAR(60) NULL,
  `city` VARCHAR(45) NULL,
  `state` CHAR(2) NULL,
  `zip` INT(5) NULL,
  `place` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_location_id` (`id` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `vu`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `vu` ;

CREATE TABLE IF NOT EXISTS `vu` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `location_id` INT NOT NULL,
  `title` VARCHAR(50) NOT NULL,
  `post` VARCHAR(1500) NULL,
  `start_date` DATE NULL,
  `end_date` DATE NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_vu_Location_idx` (`location_id` ASC),
  INDEX `fk_user_id` (`user_id` ASC),
  CONSTRAINT `fk_vu_Location`
    FOREIGN KEY (`location_id`)
    REFERENCES `Location` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `user` ;

CREATE TABLE IF NOT EXISTS `user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `password` VARCHAR(45) NOT NULL,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_user_id`
    FOREIGN KEY (`id`)
    REFERENCES `vu` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Photo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Photo` ;

CREATE TABLE IF NOT EXISTS `Photo` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `vu_id` INT NOT NULL,
  `url` VARCHAR(500) NOT NULL,
  `caption` VARCHAR(250) NULL,
  PRIMARY KEY (`id`, `vu_id`),
  INDEX `fk_photo_vu_idx` (`vu_id` ASC),
  CONSTRAINT `fk_photo_vu`
    FOREIGN KEY (`vu_id`)
    REFERENCES `vu` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

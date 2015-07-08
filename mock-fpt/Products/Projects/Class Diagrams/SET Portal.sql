SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema setportal
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema setportal
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `setportal` DEFAULT CHARACTER SET utf8 ;
USE `setportal` ;

-- -----------------------------------------------------
-- Table `setportal`.`announcement`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `setportal`.`announcement` (
  `announcementId` INT(11) NOT NULL AUTO_INCREMENT,
  `publishDate` DATE NOT NULL,
  `endDate` DATE NOT NULL,
  `titleE` VARCHAR(300) NOT NULL,
  `ContentE` TEXT NOT NULL,
  `titleM` VARCHAR(300) NOT NULL,
  `contentM` TEXT NOT NULL,
  `layer` TEXT NOT NULL,
  PRIMARY KEY (`announcementId`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `setportal`.`eguide`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `setportal`.`eguide` (
  `eGuideId` INT(11) NOT NULL AUTO_INCREMENT,
  `categoryE` VARCHAR(300) NOT NULL,
  `topicE` VARCHAR(300) NOT NULL,
  `subTopicE` VARCHAR(300) NOT NULL,
  `contentE` TEXT NOT NULL,
  `categoryM` VARCHAR(300) NOT NULL,
  `topicM` VARCHAR(300) NOT NULL,
  `subTopicM` VARCHAR(300) NOT NULL,
  `contentM` TEXT NOT NULL,
  PRIMARY KEY (`eGuideId`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `setportal`.`eguideaccesslevel`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `setportal`.`eguideaccesslevel` (
  `eGuideId` INT(11) NOT NULL AUTO_INCREMENT,
  `userAccessLevel` VARCHAR(300) NOT NULL,
  PRIMARY KEY (`eGuideId`),
  CONSTRAINT `fk_eGuideId`
    FOREIGN KEY (`eGuideId`)
    REFERENCES `setportal`.`eguide` (`eGuideId`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `setportal`.`enews`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `setportal`.`enews` (
  `eNewsId` INT(11) NOT NULL AUTO_INCREMENT,
  `publishDate` DATE NOT NULL,
  `endDate` DATE NOT NULL,
  `titleE` VARCHAR(300) NOT NULL,
  `contentE` TEXT NOT NULL,
  `titleM` VARCHAR(300) NOT NULL,
  `contentM` TEXT NOT NULL,
  PRIMARY KEY (`eNewsId`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `setportal`.`faqs`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `setportal`.`faqs` (
  `faqsId` INT(11) NOT NULL AUTO_INCREMENT,
  `categoryE` VARCHAR(300) NOT NULL,
  `topicE` VARCHAR(300) NOT NULL,
  `subTopicE` VARCHAR(300) NOT NULL,
  `questionE` TEXT NOT NULL,
  `answerE` TEXT NOT NULL,
  `categoryM` VARCHAR(300) NOT NULL,
  `topicM` VARCHAR(300) NOT NULL,
  `subTopicM` VARCHAR(300) NOT NULL,
  `questionM` TEXT NOT NULL,
  `answerM` TEXT NOT NULL,
  PRIMARY KEY (`faqsId`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `setportal`.`gstforms`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `setportal`.`gstforms` (
  `gstFormId` INT(11) NOT NULL AUTO_INCREMENT,
  `publishDate` DATE NOT NULL,
  `endDate` DATE NOT NULL,
  `categoryE` VARCHAR(300) NOT NULL,
  `titleE` VARCHAR(300) NOT NULL,
  `formNumberE` INT(11) NOT NULL,
  `descriptionE` TEXT NOT NULL,
  `categoryM` VARCHAR(300) NOT NULL,
  `titleM` VARCHAR(300) NOT NULL,
  `formNumberM` INT(11) NOT NULL,
  `descriptionM` TEXT NOT NULL,
  PRIMARY KEY (`gstFormId`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `setportal`.`gstformsaccesslevel`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `setportal`.`gstformsaccesslevel` (
  `accessLevelId` INT(11) NOT NULL AUTO_INCREMENT,
  `gstFormId` INT(11) NOT NULL,
  `userAccessLevel` VARCHAR(300) NOT NULL,
  PRIMARY KEY (`accessLevelId`),
  INDEX `fk_formAccessLevel_idx` (`gstFormId` ASC),
  CONSTRAINT `fk_formAccessLevel`
    FOREIGN KEY (`gstFormId`)
    REFERENCES `setportal`.`gstforms` (`gstFormId`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `setportal`.`gstformsattachfile`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `setportal`.`gstformsattachfile` (
  `attachId` INT(11) NOT NULL AUTO_INCREMENT,
  `gstFormId` INT(11) NOT NULL,
  `path` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`attachId`),
  INDEX `fk_formAttachFile_idx` (`gstFormId` ASC),
  CONSTRAINT `fk_formAttachFile`
    FOREIGN KEY (`gstFormId`)
    REFERENCES `setportal`.`gstforms` (`gstFormId`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `setportal`.`gsttemplates`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `setportal`.`gsttemplates` (
  `gstTemplatesId` INT(11) NOT NULL AUTO_INCREMENT,
  `publishDate` DATE NOT NULL,
  `endDate` DATE NOT NULL,
  `categoryE` VARCHAR(300) NOT NULL,
  `titleE` VARCHAR(300) NOT NULL,
  `numberE` INT(11) NOT NULL,
  `descriptionE` TEXT NOT NULL,
  `categoryM` VARCHAR(300) NOT NULL,
  `titleM` VARCHAR(300) NOT NULL,
  `numberM` INT(11) NOT NULL,
  `descriptionM` TEXT NOT NULL,
  PRIMARY KEY (`gstTemplatesId`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `setportal`.`gsttemplatesaccesslevel`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `setportal`.`gsttemplatesaccesslevel` (
  `accessLevelId` INT(11) NOT NULL AUTO_INCREMENT,
  `gstTemplatesId` INT(11) NOT NULL,
  `userAccessLevel` VARCHAR(300) NOT NULL,
  PRIMARY KEY (`accessLevelId`),
  INDEX `fk_accessLevel_idx` (`gstTemplatesId` ASC),
  CONSTRAINT `fk_accessLevel`
    FOREIGN KEY (`gstTemplatesId`)
    REFERENCES `setportal`.`gsttemplates` (`gstTemplatesId`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `setportal`.`gsttemplatesattachfile`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `setportal`.`gsttemplatesattachfile` (
  `attachId` INT(11) NOT NULL AUTO_INCREMENT,
  `gstTemplatesId` INT(11) NOT NULL,
  `path` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`attachId`),
  INDEX `fk_attachId_idx` (`gstTemplatesId` ASC),
  CONSTRAINT `fk_attachFile`
    FOREIGN KEY (`gstTemplatesId`)
    REFERENCES `setportal`.`gsttemplates` (`gstTemplatesId`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `setportal`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `setportal`.`user` (
  `account` CHAR(16) NOT NULL,
  `question` TEXT NOT NULL,
  `answer` TEXT NOT NULL,
  PRIMARY KEY (`account`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `setportal`.`userdetail`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `setportal`.`userdetail` (
  `account` CHAR(16) NOT NULL,
  `password` CHAR(8) NOT NULL,
  `dateAvailable` DATE NOT NULL,
  PRIMARY KEY (`account`),
  CONSTRAINT `FK_UserDetail`
    FOREIGN KEY (`account`)
    REFERENCES `setportal`.`user` (`account`)
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

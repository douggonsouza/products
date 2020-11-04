-- products

CREATE TABLE IF NOT EXISTS `categorys` (
  `category_id` INT(11) NOT NULL AUTO_INCREMENT,
  `parent_id` INT(11) NULL,
  `name` VARCHAR(45) NOT NULL,
  `description` TINYTEXT NULL,
  `active` TINYINT(1) NOT NULL DEFAULT 1,
  `created` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`category_id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `products` (
  `product_id` INT(11) NOT NULL AUTO_INCREMENT,
  `category_id` INT(11) NOT NULL,
  `name` VARCHAR(80) NOT NULL,
  `description` BLOB NULL,
  `stock` INT(11) NOT NULL DEFAULT 0,
  `value` DECIMAL(12,2) NOT NULL,
  `active` TINYINT(1) NOT NULL DEFAULT 1,
  `created` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`product_id`, `category_id`),
  INDEX `fk_products_category1_idx` (`category_id` ASC),
  CONSTRAINT `fk_products_category1`
    FOREIGN KEY (`category_id`)
    REFERENCES `heartwood`.`categorys` (`category_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `pictures` (
  `pictures_id` INT(11) NOT NULL AUTO_INCREMENT,
  `product_id` INT(11) NOT NULL,
  `filename` VARCHAR(255) NOT NULL,
  `active` TINYINT(1) NOT NULL DEFAULT 1,
  `created` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pictures_id`, `product_id`),
  INDEX `fk_pictures_products1_idx` (`product_id` ASC),
  CONSTRAINT `fk_pictures_products1`
    FOREIGN KEY (`product_id`)
    REFERENCES `heartwood`.`products` (`product_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;
CREATE SCHEMA `restaurant`;

CREATE TABLE `restaurant`.`employees` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `position` ENUM('head chef', 'cook', 'assistant', 'hygienist', 'bartender', 'waiter', 'manager') NOT NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `restaurant`.`menu_items` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `price` DECIMAL(5,2) NOT NULL DEFAULT 10.00,
  `class` ENUM('food', 'drink') NOT NULL DEFAULT 'food',
  `calories` INT NOT NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `restaurant`.`food_menu_items` (
  `id` INT NOT NULL,
  `weight_grams` INT NOT NULL,
  `type` ENUM('appetizer', 'main', 'dessert') NOT NULL DEFAULT 'appetizer',
  PRIMARY KEY (`id`),
    FOREIGN KEY (`id`)
    REFERENCES `restaurant`.`menu_items` (`id`));

CREATE TABLE `restaurant`.`drink_menu_items` (
  `id` INT NOT NULL,
  `volume_mililiters` INT NOT NULL,
  `alcohol_procentage` INT NULL DEFAULT NULL,
  `type` ENUM('alcoholic', 'non-alcoholic') NOT NULL DEFAULT 'non-alcoholic',
  PRIMARY KEY (`id`),
    FOREIGN KEY (`id`)
    REFERENCES `restaurant`.`menu_items` (`id`));

CREATE TABLE `restaurant`.`ingredients` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `is_allergen` TINYINT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`));

CREATE TABLE `restaurant`.`food_menu_items_has_ingredients` (
  `food_menu_items_id` INT NOT NULL,
  `ingredients_id` INT NOT NULL,
  PRIMARY KEY (`food_menu_items_id`, `ingredients_id`),
    FOREIGN KEY (`food_menu_items_id`)
    REFERENCES `restaurant`.`food_menu_items` (`id`),
    FOREIGN KEY (`ingredients_id`)
    REFERENCES `restaurant`.`ingredients` (`id`));

CREATE TABLE `restaurant`.`drink_menu_items_has_ingredients` (
  `drink_menu_items_id` INT NOT NULL,
  `ingredients_id` INT NOT NULL,
  PRIMARY KEY (`drink_menu_items_id`, `ingredients_id`),
    FOREIGN KEY (`drink_menu_items_id`)
    REFERENCES `restaurant`.`drink_menu_items` (`id`),
    FOREIGN KEY (`ingredients_id`)
    REFERENCES `restaurant`.`ingredients` (`id`));
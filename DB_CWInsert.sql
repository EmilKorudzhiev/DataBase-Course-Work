INSERT INTO employees (name,position) VALUES ('Ivan Ivanov','head chef');
INSERT INTO employees (name,position) VALUES ('Maria Petrova','cook');
INSERT INTO employees (name,position) VALUES ('Georgi Dimitrov','assistant');
INSERT INTO employees (name,position) VALUES ('Stoyan Ivanov','hygienist');
INSERT INTO employees (name,position) VALUES ('Nikolay Georgiev','bartender');
INSERT INTO employees (name,position) VALUES ('Dimitar Petrov','waiter');
INSERT INTO employees (name,position) VALUES ('Angel Pavlov','manager');


INSERT INTO ingredients (name, is_allergen)
VALUES ("spaghetti", 0);
INSERT INTO ingredients (name, is_allergen)
VALUES ("ground beef", 0);
INSERT INTO ingredients (name, is_allergen)
VALUES ("tomato sauce", 0);
INSERT INTO ingredients (name, is_allergen)
VALUES ("parmesan cheese", 1);
INSERT INTO ingredients (name, is_allergen)
VALUES ("pineapple juice", 0);
INSERT INTO ingredients (name, is_allergen)
VALUES ("white rum", 0);
INSERT INTO ingredients (name, is_allergen)
VALUES ("coconut cream", 1);
INSERT INTO ingredients (name, is_allergen)
VALUES ("romaine lettuce", 0);
INSERT INTO ingredients (name, is_allergen)
VALUES ("croutons", 0);
INSERT INTO ingredients (name, is_allergen)
VALUES ("arborio rice", 0);
INSERT INTO ingredients (name, is_allergen)
VALUES ("mushrooms", 1);
INSERT INTO ingredients (name, is_allergen)
VALUES ("butter", 1);
INSERT INTO ingredients (name, is_allergen)
VALUES ("salmon fillet", 0);
INSERT INTO ingredients (name, is_allergen)
VALUES ("asparagus", 0);
INSERT INTO ingredients (name, is_allergen)
VALUES ("cherry tomatoes", 0);
INSERT INTO ingredients (name, is_allergen)
VALUES ("olive oil", 0);
INSERT INTO ingredients (name, is_allergen)
VALUES ("sugar", 0);
INSERT INTO ingredients (name, is_allergen)
VALUES ("flour", 0);
INSERT INTO ingredients (name, is_allergen)
VALUES ("chocolate chips", 0);
INSERT INTO ingredients (name, is_allergen)
VALUES ("cocoa powder", 0);


INSERT INTO ingredients (name, is_allergen)
VALUES ("lime juice", 0);
INSERT INTO ingredients (name, is_allergen)
VALUES ("mint", 0);
INSERT INTO ingredients (name, is_allergen)
VALUES ("soda water", 0);
INSERT INTO ingredients (name, is_allergen)
VALUES ("frozen strawberries", 0);
INSERT INTO ingredients (name, is_allergen)
VALUES ("milk", 0);
INSERT INTO ingredients (name, is_allergen)
VALUES ("honey", 0);
INSERT INTO ingredients (name, is_allergen)
VALUES ("plain yogurt", 0);
INSERT INTO ingredients (name, is_allergen)
VALUES ("tequila", 0);
INSERT INTO ingredients (name, is_allergen)
VALUES ("triple sec", 0);
INSERT INTO ingredients (name, is_allergen)
VALUES ("gin", 0);
INSERT INTO ingredients (name, is_allergen)
VALUES ("vodka", 0);
INSERT INTO ingredients (name, is_allergen)
VALUES ("simple syrup", 0);
INSERT INTO ingredients (name, is_allergen)
VALUES ("coke", 0);



INSERT INTO menu_items (name, price, class, calories)
VALUES ('Spaghetti Bolognese', 18.99, 'food', 800);
INSERT INTO food_menu_items (id, type)
VALUES (LAST_INSERT_ID(), 'main');
INSERT INTO food_menu_items_has_ingredients (food_menu_items_id, ingredients_id, weight_grams)
VALUES
    (LAST_INSERT_ID(), 1, 200), -- 200g spaghetti
    (LAST_INSERT_ID(), 2, 150), -- 150g ground beef
    (LAST_INSERT_ID(), 3, 100), -- 100g tomato sauce
    (LAST_INSERT_ID(), 4, 50); -- 50g parmesan cheese

INSERT INTO menu_items (name, price, class, calories)
VALUES ('Chicken Caesar Salad', 12.99, 'food', 600);
INSERT INTO food_menu_items (id, type)
VALUES (LAST_INSERT_ID(), 'appetizer');
INSERT INTO food_menu_items_has_ingredients (food_menu_items_id, ingredients_id, weight_grams)
VALUES
(LAST_INSERT_ID(), 8, 100), -- 100g chicken breast
(LAST_INSERT_ID(), 9, 50), -- 50g romaine lettuce
(LAST_INSERT_ID(), 10, 50), -- 50g croutons
(LAST_INSERT_ID(), 4, 30); -- 30g parmesan cheese

INSERT INTO menu_items (name, price, class, calories)
VALUES ('Mushroom Risotto', 14.99, 'food', 900);
INSERT INTO food_menu_items (id, type)
VALUES (LAST_INSERT_ID(), 'main');
INSERT INTO food_menu_items_has_ingredients (food_menu_items_id, ingredients_id, weight_grams)
VALUES
(LAST_INSERT_ID(), 11, 200), -- 200g arborio rice
(LAST_INSERT_ID(), 12, 100), -- 100g mushrooms
(LAST_INSERT_ID(), 4, 50), -- 50g parmesan cheese
(LAST_INSERT_ID(), 13, 50); -- 50g butter

INSERT INTO menu_items (name, price, class, calories)
VALUES ('Grilled Salmon', 16.99, 'food', 700);
INSERT INTO food_menu_items (id, type)
VALUES (LAST_INSERT_ID(), 'main');
INSERT INTO food_menu_items_has_ingredients (food_menu_items_id, ingredients_id, weight_grams)
VALUES
(LAST_INSERT_ID(), 14, 150), -- 150g salmon fillet
(LAST_INSERT_ID(), 15, 50), -- 50g asparagus
(LAST_INSERT_ID(), 16, 50), -- 50g cherry tomatoes
(LAST_INSERT_ID(), 17, 30); -- 30g olive oil
    
INSERT INTO menu_items (name, price, class, calories)
VALUES ('Chocolate Lava Cake', 8.99, 'food', 500);
INSERT INTO food_menu_items (id, type)
VALUES (LAST_INSERT_ID(), 'dessert');
INSERT INTO food_menu_items_has_ingredients (food_menu_items_id, ingredients_id, weight_grams)
VALUES
(LAST_INSERT_ID(), 18, 50), -- 50g flour
(LAST_INSERT_ID(), 19, 50), -- 50g sugar
(LAST_INSERT_ID(), 13, 50), -- 50g butter
(LAST_INSERT_ID(), 20, 50), -- 50g chocolate chips
(LAST_INSERT_ID(), 21, 30); -- 30g cocoa powder




INSERT INTO menu_items (name, price, class, calories)
VALUES ('Piña colada', 6.90, 'drink', 320);
INSERT INTO drink_menu_items (id, alcohol_procentage, type)
VALUES (LAST_INSERT_ID(), 8,'alcoholic');
INSERT INTO drink_menu_items_has_ingredients (drink_menu_items_id, ingredients_id, volume_mililiters)
VALUES
    (LAST_INSERT_ID(), 5, 120), -- 120ml pineapple juice
    (LAST_INSERT_ID(), 6, 60), -- 60ml white rum
    (LAST_INSERT_ID(), 7, 60); -- 60ml coconut cream

INSERT INTO menu_items (name, price, class, calories)
VALUES ('Virgin Mojito', 4.50, 'drink', 120);
INSERT INTO drink_menu_items (id, alcohol_procentage, type)
VALUES (LAST_INSERT_ID(), 0, 'non-alcoholic');
INSERT INTO drink_menu_items_has_ingredients (drink_menu_items_id, ingredients_id, volume_mililiters)
VALUES
(LAST_INSERT_ID(), 22, 30), -- 30ml lime juice
(LAST_INSERT_ID(), 23, 10), -- 10 mint
(LAST_INSERT_ID(), 24, 120); -- 120ml soda water

INSERT INTO menu_items (name, price, class, calories)
VALUES ('Strawberry Smoothie', 5.50, 'drink', 250);
INSERT INTO drink_menu_items (id, alcohol_procentage, type)
VALUES (LAST_INSERT_ID(), 0, 'non-alcoholic');
INSERT INTO drink_menu_items_has_ingredients (drink_menu_items_id, ingredients_id, volume_mililiters)
VALUES
(LAST_INSERT_ID(), 25, 100), -- 100g frozen strawberries
(LAST_INSERT_ID(), 26, 120), -- 120ml milk
(LAST_INSERT_ID(), 27, 30), -- 30g honey
(LAST_INSERT_ID(), 28, 50); -- 50g plain yogurt

INSERT INTO menu_items (name, price, class, calories)
VALUES ('Margarita', 8.50, 'drink', 200);
INSERT INTO drink_menu_items (id, alcohol_procentage, type)
VALUES (LAST_INSERT_ID(), 15, 'alcoholic');
INSERT INTO drink_menu_items_has_ingredients (drink_menu_items_id, ingredients_id, volume_mililiters)
VALUES
(LAST_INSERT_ID(), 22, 30), -- 30ml lime juice
(LAST_INSERT_ID(), 29, 30), -- 30ml tequila
(LAST_INSERT_ID(), 30, 15); -- 15ml triple sec

INSERT INTO menu_items (name, price, class, calories)
VALUES ('Long Island Iced Tea', 10.50, 'drink', 320);
INSERT INTO drink_menu_items (id, alcohol_procentage, type)
VALUES (LAST_INSERT_ID(), 22, 'alcoholic');
INSERT INTO drink_menu_items_has_ingredients (drink_menu_items_id, ingredients_id, volume_mililiters)
VALUES
(LAST_INSERT_ID(), 31, 15), -- 15ml gin
(LAST_INSERT_ID(), 32, 15), -- 15ml vodka
(LAST_INSERT_ID(), 6, 15), -- 15ml white rum
(LAST_INSERT_ID(), 22, 30), -- 30ml lime juice
(LAST_INSERT_ID(), 33, 30), -- 30ml simple syrup
(LAST_INSERT_ID(), 34, 60); -- 60ml coke

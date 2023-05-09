/*
SELECT * FROM employees
WHERE employees.position = "head chef";
*/
/*
SELECT menu_items.class, COUNT(menu_items.class) as 'count_of_foods' FROM menu_items
WHERE menu_items.class = "food"
GROUP BY menu_items.class;
*/
/*
SELECT menu_items.name, food_menu_items.type, ingredients.name, IF(is_allergen, 'true', 'false') is_allergen FROM menu_items 
LEFT OUTER JOIN food_menu_items ON menu_items.id = food_menu_items.id
LEFT OUTER JOIN food_menu_items_has_ingredients ON food_menu_items.id = food_menu_items_has_ingredients.food_menu_items_id
LEFT OUTER JOIN ingredients ON ingredients.id = food_menu_items_has_ingredients.ingredients_id
;*/
/*
SELECT ingredients.name, IF(is_allergen, 'true', 'false') is_allergen, menu_items.name, food_menu_items.type
FROM ingredients
LEFT OUTER JOIN food_menu_items_has_ingredients ON ingredients.id = food_menu_items_has_ingredients.ingredients_id
LEFT OUTER JOIN food_menu_items ON food_menu_items.id = food_menu_items_has_ingredients.food_menu_items_id
LEFT OUTER JOIN menu_items ON menu_items.id = food_menu_items.id;
*/
/*
SELECT food_menu_items.type , COUNT(food_menu_items.type) as 'count_of_foods' FROM menu_items
JOIN food_menu_items ON menu_items.id = food_menu_items.id
WHERE food_menu_items.type = "main"
GROUP BY food_menu_items.type;
*/
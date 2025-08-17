CREATE TABLE RECIPE (
    recipe_id INT PRIMARY KEY AUTO_INCREMENT,
    food_id INT,
    recipe_name VARCHAR(255),
    cooking_time INT,
    difficulty VARCHAR(255),
    cuisine VARCHAR(255),
    is_public BOOLEAN,
    created_by INT,
    FOREIGN KEY (created_by) REFERENCES REGISTERED_USERS(id),
    FOREIGN KEY (food_id) REFERENCES FOOD(food_id)
);
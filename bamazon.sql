DROP DATABASE IF EXISTS bamazonDB;
CREATE DATABASE bamazonDB;
USE bamazonDB;

CREATE TABLE products (
	id INT NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(45) NULL,
    department_name VARCHAR(45) NULL,
    price INTEGER(10) NULL,
    stock_quantity INTEGER(10) NULL,
    PRIMARY KEY (id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("iPhone X", "Phone", 1000, 25),
("Samsung Galaxy s10", "Phone", 1000, 25),
("PlayStation 4", "Video Game", 400, 20),
("Xbox One", "Video Game", 400, 20),
("5in1 Spatula", "Tools", 5, 50),
("Hammer", "Tools", 7, 50),
("Compact Drill", "Tools", 45, 30),
("Pull-Up Bar", "Fitness", 25, 30),
("35lbs Dumbbell", "Fitness", 35, 50),
("10lbs Dumbbell", "Fitness", 10, 50);

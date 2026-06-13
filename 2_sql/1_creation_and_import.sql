-- Creating the tables for importing the csv datasets

-- Sales Table

CREATE Table sales(
sale_id INT,
sale_date date,
store_id INT,
product_id INT,
units INT
);

select * from sales limit 100

-- Products Table

CREATE Table products(
product_id INT,
product_name varchar(255),
product_category varchar(255),
product_cost decimal(10,2),
product_price decimal(10,2)
);


select * from products

--
CREATE Table stores(
store_id INT,
store_name varchar(255),
store_city varchar(255),
store_location varchar(255),
store_open_date date
);


select * from stores;


CREATE Table inventory(
store_id INT,
product_id INT,
stock_on_hand INT
);

select * from inventory
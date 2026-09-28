
CREATE TABLE Users (
id INT PRIMARY KEY,
phone_number TEXT,
email TEXT,
FIO TEXT,
adress TEXT);

CREATE TABLE Products (
id int PRIMARY KEY,
title text,
price money,
stock INTEGER
);

CREATE TABLE Orders (
id INT PRIMARY KEY,
user_id TEXT,
product_id TEXT,
quantity INTEGER,
total INT,
status TEXT,
FOREIGN KEY (user_id) REFERENCES users(id),
FOREIGN KEY (product_id) REFERENCES products(id)
);
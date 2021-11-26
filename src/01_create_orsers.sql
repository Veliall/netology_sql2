-- название таблицы - ORDERS
-- содержит в себе 4 столбца - id, date, customer_id,product_name, amount
-- первичным ключом будет поле id, который инкрементируется каждый раз, при создании заказа
-- внешним ключом на поле id таблицы пользователей будет customer_id

CREATE TABLE orders(
    id SERIAL UNIQUE ,
    date timestamp DEFAULT now(),
    customers_id BIGINT REFERENCES customers (id),
    product_name varchar(200) NOT NULL ,
    amount BIGINT NOT NULL CHECK ( amount > 0 ),
    PRIMARY KEY (id)
);

INSERT INTO orders(CUSTOMERS_ID, PRODUCT_NAME, AMOUNT)
VALUES (1, 'milk', 100),
       (1, 'salt', 50),
       (2, 'bread', 30),
       (2, 'bread2', 30),
       (3, 'bread3', 30),
       (4, 'brea4', 30),
       (3, 'onion', 100);

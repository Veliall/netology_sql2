-- id, name, surname, age, phone_number
CREATE TABLE customers(
    id BIGSERIAL ,
    name VARCHAR (60) NOT NULL ,
    surname VARCHAR (60) NOT NULL ,
    age INT CHECK (age > 0) NOT NULL ,
    phone_number VARCHAR (25) NOT NULL UNIQUE,
    PRIMARY KEY (id)
);

INSERT INTO customers(NAME, SURNAME, AGE, PHONE_NUMBER)
VALUES ('alexey', 'pff', 22, 0000000),
       ('alexey999', 'idontknow', 30, 1111111),
('alexey2', 'wtf', 22, 2222222),
('alexey3', 'aaaaaaa', 22, 333333),
('alexey4', 'fantasy is absent today', 22, 4444444);

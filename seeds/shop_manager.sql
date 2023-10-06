DROP TABLE IF EXISTS items CASCADE;
DROP SEQUENCE IF EXISTS items_id_seq CASCADE;
DROP TABLE IF EXISTS orders CASCADE;
DROP SEQUENCE IF EXISTS orders_id_seq CASCADE;
DROP TABLE IF EXISTS items_orders CASCADE;
DROP SEQUENCE IF EXISTS items_orders_id_seq CASCADE;

CREATE SEQUENCE IF NOT EXISTS items_id_seq;
CREATE TABLE IF NOT EXISTS items (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    price VARCHAR(255),
    quantity INTEGER
);

CREATE SEQUENCE IF NOT EXISTS order_id_seq;
CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    customer_name VARCHAR(255),
    order_date VARCHAR(255)
);

CREATE TABLE items_orders (
    item_id INTEGER,
    order_id INTEGER,
    constraint fk_post foreign key(item_id) references items(id) on delete cascade,
    constraint fk_tag foreign key(order_id) references orders(id) on delete cascade,
    PRIMARY KEY (item_id, order_id)
);

INSERT INTO items (name, price, quantity) VALUES ('scissors', '£1.99', 32);
INSERT INTO items (name, price, quantity) VALUES ('pencil', '£0.10', 73);
INSERT INTO items (name, price, quantity) VALUES ('pen', '£0.99', 50);
INSERT INTO items (name, price, quantity) VALUES ('rubber', '£0.49', 18);
INSERT INTO items (name, price, quantity) VALUES ('stapler', '£3.99', 7);
INSERT INTO items (name, price, quantity) VALUES ('hole puncher', '£2.99', 3);
INSERT INTO items (name, price, quantity) VALUES ('pencil sharpener', '£0.99', 12);
INSERT INTO items (name, price, quantity) VALUES ('paper', '£3.99', 17);
INSERT INTO items (name, price, quantity) VALUES ('paintbrush', '£1.79', 28);
INSERT INTO items (name, price, quantity) VALUES ('watercolour set', '£8.99', 9);
INSERT INTO items (name, price, quantity) VALUES ('paintbrushes set', '£4.99', 4);
INSERT INTO items (name, price, quantity) VALUES ('sharpie', '£1.39', 23);
INSERT INTO items (name, price, quantity) VALUES ('staples', '£2.99', 47);
INSERT INTO items (name, price, quantity) VALUES ('notebook', '£4.99', 8);
INSERT INTO items (name, price, quantity) VALUES ('textbook', '£9.99', 5);
INSERT INTO items (name, price, quantity) VALUES ('chewing gum', '£0.39', 15);
INSERT INTO items (name, price, quantity) VALUES ('lollipop', '£0.29', 10);
INSERT INTO items (name, price, quantity) VALUES ('chocolate bar', '£0.49', 20);
INSERT INTO items (name, price, quantity) VALUES ('biscuits', '£2.49', 27);
INSERT INTO items (name, price, quantity) VALUES ('picture frame', '£14.99', 16);

INSERT INTO orders (customer_name, order_date) VALUES ('bob', '01/01/2023');
INSERT INTO orders (customer_name, order_date) VALUES ('charlie', '11/11/2023');
INSERT INTO orders (customer_name, order_date) VALUES ('phil', '30/07/2023');
INSERT INTO orders (customer_name, order_date) VALUES ('gary', '14/08/2023');
INSERT INTO orders (customer_name, order_date) VALUES ('liz', '17/02/2023');
INSERT INTO orders (customer_name, order_date) VALUES ('mary', '22/03/2023');
INSERT INTO orders (customer_name, order_date) VALUES ('alex', '07/01/2023');
INSERT INTO orders (customer_name, order_date) VALUES ('tony', '12/05/2023');
INSERT INTO orders (customer_name, order_date) VALUES ('will', '27/08/2023');
INSERT INTO orders (customer_name, order_date) VALUES ('jack', '16/10/2023');

INSERT INTO items_orders (item_id, order_id) VALUES (1, 1);
INSERT INTO items_orders (item_id, order_id) VALUES (3, 1);
INSERT INTO items_orders (item_id, order_id) VALUES (7, 1);
INSERT INTO items_orders (item_id, order_id) VALUES (17, 1);
INSERT INTO items_orders (item_id, order_id) VALUES (20, 1);
INSERT INTO items_orders (item_id, order_id) VALUES (2, 2);
INSERT INTO items_orders (item_id, order_id) VALUES (8, 2);
INSERT INTO items_orders (item_id, order_id) VALUES (18, 3);
INSERT INTO items_orders (item_id, order_id) VALUES (19, 3);
INSERT INTO items_orders (item_id, order_id) VALUES (3, 4);
INSERT INTO items_orders (item_id, order_id) VALUES (4, 5);
INSERT INTO items_orders (item_id, order_id) VALUES (5, 5);
INSERT INTO items_orders (item_id, order_id) VALUES (10, 5);
INSERT INTO items_orders (item_id, order_id) VALUES (9, 5);
INSERT INTO items_orders (item_id, order_id) VALUES (8, 5);
INSERT INTO items_orders (item_id, order_id) VALUES (7, 6);
INSERT INTO items_orders (item_id, order_id) VALUES (6, 6);
INSERT INTO items_orders (item_id, order_id) VALUES (2, 7);
INSERT INTO items_orders (item_id, order_id) VALUES (1, 7);
INSERT INTO items_orders (item_id, order_id) VALUES (5, 7);
INSERT INTO items_orders (item_id, order_id) VALUES (11, 7);
INSERT INTO items_orders (item_id, order_id) VALUES (14, 8);
INSERT INTO items_orders (item_id, order_id) VALUES (18, 8);
INSERT INTO items_orders (item_id, order_id) VALUES (20, 8);
INSERT INTO items_orders (item_id, order_id) VALUES (15, 8);
INSERT INTO items_orders (item_id, order_id) VALUES (12, 8);
INSERT INTO items_orders (item_id, order_id) VALUES (13, 8);
INSERT INTO items_orders (item_id, order_id) VALUES (17, 8);
INSERT INTO items_orders (item_id, order_id) VALUES (2, 8);
INSERT INTO items_orders (item_id, order_id) VALUES (4, 9);
INSERT INTO items_orders (item_id, order_id) VALUES (7, 9);
INSERT INTO items_orders (item_id, order_id) VALUES (6, 9);
INSERT INTO items_orders (item_id, order_id) VALUES (5, 9);
INSERT INTO items_orders (item_id, order_id) VALUES (9, 10);
INSERT INTO items_orders (item_id, order_id) VALUES (1, 10);
INSERT INTO items_orders (item_id, order_id) VALUES (2, 10);
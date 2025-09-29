CREATE TABLE client_accounts (
  client_id NUMBER PRIMARY KEY,
  full_name VARCHAR2(100),
  city VARCHAR2(50),
  signup_date DATE
);

CREATE TABLE inventory_items (
  item_id NUMBER PRIMARY KEY,
  title VARCHAR2(200),
  category VARCHAR2(50),
  price NUMBER(10,2)
);

CREATE TABLE purchase_orders (
  order_id NUMBER PRIMARY KEY,
  client_id NUMBER REFERENCES client_accounts(client_id),
  item_id NUMBER REFERENCES inventory_items(item_id),
  order_date DATE,
  quantity NUMBER,
  total_value NUMBER(12,2)
);
INSERT INTO client_accounts (client_id, full_name, city, signup_date) VALUES
(1, 'Alice Mukamana', 'Kigali', TO_DATE('2024-01-10','YYYY-MM-DD'));

INSERT INTO client_accounts (client_id, full_name, city, signup_date) VALUES
(2, 'John Smith', 'Musanze', TO_DATE('2024-02-05','YYYY-MM-DD'));

INSERT INTO client_accounts (client_id, full_name, city, signup_date) VALUES
(3, 'Grace Uwimana', 'Huye', TO_DATE('2024-01-20','YYYY-MM-DD'));

INSERT INTO client_accounts (client_id, full_name, city, signup_date) VALUES
(4, 'Peter Kim', 'Kigali', TO_DATE('2024-03-01','YYYY-MM-DD'));

INSERT INTO client_accounts (client_id, full_name, city, signup_date) VALUES
(5, 'Maria Lopez', 'Rubavu', TO_DATE('2024-02-15','YYYY-MM-DD'));
INSERT INTO inventory_items (item_id, title, category, price) VALUES
(1, 'The Art of SQL', 'Technology', 25000);

INSERT INTO inventory_items (item_id, title, category, price) VALUES
(2, 'Data Analytics for Business', 'Business', 32000);

INSERT INTO inventory_items (item_id, title, category, price) VALUES
(3, 'Fictional Tales - Vol 1', 'Fiction', 15000);

INSERT INTO inventory_items (item_id, title, category, price) VALUES
(4, 'Cooking Made Simple', 'Lifestyle', 18000);

INSERT INTO inventory_items (item_id, title, category, price) VALUES
(5, 'Self-Help Guide', 'Self-Help', 22000);
-- Jan orders
INSERT INTO purchase_orders (order_id, client_id, item_id, order_date, quantity, total_value) VALUES
(1, 1, 1, TO_DATE('2024-01-15','YYYY-MM-DD'), 1, 25000);

INSERT INTO purchase_orders (order_id, client_id, item_id, order_date, quantity, total_value) VALUES
(2, 3, 3, TO_DATE('2024-01-18','YYYY-MM-DD'), 2, 30000);

-- Feb orders
INSERT INTO purchase_orders (order_id, client_id, item_id, order_date, quantity, total_value) VALUES
(3, 2, 2, TO_DATE('2024-02-08','YYYY-MM-DD'), 1, 32000);

INSERT INTO purchase_orders (order_id, client_id, item_id, order_date, quantity, total_value) VALUES
(4, 5, 5, TO_DATE('2024-02-14','YYYY-MM-DD'), 1, 22000);

INSERT INTO purchase_orders (order_id, client_id, item_id, order_date, quantity, total_value) VALUES
(5, 1, 3, TO_DATE('2024-02-25','YYYY-MM-DD'), 1, 15000);

-- March orders
INSERT INTO purchase_orders (order_id, client_id, item_id, order_date, quantity, total_value) VALUES
(6, 4, 4, TO_DATE('2024-03-05','YYYY-MM-DD'), 2, 36000);

INSERT INTO purchase_orders (order_id, client_id, item_id, order_date, quantity, total_value) VALUES
(7, 3, 2, TO_DATE('2024-03-10','YYYY-MM-DD'), 1, 32000);

INSERT INTO purchase_orders (order_id, client_id, item_id, order_date, quantity, total_value) VALUES
(8, 5, 1, TO_DATE('2024-03-12','YYYY-MM-DD'), 1, 25000);

INSERT INTO purchase_orders (order_id, client_id, item_id, order_date, quantity, total_value) VALUES
(9, 2, 5, TO_DATE('2024-03-15','YYYY-MM-DD'), 2, 44000);

INSERT INTO purchase_orders (order_id, client_id, item_id, order_date, quantity, total_value) VALUES
(10, 4, 3, TO_DATE('2024-03-22','YYYY-MM-DD'), 1, 15000);

CREATE TABLE orders (
    order_id   NUMBER PRIMARY KEY,
    item_name  VARCHAR2(100),
    quantity   NUMBER,
    order_date DATE
);
CREATE SEQUENCE order_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;
CREATE OR REPLACE TRIGGER trg_order_pk
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
    IF :NEW.order_id IS NULL THEN
        :NEW.order_id := order_seq.NEXTVAL;
    END IF;
END;
INSERT INTO orders (item_name, quantity, order_date)
VALUES ('Laptop', 2, SYSDATE);

INSERT INTO orders (item_name, quantity, order_date)
VALUES ('Mobile', 5, SYSDATE);

INSERT INTO orders (item_name, quantity, order_date)
VALUES ('Tablet', 3, SYSDATE);

COMMIT;
SELECT order_id, item_name, quantity, order_date FROM orders;

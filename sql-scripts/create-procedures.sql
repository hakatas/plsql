CREATE OR REPLACE PROCEDURE register_customer(
    p_customer_id IN NUMBER,
    p_customer_name IN VARCHAR2,
    p_phone_number IN VARCHAR2,
    p_email IN VARCHAR2
) AS
BEGIN
    INSERT INTO customers (customer_id, customer_name, phone_number, email)
    VALUES (p_customer_id, p_customer_name, p_phone_number, p_email);
    COMMIT;
END;
/

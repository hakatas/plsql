CREATE OR REPLACE PROCEDURE delete_customer(
    p_customer_id IN NUMBER
) AS
BEGIN
    DELETE FROM customers WHERE customer_id = p_customer_id;
    COMMIT;
END;
/

CREATE OR REPLACE FUNCTION get_customer_info(
    p_customer_id IN NUMBER
) RETURN VARCHAR2 AS
    v_customer_info VARCHAR2(400);
BEGIN
    SELECT 'Name: ' || customer_name || ', Phone: ' || phone_number || ', Email: ' || email
    INTO v_customer_info
    FROM customers
    WHERE customer_id = p_customer_id;
    
    RETURN v_customer_info;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'Customer not found.';
END;
/

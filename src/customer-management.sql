-- 顧客情報の登録
BEGIN
    -- 顧客ID、顧客名、電話番号、メールアドレスを指定して登録
    register_customer(1, 'John Doe', '123-456-7890', 'john.doe@example.com');
    register_customer(2, 'Jane Smith', '234-567-8901', 'jane.smith@example.com');
    register_customer(3, 'Alice Brown', '345-678-9012', 'alice.brown@example.com');
END;
/

-- 顧客情報の更新
BEGIN
    -- 顧客ID = 1 の顧客情報を更新
    update_customer(1, 'John Doe', '987-654-3210', 'john.doe@newemail.com');
END;
/

-- 顧客情報の削除
BEGIN
    -- 顧客ID = 3 の顧客を削除
    delete_customer(3);
END;
/

-- 顧客情報の検索
-- 顧客IDが1の顧客情報を取得
SELECT get_customer_info(1) FROM dual;

-- 顧客IDが2の顧客情報を取得
SELECT get_customer_info(2) FROM dual;

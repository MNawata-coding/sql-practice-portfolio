--演習1
--取得
SELECT name, purchase_date FROM orders ORDER BY purchase_date DESC;

--サブクエリでユーザー名取得
SELECT name, purchase_date, 
    (
        SELECT name FROM users WHERE id=orders.user_id
    )
 FROM orders ORDER BY purchase_date DESC LIMIT 1;

--サブクエリの結果に存在する値を表示する
SELECT name, purchase_date, 
    (
        SELECT name FROM users WHERE id=orders.user_id
    ) AS 'ユーザー名'
 FROM orders WHERE EXISTS 
    (
        SELECT id FROM users WHERE id=orders.user_id
    )
ORDER BY purchase_date DESC LIMIT 1;

--演習2
SELECT name FROM orders WHERE orders.user_id = 
    (
        SELECT id FROM users WHERE name='Taro'
    )

--演習3
SELECT * FROM orders WHERE price >=
    (
        SELECT AVG(price) FROM orders
    )

--演習4
SELECT user_id, (
        SELECT name FROM users WHERE id=orders.user_id
    ) AS username, MAX(purchase_date) 
FROM orders GROUP BY user_id HAVING (
        SELECT name FROM users WHERE id=orders.user_id
    ) IS NOT NULL

--演習5
SELECT * FROM orders WHERE user_id NOT IN 
    (
        SELECT id FROM users
    )

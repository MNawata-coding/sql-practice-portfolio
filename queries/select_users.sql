--usersテーブルから全権取得
SELECT * FROM users;

--usersテーブルから特定の値を取得
SELECT * FROM users WHERE name='七上隆太'

--条件の複数指定 AND
SELECT * FROM users WHERE name='神沼正介' AND id > 10;

--条件の複数指定 OR
SELECT * FROM users WHERE name='神沼正介' OR id <= 5;

--INNER JOIN-items
SELECT * FROM users INNER JOIN items ON users.id=items.user_id;

--INNER JOIN-items-カラム名修正
SELECT users.name AS 'ユーザー名', users.id, items.user_id, items.name AS '商品名', items.price 
FROM users INNER JOIN items ON users.id=items.user_id;

--RIGHT OUTER JOIN
SELECT users.name AS 'ユーザー名', users.id, items.user_id, items.name AS '商品名', items.price AS '価格'
FROM users LEFT OUTER JOIN items ON users.id=items.user_id;

-- 演習1
--結合
SELECT * FROM users INNER JOIN orders ON users.id=orders.user_id
--グループ化
SELECT users.name FROM users INNER JOIN orders ON users.id=orders.user_id GROUP BY users.name;
--エラー発生確認
SELECT users.name, orders.price FROM users INNER JOIN orders ON users.id=orders.user_id GROUP BY users.name;
--合計算出
SELECT users.name, SUM(orders.price) FROM users INNER JOIN orders ON users.id=orders.user_id GROUP BY users.name;
--完成(並び替え、別名)
SELECT users.name AS 'ユーザー名', MAX(users.id) AS 'ユーザーID', MAX(orders.user_id) AS '注文ID', SUM(orders.price) AS '価格'
FROM users INNER JOIN orders ON users.id=orders.user_id 
group by users.name ORDER BY SUM(price) DESC;

-- 演習2
--結合
SELECT * FROM users LEFT OUTER JOIN orders ON users.id=orders.user_id;
--グループ化
SELECT users.name AS 'ユーザー名' FROM users LEFT OUTER JOIN orders ON users.id=orders.user_id GROUP BY users.name;
--合計算出
SELECT users.name AS 'ユーザー名', SUM(orders.price) AS '合計金額' FROM users LEFT OUTER JOIN orders ON users.id=orders.user_id GROUP BY users.name;
--NULLの時に0を出力
SELECT users.name AS 'ユーザー名', COALESCE(SUM(orders.price), 0) AS '合計金額' FROM users LEFT OUTER JOIN orders ON users.id=orders.user_id GROUP BY users.name;

-- 演習3
--取得
SELECT purchase_date AS '日付' FROM orders;
--グループ化
SELECT DATE(purchase_date) AS '日付' FROM orders GROUP BY DATE(purchase_date);
--合計算出
SELECT DATE(purchase_date) AS '日付' , SUM(price) AS '合計金額' FROM orders GROUP BY DATE(purchase_date);

-- 演習4
-- 取得
SELECT * FROM users INNER JOIN orders ON users.id=orders.user_id;
-- グループ化
SELECT users.name AS 'ユーザー名' FROM users INNER JOIN orders ON users.id=orders.user_id GROUP BY users.name;
-- 購入回数
SELECT users.name AS 'ユーザー名', COUNT(orders.id) FROM users INNER JOIN orders ON users.id=orders.user_id GROUP BY users.name;
-- 2以上の場合出力
SELECT users.name AS 'ユーザー名', COUNT(orders.id) FROM users INNER JOIN orders ON users.id=orders.user_id GROUP BY users.name HAVING COUNT(orders.id)>=2;

-- 演習5
--取得
SELECT * from users RIGHT OUTER JOIN orders ON users.id=orders.user_id;
--ordersにだけあるレコードを抽出
SELECT * from users RIGHT OUTER JOIN orders ON users.id=orders.user_id WHERE users.id IS NULL
--別名
SELECT orders.id AS '存在しないユーザーID' from users RIGHT OUTER JOIN orders ON users.id=orders.user_id WHERE users.id IS NULL
--usersテーブルから全権取得
SELECT * FROM users;

--usersテーブルから特定の値を取得
SELECT * FROM users WHERE name='七上隆太'

--条件の複数指定 AND
SELECT * FROM users WHERE name='神沼正介' AND id > 10;

--条件の複数指定 OR
SELECT * FROM users WHERE name='神沼正介' OR id <= 5;


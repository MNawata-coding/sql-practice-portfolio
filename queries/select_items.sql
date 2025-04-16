--グループ化
SELECT name FROM items GROUP BY name;

--グループ化-合計値
SELECT name, SUM(price) FROM items GROUP BY name;

--グループ化-平均
SELECT name, AVG(price) FROM items GROUP BY name;

--グループ化-件数
SELECT name, COUNT(price) FROM items GROUP BY name;

--グループ化-最大値
SELECT name, MAX(price) FROM items GROUP BY name;

--グループ化-最小値
SELECT name, MIN(price) FROM items GROUP BY name;

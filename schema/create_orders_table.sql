--注文テーブル作成
CREATE TABLE orders (
    id int AUTO_INCREMENT PRIMARY KEY NOT NULL,
    name VARCHAR(50) NOT NULL,
    price int NOT NULL,
    purchase_date timestamp default current_timestamp,
    user_id int NOT NULL
);

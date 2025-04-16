--商品テーブル作成
CREATE TABLE items (
    id int AUTO_INCREMENT PRIMARY KEY NOT NULL,
    name VARCHAR(50) NOT NULL,
    price int NOT NULL,
    purchase_date timestamp default current_timestamp,
    user_id int NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id)
)
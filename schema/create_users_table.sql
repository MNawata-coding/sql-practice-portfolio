--ユーザーテーブル作成
CREATE TABLE users (
  id int AUTO_INCREMENT not null primary key,
  name varchar(50),
  email varchar(50),
  role ENUM('USER', 'ADMIN'),
  created_by varchar(50),
  updated_by varchar(50),
  created_at timestamp default current_timestamp,
  updated_at timestamp default current_timestamp,
  delete_flg boolean 
);

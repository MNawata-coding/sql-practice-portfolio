CREATE TABLE reservation (
    id int AUTO_INCREMENT primary key,
    reservation_user_id int,
    reservation_day DATE,
    created_by varchar(50),
    updated_by varchar(50),
    created_at timestamp DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp DEFAULT CURRENT_TIMESTAMP,
    delete_flg boolean
)

--データはa5m2のダミーデータ機能で挿入


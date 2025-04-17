--reservationテーブルとusersテーブルをOUTER JOINで結合
SELECT * FROM reservation 
LEFT OUTER JOIN users 
ON reservation.reservation_user_id = users.id
WHERE users.id IS NULL;
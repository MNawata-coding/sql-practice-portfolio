## 💡 このリポジトリについて

MySQLの学習過程で作成した「データベース」「テーブル定義」などをまとめたものです。

## 関連Qiita記事
```
詳細な手順や学習記録はQiita記事にまとめています：
👉 [SQL学習入門 | SQL環境構築](https://qiita.com/suica1010/items/6ef7f1d30bb6c4243f77)
👉 [SQL学習入門 | 業務現場で使用されているA5:SQL Mk-2のセットアップ手順を解説してみた](https://qiita.com/suica1010/items/691e6eff4a6649fa7bb5)
👉 [SQL学習入門 | SQLでデータベース作成、テーブル作成を行ってみた](https://qiita.com/suica1010/items/8b7a1f75cdf0140fa62c)
👉 [SQL学習入門 | INSERT/SELECT/DELETE/UPDATE　基本構文を学習してみた](https://qiita.com/suica1010/items/f28774e16e7f589029ef)
👉 [SQL学習入門 | WHERE/ORDER BY/GROUP BY/HAVING　基本構文を学習してみた](https://qiita.com/suica1010/items/17ea0f22e1b6750984f1)
👉 [SQL学習入門 ｜ INNER JOINとOUTER JOINの違いを実例で解説](https://qiita.com/suica1010/items/ce76be2580faec9689d4)
👉 [SQL学習入門｜サブクエリを演習で習得](https://qiita.com/suica1010/items/eeb0831ed563816d1f83)
```
## 進捗
```
| 日付 | 学習内容 | 対応ファイル | 備考 | 進捗 |
|------|----------|----------------|------|
| 04/15 | INSERT/SELECT/UPDATE/DELETEの基本構文 | insert_users.sql / select_users.sql | Qiita記事あり（リンク下記） | 完了 |
| 04/16 | WHERE / ORDER BY / GROUP BY / HAVING | select_users.sql / create_items_table.sql | 集計・条件付き取得 | 完了 |
| 04/17 | JOIN + 集計関数予定 | 完了 |
| 04/18 | サブクエリ | 完了 |
```
## 仕様ツール
- A5:SQL Mk-2
- MySQL 8.x

## 📂 構成
```
├── schema/  # データベースやテーブルの作成定義（DDL）
│   ├── create_mysqlstudy_database.sql      # データベース作成
│   ├── create_users_table.sql              # usersテーブル作成
│   ├── create_orders_table.sql             # ordersテーブル作成
│   ├── create_items_table.sql              # itemsテーブル作成
│   └── create_reservation_table.sql        # reservationテーブル作成

├── queries/  # データ操作・演習用クエリ（DML/演習）
│   ├── insert_users.sql                    # usersテーブルへのデータ挿入（A5M2生成）
│   ├── insert_orders.sql                   # ordersテーブルへのデータ挿入
│   ├── select_users.sql                    # SELECT〜WHEREまでの基本クエリ
│   ├── select_items.sql                    # GROUP BY / HAVINGの演習クエリ
│   ├── select_orders.sql                   # サブクエリ演習
│   ├── select_reservation.sql              # reservationテーブル参照用クエリ
│   ├── update_users.sql                    # UPDATE構文練習
│   ├── delete_users.sql                    # DELETE構文練習（users）
│   ├── delete_items.sql                    # DELETE構文練習（items）
│   └── truncate_users.sql                  # データリセット用クエリ

├── README.md
```

## 🧠 今後の拡張予定

- パフォーマンスチューニング用のEXPLAINなど

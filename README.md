## 💡 このリポジトリについて

MySQLの学習過程で作成した「データベース」「テーブル定義」などをまとめたものです。

詳細な手順や学習記録はQiita記事にまとめています：
👉 [Qiita記事はこちら](https://qiita.com/suica1010/items/xxxxx)

## 進捗
| 日付 | 学習内容 | 対応ファイル | 備考 |
|------|----------|----------------|------|
| 04/16 | INSERT/SELECT/UPDATE/DELETEの基本構文 | insert_users.sql / select_users.sql | Qiita記事あり（リンク下記） |
| 04/16 | WHERE / ORDER BY / GROUP BY / HAVING | select_users.sql / create_items_table.sql | 集計・条件付き取得 |
| 04/17 | JOIN + 集計関数予定 | - | 次記事予定 |

## 仕様ツール
- A5:SQL Mk-2
- MySQL 8.x
- Qiitaで記録投稿中：[Qiitaリンクを貼る]

## 📂 構成

- `create_users_table.sql`：usersテーブル作成
- `insert_users.sql`：ダミーデータ挿入（A5M2生成用）
- `select_users.sql`：基本SELECT〜WHEREまで
- `delete_users.sql`：DELETE文
- `update_users.sql`：UPDATE文
- `create_items_table.sql`：商品テーブル（JOIN用）
- `select_items.sql`：GROUP BY/HAVING
- `truncate_users.sql`：ダミーデータリセット用

## 🧠 今後の拡張予定

- INNER JOIN/OUTER JOIN/集計関数
- パフォーマンスチューニング用のEXPLAINなど

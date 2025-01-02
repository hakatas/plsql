# 顧客管理システム

このプロジェクトは、顧客情報を管理するためのシンプルなシステムです。顧客の登録、更新、削除、検索が可能で、PL/SQLを使用して操作を実行します。

## 概要

本システムでは、顧客情報を以下の操作で管理します。

- 顧客情報の登録
- 顧客情報の更新
- 顧客情報の削除
- 顧客情報の検索

PL/SQLを使用して、Oracle Databaseで顧客情報を管理するプロシージャや関数を定義します。

## 必要な環境

- Oracle Database（ローカルもしくはクラウド）
- VS Code（任意）
- Oracle Developer Tools for VS Code（拡張機能）

## セットアップ手順

### 1. データベースの準備

1. Oracle Databaseをインストールまたはアクセスします。
2. 顧客テーブルと関連するプロシージャ・関数を作成するために、以下のSQLスクリプトを実行します。

   - `sql-scripts/create-tables.sql`: 顧客情報を保存するテーブルを作成
   - `sql-scripts/create-procedures.sql`: 顧客の登録、更新、削除を行うプロシージャを作成
   - `sql-scripts/create-functions.sql`: 顧客情報を検索する関数を作成

### 2. サンプルデータの挿入

`sql-scripts/insert-sample-data.sql` を実行して、サンプル顧客データを挿入します。

```sql
-- サンプルデータを挿入
BEGIN
    EXEC register_customer(1, 'John Doe', '123-456-7890', 'john.doe@example.com');
    EXEC register_customer(2, 'Jane Smith', '234-567-8901', 'jane.smith@example.com');
    EXEC register_customer(3, 'Alice Brown', '345-678-9012', 'alice.brown@example.com');
END;
/

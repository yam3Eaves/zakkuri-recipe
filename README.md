# README

## アプリ概要

### アプリ名
ざっくりレシピ

### アプリ説明
- 10分ほどで作れる簡単なレシピをテーマにしたアプリケーションです。
- ログインユーザーはレシピ投稿が可能です。
- ログインユーザーはコメントやお気に入りが可能です。
- ログインユーザーは自身のお気に入りリストから一覧できる。

### URL

### 利用方法
- 未ログイン状態→レシピの閲覧
- ログイン状態→レシピ投稿
- ログイン状態→レシピ詳細→コメントやお気に入り
- ログイン状態→お気に入りリストから確認

## 環境・使用技術

### バックエンド
- Ruby 2.6.5
- Rails 6.0.0

## テーブル設計

### usersテーブル

| Column | Type | Options |
|:-----------|------------:|:------------:|
| nickname | string | null: false |
| email | string | null: false, unique: true |
| password | string | null: false |
| last_name | string | null: false |
| first_name | string | null: false |
| last_name_kana | string | null: false |
| first_name_kana | string | null: false |
| birthday | date | null: false |



#### アソシエーション
- has_many :recipes


### recipesテーブル

| Column | Type | Options |
|:-----------|------------:|:------------:|
| recipe_name | string | null: false |
| explanation | text | null: false |
| material_1 | string | null: false |
| material_2 | string |  |
| material_3 | string |  |
| material_4 | string |  |
| material_5 | string |  |
| material_6 | string |  |
| material_7 | string |  |
| material_8 | string |  |
| material_9 | string |  |
| material_10 | string |  |
| material_1_amount | string | null: false |
| material_2_amount | string |  |
| material_3_amount | string |  |
| material_4_amount | string |  |
| material_5_amount | string |  |
| material_6_amount | string |  |
| material_7_amount | string |  |
| material_8_amount | string |  |
| material_9_amount | string |  |
| material_10_amount | string |  |
| how_to_make_1 | text | null: false |
| how_to_make_2 | text |  |
| how_to_make_3 | text |  |
| how_to_make_4 | text |  |
| how_to_make_5 | text |  |
| how_to_make_6 | text |  |
| how_to_make_7 | text |  |
| how_to_make_8 | text |  |
| how_to_make_9 | text |  |
| how_to_make_10 | text |  |
| point | text | null: false |
| user | references | null: false, foreign_key: true |

#### アソシエーション
- belongs_to :user
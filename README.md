# README

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|nickname|string|null: false|
|phonetic|string|null: false|
|user_image|string|
|introduction|text|


### Association
- has_many :comments
- has_many :items
- has_many :purchases
- has_one :address
- has_one :credit



## addressesテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|prefecture|string|null: false|
|city|string|null: false|
|house_number|string|null: false|
|post_code|integer|
|building|string|

### Association
- belongs_to :user




## creditsテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|customer_id|stringr|null: false|

### Association
- belongs_to :user



## itemsテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|status|string|limit: 1, default: 0, null: false|
|name|string|null: false|
|image|string|null: false|
|description|string|null: false|
|item_condition|integer|null: false|
|ship_from|integer|null: false|
|delivery_fee|integer|null: false|
|pre_date|integer|null: false|

### Association
- has_many :comments
- belongs_to :user
- has_one :parent_category
- has_one :value
- has_one :purchase



## parent_categoriesテーブル

|Column|Type|Options|
|------|----|-------|
|item_id|integer|null: false, foreign_key: true|
|large_category|integer|null: false|
|midium_category|integer|null: false|
|small_category|integer|null: false|

### Association
- belongs_to :item



## large_categoriesテーブル

|Column|Type|Options|
|------|----|-------|
|category_id|integer|null: false, foreign_key: true|
|name|string|null: false|


## midium_categoriesテーブル

|Column|Type|Options|
|------|----|-------|
|category_id|integer|null: false, foreign_key: true|
|name|string|null: false|


## small_categoriesテーブル

|Column|Type|Options|
|------|----|-------|
|category_id|integer|null: false, foreign_key: true|
|name|string|null: false|



## valuesテーブル

|Column|Type|Options|
|------|----|-------|
|item_id|integer|null: false, foreign_key: true|
|price|integer|null: false|
|profit|integer|null: false|


### Association
- belongs_to :item



## commentsテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|item_id|references|null: false, foreign_key: true|
|comment|text|


### Association
- belongs_to :user
- belongs_to :item


## purchasesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|item_id|references|null: false|

### Association
- belongs_to :user

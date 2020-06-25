# groups_userテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|intger|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

## Association
- belongs_to:group
- belongs_to:user

### userテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false, unique: true|
|password|intger|null: false|

#### Association
- has many:group
- has_many:chat

##### chatテーブル

|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|name|string|
|time|intger|

###### Association
-belongs_to:user
-belongs_to:group
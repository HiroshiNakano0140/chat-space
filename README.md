# DB設計

##groups_userテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|intger|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

## Association
- belongs_to:group
- belongs_to:user

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false|

## Association
- has many:groups, through: :groups_users
- belongs_to:groups_users
- has_many:messages

## messagesテーブル

|Column|Type|Options|
|------|----|-------|
|text|text|
|image|string|

## Association
- belongs_to:user_id
- belongs_to:group_id

## groupsテーブル

Column|Type|Options|
|------|----|-------|
|name|string|

## Association
- has_many:users, through: :groups_users
- belongs_to:groups_users
- has_many:masseges
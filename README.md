# DB設計

<<<<<<< Updated upstream
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
- has_many:groups_users
- has_many:messages

## messagesテーブル

|Column|Type|Options|
|------|----|-------|
|text|text|
|image|string|
|user_id|integer|null:false, foreign_key: true|
|groups_id|integer|null:false, foreign_key: true|

## Association
- belongs_to:user
- belongs_to:group

## groupsテーブル

Column|Type|Options|
|------|----|-------|
|name|string|null:false|

## Association
- has_many:users, through: :groups_users
- has_many:groups_users
- has_many:masseges
=======

>>>>>>> Stashed changes

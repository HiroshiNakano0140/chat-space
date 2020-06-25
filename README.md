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
|password|intger|null: false|

## Association
- has many:groups
- has_many:messages

## messagesテーブル

|Column|Type|Options|
|------|----|-------|
|message|text|null: false|
|name|string|
|time|intger|

## Association
- belongs_to:user
- belongs_to:group

## groupsテーブル

Column|Type|Options|
|------|----|-------|
|member|string|

## Association
- has_many:users
- has_many:masseges
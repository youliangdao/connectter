# テーブル設計

## users テーブル

| Column            | Type         | Options                        |
| --------          | ------------ | ------------------------------ |
| nickname          | string       | null: false                    |
| email             | string       | null: false                    |
| encrypted_password| string       | null: false                    |
| birth_date        | date         | null: false                    |
| introduction      | string       | null: false                    |

**Association**

* has_many :relationships
* has_many :letters
* has_many :followings, through: :relationships, source: :follow
* has_many :reverse_of_relationships, class_name: 'Relationship', foreign_key: 'follow_id'
* has_many :followers, through: :reverse_of_relationships, source: :user
* has_many :sent_messages, through: :messages, source: :receive_user
* has_many :reverses_of_message, class_name: 'Message', foreign_key: 'receive_user_id'
* has_many :received_messages, through: :reverses_of_message, source: :user


## relationships テーブル

| Column           | Type        | Options                      |
| -------------    | ----------- | ---------------------------- |
| user             | references  | null:false, foreign_key: true|
| follow           | references  | null:false, foreign_key: true|


**Association**

* belongs_to :user
* belongs_to :follow, class_name: 'User'

## letters テーブル

| Column        | Type       | Options                        |
| ---------     | ---------- | ------------------------------ |
| content       | string     | null: false                    |
| user          | references | null: false, foreign_key: true |
| receive_user  | references | null: false, foreign_key: true |
| design        | references | null: false, foreign_key: true |


**Association**

* has_many :designs
* belongs_to :user
* belongs_to :receive_user, class_name: 'User'

## designs テーブル

| Column       | Type         | Options                        |
| ------------ | ------------ | ------------------------------ |
| category     | references   | null: false, foreign_key: true |
| scene        | references   | null: false, foreign_key: true |

**Association**

* belogns_to :category
* belongs_to :scene
* belongs_to :recommend

## categories テーブル

| Column       | Type         | Options                        |
| ------------ | ------------ | ------------------------------ |
| name         | string       | null: false                    |

**Association**

* has_many :designs

## scenes テーブル

| Column       | Type         | Options                        |
| ------------ | ------------ | ------------------------------ |
| name         | string       | null: false                    |

**Association**

* has_many :designs






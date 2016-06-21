# API Definition

## Types

### user

|field|type|description|
|:---|:---|:---|
|id|integer|ユーザID|
|name|string|ユーザ名|
|password|string|パスワード|
|rarity|enum|レアリティ|

### user_authentication

|field|type|description|
|:---|:---|:---|
|name|string|ユーザ名|
|password|string|パスワード|

## Enums

### rarity

|name|value|
|:---|:---|
|normal|1|
|rare|2|
|super_rare|3|

## Errors

|error|code|description|
|:---|:---|:---|
|not_found|404|リンクが存在しない|
|authentication_error|403|認証失敗|

## APIs

### list_user

#### request

none

#### response

|field|type|description|options|
|:---|:---|:---|:---|
|user|user|ユーザ一覧|array: true|

### show_user

#### request

none

#### response

|field|type|description|options|
|:---|:---|:---|:---|
|user_authentication|user_authentication|作成するユーザの情報||

### create_user

#### request

|field|type|description|options|
|:---|:---|:---|:---|
|user|user|ユーザ||

#### response

|field|type|description|options|
|:---|:---|:---|:---|
|ok|boolean|作成に成功したか||

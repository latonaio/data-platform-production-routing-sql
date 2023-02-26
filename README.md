# data-platform-production-routing-sql

data-platform-production-routing-sql は、データ連携基盤において、作業手順データを維持管理するSQLテーブルを作成するためのレポジトリです。  

## 前提条件  
data-platform-production-routing-sql は、データ連携にあたり、API を利用し、本レポジトリ の sql 設定ファイルの内容は、下記 URL の API 仕様を前提としています。  
https://api.xxx.com/api/API_XXXXX_XXX/overview   

## sqlの設定ファイル

data-platform-production-routing-sql には、sqlの設定ファイルとして以下のsqlファイルが含まれています。  

* data-platform-production-routing-sql-header-data.sql（データ連携基盤 作業手順 - ヘッダデータ）
* data-platform-production-routing-sql-product-plant-data.sql（データ連携基盤 作業手順 - 製品プラントデータ）
* data-platform-production-routing-sql-sequence-text-data.sql（データ連携基盤 作業手順 - 順序テキストデータ）
* data-platform-production-routing-sql-operation-data.sql（データ連携基盤 作業手順 - 作業データ）
* data-platform-production-routing-sql-component-allocation-data.sql（データ連携基盤 作業手順 - 構成品目割当データ）
* data-platform-production-routing-sql-header-doc-data.sql（データ連携基盤 作業手順 - 文書データ)

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法

MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。
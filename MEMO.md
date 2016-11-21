# めも！
## Rails APIアプリケーションをつくる
```bash
gem update --system
gem inrall Rails

rails new [PROJECT_NAME] --api
```
  
## APIのコントローラーとかモデルをつくる
```bash
rails g scaffold hoges
```
  
## データベースのマイグレーション
```bash
rails db:migrate
```
  
## うごかす
```bash
rails s
```
  
## bundle installでnokogiri 1.6.8.1のインストールエラーがでた(mac)  
ref.[ここを参考に](http://stackoverflow.com/questions/39937394/gem-install-nokogiri-v-1-6-8-1-fails)  
```bash
xcode-select --install
```
でいけた

## seeds/hoges.ymlを編集した後は
```bash
rails db:reset
```
でいいっぽい（謎）
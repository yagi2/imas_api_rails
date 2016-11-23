# THE IDOLM@STER API Server [Ruby on Rails version]

[yagi2/imas_api](https://github.com/yagi2/imas_api)をRails5のAPIモードで書き直し（及び止まってた開発の続行）をやっていくリポジトリ
<br><br>
[やぎすけAdvent Calendar 2016](http://www.adventar.org/calendars/1800)のやっていく内容でもあります。  
RubyとRailsの習得トレーニングを兼ねてやっていこうという感じです。

# memo
## 記事を追加する時
```
git checkout -b article/ARTICLE_TITLE  
bundle exec middleman article "ARTICLE_TITLE"
# 書き終わったら
bundle exec middleman build
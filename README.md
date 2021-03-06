# README

Ruby on Railsで初めて作ったオリジナルなWebアプリです。

## 渇望記録(DesireRecords)

主に薬物・アルコール・ギャンブル等の依存症患者の渇望や気分の変化を記録するためのRails製Webアプリ。

### 現状UI

![https://wandering-engineer.tech/wp-content/uploads/%E3%82%B9%E3%82%AF%E3%83%AA%E3%83%BC%E3%83%B3%E3%82%B7%E3%83%A7%E3%83%83%E3%83%88-2020-02-05-8.08.18.png](https://wandering-engineer.tech/wp-content/uploads/%E3%82%B9%E3%82%AF%E3%83%AA%E3%83%BC%E3%83%B3%E3%82%B7%E3%83%A7%E3%83%83%E3%83%88-2020-02-05-8.08.18.png)

## 環境情報(environment infomation)

* Ruby on Rails version
    ruby 2.4.1p111 (2017-03-22 revision 58053) [x86_64-linux]
    Rails 5.2.3
* System dependencies
    * CentOS 6.8 で動作確認
* Configuration
    // TBD
* Database
    デフォルト sqlite3 を使用
* Database initialization

```
$ rake db:migrate
```

* How to run the test suite
    // not yet.
* Services (job queues, cache servers, search engines, etc.)
    // nothing* 
* Deployment instructions
    // TBD

## Run

```
$ bundle install
$ rake db:migrate
$ rails server -b 192.168.33.10
```

### 主に使用したGem

- [simple_calendar](http://excid3.github.io/simple_calendar/)
- [devise](https://github.com/plataformatec/devise)
- letter_opener_web
- webpacker

### 協力

- [医療法人碧水会 信濃病院](https://www.shinanohospital.com/)



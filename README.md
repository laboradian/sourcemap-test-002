本番Webサーバーで Source Map を使う実験
========================================

結論
------

- Source Map は本番環境で使うものではなさそう。
- あえて使うなら、変換前のファイルはローカルに置いて Web経由でアクセスできるようにしておき、Source Map では「http://localhost/」を使ってURLでファイルにアクセスできるようにするやり方がよい。


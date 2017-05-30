# TDD Exercise : FizzBuzz

以下の仕様を満たすプログラムをTDDを駆使して作成してください。

## 仕様
- コマンドラインをUIとするプログラム
- コマンドラインからプログラムを起動すると「メニューを選択してください」と表示したのち、メニューの項目を表示して「入力待ち状態」になる

### メニューの項目
- 1を入力
  - FizzBuzzをスタートする
- 2を入力
  - プログラムを起動してから実施したFizzBuzzで入力した値と、その結果の履歴を表示する
- 3を入力
  - FizzBuzzの結果の履歴をファイルに保存する
  - ファイルに永続化(ファイルのデータのフォーマットは特に指定しない)
- 4を入力
  - FizzBuzzの結果の履歴のファイルを読み込んで表示する
  - 過去に永続化したデータ
- 0を入力
  - プログラムを終了する
  - 0が入力されるまではプログラムは終了しない

### FizzBuzz の仕様
- コマンドライン上から「整数を入力してください」と出力し、そのご任意の整数を入力すると、それに対応した文字の出力を行う
- 以下のように対応している
  - 整数が3の倍数の場合はFizzと出力する
  - 整数が5の倍数の場合はBuzzと出力する
  - 整数が15の倍数の場合はFizzBuzzと出力する
  - 上記以外の整数の場合はその整数を出力する


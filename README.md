# eカードゲーム

## 概要
- 2020/6/19製作開始
- ruby単体でのゲーム制作記録になります。
- 福本伸行作「賭博黙示録カイジ」のEカード編に登場する、カイジvs利根川の[Eカード](https://ja.wikipedia.org/wiki/%E8%B3%AD%E5%8D%9A%E9%BB%99%E7%A4%BA%E9%8C%B2%E3%82%AB%E3%82%A4%E3%82%B8#E%E3%82%AB%E3%83%BC%E3%83%89)を表現してみました。
- 原作リスペクトではありますが二次創作物になります。
- 原作での登場人物名や貨幣単位名称は使用しておりません。
- 原作でのカードの名称、カード間の強弱関係は使用しております。
- ゲーム進行やゲーム設計は簡素化しております。
- 視力や聴力は失いません。
- 心拍数/体温/発汗などは測定できません。
- 針や焼き土下座は登場しません。
- github上でソースコードは一般公開しておりますが、著作権上の問題が生じる場合には公開範囲を限定しますので、[製作者](https://twitter.com/Growingplant3)まで連絡頂けますようお願い致します。
<br>**TODO**<br>
- 完成日を記述

## ゲーム進行
0. $ ruby game.rbでゲーム開始
1. ゲームの流れについて説明する
2. 現在のターンを表示する
3. カードを選択する(市民もしくは奴隷のカードを選ぶ)
<br>3-1. 引き分け(市民vs市民) → 3に戻る
<br>3-2. 負け(市民vs皇帝) → 4に進む
<br>3-3. 勝つ(奴隷vs市民) → 5に進む
4. バッドエンド → 6に進む
5. トゥルーエンド → 6に進む
6. リトライについて確認する
<br>6-1. yes  →  1に戻る
<br>6-2. no → ゲーム終了

## ゲーム設計
- Participantクラス
  - player/enemyインスタンスを生成
  - name/deckプロパティを持つ
  - nameプロパティは初期化の際に自動入力する
  - playerインスタンスはdeckプロパディに、@player_deckを保持する
  - enemyインスタンスはdeckプロパティに、@enemy_deckを保持する
- Deckクラス
  - player_deck/enemy_deckインスタンスを生成
  - cardsプロパティを持つ
  - player_deckインスタンスはcardsプロパティに、@player_cardsを保持する
  - enemy_deckインスタンスはcardsプロパティに、@enemy_cardsを保持する
  - mixメソッドにより、@enemy_cardsをランダム化する
  - @player_cards変数(配列)に、citizen/slaveインスタンスを格納する
  - @enemy_cards変数(配列)に、emperor/citizenインスタンスを格納する
- Cardクラス
  - emperor/citizen/slaveインスタンスを生成
  - name/typeプロパティを持つ
  - name/typeプロパティは初期化の際に自動入力する
- Matchクラス
  - matchインスタンスを生成
  - turnプロパティを持つ
  - turnプロパティは初期化の際に自動入力する
  - turn_passメソッドにより、@turnに1ずつ加える
- Gameクラス
  - ゲームの進行を司る
  - 「現状」メソッドにより、ゲーム開始までの流れを説明する文章を返す
  - 「説明」メソッドにより、ゲームの流れを説明する文章を返す
  - initializeメソッドにより、ゲームに必要なインスタンスの初期化を行う
  - 「確認」メソッドにより(gets.chompを使って)、ゲーム説明をもう一度出力するかの文章を返す
    - 「状況」メソッドにより、@turnと@enemy_cardsを返す（例：第3ターン、相手の残りカードは"皇帝"が1枚で"市民"が2枚です）
    - 「選択」メソッドにより(gets.chompを使って)、プレイヤーにカード選択の文章を返す
    - use_cardメソッドにより、@player_cardsから、プレイヤーが選択したカード(要素)を1枚減らす
    - use_cardメソッドにより、@enemy_cardsから、先頭のカード(要素)を1枚減らす
    - 「判定」メソッドにより、cardインスタンスの強弱を判定し、引き分け/負け/勝ちを返す
  - 「負け」メソッドにより、「状況」→「選択」→「判定」のループを抜けて、ゲームオーバーの文章を返す
  - 「勝ち」メソッドにより、「状況」→「選択」→「判定」のループを抜けて、ゲームクリアの文章を返す
  - 「再開」メソッドにより(gets.chompを使って)、ゲーム再開するかの文章を返す
  - 「現状」→・・・→「再開」メソッドのループを続ける、もしくは抜ける
<br>**TODO**<br>
メソッド名が決まったら埋める

## テスト
minitestを使用して作成しました
<br>**TODO**
<br>単体テストや統合テスト？に関しての実行コードを記述

## 学び
classやアクセサを使ってみました。
**TODO**

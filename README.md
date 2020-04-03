# CKinterp
## 環境
- gfortran
## 必要なデータベースファイル（data/）
|ファイル名|内容|
|:---|:---|
|KUCRS_iC7_chem.inp|詳細化学反応機構ファイル|
|thermdat|熱力学データベースファイル|
## 出力されるもの（output/）
|ファイル名|内容|
|:---|:---|
|ckout|結果確認用アウトプットファイル|
|cklink|次の反応解析で使用されるバイナリファイル|
## 使用方法
例としてKUCRSのn-Heptaneに対する反応機構を用いる．他のファイルを使用する（ファイル名が異なる）場合には，留意事項1を参照
1. 必要ファイルをdata以下に配置（例として配置済み）
3. 必要ファイルを準備してターミナルで以下を実行．ckinterpeが出力される
```bash
$ bash script/compile.sh
```
3. ckinterpeを実行．output以下にファイルが出力される
```bash
$ ./ckinterpe
```
4. output以下に生成されるckoutでエラーの有無を確認．  
5. `output/cklink`を反応解析（SENKIN, PREMIXなど）を行うフォルダにコピーして使用（留意事項2）

## 留意事項

1. 詳細化学反応機構を`KUCRS_iC7_chem.inp`以外のものを使用したい際には，スクリプト上での読み込み対象を変更するために`script/comlipe.sh`を編集する．以下の箇所のコピーされる側を試用したいファイルの名前に変更
```
cp data/KUCRS_iC7_chem.inp data/mech
```
2. cklinkをコピーする際には，ckoutとともに行うことを推奨．cklinkはバイナリファイルで人が読めないので，後で見返した際にどの反応を利用したか分からなくなってしまう．
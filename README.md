# makemydist
現在の環境をLinuxディストリビューションとして配布出来るようにします

## 使い方
`bash ./makemy-dist.sh`

でスクリプトを実行します。あとは自動的に設定ファイルのコピー、クリーンアップ、iso生成を実行します。予めOSの名前を変更してください。

### OS名の変更方法
`/usr/lib/os-release`
上記のパスにあるファイルの `PRETTY_NAME` の項目を自分のOSの名前に変更します。それ以外の場所を変えると正常に作動しなくなる可能性があるので注意して下さい。

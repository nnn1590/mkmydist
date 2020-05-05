# mkmydist
現在の環境をLinuxディストリビューションとして配布出来るようにします

## 依存関係
PinguyBuilderがインストールされている必要があります。　

Debian GNU/LinuxベースのGNU/Linux用のリンク(例えばUbuntu):
- PinguyBuilderに必要なxresprobeのダウンロード: https://launchpad.net/ubuntu/+source/xresprobe/0.4.24ubuntu9/+build/1274262/+files/xresprobe_0.4.24ubuntu9_amd64.deb
- PinguyBuilderのダウンロード: https://sourceforge.net/projects/pinguy-os/files/ISO_Builder/pinguybuilder_5.2-1_all.deb/download

## 使い方
`bash ./makemy-dist.sh`を実行します。
あとは自動的に設定ファイルのコピー、クリーンアップ、iso生成を実行します。予めOSの名前を変更してください。

### OS名の変更方法
`/usr/lib/os-release`の `PRETTY_NAME` の項目を自分のOSの名前に変更します。それ以外の場所を変えると正常に作動しなくなる可能性があるので注意して下さい。

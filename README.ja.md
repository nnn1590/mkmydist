# mkmydist
現在の環境をGNU/Linuxディストリビューションとして配布出来るようにします

## 依存関係
PinguyBuilderがインストールされている必要があります。　
Ubuntu 20.04の場合、依存関係をさらに取得する必要があります。

UbuntuベースのGNU/Linux用のリンク:
- PinguyBuilderに必要なxresprobeのダウンロード: https://launchpad.net/ubuntu/+source/xresprobe/0.4.24ubuntu9/+build/1274262/+files/xresprobe_0.4.24ubuntu9_amd64.deb
- PinguyBuilderのダウンロード: https://sourceforge.net/projects/pinguy-os/files/ISO_Builder/pinguybuilder_5.2-1_all.deb/download

## 使い方
`./makemy-dist.sh [ISO名]`を実行します。
あとは自動的に設定ファイルのコピー、クリーンアップ、iso生成を実行します。予めOSの名前を変更してください。
ISO名が指定されていない場合、名前は`mydist.iso`になります。
完成すると`/home/PinguyBuilder/PinguyBuilder`ディレクトリ内にisoファイルがあります。

### ディストロ名の変更方法
`/usr/lib/os-release`の`PRETTY_NAME`の項目を自分のOSの名前に変更します。それ以外の場所を変えると正常に作動しなくなる可能性があるので注意して下さい。

## ライセンス
Copyright (C) nexryai
Copyright (C) 2020 nexryai
GNU 一般公衆利用許諾書 バージョン3/GNU General Public License v3.0 or later(GPL-3.0-or-later)

USBメモリ内の音楽フォルダーを、Mercedes-Benz MBUXで選べる .m3u プレイリストへ自動変換するWindows用ツールです。

MBUXでフォルダーから曲を選んだつもりなのに、シャッフルするとUSB全体へ飛んでしまう場合などに、再生範囲をプレイリストとして固定する目的で使います。

非公式のコミュニティ向けツールです。Mercedes-Benzとは無関係です。

使い方
USBメモリの一番上（ルート）へ、次の2ファイルをコピーします。
MBUX-Folder-Playlists.bat
MBUX-Folder-Playlists.ps1
Windows PCで MBUX-Folder-Playlists.bat をダブルクリックします。
モードを選びます。
1 = そのフォルダー直下の曲だけ
2 = そのフォルダー以下のサブフォルダーも全部含める
Done と表示されたらUSBを安全に取り外します。
GLBなどのMBUXへUSBを接続します。
メディア → USB → カテゴリー / プレイリストから MBUX - ... を選択します。
あとはMBUX側でランダム再生、またはリピートをONにします。
生成例
USB内がこうなっている場合：

USB
├─ 80年代
│  ├─ song01.mp3
│  └─ song02.mp3
├─ ドライブ用
│  ├─ song03.mp3
│  └─ song04.flac
├─ MBUX-Folder-Playlists.bat
└─ MBUX-Folder-Playlists.ps1
実行後はUSBルートに次のようなファイルができます。

MBUX - 80年代.m3u
MBUX - ドライブ用.m3u
MBUX - ALL USB.m3u
MBUX - ドライブ用.m3u をMBUXで選んでランダム再生すれば、MBUXがそのプレイリストを「現在の再生リスト」として扱うことを狙った仕組みです。

安全設計
元の音楽ファイルは変更しません。
ユーザーが自分で作ったM3Uも変更しません。
このツールが削除・再生成するのは、USBルートにある MBUX -  で始まる .m3u / .m3u8 だけです。
ドライブレター（D:、E:など）をプレイリストへ書かないため、PCと車でドライブ名が変わっても影響しません。
日本語ファイル名に対応するためUTF-8で書き出します。
対象拡張子
初期設定では以下を音楽ファイルとして検索します。

mp3 / m4a / aac / flac / wav / wma / ogg / opus

実際に再生できる形式は車両・MBUX世代によって異なります。

免責
MBUXの世代やソフトウェア更新によって挙動が異なる可能性があります。まずはUSBのバックアップを取ったうえで利用してください。

ライセンス
MIT License

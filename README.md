MBUX Folder Playlists

This is a Windows tool that automatically converts music folders on a USB flash drive into .m3u playlists that can be selected in Mercedes-Benz MBUX.

It is intended for situations where, for example, you select songs from a folder in MBUX, but enabling shuffle causes playback to jump to tracks across the entire USB drive. By using playlists, the tool aims to keep playback limited to the desired folder.

This is an unofficial community tool and is not affiliated with Mercedes-Benz.


HOW TO USE

1. Copy the following two files to the top level (root) of your USB flash drive:

MBUX-Folder-Playlists.bat
MBUX-Folder-Playlists.ps1

2. On a Windows PC, double-click:

MBUX-Folder-Playlists.bat

3. Select a mode:

1 = Include only music files directly inside each folder
2 = Include music files in each folder and all of its subfolders

4. When "Done" is displayed, safely eject the USB drive.

5. Connect the USB drive to an MBUX-equipped vehicle, such as a GLB.

6. Go to:

Media → USB → Categories / Playlists

and select a playlist named:

MBUX - ...

7. Enable Shuffle or Repeat in MBUX as desired.


EXAMPLE

If your USB drive looks like this:

USB
├─ 80s
│  ├─ song01.mp3
│  └─ song02.mp3
├─ Driving
│  ├─ song03.mp3
│  └─ song04.flac
├─ MBUX-Folder-Playlists.bat
└─ MBUX-Folder-Playlists.ps1

After running the tool, files such as the following will be created in the USB root:

MBUX - 80s.m3u
MBUX - Driving.m3u
MBUX - ALL USB.m3u

For example, if you select "MBUX - Driving.m3u" in MBUX and enable shuffle, the idea is that MBUX will treat that playlist as the current playback queue, keeping shuffle within that playlist.


SAFETY FEATURES

The tool does not modify your original music files.

It also does not modify M3U playlists that you created yourself.

The only files that this tool deletes and regenerates are .m3u / .m3u8 files in the USB root whose names begin with:

MBUX -

Drive letters such as D: or E: are not written into the playlists, so it does not matter if the drive letter changes between your PC and the vehicle.

Playlists are written in UTF-8 to support Japanese and other non-ASCII file names.


SUPPORTED FILE EXTENSIONS

By default, the tool searches for the following audio file types:

mp3 / m4a / aac / flac / wav / wma / ogg / opus

The formats that can actually be played depend on the vehicle and MBUX generation.


DISCLAIMER

Behavior may vary depending on the MBUX generation and software version.

Please make a backup of your USB drive before using this tool.


LICENSE

MIT License

=================================================================================================

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

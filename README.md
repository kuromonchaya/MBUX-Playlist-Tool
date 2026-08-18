# MBUX Folder Playlists

[日本語版はこちら](#日本語)

A lightweight Windows tool that converts music folders on a USB flash drive into `.m3u` playlists for Mercedes-Benz MBUX.

When MBUX shuffle playback jumps from the selected folder to music elsewhere on the USB drive, this tool helps keep playback inside a playlist generated for that folder.

> This is an unofficial community tool and is not affiliated with or endorsed by Mercedes-Benz.

## Features

- Creates one playlist for every music folder on the USB drive
- Offers direct-folder and recursive modes
- Also creates an optional playlist containing all music on the USB drive
- Uses relative paths, so changing the USB drive letter does not matter
- Supports Japanese and other non-ASCII filenames with UTF-8 output
- Never modifies the original music files
- Never deletes playlists created by the user

## Files

- `MBUX-Folder-Playlists.bat` — launcher and mode selector
- `MBUX-Folder-Playlists.ps1` — playlist generator

## How to use

1. Copy both files to the top level (root) of your USB flash drive.
2. On a Windows PC, double-click `MBUX-Folder-Playlists.bat`.
3. Select a mode:
   - `1` — include only music files directly inside each folder
   - `2` — include music files inside each folder and all of its subfolders
4. When `Done` appears, safely eject the USB drive.
5. Connect the USB drive to your MBUX-equipped vehicle.
6. Open **Media → USB → Categories / Playlists** and select a playlist beginning with `MBUX - `.
7. Enable Shuffle or Repeat in MBUX as desired.

## Example

Before running the tool, the USB drive might look like this:

```text
USB
├─ 80s
│  ├─ song01.mp3
│  └─ song02.mp3
├─ Driving
│  ├─ song03.mp3
│  └─ song04.flac
├─ MBUX-Folder-Playlists.bat
└─ MBUX-Folder-Playlists.ps1
```

After running the tool, these playlists are created in the USB root:

```text
MBUX - 80s.m3u
MBUX - Driving.m3u
MBUX - ALL USB.m3u
```

For example, selecting `MBUX - Driving.m3u` and enabling Shuffle is intended to keep randomized playback within the Driving playlist.

## Supported audio extensions

The default configuration searches for:

```text
mp3 / m4a / aac / flac / wav / wma / ogg / opus
```

Actual playback support depends on the vehicle and MBUX generation.

## Safety

- Original music files are not changed.
- User-created `.m3u` or `.m3u8` playlists are not changed.
- The tool only deletes and regenerates playlists in the USB root whose names begin with `MBUX - `.
- Drive letters such as `D:` or `E:` are not written into playlists.
- Back up the USB drive before first use.

## License

MIT License. See [LICENSE](LICENSE).

---

## 日本語

USBメモリ内の音楽フォルダーを、Mercedes-Benz MBUXで選択できる `.m3u` プレイリストへ自動変換する軽量なWindows用ツールです。

MBUXでフォルダーから曲を選んでも、シャッフル再生するとUSB全体の別フォルダーへ移動してしまう場合に、再生範囲をフォルダー単位のプレイリストとして固定する目的で使用します。

> 非公式のコミュニティ向けツールであり、Mercedes-Benzとは無関係です。

### 主な機能

- USB内の音楽フォルダーごとにプレイリストを作成
- 直下のみ／サブフォルダーを含む、2つの検索モード
- USB内の全楽曲をまとめたプレイリストも作成可能
- 相対パスを使うため、USBのドライブ文字が変わっても利用可能
- UTF-8出力により日本語などのファイル名に対応
- 元の音楽ファイルは変更しない
- ユーザーが作成したプレイリストは削除しない

### ファイル構成

- `MBUX-Folder-Playlists.bat` — 起動とモード選択
- `MBUX-Folder-Playlists.ps1` — プレイリスト生成本体

### 使い方

1. 次の2ファイルをUSBメモリの一番上（ルート）へコピーします。
2. Windows PCで `MBUX-Folder-Playlists.bat` をダブルクリックします。
3. モードを選びます。
   - `1` — 各フォルダー直下の音楽ファイルだけを含める
   - `2` — 各フォルダーと、その配下のサブフォルダーにある音楽も含める
4. `Done` と表示されたら、USBを安全に取り外します。
5. USBをMBUX搭載車へ接続します。
6. **メディア → USB → カテゴリー / プレイリスト**を開き、`MBUX - `で始まるプレイリストを選択します。
7. 必要に応じてMBUX側でシャッフル再生またはリピートを有効にします。

### フォルダー構成例

実行前のUSBが次の構成だった場合：

```text
USB
├─ 80年代
│  ├─ song01.mp3
│  └─ song02.mp3
├─ ドライブ用
│  ├─ song03.mp3
│  └─ song04.flac
├─ MBUX-Folder-Playlists.bat
└─ MBUX-Folder-Playlists.ps1
```

実行後、USBのルートに次のプレイリストが作成されます：

```text
MBUX - 80年代.m3u
MBUX - ドライブ用.m3u
MBUX - ALL USB.m3u
```

たとえば `MBUX - ドライブ用.m3u` を選択してシャッフル再生すると、ドライブ用プレイリスト内でのランダム再生を維持することを狙った仕組みです。

### 対応する音楽ファイル

初期設定では次の拡張子を検索します：

```text
mp3 / m4a / aac / flac / wav / wma / ogg / opus
```

実際に再生できる形式は、車両およびMBUXの世代によって異なります。

### 安全設計

- 元の音楽ファイルは変更しません。
- ユーザーが作成した `.m3u`／`.m3u8` プレイリストは変更しません。
- 削除・再生成するのは、USBルートにある `MBUX - `で始まるプレイリストだけです。
- `D:`や`E:`などのドライブ文字はプレイリストへ書き込みません。
- 初回利用前にUSBのバックアップを取ってください。

### ライセンス

MIT License. 詳細は[LICENSE](LICENSE)をご覧ください。


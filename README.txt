Corona 128x

日本語文章は以下

～開発速度が10倍速い？まだ足りないね！その128倍速くしてやる！！～

I.前文 ～開発理由とコンセプト～
Corona SDKはとても優秀なスマートフォンアプリ開発ツールです。特にゲームを作るのに向いています。
しかし、ほぼすべての開発はLuaコードで行われるために、
以下に挙げるゲームにおいて分割されるべきであると私が考える3つのことが、Luaコード上で混ざってしまいます。
*定義
*生成
*挙動
これらは分割され記述されるべきだと私は考えました。それらを実現しようとして作られたのが Corona 128x です。
Corona 128x ではユーザは定義ファイルを記述し、それをマネージャに読み込ませます。
それにより、定義と生成はより分割され、コードの品質が良くなるでしょう。それは開発をより加速するはずです。
挙動は、定義に付属することになりますが、これは容易に分割が可能です。この課題をどうするかはユーザに任せます。
定義ファイルにまとめて記述しても良いでしょうし、分割をさらに推し進めても良いでしょう。
定義ファイルのほとんどはテーブルの記述が占めます。
これにより、将来はコード生成ツールによる開発支援がより現実的になると私は考えています。
また今後はビジュアルなコード生成ツールを制作しようとも考えています。
これはデザイナが直感的にゲーム画面を制作し、それをそのままコードとして実行ができるということです。
なんにせよ、 Corona 128x は私とユーザのアプリ開発を加速するために制作されていきます。

II.現在の構成
・ComponentsManager フォルダ
現在の Corona 128x の本体といえる部分です。本フォルダ内のDisplayComponentManagerをロードすることで、
Corona 128x の機能が使えるようになります。

・Components フォルダ
テスト用にコンポーネント定義が含まれています。

・Image フォルダ
テスト用のコンポーネント定義ファイルが呼び出す画像フォルダです

・build.settings , config.lua
Corona SDK用の設定ファイルです

・main.lua
Coroan SDKが呼び出すアプリケーションエントリポイントです。

・game.lua
テスト用・デモ用コードでありmain.luaから呼び出され、テスト用のコンポーネント定義を呼び出して画面に出力させます。
このコードとテスト用コンポーネント定義ファイルを見ることで、ある程度使用方法がわかるはずです

III.利用方法
頑張って書いています。ちょっと待ってね！


English document is under here

~10x faster? Not enough! Speed up 128x that!!~

I.Why develop this code and concept
Corona SDK is very strong library.It's specialized for game development.
But all development is on Lua code.Because 3 things is mixed that should split on game development I think.
3 things is here
*Definition
*Generate
*Behavior
These should split on game development.So, I developed Corona 128x.
On Corona 128x,library user write definition code and loaded it.
Definiton is splited Generate on this style.Then, we hope that gradeup code quality and accelerate development.

II.Program Structure
・Folder:ComponentsManager
Currently, It is main body Corona 128x.
You could use Corona 128x function to load DisplayComponentManager in this folder.

・Folder:Components
This folder contained component definition for test use.
To read .lua in this folder,You get how to write your definition code.

・Folde:Image
Image is loaded by .lua in Folder:Components.

・build.settings , config.lua
Configuration file for Corona SDK.

・main.lua
Corona SDK call this file as pplication entry point.

・game.lua
This file is test and demonstration code.Call from main.lua.
This file load .lua in Folder:Components.
You get this library usage to read this file.

III.Usage
Please wait a few time...I'm writing now.
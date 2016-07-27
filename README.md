# 環境
$ cat /etc/lsb-release  
DISTRIB_ID=Ubuntu  
DISTRIB_RELEASE=16.04  
DISTRIB_CODENAME=xenial  
DISTRIB_DESCRIPTION="Ubuntu 16.04.1 LTS"  

ただし、emacs24.5.1を入れた時に  
$ sudo apt install libgtk2.0-dev libtiff5-dev libgif-dev libjpeg-dev libpng12-dev libxpm-dev libncurses-dev  
としている。

# emacsインストール
$ cd  
$ pwd  
/home/masakihiromoto  
$ mkdir local  
$ cd local  
$ mkdir emacs  
$ wget -O- ftp://alpha.gnu.org/gnu/emacs/pretest/emacs-25.1-rc1.tar.xz | tar xJf -  
$ cd emacs-25.1  
$ ./configure --prefix=$HOME/local/emacs  
$ make -j4  
$ make install -j4  

インストール完了

## 起動方法
### その1
GUI  
$ emacs
### その2
ターミナル  
$ emacs -nw  

## バージョン確認
$ emacs --version
GNU Emacs 25.1.1  
Copyright (C) 2016 Free Software Foundation, Inc.   
GNU Emacs comes with ABSOLUTELY NO WARRANTY.  
You may redistribute copies of GNU Emacs  
under the terms of the GNU General Public License.  
For more information about these matters, see the file named COPYING.  

前のバージョンだが、日本語マニュアルは  
https://ayatakesi.github.io/emacs/24.5/emacs.html  
にある。


# gitを使ったバックアップ
$ cd  
/home/masakihiromoto  
$ cd .emacs.d  
$ git init  
$ git touch README.md .gitignore  
$ git add.  
$ git commit -m 'commit'  
githubでリポジトリを作成  
$ git remote add origin https://github.com/hiromotomasaki/.emacs.d.git  
$ git push -u origin master  

以後、更新は  
$ git add .  
$ git commit -m 'commit'  
$ git push  

cloneしたいときは  
$ cd  
$ pwd  
/home/masakihiromoto  
$ git clone https://github.com/hiromotomasaki/.emacs.d  

# emacsの設定
参考 : http://tarao.hatenablog.com/entry/20150221/1424518030  

## .emacs.d内のフォルダの作成
$ cd  
$ pwd  
/home/masakihiromoto  
$ cd .emacs.d  
$ mkdir init-loader init insert recipes 
$ touch init.el  

## この時点での.emacs.d内の構成
$ cd  
$ pwd  
/home/masakihiromoto  
$ cd .emacs.d  
$ tree -la  
.  
├── .git  
│   ├── COMMIT_EDITMSG  
│   ├── HEAD  
│   ├── branches  
│   ├── config  
│   ├── description  
│   ├── hooks  
│   │   ├── applypatch-msg.sample  
│   │   ├── commit-msg.sample  
│   │   ├── post-update.sample  
│   │   ├── pre-applypatch.sample  
│   │   ├── pre-commit.sample  
│   │   ├── pre-push.sample  
│   │   ├── pre-rebase.sample  
│   │   ├── prepare-commit-msg.sample  
│   │   └── update.sample  
│   ├── index  
│   ├── info  
│   │   └── exclude  
│   ├── logs  
│   │   ├── HEAD  
│   │   └── refs  
│   │       ├── heads  
│   │       │   └── master  
│   │       └── remotes  
│   │           └── origin  
│   │               └── master  
│   ├── objects  
│   │   ├── 3b  
│   │   │   └── bfcd7b78f466bd6c58de300b2104023eb0e042  
│   │   ├── 79  
│   │   │   ├── 0e1c4d90227e4cb1fbaca37fb41e91135499fe  
│   │   │   └── 147e96acfbe0a8d0388dbdb6f4b6d197fcfd77  
│   │   ├── e6  
│   │   │   └── 9de29bb2d1d6434b8b29ae775ad8c2e48c5391  
│   │   ├── info  
│   │   └── pack  
│   └── refs  
│       ├── heads  
│       │   └── master  
│       ├── remotes  
│       │   └── origin  
│       │       └── master  
│       └── tags  
├── .gitignore  
├── README.md  
├── init  
├── init-loader  
├── init.el  
├── insert  
└── recipes  

24 directories, 27 files  







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
$ githubでリポジトリを作成  
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
git clone https://github.com/hiromotomasaki/.emacs.d.git  

# emacsの設定




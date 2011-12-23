pathogen.vim
autoload/
bundle/以下にプラグインをまとめられる

-----------------------------------
CakePHP プラグイン
http://d.hatena.ne.jp/naberon/20100505/1273075922

インサートモードでのsurroundコマンド
コマンド	コード
<C-g>s-	＜?php _; ?＞
<C-g>s=	＜?php echo
 $_; ?＞
<C-g>sh	＜?php echo h( $_ ); ?＞
<C-g>sf	＜?php foreach ($_ as $val): ?＞＜?php endforeach; ?＞
<C-g>s#	＜?php # _; ?＞
<C-g>s/	＜?php // _; ?＞
---------------------------------
ref.vim
PHPmanual (動かん・・・)
使用　SHIFT+k
----------------------------------
PHP lint
debuger.vim
使用 ,l
----------------------------------
Unite.vim
現在のディレクトリのファイルの一覧が
  Unite file -buffer-name=file
ディレクトリの下の一覧
  UniteWithBufferDir file -buffer-name=files
最近開いたファイル
  Unite file_mru
カレントディレクトリで絞り込んだ最近開いたファイルを見る
  UniteWithCurrentDir file_mru
------------------------------------
neocomplcache
オートコンプリート
------------------------------------
xdebug
使い方いまいちわからん
------------------------------------
phplint
,l　でlintできる
------------------------------------
vim-quickrun
vimで編集中にファイルを実行できる
\+r

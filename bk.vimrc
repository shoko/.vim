filetype on 
filetype plugin on 
set termencoding=utf-8 
set encoding=utf8
set fileencodings=iso-2022-jp,sjis,euc-jp
set fileformat=unix 
syntax enable
set backspace=indent,eol,start

let g:neocomplcache_enable_at_startup = 1
let g:ref_phpmanual_path = $HOME . '/phpmanual'

autocmd BufNewFile,BufRead *.ctp set filetype=php

" html 作成時に
autocmd BufNewFile *.html 0r ~/.vim/templates/skel.html

" pathogen plugin
call pathogen#runtime_append_all_bundles()

" <status line>
set laststatus=2 " 常にステータスラインを表示
set statusline=%<%F\ %r%h%w%y%{'['.(&fenc!=''?&fenc:&enc).'\|'.&ff.']'}\ \ %l/%L\ (%P)%m%=%{strftime(\"%Y/%m/%d\ %H:%M\")} 

" <basic>
set nobackup                   " バックアップ取らない
set vb t_vb=                   " ビープをならさない

" <indent>
set tabstop=4
set expandtab     " tab をスペースに展開
set shiftwidth=4  " 自動インデントの幅

" Tabs
nnoremap <Space>t t
nnoremap <Space>T T
nnoremap t <Nop>
nnoremap <silent> tc :<C-u>tabnew<CR>:tabmove<CR>
nnoremap <silent> tk :<C-u>tabclose<CR>
nnoremap <silent> tn :<C-u>tabnext<CR>
nnoremap <silent> tp :<C-u>tabprevious<CR>

"unite
nnoremap <silent> <C-r>  :<C-u>Unite file_mru<CR>
nnoremap <silent> <C-n>  :<C-u>Unite buffer <CR>
nnoremap <silent> <Leader>ub :<C-u>Unite buffer <CR>
nnoremap <silent> <Leader>uf :<C-u>Unite file<CR>
nnoremap <silent> <Leader>ub :<C-u>Unite bookmark<CR>
nnoremap <silent> <Leader>ubf  :<C-u>Unite buffer file_mru bookmark file<CR>
nnoremap <Leader>ufi  :<C-u>Unite file_rec -input=
autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()
 imap <buffer> jj <Plug>(unite_insert_leave)
  imap <buffer> <C-j> <Plug>(unite_exit)
  imap <buffer> <ESC> <Plug>(unite_exit)
  imap <buffer> <C-o> <Plug>(unite_insert_leave):<C-u>call unite#mappings#do_action('above')<CR>
endfunction

"zen coding
let g:user_zen_expandabbr_key = '<c-e>'  

" FuzzyFinder.vim
" 以下FuzzyFinder設定
" "set showtabline=2
" ""nnoremap <Space>f f
""nnoremap <Space>F F
""nnoremap f <Nop>
""nnoremap <silent> fb :<C-u>FuzzyFinderBuffer!<CR>
""nnoremap <silent> ff :<C-u>FuzzyFinderFile! <C-r>=expand('%:~:.')[:-1-len(expand('%:~:.:t'))]<CR><CR>
""nnoremap <silent> fm :<C-u>FuzzyFinderMruFile!<CR>
""nnoremap <silent> tb :<C-u>tabnew<CR>:tabmove<CR>:FuzzyFinderBuffer!<CR>
""nnoremap <silent> tf :<C-u>tabnew<CR>:tabmove<CR>:FuzzyFinderFile! <C-r>=expand('#:~:.')[:-1-len(expand('#:~:.:t'))]<CR><CR>
""nnoremap <silent> tm :<C-u>tabnew<CR>:tabmove<CR>:FuzzyFinderMruFile!<CR>


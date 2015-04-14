if has('vim_starting')
   set nocompatible               " Be iMproved

   " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

 " Required:
 " call neobundle#rc(expand('~/.vim/bundle/'))
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" NeoBundle 'Shougo/neosnippet.vim'
" NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'mattn/emmet-vim.git'
" NeoBundle 'tpope/vim-fugitive'
" NeoBundle 'kien/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundleLazy 'alpaca-tc/vim-endwise.git', {
      \ 'autoload' : {
      \   'insert' : 1,
      \ }}
NeoBundle 'tpope/vim-commentary.git'
"NeoBundle 'kana/vim-textobj-entire'
"NeoBundle 'yaasita/ore_markdown', {
"      \ 'build' : {
"      \     'windows' : 'bundle install --gemfile .\bin\Gemfile',
"      \     'mac' : 'bundle install --gemfile ./bin/Gemfile',
"      \     'unix' : 'bundle install --gemfile ./bin/Gemfile'
"      \    },
"      \ }

" You can specify revision/branch/tag.
" NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

call neobundle#end()

" 行番号を非表示 (number:表示)
set number
" ルーラーを表示 (ruler:表示)
set noruler
" タブや改行を表示 (list:表示)
set nolist
" どの文字でタブや改行を表示するかを設定
"set listchars=tab:>-,extends:<,trail:-,eol:<
" 長い行を折り返して表示 (nowrap:折り返さない)
set wrap
" 常にステータス行を表示 (詳細は:he laststatus)
set laststatus=2
au InsertEnter * hi StatusLine guifg=DarkBlue guibg=DarkYellow gui=none ctermfg=Blue ctermbg=Yellow cterm=none 
au InsertLeave * hi StatusLine guifg=White guibg=Black gui=none ctermfg=White ctermbg=Black cterm=none 

" コマンドラインの高さ (Windows用gvim使用時はgvimrcを編集すること)
set cmdheight=2
" コマンドをステータス行に表示
set showcmd
" タイトルを表示
set title
" 画面を黒地に白にする (次行の先頭の " を削除すれば有効になる)
"colorscheme evening " (Windows用gvim使用時はgvimrcを編集すること)

"---------------------------------------------------------------------------
" ファイル操作に関する設定:
"
" バックアップファイルを作成しない (次行の先頭の " を削除すれば有効になる)
"set nobackup
" オートインデント（autoindent:オートインデント有効）
set noautoindent
" tab押下で、何文字移動するか
set tabstop=2
" >>押下で、何文字移動するか
set shiftwidth=2
" 構文ハイライトを有効
syntax on
" 検索のマッチを強調憑依
set hlsearch
" キーカスタマイズ
" 前が割り当てるキー、後ろが元のキーorコマンド
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

" 「%」による対応括弧へのカーソル移動機能を拡張
source $VIMRUNTIME/macros/matchit.vim

" neocomplcache（自動補完）を有効化
let g:neocomplcache_enable_at_startup = 1

" buftabs（常にバッファ番号を表示）の設定
let buftabs_only_basename = 1
let buftabs_in_statusline = 1

"emmetの設定
let g:user_emmet_settings = {
\  'lang' : 'ja',
\  'html' : {
\    'filters' : 'html',
\    'indentation' : ''
\  },
\  'php' : {
\    'extends' : 'html',
\    'filters' : 'html,c',
\  },
\  'css' : {
\    'filters' : 'fc',
\  },
\  'javascript' : {
\    'snippets' : {
\      'jq' : "$(function() {\n\t${cursor}${child}\n});",
\      'jq:each' : "$.each(arr, function(index, item)\n\t${child}\n});",
\      'fn' : "(function() {\n\t${cursor}\n})();",
\      'tm' : "setTimeout(function() {\n\t${cursor}\n}, 100);",
\    },
\  },
\ 'java' : {
\  'indentation' : '  ',
\  'snippets' : {
\   'main': "public static void main(String[] args) {\n\t|\n}",
\   'println': "System.out.println(\"|\");",
\   'class': "public class | {\n}\n",
\  },
\ },
\}

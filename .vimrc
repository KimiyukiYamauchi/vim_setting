" pathogen(vimプラグインの管理）の呼び出し
execute pathogen#infect()
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
" tab押下で、何文字移動するか
set tabstop=2
" >>押下で、何文字移動するか
set shiftwidth=2
" 構文ハイライトを有効
syntax on
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

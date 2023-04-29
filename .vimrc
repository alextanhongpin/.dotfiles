filetype off
syntax off

call plug#begin('~/.vim/plugged')

"Plug 'github/copilot.vim'
Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'alvan/vim-closetag', { 'for': ['javascript', 'svelte', 'typescript', 'typescriptreact', 'vue'] }
Plug 'christoomey/vim-tmux-navigator'
Plug 'cohama/lexima.vim'
Plug 'cormacrelf/vim-colors-github'
Plug 'dense-analysis/ale'
Plug 'dracula/vim'
Plug 'dyng/ctrlsf.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries', 'for': 'go'}
Plug 'gorodinskiy/vim-coloresque', { 'for': ['css', 'scss'] }
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'kristijanhusak/vim-js-file-import', {'do': 'npm install', 'for':['javascript', 'typescript', 'typescriptreact']}
Plug 'ludovicchabant/vim-gutentags', { 'for': ['javascript', 'typescript', 'typescriptreact'] }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'preservim/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'preservim/tagbar'
Plug 'scrooloose/nerdcommenter'
Plug 'sheerun/vim-polyglot'
Plug 'thoughtbot/vim-rspec', { 'for': 'ruby' }
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-dadbod'
Plug 'universal-ctags/ctags'
Plug 'vim-airline/vim-airline-themes'
Plug 'vimwiki/vimwiki'

call plug#end()

filetype plugin indent on


" Map leader \ to ,
let mapleader = ","

" set swapfile
set dir=~/tmp
set encoding=utf-8
set clipboard=unnamed
set ruler
"set foldcolumn=3
set mouse=a
set laststatus=2
"set colorcolumn=80
set cursorline
"set cursorcolumn
"set relativenumber
"set number
set number relativenumber
syntax sync minlines=256
set nocompatible
set inccommand=nosplit
set foldlevelstart=99
set foldlevel=99
set splitright

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Github colorscheme settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Set themes
" use a slightly darker background, like GitHub inline code blocks
"let g:github_colors_soft = 1

"" more blocky diff markers in signcolumn (e.g. GitGutter)
"let g:github_colors_block_diffmark = 0
"" in your .vimrc or init.vim
colorscheme dracula

" if you use airline / lightline
"set background=light
"let g:airline_theme = 'github'
"let g:lightline = {
	"\ 'colorscheme': 'github',
	"\ }

set background=dark
let g:airline_theme = 'dracula'
let g:lightline = {
	\ 'colorscheme': 'dracula',
	\ }

"set background=dark
"colorscheme monokai
"let g:airline_theme='monokai'
"let g:lightline = {
	"\ 'colorscheme': 'monokai',
	"\ }

"set background=light
"colorscheme papercolor
"let g:airline_theme='papercolor'
"let g:lightline = {
  "\ 'colorscheme': 'papercolor',
  "\ }
"highlight Normal ctermbg=black
"highlight nonText ctermbg=black

"let g:solarized_termcolors=256
"set background=dark
"colorscheme solarized

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ALE Linter settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:ale_linter_aliases = {'svelte': ['css', 'javascript']}
let g:ale_linters = {
\   'rust': ['cargo'],
\   'php': ['phpstan'],
\   'go': ['golangci-lint', 'gofmt', 'gopls', 'golint', 'govet'],
\   'css': ['prettier'],
\   'html': ['prettier'],
\   'javascript': ['prettier', 'eslint'],
\   'typescript': ['eslint', 'prettier'],
\   'vue': ['prettier'],
\   'typescriptreact': ['eslint', 'prettier'],
\   'ruby': ['brakeman', 'standardrb', 'ruby', 'rails_best_practices', 'rubocop'],
\   'svelte': ['stylelint', 'eslint', 'prettier-standard']
"\   'python': ['pylint']
\}
let g:ale_fixers = {
	\'ruby': ['sorbet', 'standardrb', 'rubocop'],
	\'go': ['goimports', 'gofmt'],
	\'rust': ['rustfmt'],
	\'vue': ['prettier'],
	\'html': ['prettier'],
	\'css': ['prettier'],
	\'javascript': ['prettier', 'eslint'],
	\'typescript': ['prettier', 'eslint'],
	\'typescriptreact': ['eslint', 'prettier'],
	\'svelte': ['stylelint', 'eslint', 'prettier', 'prettier-standard'],
	\'dart': ['dartfmt', 'dart-format'],
	\'python': ['black'],
	\'*': ['remove_trailing_lines', 'trim_whitespace']
\}
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1
let g:ale_set_loclist = 0
let g:ale_completion_enabled = 1
let g:ale_set_quickfix = 0
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#fnamecollapse = 0

let g:ale_rust_rls_toolchain = 'stable'

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
	\ 'bg':      ['bg', 'Normal'],
	\ 'hl':      ['fg', 'Comment'],
	\ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
	\ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
	\ 'hl+':     ['fg', 'Statement'],
	\ 'info':    ['fg', 'PreProc'],
	\ 'border':  ['fg', 'Ignore'],
	\ 'prompt':  ['fg', 'Conditional'],
	\ 'pointer': ['fg', 'Exception'],
	\ 'marker':  ['fg', 'Keyword'],
	\ 'spinner': ['fg', 'Label'],
	\ 'header':  ['fg', 'Comment'] }

" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" [[B]Commits] Customize the options used by 'git log':
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R'

" [Commands] --expect expression for directly executing the command
let g:fzf_commands_expect = 'alt-enter,ctrl-x'

"command! -bang -nargs=* Ag
  "\ call fzf#vim#ag(<q-args>,
  "\                 <bang>0 ? fzf#vim#with_preview('up:60%')
  "\                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  "\                 <bang>0)


" ctrl + f to search
"nnoremap <C-f> :Ag!<Enter>
nnoremap <C-f> :Rg<space>
" Find files with fzf
" Use GFiles instead of files to use .gitignore
nmap <leader>p :GFiles<CR>
nmap <leader>m :CtrlSF -R ""<Left>
nmap <leader>n :CtrlSFFocus<CR>

" Run go generate for go filesx.
autocmd FileType go nmap <leader>g :!go generate %:p<CR>

" Find within file lines
nmap <leader>f :BLines<CR>

" Substitute the word under the cursor.
nmap <leader>s :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>

" Substitute highlighted selection.
vnoremap <leader>s "+y :%s/\v(<C-r>")/<C-r>"/gI<Left><Left><Left>

" ctrl + s to save
noremap <silent> <C-S> :write<CR>
vnoremap <silent> <C-S> <C-C>:write<CR>
inoremap <silent> <C-S> <C-C>:write<CR>
" noremap jj <Esc>:w<CR>
"# ~/.zshrc
"# enable control-s and control-q
"stty start undef
"stty stop undef
"setopt noflowcontrol

"Insert mode key mappings
inoremap <C-l> <Right>
inoremap <C-j> <Down>
inoremap <C-b> <C-o>o
inoremap <C-k> <Up><C-o>A
inoremap <C-d> <Right>,<C-o>o
inoremap <C-e> <Right>:<Space>,<Left>

"Improve search
set ignorecase
set smartcase
set incsearch
set hlsearch

nnoremap * /\<<C-R>=expand('<cword>')<CR>\><CR>
nnoremap # ?\<<C-R>=expand('<cword>')<CR>\><CR>

"Easy cd to directory with `,cd`
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>

"Center cursor vertically
set scrolloff=999
if !exists('*VCenterCursor')
  augroup VCenterCursor
  au!
  au OptionSet *,*.*
    \ if and( expand("<amatch>")=='scrolloff' ,
    \         exists('#VCenterCursor#WinEnter,WinNew,VimResized') )|
    \   au! VCenterCursor WinEnter,WinNew,VimResized|
    \ endif
  augroup END
  function VCenterCursor()
    if !exists('#VCenterCursor#WinEnter,WinNew,VimResized')
      let s:default_scrolloff=&scrolloff
      let &scrolloff=winheight(win_getid())/2
      au VCenterCursor WinEnter,WinNew,VimResized *,*.*
        \ let &scrolloff=winheight(win_getid())/2
    else
      au! VCenterCursor WinEnter,WinNew,VimResized
      let &scrolloff=s:default_scrolloff
    endif
  endfunction
endif

nnoremap <leader>zz :call VCenterCursor()<CR>

fun! JumpToDef()
  if exists("*GotoDefinition_" . &filetype)
    call GotoDefinition_{&filetype}()
  else
    exe "norm! \<C-]>"
  endif
endf

" Jump to tag
nn <M-g> :call JumpToDef()<cr>
ino <M-g> <esc>:call JumpToDef()<cr>i

" Map jk to ESC in insert mode
inoremap jk <esc>

" Disable ESC key in insert mode.
inoremap <esc> <nop>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set Vim-specific sequences for RGB colors
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" set swap config, Sets the directory to ~/.vim/tmp
set directory^=$HOME/.vim/tmp//

" vv to generate new vertical split
nnore map <silent> vv <C-w>v

" Prompt for a command to run
map <Leader>vp :VimuxPromptCommand<CR>

" Run last command executed by VimuxRunCommand
map <Leader>vl :VimuxRunLastCommand<CR>

autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-b> :NERDTreeToggle<CR>
map <C-n> :NERDTreeFind<CR>

" Plugin alvan/vim-closetag
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.php,*.ts,*.jsx,*.tsx,*.js,*.vue,*.erb,*.svelte"
let g:closetag_xhtml_filetypes = 'xhtml,js,jsx,tsx,typescriptreact'

" Universal-ctags is required
let g:js_file_import_no_mappings = 0
let g:js_file_import_omit_semicolon = 0
let g:js_file_import_use_fzf = 1
let g:js_file_import_sort_after_insert = 1
set wildignore+=*node_modules/**
set wildignore+=*dist/**
set wildignore+=*build/**

au BufRead /tmp/psql.edit.* set syntax=sql
au BufRead,BufNewFile *.njk set filetype=html

"Configure vimwiki to use Markdown
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

"Ripgrep command
let g:rg_command = 'rg --vimgrep -S'

"Navigate to the next error with ALE
nmap <leader>e :ALENext<cr>

"Toggle universal ctag display.
nmap <leader>t :TagbarToggle<CR>

"Go configuration
"let g:go_metalinter_autosave = 1
"let g:go_metalinter_command = 'golangci-lint'
"
let g:ale_go_golangci_lint_package = 1

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

lua << EOF
require'nvim-treesitter.configs'.setup {
-- install language parser
-- :TSInstallInfo Command to view supported languages
	ensure_installed = {"go", "javascript", "typescript", "tsx", "python"},
	-- Enable code highlighting
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false
	},
	-- Enable incremental selection
	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = '<CR>',
			node_incremental = '<CR>',
			node_decremental = '<BS>',
			scope_incremental = '<TAB>',
		},
	},
	-- Enable based on Treesitter Code formatting for (=) . NOTE: This is an experimental feature.
	indent = {
		enable = true
	}
}
EOF

set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()


" 'tpope/vim-dadbod' settings.
let g:dev = 'postgres://john:123456@127.0.0.1:5432'

" Allows selecting under cursor and executing query.
vnoremap <leader>t :%DB g:dev <CR>

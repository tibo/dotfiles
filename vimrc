" basic setup
set encoding=utf8
set history=1000
set undolevels=1000

"indent and tabs
set expandtab
set tabstop=2
set softtabstop=2
set smarttab

set autoindent
set copyindent
set shiftwidth=2
set shiftround

" enable mouse
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set mouse=a
set mousehide
if has("mouse_sgr")
	set ttymouse=sgr
else
	set ttymouse=xterm2
end

"tree panel
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 20

"status line
set laststatus=2
function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

set statusline=
set statusline+=%#PmenuSel#
set statusline+=%{StatuslineGit()}
set statusline+=%#LineNr#
set statusline+=\ %f
set statusline+=%m\
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\ A

"display line number
set number

"project drawer panel
augroup ProjectDrawer
	autocmd!
	autocmd VimEnter * :Vexplore
augroup END

" groovy syntax for Jenkinsfile
au BufNewFile,BufRead Jenkinsfile setf groovy


"load packages
packloadall!

"customisation
colorscheme dracula
syntax on

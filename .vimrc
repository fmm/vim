"
" fmm's .vimrc
" version 1.0 2012-09-10
"

colorscheme darkblue
filetype plugin on
syntax on

set nocp
set backspace=indent,eol,start
set autoindent
set history=50

set shiftwidth=2
set tabstop=2
set expandtab
set foldmethod=marker
set number
set ruler
set et
set nobackup
set fileformat=unix

set textwidth=200

set autowrite

set mouse=a
set swapsync=
set autoindent
set nofsync

nmap <C-A> "+ggVG

map <F1> :w<CR>:!clear<CR>:make<CR>

function! Misof_Tab_Completion()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
  return "\<C-P>"
  else
  return "\<Tab>"
endfunction

inoremap <Tab> <C-R>=Misof_Tab_Completion()<CR>


  " C/C++
function! CPPSET()
  set makeprg=if\ \[\ -f\ \"Makefile\"\ \];then\ make\ $*;else\ if\ \[\ -f\ \"makefile\"\ \];then\ make\ $*;else\ g++\ -O2\ -g\ -Wall\ -W\ %;fi;fi
  set errorformat=%f:%l:\ %m
  set cindent
  set tw=0
  set nowrap

  map <F2> :!clear<CR>:!./a.out<CR>
  map <F3> :!clear<CR>:!./a.out <in.txt<CR>
  map <F4> :!clear<CR>:!./a.out <in.txt >out.txt<CR>

  map 0 :!clear<CR>:!./a.out 0<CR>
  map 1 :!clear<CR>:!./a.out 1<CR>
  map 2 :!clear<CR>:!./a.out 2<CR>
  map 3 :!clear<CR>:!./a.out 3<CR>
  map 4 :!clear<CR>:!./a.out 4<CR>
  map 5 :!clear<CR>:!./a.out 5<CR>
  map 6 :!clear<CR>:!./a.out 6<CR>
  map 7 :!clear<CR>:!./a.out 7<CR>
  map 8 :!clear<CR>:!./a.out 8<CR>
  map 9 :!clear<CR>:!./a.out 9<CR>
endfunction

  " Java
function! JAVASET()
  set makeprg=if\ \[\ -f\ \"Makefile\"\ \];then\ make\ $*;else\ if\ \[\ -f\ \"makefile\"\ \];then\ make\ $*;else\ javac\ -g\ %;fi;fi
  set errorformat=%f:%l:\ %m
  set cindent
  set tw=0
  set nowrap

  map <F2> :!clear<CR>:!java %:r<CR>
  map <F3> :!clear<CR>:!java %:r <in.txt<CR>
  map <F4> :!clear<CR>:!java %:r <in.txt >out.txt<CR>
endfunction

  " LaTeX
function! TEXSET()
  set makeprg=if\ \[\ -f\ \"Makefile\"\ \];then\ make\ $*;else\ if\ \[\ -f\ \"makefile\"\ \];then\ make\ $*;else\ pdflatex\ -file-line-error-style\ %;fi;fi
  set errorformat=%f:%l:\ %m

  map <F2> :!clear<CR>:!evince %:r.pdf &<CR>
endfunction

  " Python
function! PYSET()
  set tw=0
  set nowrap

  map <F2>: !clear<CR>:!python %<CR>
  map <F2> :!clear<CR>:!python %<CR>
  map <F3> :!clear<CR>:!python % <in.txt<CR>
  map <F4> :!clear<CR>:!python % <in.txt >out.txt<CR>
endfunction

autocmd BufNewFile *.cpp  0r /home/filipe/Template.cpp
autocmd BufNewFile *.java 0r /home/filipe/Template.java
autocmd BufNewFile *.py   0r /home/filipe/Template.py
autocmd BufNewFile *.tex  0r /home/filipe/Template.tex

autocmd FileType cpp  call CPPSET()
autocmd FileType tex  call TEXSET() 
autocmd FileType java call JAVASET()
autocmd FileType py   call PYSET()


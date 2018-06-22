"重装cask macvim之后ruby配置好了！！！！！！！！！！！！！
"这是什么鬼
"
"To jump to the next occurrence of the patter you can use :cnext. You can go in reverse with :cNext.
"I'm not sure of a way to skip all occurrences until the next file automatically, but you could open the quickfix window with :cwindow to see a list of matches and navigate to those matches by hitting Enter on the entry in the list.
"inoremap jk <ESC>
"verbose nmap <Leader>w   查看键位的实际映射
"multi_cursor 只能够用d c来删除一行然后来做，才能使用i 和 a不然用不了
"!表示使用shell中的语句 !open可以打开pdf，各种编译器
"当使用ctrlSF时，记得设定project，不然会出错,要记得ctrlSF [] {path}语句
"或者必须要使用cd语句来引导到当前的working directory
"在latex－suite中添加新的IMAP语句
"'` rm' mathrm{}
"'` bf' textrm{<++>}
"because auto pair plugin
"call IMAP (g:Tex_Leader.'3', '\left( <++> \right)<++>', "tex")
"call IMAP (g:Tex_Leader.'4', '\left[ <++> \right]<++>', "tex")
"call IMAP (g:Tex_Leader.'5', '\left\{ <++> \right\}<++>', "tex")
"
"%  match bucket
"use :edit to exit X mode
set nocompatible              " require
"Plug is replace vundle 
"Hat off to vundle , byebye!!!!!!!!!!!!!!
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
"filetype off                  " required
" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
"Plugin 'gmarik/Vundle.vim'
" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
"**************************************************
call plug#begin('~/.vim/plugged')
"Plug 'VundleVim/Vundle.vim'

" Plug 'CodeFalling/fcitx-vim-osx'
Plug 'mhinz/vim-startify'
Plug 'morhetz/gruvbox'
Plug 'sillybun/vim-autodoc'
Plug 'sillybun/vim-repl'
Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-repeat'
Plug 'luochen1990/rainbow'
Plug 'Konfekt/FastFold'
Plug 'takac/vim-hardtime'
Plug 'skywind3000/vim-preview'
Plug 'haya14busa/incsearch.vim'
Plug 'Yggdroot/indentLine'
Plug 'junegunn/goyo.vim'
Plug 'amix/vim-zenroom2'
Plug 'mhinz/vim-signify'
" Plug 'airblade/vim-gitgutter' " Too slowwwwwww!!!!
Plug 'skywind3000/asyncrun.vim'
Plug 'Shougo/echodoc.vim'
Plug 'tpope/vim-unimpaired'
Plug 'w0rp/ale'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-syntax'
Plug 'kana/vim-textobj-function', { 'for':['c', 'cpp', 'vim', 'java'] }
Plug 'sgur/vim-textobj-parameter'
"Plug 'rsmenon/vim-mathematica'
Plug 'Shougo/vimproc.vim'
Plug 'wookayin/vim-typora'
"Plug 'xolox/vim-easytags'
"Plug 'xolox/vim-misc'
Plug 'yssl/QFEnter'
Plug 'valloric/YouCompleteMe'
"Plug 'xuhdev/SingleCompile' " compile Plug
Plug 'jiangmiao/auto-pairs'
Plug 'rizzatti/dash.vim'
Plug 'kshenoy/vim-signature'
"Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-commentary'
Plug 'godlygeek/tabular'
" Plug 'plasticboy/vim-markdown'
" Plug 'shime/vim-livedown'
"Plug 'JamshedVesuna/vim-markdown-preview'
"Plug 'lazywei/vim-matlab'
"Plug 'vim-scripts/Conque-GDB'
Plug 'tpope/vim-surround'
Plug 'lervag/vimtex'
"Plug 'vim-latex/vim-latex'
Plug 'flazz/vim-colorschemes'
Plug 'terryma/vim-multiple-cursors'
"Plug 'vim-scripts/matchit.zip'
Plug 'tell-k/vim-autopep8'
Plug 'ervandew/supertab' 
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'scrooloose/nerdtree'
"Plug 'Xuyuanp/nerdtree-git-Plug'
"Plug 'jistr/vim-nerdtree-tabs'
"Plug 'indentLine.Vim'
Plug 'sheerun/vim-polyglot' "language packages
Plug 'hdima/python-syntax'
Plug 'dyng/ctrlsf.vim'
"Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
"Plug 'Lokaltog/vim-powerline'
Plug 'tmhedberg/SimpylFold'
Plug 'vim-airline/vim-airline-themes'
"Plug 'kien/rainbow_parentheses.vim'
"Plug 'ctrlpvim/ctrlp.vim'
Plug 'terryma/vim-expand-region'
Plug 'tpope/vim-fugitive'  
Plug 'Lokaltog/vim-easymotion'  
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}  "Html writting
"Bundle 'thinca/vim-quickrun'
"Bundle 'tpope/vim-rails.git'  
"Plug 'nvie/vim-flake8'
"Bundle 'TabBar'
"Bundle 'L9'  
"Plug 'scrooloose/syntastic'
"Bundle 'FuzzyFinder'  
Plug 'Shougo/unite.vim'
" non-GitHub repos  
"Plugin 'wincent/command-t'
"Plugin 'tpope/vim-rvm'
" Git repos on your local machine (i.e. when working on your own plugin)  
"Bundle 'file:///Users/gmarik/path/to/plugin'  
" ...  
" All of your Plugins must be added before the following line
"call vundle#end()            " required
"filetype plugin indent on    " required
"filetype on
"filetype plugin on
"filetype indent on
call plug#end()
"
"***********************************************************************
"Sometimes it is helpful if your working directory is always the same as the file you are editing. To achieve this, put the following in your vimrc:
"
"neovim configure
"------------------------------------------------------
if !has('nvim')
    set ttymouse=xterm2
	set mouse=a
endif
"------------------------------------------------------
"
autocmd BufEnter * silent! lcd %:p:h
"scroll set
" Automatically open, but do not go to (if there are errors) the quickfix /
" location list window, or close it when is has become empty.
"
" Note: Must allow nesting of autocmds to enable any customizations for quickfix
" buffers.
" Note: Normally, :cwindow jumps to the quickfix window if the command opens it
" (but not if it's already open). However, as part of the autocmd, this doesn't
" seem to happen.
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow
let mapleader=" "
"taglist
"nnoremap <silent> <F10> :TlistToggle<CR>
"let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
"PATH
" let $PATH ='/usr/local/opt/llvm@5/bin:/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/TeX/texbin:/Users/zhoutiangang/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/heroku:/Applications/MATLAB_R2016b.app/bin:/Applications/MATLAB_R2016b.app/bin/maci64:$PATH:/Users/zhoutiangang/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/heroku:/Users/zhoutiangang/.rvm/bin'
let $PATH='/Users/zhoutiangang/anaconda3/bin:/opt/intel/compilers_and_libraries_2017.5.220/mac/bin/intel64:/opt/intel//debugger_2017/gdb/intel64/bin:/opt/intel//documentation_2017/en/debugger//gdb-ia/man/:/usr/local/opt/llvm@5/bin:/Library/Frameworks/Python.framework/Versions/3.6/bin:/usr/local/opt/coreutils/libexec/gnubin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Developer/NVIDIA/CUDA-8.0/bin:/Library/TeX/texbin:/Applications/MATLAB_R2017a.app/bin:/Applications/MATLAB_R2017a.app/bin/maci64:/Applications/Mathematica.app/Contents/MacOS:/Applications/Alacritty.app/Contents/MacOS:/opt/X11/bin:/Users/zhoutiangang/.rvm/bin'
set omnifunc=syntaxcomplete#Complete
"set tags=/Users/zhoutiangang/Documents/Tools/tags
set tags+=${HOME}/.vimtags
"manuual
"dictionary  <C-X><C-K>
set dictionary+=/usr/share/dict/words
"spelling file
function! SpellLocalCheck()
	setlocal spell spelllang=en_us
endfunction
"
"
"------------------------------------------------------
" neovim
let g:python2_host_prog = '/usr/local/bin/python2'
let g:python3_host_prog = '/usr/local/bin/python3'
"------------------------------------------------------

"------------------------------------------------------
"
"ale setting
let g:ale_linters_explicit = 0 " only run linter you specified
let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_cpp_clangtidy_options = '-extra-arg=-std=c++14'
let g:ale_cpp_clangtidy_executable = ''
let g:ale_cpp_clangcheck_executable = ''
let g:ale_cpp_clangformat_options = "-style='{BasedOnStyle: LLVM, IndentWidth: 4}'"  "indent is important
let g:ale_c_clangformat_options = "-style='{BasedOnStyle: LLVM, IndentWidth: 4}'"  "indent is important
let g:ale_fixers = { 
			\ 'python': ['yapf'],
			\ 'cpp': ['clang-format'],
			\ 'c': ['clang-format'],
			\}
let g:ale_cpp_clangformat_executable = '/usr/local/opt/llvm@5/bin/clang-format'
let g:ale_c_clangformat_executable = '/usr/local/opt/llvm@5/bin/clang-format'
let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
let g:ale_cpp_clang_options = '-Wall -O2 -std=c++14'
let g:ale_c_cppcheck_options = ''
let g:ale_cpp_cppcheck_options = ''
let g:ale_sign_error = "\ue009\ue009"
hi! clear SpellBad
hi! clear SpellCap
hi! clear SpellRare
hi! spellbad gui=undercurl guisp=red
hi! spellcap gui=undercurl guisp=blue
hi! spellrare gui=undercurl guisp=magenta
noremap <leader>f <Plug>(ale_fix)
"------------------------------------------------------
"------------------------------------------------------
"For leaderF python version problem
" if has('python3')
"     command! -nargs=1 Py py3 <args>
"     set pythonthreedll=/usr/local/Frameworks/Python.framework/Versions/3.6/Python
"     set pythonthreehome=/usr/local/Frameworks/Python.framework/Versions/3.6
" else
"     command! -nargs=1 Py py <args>
"     set pythondll=/usr/local/Frameworks/Python.framework/Versions/2.7/Python
"     set pythonhome=/usr/local/Frameworks/Python.framework/Versions/2.7
" endif
let g:Lf_ShortcutF = '<c-p>'
let g:Lf_ShortcutB = '<m-b>'
noremap <c-m> :LeaderfMru<cr>
noremap <m-p> :LeaderfFunction!<cr>
noremap <m-b> :LeaderfBuffer<cr>
noremap <m-m> :LeaderfTag<cr>
let g:Lf_StlSeparator = { 'left': '', 'right': '', 'font': '' }
let g:Lf_RootMarkers = ['.project', '.root', '.svn', '.git']
let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_WindowHeight = 0.30
let g:Lf_CacheDirectory = expand('~/.vim/cache')
let g:Lf_ShowRelativePath = 0
let g:Lf_HideHelp = 1
let g:Lf_StlColorscheme = 'powerline'
let g:Lf_PreviewResult = {'Function':0, 'BufTag':0}
"------------------------------------------------------
"------------------------------------------------------
"Signify Diff
" noremap <m-f> :SignifyDiff<cr>
"------------------------------------------------------

"------------------------------------------------------
"Only setting for echodoc
set noshowmode
set cmdheight=2
autocmd VimEnter * EchoDocEnable
"------------------------------------------------------


"------------------------------------------------------
"Multiple-cursor
function! Multiple_cursors_before()
	execute youcompleteme#DisableCursorMovedAutocommands() 
	let g:ycm_auto_trigger = 0
endfunction

function! Multiple_cursors_after()
	execute youcompleteme#EnableCursorMovedAutocommands() 
	let g:ycm_auto_trigger = 1
endfunction
"------------------------------------------------------


"------------------------------------------------------
"incsearch.vim
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
"------------------------------------------------------
"------------------------------------------------------
" Goyo distracted mood
" vim-zenroom2 for markdown
nnoremap <silent> <leader>z :Goyo<cr>
"------------------------------------------------------
"------------------------------------------------------
"vim tag preview
"
noremap <m-;> :PreviewTag <cr>
noremap <m-'> :PreviewClose <cr>
noremap <m-u> :PreviewScroll -1<cr>
noremap <m-d> :PreviewScroll +1<cr>
inoremap <m-u> <c-\><c-o>:PreviewScroll -1<cr>
inoremap <m-d> <c-\><c-o>:PreviewScroll +1<cr>
noremap <m-q> :PreviewSignature!<cr>
inoremap <m-q> <c-\><c-o>:PreviewSignature!<cr>
autocmd FileType qf nnoremap <silent><buffer> p :PreviewQuickfix<cr>
autocmd FileType qf nnoremap <silent><buffer> P :PreviewClose<cr>
"
"PreviewClose
"<c-w> z
"------------------------------------------------------
"------------------------------------------------------
"asyncrun 
" 自动打开 quickfix window ，高度为 6
let g:asyncrun_open = 6
" 任务结束时候响铃提醒
let g:asyncrun_bell = 1
" 设置 F10 打开/关闭 Quickfix 窗口
nnoremap <F10> :call asyncrun#quickfix_toggle(6)<cr>
nnoremap <silent> <F9> :call AsyncRunCompilefile()<cr>
function! AsyncRunCompilefile()
	exec "w"
	if &filetype == 'c'
		exec "AsyncRun clang -Wall -std=c11 -O2 \"$(VIM_FILEPATH)\" -o \"$(VIM_FILEDIR)/$(VIM_FILENOEXT)\" "
	elseif &filetype == 'cuda'
		exec "AsyncRun nvcc -Wall -std=c11 -O2 \"$(VIM_FILEPATH)\" -o \"$(VIM_FILEDIR)/$(VIM_FILENOEXT)\" "
	elseif &filetype == 'cpp'
		exec "AsyncRun clang++ -Wall -std=c++14 -O2 \"$(VIM_FILEPATH)\" -o \"$(VIM_FILEDIR)/$(VIM_FILENOEXT)\" "
	elseif &filetype == 'shell'
		exec "AsyncRun bash \"$(VIM_FILEPATH)\" "
	elseif &filetype == 'java' 
		exec "AsyncRun javac \"$(VIM_FILEPATH)\" " 
	elseif &filetype == 'fortran'
		exec "AsyncRun gfortran -Wall -O2 \"$(VIM_FILEPATH)\" -o \"$(VIM_FILEDIR)/$(VIM_FILENOEXT)\" "
	else
		exec "AsyncRun -raw -cwd=<root> make "
	endif
endfunction

nnoremap <silent> <F5> :call AsyncRunRunfile()<cr>
function! AsyncRunRunfile()
	exec "w"
	if &filetype == 'c'
		exec "AsyncRun -raw -cwd=$(VIM_FILEDIR) \"$(VIM_FILEDIR)/$(VIM_FILENOEXT)\" "
	elseif &filetype == 'cuda'
		exec "AsyncRun -raw -cwd=$(VIM_FILEDIR) \"$(VIM_FILEDIR)/$(VIM_FILENOEXT)\" "
	elseif &filetype == 'cpp'
		exec "AsyncRun -raw -cwd=$(VIM_FILEDIR) \"$(VIM_FILEDIR)/$(VIM_FILENOEXT)\" "
	elseif &filetype == 'java' 
		exec "AsyncRun  java  \"$(VIM_FILEDIR)/$(VIM_FILENOEXT)\" " 
	elseif &filetype == 'fortran'
		exec "AsyncRun -raw -cwd=$(VIM_FILEDIR) \"$(VIM_FILEDIR)/$(VIM_FILENOEXT)\" "
	elseif &filetype == 'shell'
		exec "AsyncRun -raw bash \"$(VIM_FILEPATH)\" "
	elseif &filetype == 'python'
		exec "AsyncRun -raw python \"$(VIM_FILEPATH)\" "
	elseif &filetype == 'gnuplot'
		exec "AsyncRun -raw gnuplot \"$(VIM_FILEPATH)\" "
	else
		exec "AsyncRun -raw -cwd=$(VIM_FILEDIR) \"$(VIM_FILEPATH)\" "
	endif
endfunction

" nnoremap <silent> <F5> :AsyncRun -raw -cwd=$(VIM_FILEDIR) "$(VIM_FILEDIR)/$(VIM_FILENOEXT)" <cr>
let g:asyncrun_rootmarks = ['.svn', '.git', '.root', '_darcs', 'build.xml'] 
" nnoremap <silent> <F6> :AsyncRun -raw python % <cr>
nnoremap <silent> <F7> :AsyncRun -raw -cwd=<root> make run <cr>
nnoremap <silent> <F6> :AsyncRun -raw -cwd=<root> make <cr>
nnoremap <silent> <F4> :AsyncRun -raw -cwd=<root> cmake . <cr>
"disable python stdout buffering
let $PYTHONUNBUFFERED=1
"------------------------------------------------------
"------------------------------------------------------
" gutentags
" gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']
" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'
" 同时开启 ctags 和 gtags 支持：
let g:gutentags_modules = []
if executable('ctags')
	let g:gutentags_modules += ['ctags']
endif
if executable('gtags-cscope') && executable('gtags')
	let g:gutentags_modules += ['gtags_cscope']
endif
" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
" 配置 ctags 的参数
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
" 禁用 gutentags 自动加载 gtags 数据库的行为
let g:gutentags_auto_add_gtags_cscope = 0
" 检测 ~/.cache/tags 不存在就新建
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif
"------------------------------------------------------
"------------------------------------------------------
"FastFold
"
nmap zuz <Plug>(FastFoldUpdate)
let g:fastfold_savehook = 1
let g:fastfold_fold_command_suffixes =  ['x','X','a','A','o','O','c','C']
let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']
let g:markdown_folding = 1
let g:tex_fold_enabled = 1
let g:vimsyn_folding = 'af'
let g:xml_syntax_folding = 1
let g:javaScript_fold = 1
let g:sh_fold_enabled= 7
let g:ruby_fold = 1
let g:perl_fold = 1
let g:perl_fold_blocks = 1
let g:r_syntax_folding = 1
let g:rust_fold = 1
let g:php_folding = 1
"------------------------------------------------------


"------------------------------------------------------
"PERL vim 
nnoremap <leader>r :REPLToggle<Cr>
let g:sendtorepl_invoke_key = "<leader>w"
let g:repl_program = {
	\	"python": "/Users/zhoutiangang/anaconda3/bin/python",
	\	"gnuplot": "gnuplot",
	\	"matlab": "matlab -nodesktop -nosplash",
	\	"cpp.root": "root -l",
	\	"cpp": "cling -std=c++14",
	\	"mma": "MathematicaScript",
	\	"zsh": "zsh",
	\	"default": "bash",
	\	}  
" root -l close splash window and work with stdin 
let g:repl_height = 15
let g:repl_width = 30
let g:repl_position = 3 
let g:repl_exit_commands = {
			\	"/Users/zhoutiangang/anaconda3/bin/python": "exit()",
			\	"bash": "exit",
			\	"root": ".q",
			\	"zsh": "exit",
			\	"default": "exit",
			\	}
"------------------------------------------------------


"------------------------------------------------------
"Autodoc vim
" “ 给所有函数加上docstring
" :RecordParameter
" “ 给当前光标下的函数加上docstring
" :RecordCurrentFunction
" let g:autodoc_typehint_style = "pep526"
"------------------------------------------------------


"------------------------------------------------------
"vimtex
"
"Fold, integrate with fastfold plugin
let g:vimtex_fold_enabled = 1
let g:vimtex_quickfix_enabled = 0
let g:vimtex_view_method = 'skim'
" nmap <leader>lt  :VimtexTocToggle<CR>
" nmap <leader>lf  :VimtexRefreshFolds<CR>
" nmap <leader>ld  :VimtexDocPackage<CR>
" nmap <leader>ld  :VimtexLabelsToggle<CR>
" nmap <leader>le  :VimtexErrors<CR>
" nmap <leader>ll  :VimtexCompile<CR>
" nmap <leader>lv  :VimtexView<CR>
"********************************************************
"注意！！！！！！！！！！！
"这里设置了没有用，要在~/.latexmkrc 里面设置才有用
"经验!!!!!!!!!!!!!!!!!!!!!!
"因此可以用<leader>ll 来操作，自动刷新latex编译
let g:vimtex_latexmk_options = '-pdf -pdflatex="xelatex --shell-escape %O %S " -verbose -file-line-error -synctex=1 -interaction=nonstopmode'
"
"********************************************************
"Ctrlp is outoff date, thank your help!!!!!!
"
"ctrlp 改变最大窗口数
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip 
"let g:ctrlp_working_path_mode = 'ra'
"let g:ctrlp_match_window      = 'results:20'
"nmap <C-t> :CtrlPTag<CR> 
"nmap <C-m> :CtrlPMRUFiles<CR> 
"nmap <C-b> :CtrlPBuffer<CR>
"nmap <leader><C-t> :CtrlPBufTag<CR> 
"commadtmax file
let g:CommandTMaxHeight = 20
"tabular
if exists(":Tabularize")
	nmap <Leader>a= :Tabularize /=<CR>
	vmap <Leader>a= :Tabularize /=<CR>
	nmap <Leader>a: :Tabularize /:\zs<CR>
	vmap <Leader>a: :Tabularize /:\zs<CR>
endif
"********************
"easymotion
" <Leader>f{char} to move to {char}
map  <Leader><Leader>f <Plug>(easymotion-bd-f)
nmap <Leader><Leader>f <Plug>(easymotion-overwin-f)
" Move to line
map  <Leader><Leader>; <Plug>(easymotion-bd-jk)
nmap <Leader><Leader>; <Plug>(easymotion-overwin-line)
" Move to word
map  <Leader><Leader>w <Plug>(easymotion-bd-w)
nmap <Leader><Leader>w <Plug>(easymotion-overwin-w)
"********************
"-----------------------------------------------------V
"CtrlSF 
"Be careful!!!!!!!!!
"<leader>f give to easymotion, don't need f{char} t{char} any more
let g:ag_prg="<custom-ag-path-goes-here> --vimgrep"
map ff <Plug>CtrlSFPrompt
" The following is deprecated
"
" map F <Plug>CtrlSFQuickfixPrompt
"Don't open debug mode
"let g:ctrlsf_debug_mode = 1 :don't open this
"let g:ctrlsf_default_root = 'cwd'
"
"Tips
" M change to compact
" <C-O> new verticle split
" P preview focus
" T tab focus
"-----------------------------------------------------V
"-----------------------------------------------------V
"markdown
" let vim_markdown_preview_hotkey='<C-M>'
" let vim_markdown_preview_browser='Google Chrome'
" let vim_markdown_preview_toggle=1
"-----------------------------------------------------V
"-----------------------------------------------------V
"IndentLine
let g:indentLine_enabled = 1
"-----------------------------------------------------V
"matlab
"****************************
inoremap jk <ESC>
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>
" autocmd! FileType python noremap <buffer> <F3> :call Autopep8()<CR>
"nmap <leader><F6> :SyntasticCheck<CR>
"****Leader************************************************
"multi_cursor
"let g:multi_cursor_insert_maps ={'\':1}
let g:multi_cursor_normal_maps ={'!':1, '@':1, '=':1, 'q':1, 'r':1, 't':1, 'T':1, 'y':1, '[':1, ']':1, '\':1, 'd':1, 'f':1, 'F':1, 'g':1, '"':1, 'z':1, 'c':1, 'm':1, '<':1, '>':1}
"Latex syntax conceal
"------------------------------------------------------------
"This is solve by unimpaired.vim, my code is not used
""bufferfile shortcut
"nnoremap ,bp :bp<CR>    
"nnoremap ,bn :bn<CR>    
"nnoremap ,sb :sb<CR>    
"nnoremap ,b :b<CR>    
"nnoremap ,bd :bd<CR>    
"nnoremap ,bw :bw<CR>    
"------------------------------------------------------------
"------------------------------------------------------------
"Powerful ycm !!!
"
"set runtimepath+=~/.vim/bundle/YouCompleteMe
"filetype plugin indent on
"let g:ycm_python_binary_path = '/usr/local/bin/python3'
" let g:ycm_server_python_interpreter ='/Users/zhoutiangang/anaconda3/bin/python3'
let g:ycm_python_binary_path = '/Users/zhoutiangang/anaconda3/bin/python3'
"
" Specify virtual enviroment 
let g:ycm_server_python_interpreter ='/usr/local/bin/python3'
"let g:ycm_server_python_interpreter ='/usr/bin/python'
"let g:ycm_python_binary_path = '/usr/local/bin/python3'
let gLeaderlFold_docstring_preview = 1
" 引入，可以补全系统，以及python的第三方包
let g:ycm_global_ycm_extra_conf = "~/.vim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
"直接触发自动补全
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings=1
let g:ycm_key_invoke_completion = '<c-Space>'
set completeopt=menu,menuone
noremap <c-Space> <NOP>
let g:ycm_semantic_triggers =  {
           \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
           \ 'cs,lua,javascript': ['re!\w{2}'],
           \ }
"autocomplet:
let g:ycm_autoclose_preview_window_after_completion=1
"----------------------------------------------------------------
"Latex 补全
"非常重要
"注意这个必须放在YCM配置底下底下
if !exists('g:ycm_semantic_triggers')
    let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers.tex = g:vimtex#re#youcompleteme
"*************************************************************************************
"The following is deprecated
"*************************************************************************************
"
"let g:ycm_global_ycm_extra_conf = '~/.vim/data/ycm/.ycm_extra_conf.py'
" 不显示开启vim时检查ycm_extra_conf文件的信息  
"let g:ycm_confirm_extra_conf=0
"" 开启基于tag的补全，可以在这之后添加需要的标签路径  
"let g:ycm_collect_simulatedidentifiers_from_tags_files=1
""注释和字符串中的文字也会被收入补全
"let g:ycm_collect_identifiers_from_comments_and_strings = 0
"" 输入第2个字符开始补全
"let g:ycm_min_num_of_chars_for_completion=2
"" 禁止缓存匹配项,每次都重新生成匹配项
"let g:ycm_cache_=0
"" 开启语义补全
"let g:ycm_seed_identifiers_with_syntax=1	
""在注释输入中也能补全
"let g:ycm_complete_in_comments = 1
""在字符串输入中也能补全
"let g:ycm_complete_in_strings = 1
"" 设置在下面几种格式的文件上屏蔽ycm
"let g:ycm_filetype_blacklist = {
      "\ 'tagbar' : 1,
      "\ 'nerdtree' : 1,
      "\}
""autocomplete
"let g:ycm_autoclose_preview_window_after_completion=1
"let g:ycm_key_invoke_completion = ''
"Ycm autocompletion trigger
"let g:ycm_key_invoke_completion = '<C-Space>'
"YcmCompleter operation
" 跳转到定义处
nnoremap <leader>gg :YcmCompleter GoTo<CR>
"nnoremap <leader>gf :YcmCompleter FixIt<CR>
"nnoremap <leader>gi :YcmCompleter GoToInclude<CR>
nnoremap <leader>gt :YcmCompleter GetType<CR>
nnoremap <leader>gdc :YcmCompleter GetDoc<CR>
"nnoremap <leader>gp :YcmCompleter GetParent<CR>
"nnoremap <leader>gr :YcmCompleter GoToReferences<CR>
"nnoremap <leader>gdf :YcmCompleter GoToDefinition<CR>
"nnoremap <leader>gdl :YcmCompleter GoToDeclaration<CR>
"nnoremap <leader>rr :YcmCompleter RefactorRename<CR>
"nnoremap <leader>sd :YcmShowDetailedDiagnostic<CR>
"nnoremap <leader><F6> :YcmForceCompileAndDiagnostics<CR>	"force recomile with syntastic
"----------------------------------------------------------------
"--------------------------------------------------------------------------
"Ultisnips YCM
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion   = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger      = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
"--------------------------------------------------------------------------
"------------------------------------------------------------------
"Dash search
nmap <silent> <leader>d <Plug>DashSearch
"------------------------------------------------------------------
"------------------------------------------------------------------
"QFENTER
let g:qfenter_keymap = {}
let g:qfenter_keymap.vopen = ['<C-v>']
let g:qfenter_keymap.hopen = ['<C-CR>', '<C-s>', '<C-x>']
let g:qfenter_keymap.topen = ['<C-t>']
"------------------------------------------------------------------
"--------------------------------------------------------------------------------------------------------
"Latex-suite 
"(don't need anymore, use latexmk)
"let g:Tex_CompileRule_pdf = 'xelatex --interaction=nonstopmode -synctex=1 -src-specials $*'
"let g:Tex_MultipleCompileFormats = 'pdf'
"let g:Tex_ViewRuleComplete_pdf = 'open -a Skim $*.pdf &'
"
"
"*********************************					Use \lv instead
map ,r :w<CR>:silent !/Applications/Skim.app/Contents/SharedSupport/displayline <C-r>=line('.')<CR> %<.pdf<CR>
" let g:Tex_Debug=1
"--------------------------------------------------------------------------------------------------------
nnoremap <buffer> ,st :call SetTitle()<cr>
nnoremap <buffer> ,td :call TitleDet()<cr>
""Syntastic is outdate 
" Thank you so much
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_loc_list_height=3
"let g:syntastic_tex_checkers = ['lacheck']
"let g:syntastic_python_checkers = ['pyflakes']
"let g:syntastic_python_flake8_args='--ignore=E265'
"let g:syntastic_cpp_checkers = ['gcc']
"let g:syntastic_c_checkers = ['gcc']
"let g:syntastic_perl_checkers = ['perl']
"let g:syntastic_matlab_checkers = ['mlint']
"function! Py2()
  "let g:syntastic_python_python_exec = '/usr/local/bin/python2'
"endfunction
"function! Py3()
  "let g:syntastic_python_python_exec = '/usr/local/bin/python3'
"endfunction
"Auto complete menu
set completeopt=longest,menu	"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
autocmd InsertLeave * if pumvisible() == 0|pclose|endif	"离开插入模式后自动关闭预览窗口
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"	"回车即选中当前上下左右键的行为 会显示其他信息
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
"inoremap <leader><leader> <C-x><C-o>
"--------------------------------------------------------------------------------
"Rainbow ()
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle
"--------------------------------------------------------------------------------
"--------------------------------------------------------------------------------
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
let NERDTreeShowBookmarks=1
"NERDtee设定
let NERDChristmasTree=1
let NERDTreeAutoCenter=1
let NERDTreeBookmarksFile=$VIM.'\Data\NerdBookmarks.txt'
let NERDTreeMouseMode=2
let NERDTreeShowBookmarks=1
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1
let NERDTreeWinPos='left'
let NERDTreeWinSize=25
let g:tagbar_width=20
let NERDTreeIgnore=['\.pyc$']
"nnoremap f :NERDTreeToggle
map <F8> :NERDTreeToggle<CR> 
"map <> :call SaveInputData()<CR>                                                                          
"--------------------------------------------------------------------------------
"-----------------------------------------------------------------------------
"Deprecated *****************************************************************
"
"python with virtualenv support
"py << EOF
"import os.path
"import sys
"import vim
"if 'VIRTUA_ENV' in os.environ:
"  project_base_dir = os.environ['VIRTUAL_ENV']
"  sys.path.insert(0, project_base_dir)
"  activate_this = os.path.join(project_base_dir,'bin/activate_this.py')
"  execfile(activate_this, dict(__file__=activate_this))
"EOF
"it would be nice to set tag files by the active virtualenv here
"set tags=~/mytags "tags for ctags and taglist
"omnicomplete
"" I have poly 
"------------Start Python PEP 8 stuff----------------
" Number of spaces that a pre-existing tab is equal to.
"au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=4
""spaces for indents
"au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
"au BufRead,BufNewFile *.py,*.pyw set expandtab
"au BufRead,BufNewFile *.py set softtabstop=4
"" Use the below highlight group when displaying bad whitespace is desired.
"highlight BadWhitespace ctermbg=red guibg=red
"" Display tabs at the beginning of a line in Python mode as bad.
"au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
"" Make trailing whitespace be flagged as bad.
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
"" Wrap text after a certain number of characters
"au BufRead,BufNewFile *.py,*.pyw, set textwidth=100
"" Use UNIX (\n) line endings.
"au BufNewFile *.py,*.pyw,*.c,*.h set fileformat=unix
"" Set the default file encoding to UTF-8:
"set encoding=utf-8
"" Keep indentation level from previous line:
"autocmd! FileType python set autoindent
"" make backspaces more powerfull
"set backspace=indent,eol,start
""Folding based on indentation:
"autocmd! FileType python set foldmethod=indent
"use space to open folds
"nnoremap <leader> za 
"----------Stop python PEP 8 stuff--------------
"js stuff"
" autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
"
"
"New Start*****************************************************************
"Filetype autocmd
"
"cuda autofile set to cuda.cpp
autocmd BufNewFile,BufRead *.cu set filetype=cpp
"autocmd FileType python set =pythoncomplete#Complete
"autocmd FileType cpp map <buffer> <leader><space> :w<cr>:make<cr>
au BufRead,BufNewFile *.ncl set filetype=ncl
au BufRead,BufNewFile *.tex set filetype=tex
au BufRead,BufNewFile *.cpp set filetype=cpp
au BufRead,BufNewFile *.c	set filetype=c
au BufRead,BufNewFile *.py	set filetype=python
au BufRead,BufNewFile *.sh	set filetype=sh
au BufRead,BufNewFile *.java set filetype=java
au BufRead,BufNewFile *.C set filetype=cpp.root
au! Syntax newlang source $VIM/ncl.vim
" au BufRead,BufNewFile *  setfiletype txt
autocmd BufNewFile *.tex,*.cpp,*.[ch],*.sh,*.py,*.java,*.ncl exec ":call SetTitle()" 
"-----------------------------------------------------------------------------
"
" nnoremap <buffer> <leader>e :call EvinceNearestLabel()<CR>
"人生经验，之前的全都被space覆盖，所以之后就把它们加在后面
"
"*********************************************************
"filetype plugin indent on 
let g:pydiction_location = '~/.vim/tools/pydiction/complete-dict'
let g:indentLine_char='┆'
let g:indentLine_enabled = 1 
let g:autopep8_disable_show_diff=1
let g:airline_theme='powerlineish'
"Airline tab
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
"set guifont=Source\ Code\ Pro\ for\ Powerline:h15
"autocmd FileType python set =pythoncomplete#Complete
"autocmd FileType cpp map <buffer> <leader><space> :w<cr>:make<cr>
au BufRead,BufNewFile *.ncl set filetype=ncl
au BufRead,BufNewFile *.tex set filetype=tex
au! Syntax newlang source $VIM/ncl.vim
au BufRead,BufNewFile *  setfiletype txt
autocmd BufNewFile *.tex,*.cpp,*.[ch],*.sh,*.py,*.java,*.ncl exec ":call SetTitle()" 
"------------------------------------------------------------------------
"Auto pair
"Bye bye auto pair
"I need echodoc
"
"auto pair plugin fly mod
"let g:AutoPairsFlyMode = 0
" <M-e> not work ,see verbose imap <M-e> , so as other <M-x>
" has some bug, not use
" set left option as meta
"inoremap <buffer> <silent> ´ <C-R>=AutoPairsFastWrap()<CR>
"inoremap <buffer> <silent> π <C-R>=AutoPairsToggle()<CR>
"inoremap <buffer> <silent> ˜ <Esc>:call AutoPairsJump()<CR>
"inoremap <buffer> <silent> ∫ <C-R>=AutoPairsBackInsert()<CR>
"if has("gui_macvim")
  "let g:AutoPairsShortcutToggle     = 'π' " <m-p>
  "let g:AutoPairsShortcutFastWrap   = '´' " <m-e>
  "let g:AutoPairsShortcutJump       = '˜' " <m-n>
  "let g:AutoPairsShortcutBackInsert = '∫' " <m-b>
"endif
let g:AutoPairsShortcutToggle = ''
"------------------------------------------------------------------------
"------------------------------------------------------------------------
"Pair function, not use
":inoremap ( ()<ESC>i
":inoremap ) <c-r>=ClosePair(')')<CR>
":inoremap { {}<ESC>i
":inoremap } <c-r>=ClosePair('}')<CR>
":inoremap [ []<ESC>i
":inoremap ] <c-r>=ClosePair(']')<CR>
":inoremap ' ''<ESC>i
":inoremap " ""<ESC>i
"function! ClosePair(char)
	"if getline('.')[col('.') - 1] == a:char
		"return "\<Right>"
	"else
		"return a:char
	"endif
"endfunction
"------------------------------------------------------------------------
function!  SetTitle() 
		if &filetype == 'sh' 
		call setline(1,"\#!/bin/bash") 
		call append(line("."), "\#########################################################################") 
		call append(line(".")+1, "\# File Name: ".expand("%"))
		call append(line(".")+2, "\# Author:  Tiangang Zhou") 
		call append(line(".")+3, "\# mail: tg_zhou@pku.edu.cn") 
		call append(line(".")+4, "\#########################################################################") 
		call append(line(".")+5, "") 
		call append(line(".")+6, "") 
	elseif &filetype == 'cpp'
		call setline(1,"\//###########################################################")
		call append(line("."), "\//#########################################################################") 
		call append(line(".")+1, "\//# File Name: ".expand("%"))
		call append(line(".")+2, "\//# Author:  Tiangang Zhou") 
		call append(line(".")+3, "\//# mail: tg_zhou@pku.edu.cn") 
		call append(line(".")+4, "\//#########################################################################") 
		call append(line(".")+5, "#include<iostream>")
	elseif &filetype == 'c'
		call setline(1,"\//###########################################################")
		call append(line("."), "\//#########################################################################") 
		call append(line(".")+1, "\//# File Name: ".expand("%"))
		call append(line(".")+2, "\//# Author:  Tiangang Zhou") 
		call append(line(".")+3, "\//# mail: tg_zhou@pku.edu.cn") 
		call append(line(".")+4, "\//#########################################################################") 
		call append(line(".")+5, "#include<stdlib.h>")
	elseif &filetype=='python' 
		call setline(1, "\#!\/usr\/bin\/env python")
		call append(line("."), "##-*-coding:utf-8 -*-")
		call append(line(".")+1, "\#########################################################################") 
		call append(line(".")+2, "\# File Name   :  ".expand("%")) 
		call append(line(".")+3, "\# author      :   Tiangang Zhou") 
		call append(line(".")+4, "\# e-Mail      :  tg_zhou@pku.edu.cn ") 
		call append(line(".")+5, "\# created at  :  ".strftime("%Y-%m-%d %H:%M"))
		call append(line(".")+6, "\# purpose     :  ")
		call append(line(".")+7, "\#########################################################################") 
		call append(line(".")+8, "")
		call append(line(".")+9, "")
		call append(line(".")+10, "import numpy as np")
		call append(line(".")+11, "import matplotlib.pyplot as plt")
		call append(line(".")+12, "")
		call append(line(".")+13, "")
		call append(line(".")+14, "")
		call append(line(".")+15, "if __name__==\"__main__\":")
		call append(line(".")+16, "")
		call append(line(".")+17, "")
		call append(line(".")+18, "")
		call append(line(".")+19, "")
	elseif &filetype=='tex'
		call setline(1, "\%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%") 
		call append(line("."),"\%	 all right is reserved for Tiangang Zhou")
		call append(line(".")+1, "\% File Name   :  ".expand("%")) 
		call append(line(".")+2, "\% author      :  Tiangang Zhou") 
		call append(line(".")+3, "\% e-Mail      :  tg_zhou@pku.edu.cn ") 
		call append(line(".")+4, "\% created at  :  ".strftime("%Y-%m-%d %H:%M"))
		call append(line(".")+5, "\%    purpose     :  ")
		call append(line(".")+6, "\%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%") 
		call append(line(".")+7, "")
		call append(line(".")+8, "\\documentclass{article}")
		call append(line(".")+9,"\\usepackage{siunitx}")
		call append(line(".")+10,"\\usepackage{graphicx}")
		call append(line(".")+11,"\\usepackage{booktabs,array,multirow}")
		call append(line(".")+12, "\\usepackage[UTF8]{ctex}")
		call append(line(".")+13, "\\usepackage{lastpage}")
		call append(line(".")+14, "\\usepackage{geometry}")
		call append(line(".")+15, "\\usepackage{amsmath,amsthm}")
		call append(line(".")+16, "\\usepackage{diagbox}")
		call append(line(".")+17, "\\geometry{left=3.18cm,right=3.18cm,top=2.54cm,bottom=2.54cm}")
		call append(line(".")+18, "\\usepackage[font={color=red,footnotesize},labelsep=quad,width=.75\\textwidth,labelfont={color=blue} ]{caption}") 
		call append(line(".")+19, "\\usepackage{makecell,tabularx}")
		call append(line(".")+20, "\%\\makecell{text\\\\text}")
		call append(line(".")+21, "\%\\usepackage{pdfsync} 这里pdfsync会造成tabularx不能使用")
		call append(line(".")+22, "\\usepackage{cleveref,hyperref,xcolor}")
		call append(line(".")+23, "\\hypersetup{colorlinks= true, citecolor= gray}")
		call append(line(".")+24, "\\usepackage{slashbox}")
		call append(line(".")+25, "")
		call append(line(".")+26, "\\setcellgapes{4pt} \% \\makegapedcells")
		call append(line(".")+27, "\\newcommand*{\\fullref}[1]{\\hyperref[{#1}]{\\autoref*{#1} \\nameref*{#1}}}")
		call append(line(".")+28, "\\newcolumntype{C}{>{\\centering\\arraybackslash}X}")
		call append(line(".")+29, "\\newtheorem{theorem}{Theorem}[section]")
		call append(line(".")+30, "\\newtheorem*{remark}{Remark}")
		call append(line(".")+31, "\\newtheorem{lemma}{Lemma}[theorem] \%This  work")
		call append(line(".")+32, "\\newtheorem{corollary}{Corollary}[theorem]")
		call append(line(".")+ 33 , "\\newtheorem{definition}{Definition}[section]")
		call append(line(".")+ 34 , "\\newtheorem{claim}{Claim}")
		call append(line(".")+ 35 , "\\newtheorem{proposition}{Proposition}[theorem]")
		call append(line(".")+ 36 , "\\newtheorem{conjecture}{Conjecture}")
		call append(line(".")+ 37 , "\\newtheorem*{observation}{Observation}")
		call append(line(".")+ 38 , "\\newtheorem*{example}{Example}")
		call append(line(".")+ 39 , "")
		call append(line(".")+ 40 , "\%注意！！！！\label(tab:Xxxxxx)第一个字母大写")
		call append(line(".")+ 41 , "\%")
		call append(line(".")+ 42 , "\%")
		call append(line(".")+ 43 , "\%")
		call append(line(".")+ 44 , "\%")
		call append(line(".")+ 45 , "\%")
		call append(line(".")+ 46 , "\%")
		call append(line(".")+ 47 , "\%")
		call append(line(".")+ 48 , "\%")
		call append(line(".")+ 49 , "\%")
		call append(line(".")+ 50 , "\%")
		call append(line(".")+ 51 , "\%")
		call append(line(".")+ 52 , "\%")
		call append(line(".")+ 53 , "\%")
		call append(line(".")+ 54 , "\%")
		call append(line(".")+ 55 , "\%")
		call append(line(".")+ 56 , "\%")
		call append(line(".")+ 57 , "\%")
		call append(line(".")+ 58 , "\%")
		call append(line(".")+ 59 , "\%") 
		call append(line(".")+ 60 , "\%") 
		call append(line(".")+61, "\\begin{document}")
		call append(line(".")+62, "\\title{<++>}")
		call append(line(".")+63, "\\author{周天罡\\\\物理学院\\\\1600011394}")
		call append(line(".")+64, "\\maketitle")
		call append(line(".")+65, "\\listoffigures")
		call append(line(".")+66, "\\listoftables")
		call append(line(".")+67, "")
		call append(line(".")+68, "% \\ subsection{you subsection}")
		call append(line(".")+69, "% \\ begin{figure}[htbp]")
		call append(line(".")+70, "% \\ centering")
		call append(line(".")+71, "% \\ resizebox{15cm}{6cm}{includegraphics{pic path}}")
		call append(line(".")+72, "% \\ caption{youcaption}\label{fig:fig5}")
		call append(line(".")+73, "% \\ end{figure}")
		call append(line(".")+74, "")
		call append(line(".")+75, "% \\ begin{center}")
		call append(line(".")+76, "% \\includegraphics[width=0.7 \linewidth]{<++>}")
		call append(line(".")+77, "% \\captionof{figure}{<++>}")
		call append(line(".")+78, "% \\ end{center}")
		call append(line(".")+79, "")
		call append(line(".")+80, "")
		call append(line(".")+81, "")
		call append(line(".")+82, "")
		call append(line(".")+83, "")
		call append(line(".")+84, "")
		call append(line(".")+85, "")
		call append(line(".")+86, "\\end{document}")
	endif
	autocmd BufNewFile * normal G
endfunc 
"map <silent> <F2> :call AddFirstSingleComments()<CR>  
nnore map <C-2> :vert diffsplit 
nnoremap <F2> :g/^\s*$/d<CR> 
function! AddFirstSingleComments()  
    if &filetype == 'sh'  
        :.,+0 s/^/#/  
    elseif &filetype == 'fortran'  
        :.,+0 s/^/!/  
    elseif &filetype == 'c'  
        :.,+0 s#^#//#  
    elseif &filetype == 'cpp'  
		:.,+0 s#^#//#  
    elseif &filetype == 'ncl'  
        :.,+0 s#^#;#  
    elseif &filetype == 'tex'  
        :.,+0 s#^#%#g  
    elseif &filetype == 'python'  
        :.,+0 s/^/#/  
    else  
        :.,+0 s/^/#/  
    endif  
endfunction
"map <silent> <F3> :call RemoveFirstSingleComments()<CR>  
function! RemoveFirstSingleComments()  
    if &filetype == 'sh'  
        :.,+0 s/^#//  
    elseif &filetype == 'fortran'  
        :.,+0 s/^!/ /  
    elseif &filetype == 'c'  
        :.,+0 s#^//##
    elseif &filetype == 'ncl'  
        :.,+0 s#^;##  
    elseif &filetype == 'cpp'  
        :.,+0 s#^//##  
    elseif &filetype == 'tex'  
        :.,+0 s/^%//  
    elseif &filetype == 'python'  
        :.,+0 s/^#//  
    else  
        :.,+0 s/^#//  
    endif  
endfunction  
colorscheme gruvbox
"按<F4>键依次修改颜色主题  
map <F3> :call ChangeColorScheme()<CR>
let g:csnum = 0
function! ChangeColorScheme()  
	if g:csnum == 0  
		:colorscheme desert  
		:let g:csnum = 1  
	elseif  g:csnum == 1  
		:colorscheme murphy  
		:let g:csnum = 2  
	elseif  g:csnum == 2
		:colorscheme elflord
		:let g:csnum = 3
	elseif  g:csnum == 3
		:colorscheme torte
		:let g:csnum = 4
	elseif  g:csnum == 4
		:colorscheme koehler
		:let g:csnum = 5
	elseif  g:csnum == 5
		:colorscheme delek
		:let g:csnum = 6
	elseif  g:csnum == 6
		:colorscheme ron
		:let g:csnum = 7
	elseif  g:csnum == 7
		:colorscheme default
		:let g:csnum = 8
	else  
        :colorscheme evening 
        :let g:csnum = 0  
	endif  
endfunction
"----------------------------------------------------
" not need single compile again, thank you
" only for C++, but this configure is global
"nmap <F6> :SCCompileAF -std=c++14 -g3<cr>
"nmap <F5> :SCCompileRunAF -std=c++14 -O3<cr>
""nmap <F6> :SCCompile <cr>
"nmap <F6> :SCCompileRun<cr>
"nmap <F7> :SCViewResult<cr>
"nmap <F10>:SCChooseCompiler<cr>
"----------------------------------------------------
"
"map <F5> :call CompileRunGcc()<CR>
"func! CompileRunGcc()
	"exec "w"
	"if &filetype == 'c'
		"exec "!gcc-7 % -g -o %<"
		"exec "! ./%<"
	"elseif &filetype == 'cpp'
		"exec "!g++-7 % -g -o %<"
		"exec "! ./%<"
	"elseif &filetype == 'java' 
		"exec "!javac %" 
		"exec "!java %<"	
	"elseif &filetype == 'matlab'
		"exec '!matlab -nodesktop -nosplash -r "try, run %:p, pause, catch, end, quit" '
	"elseif &filetype == 'sh'
		":!./%
	"elseif &filetype == 'python'
		"exec "!python3 %"
	"elseif &filetype == 'fortran'
		"exec "!gfortran % -o %<"
		"exec "! ./%<"
	"elseif &filetype == 'ncl'
		"exec "!ncl %"
	"elseif &filetype == 'tex'
		"exec "!xelatex %"
		""exec ""!latexm
		"exec "!open -a Preview %:r.pdf"
	"else
		"exec "!source %"
	"endif
"endfunc
func! RunPython()
	let mp = &makeprg
	let ef = &errorformat
	let exeFile = expand("%:t")
	setlocal makeprg=python3\ -u
	set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
	silent make %
	copen
	let &makeprg = mp
	let &errorformat = ef
endfunction
func! Run_gdb()  
    exec "w!"  
    exec "!g++ % -o %< -g"  
    exec "!cgdb %<"  
    exec "!del %<"  
endfunction  
" nnoremap <C-J> <C-W> <C-J>
" nnoremap <C-K> <C-W> <C-K>
" nnoremap <C-L> <C-W> <C-L>
" nnoremap <C-H> <C-W> <C-H>
func! SaveInputData()
	exec "tabnew"
	exec 'normal "+gP'
	exec "w! /tmp/input_data"
	endfunc
" let g:rbpt_colorpairs = [ ['brown', 'RoyalBlue3'], ['Darkblue', 'SeaGreen3'], ['darkgray', 'DarkOrchid3'], ['darkgreen', 'firebrick3'],['darkcyan', 'RoyalBlue3'],['darkred', 'SeaGreen3'],['darkmagenta', 'DarkOrchid3'],['brown', 'firebrick3'],['gray', 'RoyalBlue3'],['black',       'SeaGreen3'],['darkmagenta', 'DarkOrchid3'],['Darkblue',  'firebrick3'],['darkgreen', 'RoyalBlue3'],['darkcyan', 'SeaGreen3'],['darkred', 'DarkOrchid3'],['red', 'firebrick3']]
" let g:rbpt_max = 16
" au VimEnter * RainbowParenthesesToggle
" au Syntax * RainbowParenthesesLoadRound
" au Syntax * RainbowParenthesesLoadSquare
" au Syntax * RainbowParenthesesLoadBraces
" " winmanager"
" let g:winManagerWindowLayout='NERDTree|Tagbar'
" let g:winManagerWidth=30
" let g:AutoOpenWinManager = 1 "这里要配合修改winmanager.vim文件，见下方说明"
function! UpdateTitle()
    normal m'
    execute '/# *Last modified:/s@:.*$@\=strftime(":\t%Y-%m-%d %H:%M")@'
    normal ''
    normal mk
    execute '/# *Filename:/s@:.*$@\=":\t\t".expand("%:t")@'
    execute "noh"
    normal 'k
    echohl WarningMsg | echo "Successful in updating the copy right." | echohl None
endfunction
"判断前10行代码里面，是否有Last modified这个单词，
"如果没有的话，代表没有添加过作者信息，需要新添加；
"如果有的话，那么只需要更新即可
function! TitleDet()
    let n=1
    "默认为添加
    while n < 10
        let line = getline(n)
        if line =~ '^\#\s*\S*Last\smodified:\S*.*$'
            call UpdateTitle()
            return
        endif
        let n = n + 1
    endwhile
    call SetTitle()
endfunction
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)
"noremap <CR> G
"noremap <BS> g
let g:winManagerWindowLayout='FileExplorer|TagList'
"noremap wm :WMToggle
" nnoremap <C-J> <C-W><C-J>
" nnoremap <C-K> <C-W><C-K>
" nnoremap <C-L> <C-W><C-L>
" nnoremap <C-H> <C-W><C-H>
" nnoremap <Alt-k> <C-X><C-K> 
" let g:SimpylFold_docstring_preview=1
let python_highlight_all=1
let g:autopep8_disable_show_diff=1
"
"
autocmd BufWritePost $MYVIMRC source $MYVIMRC
" ab iopt from cpac.optics import 
" ab ipnsd from cpac.PNSD import
" ab imath from cpac.math import
" ab itool from cpac.tools import 
" ab icoreshell from coacp.optices import coreshell,internal,exteranl
" ab iexternal from coacp.optices import coreshell,internal,exteranl
" ab iinternal from coacp.optices import coreshell,internal,exteranl
" ab ipf from cpac.optics import PFs_PNSD
" ab ibcpmsd from cpac.optics import Get_BCpvsd_YF
" ab ibounds from cpac.PNSD import Get_Dps_bounds
" ab iangstrom from cpac.BC import angstrom
" ab ismooth from cpac.math import smooth
" ab ilineregress from cpac.math import lineregress
" ab igetdatafromjul from uselib.math import getDataFromJul
" ab ijul2date from uselib.time import jul2date
" ab idate2jul from uselib.time import date2ju:l
" ab iselect from uselib.tools import selectData
"
"
"--------------------------------------------------------------------------
"Quick Run , don't need
" let g:quickrun_config = {
" 			\   "_" : {
" 			\       "outputter" : "message",
" 			\   },
" 			\}
" let g:quickrun_no_default_key_mappings = 1
" nmap <Leader>r <Plug>(quickrun)
"--------------------------------------------------------------------------
"clear search highlight
nnoremap <leader>n :noh <CR>
"copen cclose
nnoremap <C-c><C-n>  :cnext <CR>
nnoremap <C-c><C-p>  :cprevious <CR>
nnoremap <C-c><C-o>  :copen <CR>
nnoremap <C-c><C-c>  :cclose <CR>
"" lclose
nnoremap <C-l><C-n>  :lnext <CR>
nnoremap <C-l><C-p>  :lprevious <CR>
nnoremap <C-l><C-o>  :lopen <CR>
nnoremap <C-l><C-c>  :lclose <CR>
"
"quickfix window height
"au FileType qf call AdjustWindowHeight(3, 10)
"function! AdjustWindowHeight(minheight, maxheight)
  "exe max([min([line("$"), a:maxheight]), a:minheight]) . "wincmd _"
"endfunction
"python syntax
"the polyglot python syntax are bad
let OPTION_NAME = 1
let g:polyglot_disabled = ['latex']  
" --------------------------------------------------------
"General Mapping
"custom keys
let mapleader=" "
"inoremap jj <ESC> 
"nmap <leader>w :w<CR>
nmap <leader>q :q<CR>
"nmap <leader>wq :wq<CR>
nmap gh ^
nmap gl $
vmap gh ^
vmap gl $
"conceallevel 0
nnoremap <leader>sc :set conceallevel=0 <CR>
"nmap <leader>w :w!<cr>
"nmap <leader>f  :find<cr>
vmap <C-c> "+y
map! <C-A> <Esc>ggVGY
map <C-A> ggVGY
map <M-t> :tabnew<CR>  
map <C-F3> \be  
"map <F8> :tabnew .<CR>  
map <C-h> gg=G
"map <F9> :Tagbar<CR>
"
" --------------------------------------------------------
" --------------------------------------------------------
"  setting
set guifont=Monaco\ for\ Powerline:h15
"let g:airline_theme="badwolf"
"
set pastetoggle=<F11>
set go=             " 不要图形按钮  
"autocmd InsertLeave * se nocul
"autocmd InsertEnter * se cul
set showcmd         " 输入的命令显示出来，看的清楚些  
set novisualbell    " 不要闪烁(不明白)  
set laststatus=1	" 启动显示状态行(1),总是显示状态行(2)  
set foldenable      " 允许折叠  
set foldcolumn=1
" -------------------------------------------------------
" set fold methods (use marker to manually toggle fold)
" manual: use :fold command to fold
" marker:  default marker is {{{,}}}
set foldmethod=syntax 
set foldlevel=6 
set background=dark "背景使用黑色 
set nocompatible	"去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限
"set nu				"show line number
set helplang=cn
set fileencodings=utf-8,gb2312,gbk,gb18030
set termencoding=utf-8
set encoding=utf-8
set autoread
"set completeopt=preview,menu 
set completeopt=longest,menu
" clipboard
" this are not work
" ----------------------------------------------
""if $TMUX == ''
    ""set clipboard+=unnamed
""endif
"" yank to clipboard
"if has("clipboard")
  "set clipboard=unnamed " copy to the system clipboard
  "if has("unnamedplus") " X11 support
    "set clipboard+=unnamedplus
  "endif
"endif
" ----------------------------------------------
"  this work
set clipboard=unnamed " copy to the system clipboard
" ----------------------------------------------
""" cannot use this in the terminal vim
" bashcommand
set shell=/bin/bash
"to use interactive mode
set shellcmdflag=-ic
	" if something bad happend
	"use the next instead
	"let $BASH_ENV = "~/.bashrc"
set nobackup
set autowrite
set ruler                 " 打开状态栏标尺
set cursorline              " 突出显示当前行
set magic                   " 设置魔术
set guioptions-=T           " 隐藏工具栏
set guioptions-=m           " 隐藏菜单栏
set syntax=on
set noeb
set confirm
set autoindent
set cindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set smarttab
set history=1000
set noswapfile
set ignorecase
set hlsearch
set incsearch
set viminfo+=!
set iskeyword+=_,$,@,%,#,-
set linespace=0
set wildmenu
set whichwrap+=<,>,h,l
set selection=exclusive
set selectmode=mouse,key
set report=0
set fillchars=vert:\ ,stl:\ ,stlnc:\
set showmatch
set matchtime=3
set smartindent
set ma
"Preview window
set splitbelow
set splitright
set noshowmode
set cursorline
"非常好的行号设置
"*********************************************
set number
set relativenumber
"I don't like swap files
set noswapfile
"-------------------------------------------------
"This set meta key
" set macmeta
"-------------------------------------------------
"
"-------------------------------------------------
"For more color 
set termguicolors
"-------------------------------------------------
" autocmd FileType python set =python3complete#Complete
" nnoremap <leader>m : set makeprg=make <CR>

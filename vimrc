" =================== NeoBundle ============================

 " Note: Skip initialization for vim-tiny or vim-small.
 if 0 | endif

 if has('vim_starting')
   if &compatible
     set nocompatible               " Be iMproved
   endif

   " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'

 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!

		" file surf
		NeoBundle "https://github.com/scrooloose/nerdtree.git"     
		" Tags bar (links to semantic items in code)
		NeoBundle "https://github.com/majutsushi/tagbar.git" 	
		" black screen color scheme
		NeoBundle "https://github.com/flazz/vim-colorschemes.git" 	

		"install PYTHON support stuff
		NeoBundle "klen/python-mode"

		"install RUST support stuff
		NeoBundle "https://github.com/rust-lang/rust.vim.git"

		"YCM, clang based sematic completion for C/C++/Obj-C
		NeoBundle "Valloric/YouCompleteMe"
		NeoBundle "rdnetto/YCM-Generator"
	
        " easy cpp format plugin
        NeoBundle "LuisAyuso/cppFormat"


 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck


" ================ Some stuff =============================
set nu
set mouse=a

" tabs 4 spaces 
set ts=4
set expandtab

set shiftwidth=4

set smarttab
set autoindent

set showmatch 
set hlsearch
set incsearch
set ignorecase
set smartcase

set nocompatible
set cursorline
set formatoptions=c,q,r,t
set scrolloff=10

set textwidth=160

set completeopt=longest,menuone

colorscheme wombat256mod

" ================  no backup, no shit, everithing is git
set nobackup
set nowb
set noswapfile

" ================= Auto Reload 
set autoread 


"" ================ Keys for plugins =============================
nnoremap <silent> <F2> :NERDTreeToggle <CR>
nnoremap <silent> <F8> :TagbarToggle<CR>



" ================ spellcheck =============================
nnoremap  <F9> :setlocal spell spelllang=en_us<CR>
nnoremap  <F10> :set nospell<CR>; 
nnoremap <silent> <F11> ]s
nnoremap <silent> <F12> z=


" ================ YCM ==============================

"let g:ycm_min_num_of_chars_for_completion = 4
" auto load found config files
let g:ycm_confirm_extra_conf = 0 

" jump to definition
nnoremap <C-]> :YcmCompleter GoTo<CR> 
nnoremap <F3> :echo 'Jump to def'<CR> :YcmCompleter GoToDefinition<CR> 
nnoremap <F4> :echo 'Jump to decl'<CR> :YcmCompleter GoToDeclaration<CR> 

" ================ build ============================
let &makeprg = 'make -j8'

" ================ TAGS =============================
" 		this makes the database to jump between tags
" 		    BEWARE of the mighty semicolon, it makes the search recursive
set tags=tags;

" ================ Python ===========================
"" increase max lines for python marking and syntax check
"let g:pymode_options_max_line_length = 160
"" avoid showing pyc files in neerdtree






















"let NERDTreeIgnore = ['\.pyc$']

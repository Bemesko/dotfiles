:set number " add line numbers
:set relativenumber " add relative line numbers
:set showmatch " show matching brackets
:set ignorecase " case insensitive search
:set mouse=v " middle-click paste with mouse
:set autoindent " indent new lines the same amount as current line
:set tabstop=4 " tabs occupy 4 columns
:set shiftwidth=4 " width for autoindents
:set softtabstop=4 " sets multiple spaces for tabstops so backspace works properly
:set smarttab " don't know what this one does

" vim-plug plugins (run :PlugInstall to install)
call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline' " displays horizontal line with status
Plug 'https://github.com/preservim/nerdtree' " shows files in a tree format, user :NERDTree for help
Plug 'https://github.com/tpope/vim-commentary' " gcc to comment a line, gc<motion> to comment motion
Plug 'https://github.com/tpope/vim-surround' "use surroundings
Plug 'joshdick/onedark.vim' " one dark theme

call plug#end()

:colorscheme onedark

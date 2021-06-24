if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go'
Plug 'editorconfig/editorconfig-vim'
Plug 'sebdah/vim-delve'
Plug 'dracula/vim', { 'as': 'dracula' }

Plug 'Shougo/deoplete.nvim'
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'

Plug 'majutsushi/tagbar'
call plug#end()
colorscheme dracula

filetype plugin indent on
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1 
:nnoremap <C-g> :NERDTreeToggle<CR>
:set mouse=a
:set number
set autowrite
let NERDTreeShowHidden=1
let g:airline_powerline_fonts = 1
let g:terraform_align=1
let g:terraform_fold_sections=1
let g:terraform_fmt_on_save=1
let g:terraform_binary_path="/home/mikalai_dzemidzenka/terraform/terraform"

let g:go_highlight_structs = 1
let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_fields = 1
let g:go_highlight_variable_assignments = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_diagnostic_errors = 1
let g:go_highlight_diagnostic_warnings = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1

let g:deoplete#enable_at_startup = 1

vnoremap <C-C> :w !xclip -i -sel c<CR><CR>

nmap <F8> :TagbarToggle<CR>
syntax enable
filetype plugin indent on

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>

inoremap jk <esc>

" edit vimrc/zshrc and load vimrc bindings
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

map <C-O> :NERDTreeToggle<CR>

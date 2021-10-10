let mapleader = " "
"General
"Movement split
nnoremap <leader>l <C-w>l
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k

"" So that I don't have to hit esc
" inoremap jk <esc>
" inoremap kj <esc>
" So I can move around in insert
inoremap <M-k> <C-o>gk
inoremap <M-h> <left>
inoremap <M-l> <Right>
inoremap <M-j> <C-o>gj

"telescope
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

"copied by Primeagen
vnoremap <leader>p "_dP
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG

"NerdTree
" nnoremap <leader>nn :NERDTreeFocus<CR>
nnoremap <leader>nn :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>
" nnoremap <leader>nn :Ex<CR>

"airline
nnoremap <M-l> :bn<cr>
nnoremap <M-h> :bp<cr>
nnoremap <c-x> :bp \|bd #<cr>

" NERDCommenter
map <leader>/ <Plug>NERDCommenterInvert

"Git fugitive
nmap <leader>gs :G<CR>
nmap <leader>gf :diffget //2<CR>
nmap <leader>gj :diffget //3<CR>

"Nvim Terminal
if has('nvim')
	tnoremap <Esc> <C-\><C-n>
	tnoremap <leader>q exit<CR>
	" tnoremap <leader>tn !node %<CR>
	nnoremap <leader>tn :!node %<CR>
	nnoremap <leader>tl :vsp<CR><C-w>l:terminal<CR>a
	nnoremap <leader>th :vsp<CR> :terminal<CR>a
	nnoremap <leader>tk :sp<CR>:terminal<CR>a
	nnoremap <leader>tj :sp<CR><C-w>j:terminal<CR>a
	
endif

"Vim-auto-save
nnoremap <leader>as :AutoSaveToggle<CR>

"Live-server
nnoremap <leader>ls :terminal {npx live-server .}<CR>

"Add line empty
nnoremap <silent><leader>- m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><leader>_ m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><leader>= :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><leader>+ :set paste<CR>m`O<Esc>``:set nopaste<CR>

"markdown preview
" for normal mode
nmap <silent> <leader>mv <Plug>MarkdownPreview
" for insert mode
" imap <silent> <leader>mv <Plug>MarkdownPreview
" for normal mode
nmap <silent> <leader>ms <Plug>StopMarkdownPreview
" for insert mode
" imap <silent> <F9> <Plug>StopMarkdownPreview


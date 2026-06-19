let mapleader = ' '

" Testing
nnoremap <Leader>t :TestNearest<CR>
nnoremap <Leader>T :TestFile<CR>
nnoremap <Leader>TT :TestSuite<CR>

" Split resize
nnoremap <Leader>> 10<C-w>>
nnoremap <Leader>< 10<C-w><

" Common actions
nnoremap <Leader>; $a;<Esc>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>

" Shorter commands
cnoreabbrev tree NERDTreeToggle
cnoreabbrev blame Gblame
cnoreabbrev find NERDTreeFind
cnoreabbrev diff Gdiff

" Plugins
map <Leader>nt :NERDTreeFind<CR>
map <Leader>p :Files<CR>
map <Leader>ag :Ag<CR>
map <Leader>ob :Buffers<CR>

" tmux navigator
nnoremap <silent> <Leader><C-h> :TmuxNavigateLeft<CR>
nnoremap <silent> <Leader><C-j> :TmuxNavigateDown<CR>
nnoremap <silent> <Leader><C-k> :TmuxNavigateUp<CR>
nnoremap <silent> <Leader><C-l> :TmuxNavigateRight<CR>

" CoC navigation and formatting
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>f <Plug>(coc-format-selected)
inoremap <silent><expr> <c-space> coc#refresh()

" Clipboard helper
nnoremap <leader>kp :let @*=expand('%')<CR>

" Tabs and scrolling
map <Leader>h :tabprevious<CR>
map <Leader>l :tabnext<CR>
nnoremap <C-j> 10<C-e>
nnoremap <C-k> 10<C-y>
nmap <Leader>s <Plug>(easymotion-s2)

" Git
nnoremap <Leader>G :G<CR>
nnoremap <Leader>gp :Gpush<CR>
nnoremap <Leader>gl :Gpull<CR>

" Run current JS file
nnoremap <Leader>x :!node %<CR>

set splitright
function! OpenTerminal()
  execute 'normal \<C-l>'
  execute 'normal \<C-l>'
  execute 'normal \<C-l>'
  execute 'normal \<C-l>'

  let bufNum = bufnr('%')
  let bufType = getbufvar(bufNum, '&buftype', 'not found')

  if bufType == 'terminal'
    execute 'q'
  else
    execute 'vsp term://zsh'
    execute 'set nonu'
    execute 'set nornu'
    silent au BufLeave <buffer> stopinsert!
    silent au BufWinEnter,WinEnter <buffer> startinsert!
    execute 'tnoremap <buffer> <C-h> <C-\><C-n><C-w><C-h>'
    execute 'tnoremap <buffer> <C-t> <C-\><C-n>:q<CR>'
    execute 'tnoremap <buffer> <C-\><C-\> <C-\><C-n>'
    startinsert!
  endif
endfunction
nnoremap <C-t> :call OpenTerminal()<CR>

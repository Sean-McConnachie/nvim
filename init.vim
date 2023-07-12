let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1

set clipboard+=unnamedplus
set relativenumber
set background=dark
colorscheme oxocarbon-lua

" 256 colors
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif


lua << EOLUA

require("plugins")
require("lsp-cfg")
require("dap-cfg")
require("snippet-cfg")
require("tree-cfg")
require("footer-cfg")


EOLUA

" Keybinds
map <C-f> :Telescope find_files<CR>
map <C-n> :NvimTreeToggle<CR>

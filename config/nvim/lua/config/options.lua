-- OPTIONS
local opt = vim.opt

--line nums
opt.relativenumber = true
opt.number = true

--disable wrap
opt.wrap = false

--disable the default ruler
opt.ruler = false
opt.scrolloff = 4

--confirm to save changes before exiting modified buffer
opt.confirm = true

-- indentation and tabs
opt.tabstop = 2
opt.shiftwidth = 2
opt.autoindent = true
opt.expandtab = true
opt.shiftround = true
opt.shiftwidth = 2

--dont show mode since we have a statusline
opt.showmode = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- cursor line
opt.cursorline = true

-- 80th column
opt.colorcolumn = "80"

-- clipboard
opt.clipboard:append("unnamedplus")

-- backspace
opt.backspace = "indent,eol,start"

-- split windows
opt.splitbelow = true
opt.splitright = true

-- dw/diw/ciw works on full-word
opt.iskeyword:append("-")

-- keep cursor at least 8 rows from top/bot
opt.scrolloff = 8

-- undo dir settings
opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true
opt.undolevels = 10000

-- incremental search
opt.incsearch = true

-- faster cursor hold
opt.updatetime = 50

-- folds
opt.fillchars = {
  foldopen = "",
  foldclose = "",
  fold = " ",
  foldsep = " ",
  diff = "╱",
  eob = " ",
}
opt.foldlevel = 99
opt.foldmethod = "indent"
opt.foldtext = ""

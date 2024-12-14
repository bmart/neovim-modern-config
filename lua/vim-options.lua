vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.relativenumber = true
--vim.opt.noautoindent
vim.g.mapleader = " "
vim.opt.timeoutlen = 300 -- Set timeout length to 500 ms
vim.opt.nu = true


-- split settings / note control-w c to close a split / also to resize  :resize
-- vim.opt.splitbelow = false
vim.opt.splitbelow = true
vim.opt.splitright = true

-- remove ugly vertical lines on window division
-- vim.opt.fillchars+="vert:\"

-- needed so deoplete can auto select the first suggestion
-- vim.opt.completeopt+="noinsert"

-- (displays documentation related to the selected completion option)
-- vim.opt.completeopt-=preview

-- autocompletion of files and commands behaves like shell
-- vim.opt.wildmode=list:longest

-- when scrolling, keep cursor 3 lines away from screen border
-- vim.opt.scrolloff = 3

-- clear empty spaces at the end of lines on save of python files
-- autocmd BufWritePre *.py :%s/\s\+$//e

-- fix problems with uncommon shells (fish, xonsh) and plugins running commands
vim.opt.shell="/bin/zsh"

-- Typescript
-- au BufNewFile,BufRead *.ts setlocal filetype=typescript
-- au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx

-- JSON
-- au BufNewFile,BufRead,BufReadPost *.ejson setf json


-- Git
vim.keymap.set("n", "<c-g>f", ":2,$ s/^pick/f<CR>")
vim.keymap.set("n", "<c-g>s", ":2,$ s/^pick/s<CR>")


-- basic keybindings

-- Make adjusing split sizes a bit more friendly
vim.keymap.set("n","<silent> <C-Left>",":vertical resize +3<CR>")
vim.keymap.set("n","<silent> <C-Right>",":vertical resize -3<CR>")
vim.keymap.set("n","<silent> <C-Up>",":resize +3<CR>")
vim.keymap.set("n","<silent> <C-Down>",":resize -3<CR>")

-- vim.keymap.set("n","<C-J>","<C-W><C-J>")
-- vim.keymap.set("n","<C-K>","<C-W><C-K>")
-- vim.keymap.set("n","<C-L>","<C-W><C-L>")
-- vim.keymap.set("n","<C-H>","<C-W><C-H>")

-- Tab navigation
vim.keymap.set("n","tt",":tabnew")
vim.keymap.set("n","<Leader><Right>","<ESC>:tabn<CR>")
vim.keymap.set("n","<Leader><Left>","<ESC>:tabp<CR>")

-- Quickly close quick fix window
vim.keymap.set("n","<leader>cc",":cclose<CR>")
vim.keymap.set("n","<leader>co",":copen<CR>")

--Save current buffer
vim.keymap.set("n","<leader>w",":w<cr>")




local nnoremap = require("keymap").nnoremap
local xnoremap = require("keymap").xnoremap
local inoremap = require("keymap").inoremap
local vnoremap = require("keymap").vnoremap
local tnoremap = require("keymap").tnoremap
local nmap = require("keymap").nmap

vim.g.mapleader = ' '

nnoremap("<leader>pv", "<cmd>Ex<CR>")
nnoremap("<leader>pk", "<cmd>PackerSync<CR>")
nnoremap("<c-s>", "<cmd>w<CR>")
nnoremap("<leader>w", ":Bdelete<cr>")
nnoremap("<leader>h", "<c-w>h")
nnoremap("<leader>l", "<c-w>l")
nnoremap("<leader>j", "<c-w>j")
nnoremap("<leader>k", "<c-w>k")
-- xnoremap("<leader>p", "\"_dP")
nnoremap("<leader>v", ":vspl<cr>")
nnoremap("<leader>c", ":spl<cr>")

nnoremap("<leader>m", ":e ~/.config/nvim/lua/keys.lua<cr>")
nnoremap("<leader>o", ":e ~/.config/nvim/lua/opts.lua<cr>")
nnoremap("<leader>i", ":e ~/.config/nvim/init.lua<cr>")
nnoremap("<leader>p", ":e ~/.config/nvim/lua/plug.lua<cr>")
nnoremap("gf", ":e <cfile><cr>")

-- FloaTerm configuration
nmap("<leader>t", ":FloatermNew --name=myfloat --height=0.85 --width=0.75 --autoclose=2 bash <CR>")
tnoremap("<c-c>", "<c-\\><c-n>:q<CR>")

-- save all and quit
nnoremap("<leader>q", ":wa<cr>ZQ")

-- navigate buffers
nnoremap("<c-h>", ":bp<cr>")
nnoremap("<c-l>", ":bn<cr>")

-- clear highlights
nnoremap("<c-e>", ":noh<cr>")

-- run rust tests
-- nmap("<leader>r", ":FloatermNew --name=myfloat --height=0.85 --width=0.75 --autoclose=2 bash <cr>cargo test<cr>")

-- run python tests
nmap("<leader>r", ":FloatermNew --name=myfloat --height=0.85 --width=0.75 --autoclose=2 bash <cr>pytest<cr>")

-- Telescope
nnoremap("<leader>f", "<cmd>lua require('telescope.builtin').find_files()<cr>")
nnoremap("<leader>g", "<cmd>lua require('telescope.builtin').live_grep()<cr>")
nnoremap("<leader>b", "<cmd>lua require('telescope.builtin').buffers()<cr>")

-- source current file
nnoremap("<leader>s", "<cmd>source<cr>")

nmap("<leader>n", ":call CocAction('diagnosticNext')<cr>")
nmap("gd", ":call CocAction('jumpDefinition')<cr>")

-- In insert or command mode, move normally by using Ctrl
inoremap("<C-h>", "<Left>")
inoremap("<C-l>", "<Right>")

-- move selection
nnoremap("<C-j>", ":m .+1<CR>==")
nnoremap("<C-k>", ":m .-2<CR>==")
inoremap("<C-j>", "<ESC>:m .+1<CR>==gi")
inoremap("<C-k>", "<ESC>:m .-2<CR>==gi")
vnoremap("<C-j>", ":m '>+1<CR>gv=gv")
vnoremap("<C-k>", ":m '<-2<CR>gv=gv")

nnoremap("<Left>", "<cmd>echo 'No left for you!'<cr>")
vnoremap("<Left>", "<cmd>echo 'No left for you!'<cr>")
inoremap("<Left>", "<cmd>echo 'No left for you!'<cr>")
nnoremap("<Right>", "<cmd>echo 'No right for you!'<cr>")
vnoremap("<Right>", "<cmd>echo 'No right for you!'<cr>")
inoremap("<Right>", "<cmd>echo 'No right for you!'<cr>")
nnoremap("<Up>", "<cmd>echo 'No up for you!'<cr>")
vnoremap("<Up>", "<cmd>echo 'No up for you!'<cr>")
inoremap("<Up>", "<cmd>echo 'No up for you!'<cr>")
nnoremap("<Down>", "<cmd>echo 'No down for you!'<cr>")
vnoremap("<Down>", "<cmd>echo 'No down for you!'<cr>")
inoremap("<Down>", "<cmd>echo 'No down for you!'<cr>")

-- Vimspector
vim.cmd([[
nmap <Leader>1 <cmd>call vimspector#Launch()<cr>
nmap <Leader>2 <cmd>call vimspector#StepOver()<cr>
nmap <Leader>3 <cmd>call vimspector#Reset()<cr>
nmap <Leader>7 <cmd>call vimspector#StepOver()<cr>")
nmap <Leader>8 <cmd>call vimspector#StepOut()<cr>")
nmap <Leader>9 <cmd>call vimspector#StepInto()<cr>")
]])
nmap("Db", ":call vimspector#ToggleBreakpoint()<cr>")
nmap("Dw", ":call vimspector#AddWatch()<cr>")
nmap("De", ":call vimspector#Evaluate()<cr>")

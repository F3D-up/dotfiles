vim.g.mapleader = " "
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set whichwrap+=<,>,h,l,[,]")
vim.cmd("set autoindent")
vim.cmd("set relativenumber")
vim.cmd("set smarttab")
vim.cmd("set number")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local opts = {}

require("lazy").setup("plugins")
vim.api.nvim_create_augroup("cursorfix", { clear = true })
vim.api.nvim_create_autocmd({ "VimLeave", "VimSuspend" }, {
  command = "set guicursor=a:ver1-blinkon1",
  group = "cursorfix",
})

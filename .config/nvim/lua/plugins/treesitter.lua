return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local tsconfig = require("nvim-treesitter.configs")
    tsconfig.setup({
      ensure_installed = {
        "lua",
        "javascript",
        "html",
        "css",
        "java",
        "c",
        "cpp",
        "bash",
        "json",
        "rust",
        "vimdoc",
      },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}

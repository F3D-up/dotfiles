return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.6",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<C-p>", ':lua require"telescope.builtin".find_files({find_command = {"fd", "--hidden"}})<CR>', {noremap = true, silent = true})
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, {noremap = true, silent = true})
  end,
}

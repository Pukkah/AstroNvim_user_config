return {
  n = {
    ["<C-d>"] = { "<C-d>zz", desc = "Page Down (center)" },
    ["<C-u>"] = { "<C-u>zz", desc = "Page Up (center)" },
    ["<leader>r"] = { "<cmd>:!ts-node %<CR>", desc = "Run w/ ts-node" },
    ["<M-j>"] = { "<cmd>:silent cnext<CR>", desc = "Next QuickFix item" },
    ["<M-k>"] = { "<cmd>:silent cprev<CR>", desc = "Previous QuickFix item" },
  },
}

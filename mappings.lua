return {
  n = {
    ["<C-d>"] = { "<C-d>zz", desc = "Page Down (center)" },
    ["<C-u>"] = { "<C-u>zz", desc = "Page Up (center)" },
    ["<leader>ll"] = { "<cmd>:silent %!jq -S .<CR>", desc = "Sort JSON" },
    ["<leader>r"] = { "<cmd>:!ts-node %<CR>", desc = "Run w/ ts-node" },
  },
}

return {
  colorscheme = "gruvbox-baby",
  lsp = {
    formatting = {
      disabled = { "tsserver", "jsonls" },
      timeout_ms = 3200,
    },
    config = {
      cssls = {
        settings = {
          css = { validate = true, lint = { unknownAtRules = "ignore" } },
        },
      },
    },
    settings = {
      Lua = {
        runtime = {
          version = "LuaJIT",
        },
      },
    },
  },
  options = {
    opt = {
      foldcolumn = "0",
      colorcolumn = "120",
      spell = true,
      spelllang = "en,lv",
      spelloptions = "camel",
    },
  },
  polish = function()
    local wk = require "which-key"
    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "json" },
      callback = function()
        wk.register({
          ["<leader>"] = {
            ["="] = { "<cmd>:silent %!jq -S .<CR>", "󰘦 Sort JSON" },
          },
        }, { buffer = 0 })
      end,
    })
    vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
      pattern = ".env*",
      command = "setf sh",
    })
  end,
}

--- @type LazySpec
return {
  {
    -- "sorsera/next-intl.nvim",
    dir = "~/Desktop/next-intl.nvim",
    cmd = { "AddToken" },
    ft = { "typescriptreact" },
    config = true,
    opts = {
      hover = true,
    },
  },
  {
    "luisiacc/gruvbox-baby",
    init = function()
      vim.g.gruvbox_baby_background_color = "dark"
      vim.g.gruvbox_baby_transparent_mode = false
      vim.g.gruvbox_baby_telescope_theme = false
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = function(_, opts)
      opts.defaults.dynamic_preview_title = true
      opts.defaults.borderchars = {
        prompt = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
        results = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
        preview = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
      }
    end,
  },
  { "stevearc/aerial.nvim", opts = function(_, opts) opts.disable_max_size = 2000000 end },
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      opts.section.header.val = {
        "                          ░░▒▒            ",
        "                        ░░░░▒▒▒▒          ",
        "                      ░░░░░░▒▒▒▒▒▒        ",
        "         ▓▓         ░░░░░░░░▒▒▒▒▒▒        ",
        "        ▓▓▓▓▓     ░░░░░░░░░ ▒▒▒▒▒▒        ",
        "         ▓▓▓▓▓▓▓▓░░░░░░░░   ▒▒▒▒▒▒        ",
        "            ▓▓▓▓▓▓▓░░░      ▒▒▒▒▒▒        ",
        "             ░░▓▓▓▓▓▓       ▒▒▒▒▒▒        ",
        "           ░░░░░▓▓▓▓▓▓▓▓    ▒▒▒▒▒▒        ",
        "        ░░░░░░    ▓▓▓▓▓▓▓▓▓ ▒▒▒▒▒▒        ",
        "         ░░░        ▓▓▓▓▓▓▓▓▒▒▒▒▒▒        ",
        "                     ▓▓▓▓▓▓▓▒▒▒▒▒▒        ",
        "                       ▓▓▓▓▓▒▒▒▒          ",
        "                          ▓▓▒▒            ",
        "",
        "█░█ █▀ █▀▀ █▀█ █▀▄ █▀▀   █▀ █░█ █▀▀ █▄▀ █▀",
        "▀▄▀ ▄█ █▄▄ █▄█ █▄▀ ██▄   ▄█ █▄█ █▄▄ █░█ ▄█",
      }
      -- local button = require("astronvim.utils").alpha_button
      -- table.insert(opts.section.buttons.val, 0, button("LDR p a", "  Remove VSCode  "))
      -- opts.config.layout[3].val = 4
    end,
  },
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "User AstroFile",
    opts = {
      suggestion = {
        auto_trigger = true,
        debounce = 150,
      },
      panel = {
        keymap = {
          open = "<M-c>",
        },
      },
    },
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      opts.mapping["<M-.>"] = opts.mapping["<C-Space>"]
      return opts
    end,
  },
  {
    "akinsho/toggleterm.nvim",
    opts = function(_, opts) opts.float_opts.border = "single" end,
  },
}

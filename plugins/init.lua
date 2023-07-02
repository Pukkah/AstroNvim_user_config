return {
  { "ThePrimeagen/vim-be-good", cmd = { "VimBeGood" } },
  {
    "luisiacc/gruvbox-baby",
    init = function()
      vim.g.gruvbox_baby_background_color = "dark"
      vim.g.gruvbox_baby_transparent_mode = false
      vim.g.gruvbox_baby_telescope_theme = false
    end,
  },
  {
    "nvim-notify",
    opts = {
      renderer = "compact",
      stages = "slide",
      -- background_colour = "#000000", -- fix for transparent mode
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = function(_, opts)
      opts.defaults.borderchars = {
        prompt = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
        results = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
        preview = { "═", "│", "─", "│", "╒", "╕", "┘", "└" },
      }
    end,
  },
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)      -- override the options using lazy.nvim
      opts.section.header.val = { -- change the header section value
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
      opts.config.layout[3].val = 4
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
}

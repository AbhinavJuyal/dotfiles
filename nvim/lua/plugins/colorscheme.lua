return {
  {
    "Mofiqul/vscode.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("vscode").setup({
        italic_comments = true,
        transparent = true,
        underline_links = true,
        terminal_colors = true,
      })
      vim.cmd.colorscheme("vscode")
    end,
  },
  -- {
  --   "navarasu/onedark.nvim",
  --   opts = function()
  --     return {
  --       style = "dark",
  --     }
  --   end,
  -- },
  -- {
  --   "craftzdog/solarized-osaka.nvim",
  --   lazy = true,
  --   priority = 1000,
  --   opts = function()
  --     return {
  --       transparent = false,
  --     }
  --   end,
  -- },
  -- {
  --   "sainnhe/edge",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     -- Optionally configure and load the colorscheme
  --     -- directly inside the plugin declaration.
  --     vim.g.edge_enable_italic = true
  --     vim.cmd.colorscheme("edge")
  --   end,
  -- },
  -- {
  --   "gmr458/vscode_modern_theme.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require("vscode_modern").setup({
  --       cursorline = true,
  --       transparent_background = true,
  --       nvim_tree_darker = true,
  --     })
  --     vim.cmd.colorscheme("vscode_modern")
  --   end,
  -- },
  {
    "LazyVim/LazyVim",

    opts = {
      colorscheme = "vscode",
      -- to disable lazyvim colorscheme
      -- colorscheme = function() end
    },
  },
}

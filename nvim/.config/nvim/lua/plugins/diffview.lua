return {
  "sindrets/diffview.nvim",
  cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewFileHistory", "DiffviewToggleFiles" },
  keys = {
    {
      "<leader>gd",
      "<cmd>DiffviewOpen<cr>",
      desc = "Diffview: review working tree",
    },
    {
      "<leader>gD",
      "<cmd>DiffviewClose<cr>",
      desc = "Diffview: close",
    },
    -- NOTE: <leader>gf (git_log_file) and <leader>gh (gitsigns hunks
    -- group) are taken by LazyVim, so file history lives under <leader>gv.
    {
      "<leader>gv",
      "<cmd>DiffviewFileHistory %<cr>",
      desc = "Diffview: history of current file",
    },
    {
      "<leader>gV",
      "<cmd>DiffviewFileHistory<cr>",
      desc = "Diffview: history of branch",
    },
  },
  opts = {
    enhanced_diff_hl = true,
    view = {
      -- side-by-side for reviewing changes before committing
      default = { layout = "diff2_horizontal" },
      merge_tool = { layout = "diff3_mixed", disable_diagnostics = true },
    },
    file_panel = {
      listing_style = "tree",
      win_config = { position = "left", width = 30 },
    },
    keymaps = {
      view = {
        { "n", "q", "<cmd>DiffviewClose<cr>", { desc = "Close diffview" } },
      },
      file_panel = {
        { "n", "q", "<cmd>DiffviewClose<cr>", { desc = "Close diffview" } },
      },
    },
  },
}

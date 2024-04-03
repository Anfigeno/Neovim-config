return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = { 
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup {
      popup_border_style = "rounded",
    }

    vim.keymap.set("n", "<c-b>", "<cmd>Neotree toggle float<cr>")
  end
}
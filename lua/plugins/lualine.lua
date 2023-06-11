return {

  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
      theme = "sonokai",
      sections = {
        lualine_c = {
          { "diagnostics", icons_enabled = true },
        },
        lualine_x = {
          {
            function()
              return "[" .. vim.lsp.get_active_clients()[1].name .. "]"
            end,
          },
          { "filetype", icons_enabled = true },
          "encoding",
        },
        lualine_z = {
          { "datetime", style = "%a %d/%m/%Y %I:%H %p" },
        },
      },
      options = {
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
      },
    },
  },
}

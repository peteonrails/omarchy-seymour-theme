local palette = {
  base00 = "#15100e", -- background
  base01 = "#2a201d", -- lighter bg (status, line numbers)
  base02 = "#3e2e28", -- selection bg
  base03 = "#5a4a44", -- comments, invisibles
  base04 = "#b5ad8a", -- dark foreground (status)
  base05 = "#ece6c2", -- default foreground, delimiters
  base06 = "#fdf6e3", -- light fg
  base07 = "#fdf6e3", -- light bg
  base08 = "#d44a3a", -- red    — variables, deleted
  base09 = "#f3d6a8", -- orange — constants, numbers
  base0A = "#ffd99c", -- yellow — classes, search
  base0B = "#87c700", -- green  — strings, inserted (Audrey accent)
  base0C = "#438a8a", -- teal   — regex, escapes
  base0D = "#6abdbd", -- bright teal — functions, headings
  base0E = "#9472b1", -- lavender    — keywords, italic
  base0F = "#c44a64", -- magenta     — deprecated
}

return {
  {
    "nvim-mini/mini.base16",
    lazy = false,
    priority = 1000,
    config = function()
      require("mini.base16").setup({ palette = palette, use_cterm = true })
      vim.g.colors_name = "seymour"
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function()
        require("mini.base16").setup({ palette = palette, use_cterm = true })
        vim.g.colors_name = "seymour"
      end,
    },
  },
}

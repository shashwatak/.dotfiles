
require('lualine').setup {
  options = { theme  = "tokyonight" },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {
      {'filename', path = 1,}
    },
    lualine_c = {'location'},
    lualine_x = {'diagnostics'},
    lualine_y = {},
    lualine_z = {'branch'},
  },
}


return {
  "fmbarina/multicolumn.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    sets = {
      lua = {
        scope = "file",
        rulers = { 81 },
        full_column = true,
      },
      python = {
        scope = "window",
        rulers = { 89 },
        to_line_end = true,
        bg_color = "#f08800",
        fg_color = "#17172e",
      },
      rust = {
        scope = "window",
        rulers = { 101 },
        to_line_end = true,
        bg_color = "#f08800",
        fg_color = "#17172e",
      },
      c = {
        scope = "window",
        rulers = { 81 },
        to_line_end = true,
        always_on = true,
      },
    },
  },
}

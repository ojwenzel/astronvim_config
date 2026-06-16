---@type LazySpec
return {
  {
    "kevinhwang91/nvim-ufo",
    dependencies = { "kevinhwang91/promise-async" },
    opts = {
      provider_selector = function(bufnr, filetype, buftype) return { "treesitter", "indent" } end,
    },
  },

  { "max397574/better-escape.nvim", enabled = false },
}

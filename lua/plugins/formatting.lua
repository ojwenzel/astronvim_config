---@type LazySpec
return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        -- bash pack incorrectly includes shellcheck here (it's a linter, not a formatter)
        sh = { "shfmt" },
        zsh = { "shfmt" },
        -- alejandra is available system-wide on NixOS
        nix = { "alejandra" },
        -- prettier handles markdown formatting
        markdown = { "prettier" },
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        markdown = { "markdownlint" },
      },
    },
  },
}

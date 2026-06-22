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

  {
    "stevearc/aerial.nvim",
    opts = function(_, opts)
      -- treesitter backend crashes on markdown (nil node bug); use LSP only
      opts.backends = { ["_"] = { "treesitter", "lsp" }, markdown = { "lsp" } }
      return opts
    end,
  },

  {
    "iamcco/markdown-preview.nvim",
    init = function()
      vim.g.mkdp_open_to_the_world = 1 -- listen on 0.0.0.0 so SSH port-forward works
      vim.g.mkdp_browser = ""          -- don't try to open a local browser
      vim.g.mkdp_port = "8090"
      vim.g.mkdp_echo_preview_url = 1  -- print the URL in the cmdline on :MarkdownPreview
    end,
  },
}

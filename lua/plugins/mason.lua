-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Mason

---@type LazySpec
return {
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    -- overrides `require("mason-tool-installer").setup(...)`
    opts = {
      -- Make sure to use the names found in `:Mason`
      ensure_installed = {
        -- language servers (packs handle most; these are extras)
        "docker-compose-language-service",
        "taplo",

        -- formatters/linters managed by Mason (non-Nix tooling)
        -- Note: shfmt, shellcheck, hadolint, clangd, clang-format, prettier,
        -- markdownlint, nixd, statix, deadnix are system-installed via Nix
        "stylua",    -- lua formatter
        "yamllint",
        "cspell",

        -- debuggers
        "debugpy",
      },
    },
  },
}

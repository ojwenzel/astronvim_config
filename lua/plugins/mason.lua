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
        -- language servers
        "bash-language-server",
        "dockerfile-language-server",
        "docker-compose-language-service",
        "lua-language-server",
        "pyright",
        "ruff",
        "taplo",

        -- formatters / linters
        "black",
        "cspell",
        "isort",
        "markdownlint",
        "shellcheck",
        "stylua",
        "yamllint",

        -- debuggers
        "debugpy",
      },
    },
  },
}

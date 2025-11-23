---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "catppuccin",
  transparency = true,
}

M.nvdash = { load_on_startup = true }

M.ui = {
  statusline = {
    theme = "minimal",
    separator_style = "round",
  },
}

M.mason = {
  pkgs = {
    "eslint-lsp",
    "json-lsp",
    "prettierd",
    "typescript-language-server",
    "tailwindcss-language-server",
  },
}

return M

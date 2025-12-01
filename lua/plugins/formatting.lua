return {
  'stevearc/conform.nvim',
  opts = {
    notify_on_error = false,
    format_on_save = function(bufnr)
      local disable_filetypes = { c = false, cpp = true }
      return {
        timeout_ms = 500,
        lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
      }
    end,
    formatters_by_ft = {
      lua = { 'stylua' },
      javascript = { 'prettierd', 'prettier' },
      typescript = { 'prettierd', 'prettier' },
      typescriptreact = { 'prettierd', 'prettier' },
      javascriptreact = { 'prettierd', 'prettier' },
      -- javascript = { 'biome' },
      -- typescript = { 'biome' },
      -- typescriptreact = { 'biome' },
      -- javascriptreact = { 'biome' },
    },
    formatters = {
      ['biome-check'] = function()
        local util = require 'conform.util'
        return {
          meta = {
            url = 'https://biomejs.dev/reference/cli/#biome-check',
            description = 'A toolchain for web projects, aimed to provide functionalities to maintain them.',
          },
          command = util.from_node_modules 'biome',
          stdin = true,
          args = { 'check', '--write', '--stdin-file-path', '$FILENAME' },
          cwd = util.root_file {
            'biome.json',
            'biome.jsonc',
          },
        }
      end,
    },
  },
}

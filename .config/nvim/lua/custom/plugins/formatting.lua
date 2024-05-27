return { -- Autoformat
  'stevearc/conform.nvim',
  opts = {
    notify_on_error = false,
    format_on_save = function(bufnr)
      -- Disable "format_on_save lsp_fallback" for languages that don't
      -- have a well standardized coding style. You can add additional
      -- languages here or re-enable it for the disabled ones.
      local disable_filetypes = { c = true, cpp = true }
      return {
        timeout_ms = 500,
        lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
      }
    end,
    formatters_by_ft = {
      cmake = { 'cmake-format' },
      -- Conform can also run multiple formatters sequentially
      python = { 'isort', 'black', 'flake8' },
      --
      -- You can use a sub-list to tell conform to run *until* a formatter
      -- is found.
      -- javascript = { { "prettierd", "prettier" } },
      cpp = { 'clang-format' },
    },
    -- Customize formatters
    formatters = {
      flake8 = {
        inherit = false,
        command = 'flake8',
        args = { '--max-line-length=120', '--extended-ignore=E203', '$FILENAME' },
      },
      isort = {
        prepend_args = { '--profile', 'black', '--filter-files' }
      }
    },
  },
}

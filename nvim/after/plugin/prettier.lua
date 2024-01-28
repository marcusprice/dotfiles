-- Enable auto-formatting on save
vim.api.nvim_exec([[
  augroup Prettier
    autocmd!
    autocmd BufWritePre *.js,*.jsx,*.json,*.md,*.ts,*.tsx Prettier
  augroup END
]], true)

return {
    cmd = { 'typescript-language-server', '--stdio' },
    filetypes = { 'typescript', 'javascript', 'typescriptreact' },
    -- Nested lists indicate equal priority, see |vim.lsp.Config|.
    root_markers = { { 'package.json', 'package-lock.json' }, '.git' },
    -- Server-specific settings
    settings = {}
}

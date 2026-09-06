return {
    'nvim-treesitter/nvim-treesitter',
    commit = "41416e81a6c7f4af4984395bfe0cd8d174e70976",
    lazy = false,
    build = ':TSUpdate',
    config = function()
        ts = require('nvim-treesitter')
    tag = 'v0.10.0',
        ts.setup {
          -- Directory to install parsers and queries to (prepended to `runtimepath` to have priority)
          install_dir = vim.fn.stdpath('data') .. '/site'
        }
        ts.install { 'lua', 'javascript', 'typescript', 'json' }
    end,
}

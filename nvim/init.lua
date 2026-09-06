require('marcusprice')
require('lazy.lazy')
vim.lsp.enable('typescript-language-server')
vim.diagnostic.config({
    virtual_text = true,
    float = {
        source = true,
        max_width = 80,
    },
})
vim.keymap.set("n", "]d", function()
  vim.diagnostic.jump({ count = 1, float = true })
end, { desc = "Next diagnostic" })

vim.keymap.set("n", "[d", function()
  vim.diagnostic.jump({ count = -1, float = true })
end, { desc = "Previous diagnostic" })

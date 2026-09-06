return {
    cmd = { 'lua-language-server' },
    filetypes = { 'lua' },
    -- Nested lists indicate equal priority, see |vim.lsp.Config|.
    root_markers = {
        ".luarc.json",    -- Official lua_ls configuration file (Highest priority)
        ".luarc.jsonc",   -- JSON with Comments variant
        ".luacheckrc",    -- Linter configuration file
        ".stylua.toml",   -- Code formatter configuration (StyLua)
        "stylua.toml",    -- Code formatter fallback
        "selene.toml",    -- Alternative linter configuration (Selene)
        ".git"            -- Fallback fallback to scope to the Git repository root
    },
    -- Server-specific settings
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT",
            },

            workspace = {
                checkThirdParty = false,
                library = {
                    vim.env.VIMRUNTIME,
                },
            },
        },
    },
}

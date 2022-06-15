return {
  settings = {
    Lua = {
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        -- library = {
        --   [vim.fn.expand "$VIMRUNTIME/lua"] = true,
        --   [vim.fn.stdpath "config" .. "/lua"] = true,
        -- },
        -- Do not send telemetry data containing a randomized but unique identifier
        telemetry = {
          enable = false,
        },
      },
    },
  }
}

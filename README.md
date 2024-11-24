# flynn.nvim

## 🚀 Installation && Usage

```lua
-- lazy.nvim
{ 'rolandasb/flynn.nvim' }
-- or
{ 
  'rolandasb/flynn.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  config = function()
    require("flynn").setup({
      transparent = false, -- boolean
      transparent_column = false, -- boolean
      comment_italic = false -- boolean
    })
  end
}
```

```lua
-- disable semantic-tokens (strongly recommended)
local on_attach = function (client, _) 
    client.server_capabilities.semanticTokensProvider = nil
end

local lsp = require("lspconfig")
lsp[$server].setup({ ..., on_attach = on_attach})
```

```lua
colorscheme flynn
vim.cmd("colorscheme flynn")
```

## 🔗 Compatibility

- Treesitter (required)
- Netrw
- Lazy
- IndentMini

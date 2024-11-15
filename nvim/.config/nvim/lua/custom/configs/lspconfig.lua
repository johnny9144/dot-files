local config = require "plugins.configs.lspconfig"
local on_attach = config.on_attach
local capabilities = config.capabilities
local lspconfig = require "lspconfig"

local servers = {
  "tsserver",
  "graphql",
}

require("lspconfig").biome.setup {}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_init = function(client, initialization_result)
      if client.server_capabilities then
        client.server_capabilities.documentFormattingProvider = false
        client.server_capabilities.semanticTokensProvider = false -- turn off semantic tokens
      end
    end,
    on_attach = on_attach,
    capabilities = capabilities,
    init_options = {
      preferences = {
        disableSuggestions = true,
      },
    },
  }
end

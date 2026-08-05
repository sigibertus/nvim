local SymbolKind = vim.lsp.protocol.SymbolKind

return {
  {
    "VidocqH/lsp-lens.nvim",
	event = "LspAttach",
    config = function()
      require("lsp-lens").setup({
        enable = true,
        include_declaration = false,

        sections = {
  references = function(count)
    return "References: " .. count
  end,

  implements = function(count)
    return "Implements: " .. count
  end,

--  git_authors = function(latest_author, count)
 --   return " " .. latest_author .. (count - 1 == 0 and "" or (" + " .. count - 1))
  --end,
        },

        ignore_filetype = {
          "prisma",
        },

        target_symbol_kinds = {
          SymbolKind.Function,
          SymbolKind.Method,
          SymbolKind.Interface,
        },

        wrapper_symbol_kinds = {
          SymbolKind.Class,
          SymbolKind.Struct,
        },
      })
    end,
  },
}

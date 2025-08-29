return {
  "saghen/blink.cmp",
  dependencies = { "rafamadriz/friendly-snippets" },

  version = "1.*",
  -- ✅ extra insert-mode keymaps that definitely call Blink
  keys = {
    {
      "<C-l>",
      function()
        require("blink.cmp").show()
      end,
      mode = "i",
      desc = "Blink: show completion",
    },
    {
      "<C-k>",
      function()
        require("blink.cmp").show()
      end,
      mode = "i",
      desc = "Blink: show completion (backup)",
    },
  },

  opts = {
    keymap = {
      preset = "default",
      ["<CR>"] = { "accept", "fallback" },
      ["<C-l>"] = { "show", "fallback" },
    },

    appearance = {
      nerd_font_variant = "mono",
    },

    completion = { documentation = { auto_show = true } },
    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },

    fuzzy = { implementation = "prefer_rust_with_warning" },
  },
  opts_extend = { "sources.default" },
}

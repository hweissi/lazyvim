return {
  {
    "chomosuke/typst-preview.nvim",
    ft = "typst",
    version = "1.*",
    build = function()
      require("typst-preview").update()
    end,
  },
  {
    "iamcco/markdown-preview.nvim",
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
  {
    "lervag/vimtex",
    config = function()
      vim.g.vimtex_view_general_viewer = "evince"
      vim.g.vimtex_view_general_options = "--unique file:@pdf\\#src:@line@tex"
    end,
  },
  {
    "iurimateus/luasnip-latex-snippets.nvim",
    -- replace "lervag/vimtex" with "nvim-treesitter/nvim-treesitter" if you're
    -- using treesitter.
    dependencies = { "L3MON4D3/LuaSnip", "lervag/vimtex" },
    config = function()
      require("luasnip-latex-snippets").setup()
      -- or setup({ use_treesitter = true })
    end,
    -- treesitter is required for markdown
    ft = { "tex", "markdown" },
  },
}

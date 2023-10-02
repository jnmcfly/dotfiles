lvim.log.level = "warn"
lvim.format_on_save.enabled = true
lvim.leader = "space"
lvim.transparent_window = true
lvim.builtin.treesitter.ensure_installed = {
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "go",
  "css",
  "rust",
  "java",
  "yaml",
  "hcl"
}

lvim.plugins = {
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  { "Pocco81/auto-save.nvim" },
  { "hashivim/vim-terraform" },
  { "chrisbra/colorizer" },
  { "mustache/vim-mustache-handlebars" },
  { "mg979/vim-visual-multi", branch = "master" },
  { "displeased/conventional.vim" }
}


local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.terraform_fmt,
    null_ls.builtins.diagnostics.markdownlint,
  },
})

require("luasnip.loaders.from_vscode").lazy_load({ paths = { "~/.config/Code/User/snippets" } })

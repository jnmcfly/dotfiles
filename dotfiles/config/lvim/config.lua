lvim.log.level = "warn"
lvim.format_on_save = false
lvim.leader = "space"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
lvim.transparent_window = true
lvim.builtin.treesitter.ensure_installed = {
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
  "hcl"
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enable = true
lvim.plugins = {
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  {"epwalsh/obsidian.nvim"},
  {"Pocco81/auto-save.nvim"},
  {"hashivim/vim-terraform"},
  {"vim-autoformat/vim-autoformat"},
  {"chrisbra/colorizer"},
}

require("obsidian").setup({
  dir = "~/git/github.com/notes.work/",
  completion = {
    nvim_cmp = true, -- if using nvim-cmp, otherwise set to false
  }
})


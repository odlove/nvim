local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

    -- "nvim-lua/plenary.nvim",

    -- { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

    { "folke/tokyonight.nvim", lazy = false, priority = 1000, },

    'neovim/nvim-lspconfig',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',

    'williamboman/mason.nvim',

    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
    'rafamadriz/friendly-snippets',

    'nvim-tree/nvim-tree.lua',
    'nvim-tree/nvim-web-devicons',

    'terrortylor/nvim-comment',

    'lervag/vimtex',

    {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },

    'nvim-treesitter/nvim-treesitter',
})


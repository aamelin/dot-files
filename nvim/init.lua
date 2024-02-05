require('remap')
require('set')

local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('rose-pine/neovim')

Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim', {['tag'] = '*'})

Plug('folke/trouble.nvim')

Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})

-- LSP
Plug('VonHeikemen/lsp-zero.nvim', {['branch'] = 'v3.x'})
-- LSP Support
Plug('neovim/nvim-lspconfig')
Plug('williamboman/mason.nvim')
Plug('williamboman/mason-lspconfig.nvim')
-- Autocompletion
Plug('hrsh7th/nvim-cmp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('saadparwaiz1/cmp_luasnip')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-nvim-lua')
-- LSP

-- Snippets
Plug('L3MON4D3/LuaSnip')
Plug('rafamadriz/friendly-snippets')

Plug("mbbill/undotree")
Plug("tpope/vim-fugitive")
Plug("nvim-treesitter/nvim-treesitter-context");
Plug("github/copilot.vim");


Plug('scalameta/nvim-metals')
Plug('aliva/vim-fish')

vim.call('plug#end')

vim.cmd.colorscheme('rose-pine')

vim.cmd.autocmd('FileType scala,sbt lua require("metals").initialize_or_attach({})')

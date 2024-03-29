local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('neovim/nvim-lspconfig')

Plug('nvim-lua/plenary.nvim')

Plug('nvim-treesitter/nvim-treesitter')

Plug('nvim-telescope/telescope.nvim', { ['tag'] = '0.1.5' })

Plug('hrsh7th/nvim-cmp')

Plug('hrsh7th/cmp-nvim-lsp')

Plug('saadparwaiz1/cmp_luasnip')

Plug('L3MON4D3/LuaSnip') 

Plug('lewis6991/gitsigns.nvim')

Plug('prettier/vim-prettier', { ['do'] = 'yarn install --frozen-lockfile --production', ['for'] = {'javascript', 'typescript', 'css', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'} })

Plug('lukas-reineke/indent-blankline.nvim')

Plug('folke/tokyonight.nvim')

vim.call('plug#end')

-- simple config plugins
require('gitsigns').setup({
	signs = {
		add          = { text = '+'},
    		change       = { text = '│' },
		delete       = { text = '_' },
		topdelete    = { text = '‾' },
		changedelete = { text = '~' },
		untracked    = { text = '┆' },
  },
})

require('ibl').setup()

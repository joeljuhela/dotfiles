return {
  "nvim-lua/plenary.nvim",
  "thePrimeagen/harpoon",
	{"nvim-telescope/telescope.nvim", tag = "0.1.5"},
	{"Everblush/nvim", name = "everblush", lazy = false},
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},

	{'williamboman/mason.nvim'},
  {'williamboman/mason-lspconfig.nvim'},
	{
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    lazy = true,
    config = false,
  },
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      {'hrsh7th/cmp-nvim-lsp'},
    }
  },
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      {'L3MON4D3/LuaSnip'}
    },
  },
}

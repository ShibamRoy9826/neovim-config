return {
	'akinsho/bufferline.nvim', 
	version = "*", 
	dependencies = 'nvim-tree/nvim-web-devicons',
	opts = {
    options = {
      numbers = "ordinal",
      diagnostics = "nvim_lsp",
    },
  },
  config = function(_, opts)
    require("bufferline").setup(opts)
  end,
}


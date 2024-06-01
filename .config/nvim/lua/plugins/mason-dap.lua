return {
	{
		"jayp0521/mason-nvim-dap.nvim",
		dependencies = {
			"williamboman/mason.nvim",
		},
		config = function()
			require("mason-nvim-dap").setup({
				ensure_installed = {
					"python",
					"go",
				},
				automatic_installation = false,
			})
		end,
	},
}

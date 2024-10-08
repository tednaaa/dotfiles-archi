return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	event = "VimEnter",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	keys = { { "<leader>e", "<cmd>Neotree toggle<cr>" } },
	config = function()
		vim.fn.sign_define("DiagnosticSignError", { text = " ", texthl = "DiagnosticSignError" })
		vim.fn.sign_define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
		vim.fn.sign_define("DiagnosticSignInfo", { text = " ", texthl = "DiagnosticSignInfo" })
		vim.fn.sign_define("DiagnosticSignHint", { text = "󰌵", texthl = "DiagnosticSignHint" })

		require("neo-tree").setup({
			window = { width = 60 },

			source_selector = {
				winbar = false,
				show_scrolled_off_parent_node = false,
			},

			filesystem = {
				filtered_items = {
					hide_dotfiles = false,
					hide_gitignored = false,
					hide_hidden = false,
					never_show = { ".DS_Store" },
				},
				follow_current_file = { enabled = true },
				use_libuv_file_watcher = true,
			},
			default_component_configs = {
				git_status = {
					symbols = {
						added = "",
						modified = "",
						deleted = "󰚃",
						renamed = "󰛿",
						untracked = "○",
						ignored = "◌",
						unstaged = "○",
						staged = "●",
						conflict = "◎",
					},
				},
			},
		})

		vim.cmd("Neotree show")
	end,
}

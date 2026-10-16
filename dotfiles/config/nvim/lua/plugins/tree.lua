return {
	"nvim-tree/nvim-tree.lua",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		-- Disable netrw
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		require("nvim-tree").setup({
			sort = {
				sorter = "case_sensitive",
				folders_first = true,
			},
			view = {
				width = 30,
				side = "left",
			},
			renderer = {
				group_empty = true,
				indent_markers = {
					enable = true,
				},
			},
			filters = {
				dotfiles = false,
				git_ignored = true,
			},
			git = {
				ignore = false,
			},

			update_focused_file = {
				enable = true,
				update_root = {
					enable = true,
				},
			},

			actions = {
				open_file = {
					quit_on_open = false,
				},
			},
		})

		local nvim_tree_api = require("nvim-tree.api")
		vim.keymap.set("n", "<leader>t", function()
			nvim_tree_api.tree.toggle()
		end, { desc = "Toggle file tree" })
		-- require("nvim-tree.api").tree.toggle(false, true) -- Toggle without focusing
	end,
}

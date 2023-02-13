local status, telescope = pcall(require, "telescope")
if not status then
	return
end

local actions = require("telescope.actions")
local builtin = require("telescope.builtin")
local fb_actions = require("telescope").extensions.file_browser.actions
local action_layout = require("telescope.actions.layout")

local function telescope_buffer_dir()
	return vim.fn.expand("%:p:h")
end

telescope.setup({
	-- pickers = {
	-- 	find_files = {
	-- 		hidden = true,
	-- 	},
	-- },
	defaults = {
		mappings = {
			i = {
				-- ["<esc>"] = actions.close,
				["<C-u>"] = false, -- ["<C-l>"] = false, -- Couldnt work this mapping out
				["<M-p>"] = action_layout.toggle_preview,
			},
			n = {
				["q"] = actions.close,
				["<M-p>"] = action_layout.toggle_preview,
			},
		},
	},
	extensions = {
		file_browser = {
			theme = "ivy",
			-- disables netrw and use telescope-file-browser in its place
			hijack_netrw = true,
			mappings = {
				-- your custom insert mode mappings
				["i"] = {
					["<C-w>"] = function()
						vim.cmd("normal vbd")
					end,
				},
				["n"] = {
					-- your custom normal mode mappings
					["N"] = fb_actions.create,
					["h"] = fb_actions.goto_parent_dir,
					["/"] = function()
						vim.cmd("startinsert")
					end,
				},
			},
		},
	},
	fzf = {
		fuzzy = true, -- false will only do exact matching
		override_generic_sorter = true, -- override the generic sorter
		override_file_sorter = true, -- override the file sorter
		case_mode = "smart_case", -- or "ignore_case" or "respect_case"
	},
})

-- load_extension, after setup function
telescope.load_extension("fzf")
telescope.load_extension("file_browser")

-- Keybinds
-- local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
vim.keymap.set("n", "<C-p>", builtin.git_files, {})
vim.keymap.set("n", "<leader>pg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>ps", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set("n", "<leader>pb", builtin.buffers, {})
vim.keymap.set("n", "<leader>ph", builtin.help_tags, {})
vim.keymap.set("n", "<leader>pn", "<cmd>Telescope notify<CR>")

-- Telescope File Browser
vim.keymap.set("n", "<leader>pt", function()
	telescope.extensions.file_browser.file_browser({
		use_fd = false,
		path = "%:p:h",
		cwd = telescope_buffer_dir(),
		grouped = true,
		hidden = false,
		respect_gitignore = false,
		-- previewer = true,
		initial_mode = "normal",
		layout_config = { height = 30 },
	})
end)

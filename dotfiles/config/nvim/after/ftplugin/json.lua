-- vim.cmd([[set filetype=jsonc]])
-- print(vim.api.nvim_buf_get_name(0))
local filename = vim.fn.expand("%:t")

local config_files = {
	"tsconfig.json",
	"eslint.json",
}
--
-- local config_files = "tsconfig.json"

local function table_contains(tbl, x)
	local found = false
	for _, v in pairs(tbl) do
		if v == x then
			found = true
		end
	end
	return found
end

if table_contains(config_files, filename) then
	-- if filename == config_files then
	vim.cmd([[set filetype=jsonc]])
end

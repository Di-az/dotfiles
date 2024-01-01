local filename = vim.fn.expand("%:t")

local config_files = {
	"tsconfig.json",
	"eslint.json",
}

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
	vim.cmd([[set filetype=jsonc]])
end

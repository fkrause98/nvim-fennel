-- ~/.config/nvim/plugin/0-tangerine.lua

-- pick your plugin manager, default [standalone]
local pack = "tangerine" or "packer" or "paq"

local function bootstrap(url, ref)
	local name = url:gsub(".*/", "")
	local path = vim.fn.stdpath [[data]] .. "/site/pack/".. pack .. "/start/" .. name

	if vim.fn.isdirectory(path) == 0 then
		print(name .. ": installing in data dir...")

		vim.fn.system {"git", "clone", url, path}
		if ref then
			vim.fn.system {"git", "-C", path, "checkout", ref}
		end

		vim.cmd [[redraw]]
		print(name .. ": finished installing")
	end
end
bootstrap("https://github.com/udayvir-singh/tangerine.nvim", "v2.3")
require("tangerine").setup({})
bootstrap("https://github.com/udayvir-singh/hibiscus.nvim", "v1.4")


return{
	'ThePrimeagen/harpoon',
	config = function()
require("harpoon").setup({
    menu = {
        width = vim.api.nvim_win_get_width(0) - 4,
    },
})
vim.keymap.set("n", "<leader>a", function() require("harpoon.mark").add_file() end)
vim.keymap.set("n", "<C-e>", function() require("harpoon.ui").toggle_quick_menu() end)
vim.keymap.set("n", "<C-1>", function() require("harpoon.ui").nav_file(1) end)
vim.keymap.set("n", "<C-2>", function() require("harpoon.ui").nav_file(2) end)
vim.keymap.set("n", "<C-3>", function() require("harpoon.ui").nav_file(3) end)
vim.keymap.set("n", "<C-4>", function() require("harpoon.ui").nav_file(4) end)
vim.keymap.set("n", "<C-5>", function() require("harpoon.ui").nav_file(5) end)
vim.keymap.set("n", "<C-6>", function() require("harpoon.ui").nav_file(6) end)
vim.keymap.set("n", "<C-7>", function() require("harpoon.ui").nav_file(7) end)
vim.keymap.set("n", "<C-8>", function() require("harpoon.ui").nav_file(8) end)
vim.keymap.set("n", "<C-9>", function() require("harpoon.ui").nav_file(9) end)
end
}

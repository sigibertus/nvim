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
vim.keymap.set("n", "<C-1>", function() require("harpoon.ui").toggle_quick_menu() end)
vim.keymap.set("n", "<C-2>", function() require("harpoon.ui").toggle_quick_menu() end)
vim.keymap.set("n", "<C-3>", function() require("harpoon.ui").toggle_quick_menu() end)
vim.keymap.set("n", "<C-4>", function() require("harpoon.ui").toggle_quick_menu() end)
end
}

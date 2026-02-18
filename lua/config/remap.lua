vim.keymap.set("n", "<leader>pv", vim.cmd.Ex);
vim.keymap.set("n", "<leader>b", function()
    -- Check if a terminal buffer exists
    for _, buf in ipairs(vim.api.nvim_list_bufs()) do
        if vim.api.nvim_buf_get_option(buf, "buftype") == "terminal" then
            vim.cmd("buffer " .. buf) -- Switch to existing terminal buffer
            vim.api.nvim_feedkeys("clear\ncargo run\n", "t", false) -- Clear screen and rerun
            return
        end
    end

    -- If no terminal exists, create a new one
    vim.cmd("botright split | resize 10 | terminal cd " .. vim.g.startup_dir .. " && cargo run")
end, { noremap = true, silent = true })

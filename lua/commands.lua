vim.api.nvim_create_user_command('GitAdd', function()
    local file = vim.fn.expand('%')

    if file ~= '' then
        vim.cmd('!git add ' .. vim.fn.shellescape(file))
    else
        print("No file to add.")
    end
end, { nargs = 0 })

local bufferline = require('bufferline')

bufferline.setup{
    options = {
        mode = "tabs",
        enforce_regular_tabs = false,
        tab_size = 16,
        name_formatter = function(buf)
            -- Specific for Next.js because all files looks the same ...
            if (buf.name == 'route.ts' or buf.name == 'page.tsx' or buf.name == 'layout.tsx') then
                local sp = vim.fn.split(buf.path, '/')
                local dir = sp[#sp - 1]
                if (dir == nil) then
                    return buf.name
                end
                return dir .. '/' .. buf.name
            end
            return buf.name
        end,
        diagnostics = "nvim_lsp",
        numbers = "none",
        right_mouse_command = false,
        middle_mouse_command = false,
        show_buffer_icons = true,
        show_buffer_close_icons = false,
        separator_style = "thick",
        offsets = {
            {
                filetype = "NvimTree",
                text = "NvimTree",
                text_align = "center",
                separator = true
            }
        },
    },
}

vim.cmd([[
augroup MyColors
autocmd!
autocmd ColorScheme * highlight BufferLineFill guibg=#3C3836
autocmd ColorScheme * highlight BufferLineSeparator guifg=#3C3836
autocmd ColorScheme * highlight BufferLineSeparatorSelected guifg=#3C3836
augroup END
]])

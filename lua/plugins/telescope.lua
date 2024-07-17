local actions = require("telescope.actions")

require("telescope").setup({
    defaults = {
        layout_config = {
            width = {
                padding = 0
            }
        },
        path_display = {
            "truncate"
        },
        previewer = true,
        layout_strategy = "flex",
        file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
        grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
        qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,
        mappings = {
            i = {
                -- exit telescope on first <Esc>
                ["<esc>"] = actions.close,
            },
        },
    },
})

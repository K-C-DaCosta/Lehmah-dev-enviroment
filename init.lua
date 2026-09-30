require("config.lazy")

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.number = true 
vim.lsp.inlay_hint.enable(true);

vim.keymap.set("n","<leader>r",vim.lsp.buf.rename, {
    desc = 'Rename Identifier'
})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set(
    'n', 
    '<leader>tf',
    ':NvimTreeFindFile<CR>',
    { desc = 'Jumps to current file in nvim_tree'}
)

vim.keymap.set(
    'n',
    '<Tab>',
    ':NvimTreeToggle<CR>', 
    { 
        noremap = true,
        silent = true,
        desc = 'Toggle NvimTree'
    }
);

-- Explicitly dim/grey out code disabled by #[cfg(...)]
vim.api.nvim_set_hl(0, "@lsp.mod.disabled", { link = "Comment" })
vim.api.nvim_set_hl(0, "@lsp.type.comment.rust", { link = "Comment" })

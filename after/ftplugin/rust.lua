local bufnr = vim.api.nvim_get_current_buf()


vim.keymap.set(
  "n", 
  "<leader>a", 
  function()
    vim.cmd.RustLsp('codeAction') -- supports rust-analyzer's grouping
    -- or vim.lsp.buf.codeAction() if you don't want grouping.
  end,
  { silent = true, buffer = bufnr }
);

vim.keymap.set(
  "n", 
  "K",  -- Override Neovim's built-in hover keymap with rustaceanvim's hover actions
  function()
    vim.cmd.RustLsp({'hover', 'actions'})
  end,
  { silent = true, buffer = bufnr }
);

vim.keymap.set(
  "n", 
  "gK",  -- Override Neovim's built-in hover keymap with rustaceanvim's hover actions
  function()
      vim.cmd.RustLsp({ 'renderDiagnostic', 'current' })
  end,
  { silent = true, buffer = bufnr }
);


-- Sets keybinding for Rust Format (Shift+F)

vim.keymap.set(
  "n",
  "F",
  "<cmd>RustFmt<cr>",
  { silent = true, buffer = bufnr }
);


-- Add the action when entering a Rust buffer
vim.cmd([[amenu PopUp.-RustSep- :]])
vim.cmd([[amenu 10.330 PopUp.Rust\ Actions :RustLsp hover actions<CR>]])

vim.cmd([[amenu PopUp.-RustSep- :]])
vim.cmd([[amenu 10.330 PopUp.ToggleBreakPoint :DapToggleBreakpoint<CR>]])


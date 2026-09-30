-- File: ~/.config/nvim/lua/plugins/rustaceanvim.lua

local bufnr = vim.api.nvim_get_current_buf()


return {
    'mrcjkb/rustaceanvim',
    version = '^6',
    lazy = false,
    config = function()
        vim.g.rust_recommended_style = false
        vim.g.rustaceanvim = {
            tools = {
                enable_clippy = true,
            },
            server = {
                default_settings = {
                    ['rust-analyzer'] = {
                        diagnostics = {
                            disabled = {},
                        },
                    },
                }
            }
        }
    end,
};

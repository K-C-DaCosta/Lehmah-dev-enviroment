return {
	"nvim-treesitter/nvim-treesitter", 
	branch = 'master', 
	lazy = false, 
	build = ":TSUpdate",
    config = function()
            require'nvim-treesitter.configs'.setup {
                -- A list of parser names, or "all" (the listed parsers MUST always be installed)
                ensure_installed = {	  
                  "cpp", "rust","toml","c", "lua", "vim", 
                  "vimdoc", "query", "markdown", "markdown_inline" 
                },

                -- Install parsers synchronously (only applied to `ensure_installed`)
                sync_install = false,

                -- Automatically install missing parsers when entering buffer
                -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
                auto_install = true,

                -- List of parsers to ignore installing (or "all")
                ignore_install = { "javascript" },

                ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
                -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!
                highlight = {
                    enable = true,
                    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
                    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
                    -- Using this option may slow down your editor, and you may see some duplicate highlights.
                    -- Instead of true it can also be a list of languages
                    additional_vim_regex_highlighting = false,
                },
                rainbow = {
                    enable=true,
                    extended_mode=true,
                    max_file_lines=nil,
                },
                ident = { 
                    enable=true
                },
                -- C. 🆕 MISSING: TEXT OBJECTS (CRITICAL FOR `=if`)
                textobjects = {
                    select = {
                        enable = true,
                        -- The 'select' feature must be enabled for text objects to work.
                        -- This includes the 'f' (function) object.
                        
                        -- You can optionally list keymaps here, but the default 
                        -- enables the objects for use with 'd', 'c', 'y', '=', etc.
                        keymaps = {
                             ['af'] = '@function.outer',
                             ['if'] = '@function.inner',
                        },
                    },
                    -- It's often good practice to disable features you don't use:
                    swap = { enable = false },
                    move = { enable = false },
                },
            }
    end,
}

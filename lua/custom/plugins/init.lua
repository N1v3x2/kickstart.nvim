-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'lervag/vimtex',
    lazy = false, -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
      -- VimTeX configuration goes here, e.g.
      vim.g.vimtex_view_method = 'zathura'
      vim.g.vimtex_view_zathura_use_synctex = 0
    end,
  },
  {
    'folke/snacks.nvim',
    priority = 1000,
    lazy = false,
    config = function()
      -- Debug config
      _G.dd = function(...)
        Snacks.debug.inspect(...)
      end
      _G.bt = function()
        Snacks.debug.backtrace()
      end
      vim.print = _G.dd

      -- Turn off animations
      vim.g.snacks_animate = false

      require('snacks').setup {
        bigfile = { enabled = true },
        -- dashboard = { enabled = true },
        explorer = { enabled = true },
        indent = { enabled = true },
        input = { enabled = true },
        picker = { enabled = true },
        notifier = { enabled = true },
        quickfile = { enabled = true },
        scope = { enabled = true },
        scroll = { enabled = true },
        statuscolumn = { enabled = true },
        words = { enabled = true },
      }
    end,
  },
  {
    'folke/noice.nvim',
    event = 'VeryLazy',
    opts = {
      presets = {
        bottom_search = true, -- use a classic bottom cmdline for search
        command_palette = true, -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = false, -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = false, -- add a border to hover docs and signature help
      },
      routes = {
        {
          view = 'notify',
          filter = { event = 'msg_showmode' },
        },
      },
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      'MunifTanjim/nui.nvim',
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      'rcarriga/nvim-notify',
    },
  },
  {
    'voldikss/vim-floaterm',
    init = function()
      vim.g.floaterm_keymap_toggle = '<F7>'
      vim.g.floaterm_keymap_prev = '<F8>'
      vim.g_floaterm_keymap_next = '<F9>'
      vim.g.floaterm_keymap_new = '<F12>'
    end,
  },
  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {},
    init = function()
      vim.keymap.set('n', '<leader>mt', '<cmd>RenderMarkdown toggle<CR>', { desc = 'Toggle RenderMarkdown' })
    end,
  },
}

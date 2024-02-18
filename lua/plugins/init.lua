return {
  -- screenplay formatting
  {
    'robitx/gp.nvim',
    config = function()
      require('gp').setup()

      -- or setup with your own config (see Install > Configuration in Readme)
      -- require("gp").setup(config)

      -- shortcuts might be setup here (see Usage > Shortcuts in Readme)
    end,
  },
  {
    'jlcrochet/vim-crystal',
  },
  -- zen mode, <leader>za/n
  {
    'pocco81/truezen.nvim',
  },

  -- autopairs
  {
    'cohama/lexima.vim',
  },

  {
    'rmagatti/goto-preview',
    config = function()
      require('goto-preview').setup {}
    end,
  },

  -- markdown preview
  {
    'iamcco/markdown-preview.nvim',
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    build = 'cd app && yarn install',
    init = function()
      vim.g.mkdp_filetypes = { 'markdown' }
    end,
    ft = { 'markdown' },
  },
  -- paste images
  {
    'HakonHarnes/img-clip.nvim',
    cmd = 'PasteImage',
    opts = {
      -- add options here
      -- or leave it empty to use the default settings
    },
    keys = {
      -- suggested keymap
      { '<leader>p', '<cmd>PasteImage<cr>', desc = 'Paste clipboard image' },
    },
  },

  -- autotag
  {
    'windwp/nvim-ts-autotag',
    config = function()
      require('nvim-ts-autotag').setup()
    end,
  },

  -- kills buffers after a certain amount of time
  {
    'chrisgrieser/nvim-early-retirement',
    config = true,
    event = 'VeryLazy',
  },

  -- changes behavior of W and B to include camelCase and etc
  { 'chrisgrieser/nvim-spider', lazy = true },

  -- git blame
  {

    'f-person/git-blame.nvim',
  },

  -- ysiw[character] yank surround inner word with character
  {
    'tpope/vim-surround',
  },

  -- i don't write my own code
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    event = 'InsertEnter',
    config = function()
      require('copilot').setup {
        suggestion = {
          enabled = true,
          auto_trigger = true,
          debounce = 75,
          keymap = {
            accept = '<Tab>',
            accept_word = false,
            accept_line = false,
            next = '<C-,>',
            prev = '<C-.>',
            dismiss = '<C-]>',
          },
        },
      }
    end,
  },
  {
    'MeanderingProgrammer/dashboard.nvim',
    event = 'VimEnter',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('dashboard').setup {
        -- Dashboard header
        header = {
          'present day, present time!',
        },
        -- Format to display date in
        date_format = 'DD/MM/YYYY',
        -- List of directory paths
        directories = {
          '~/.config',
          '~/.config/nvim',
          '~/Documents/notes',
          '~/Documents/whiplash',
          '~/Documents/dev',
          '~/Documents/dev/scratch',
        },
        footer = {},
        -- Highlight groups to use for various components
        highlight_groups = {
          header = 'Constant',
          icon = 'Type',
          directory = 'Delimiter',
          hotkey = 'Statement',
        },
      }
    end,
  },
}

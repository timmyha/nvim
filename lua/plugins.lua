return {
  -- theme
  {
    'timmyha/oh-no',
    config = function()
      vim.cmd 'colorscheme oh-lucy-evening'
    end,
  },
  -- highlights hex codes with the color
  { 'brenoprata10/nvim-highlight-colors' },

  -- autopairs
  'cohama/lexima.vim',

  'felipesere/vim-open-readme',
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
  'f-person/git-blame.nvim',

  -- ysiw[character] yank surround inner word with character
  'tpope/vim-surround',

  -- i don't write my own code
  'github/copilot.vim',

  -- toggle terminal in a floating window
  {
    'numToStr/FTerm.nvim',
    config = function()
      require('FTerm').setup {
        dimensions = {
          height = 0.4, -- Height of the terminal window
          width = 1, -- Width of the terminal window
          x = 0.0, -- X axis of the terminal window
          y = 1, -- Y axis of the terminal window
        },
      }
    end,
  },

  -- dashboard
}

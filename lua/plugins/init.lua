return {
  -- screenplay formatting
  {
    'vim-scripts/fountain.vim',
  },

  -- hides colorcolumn unless necessary
  {
    'm4xshen/smartcolumn.nvim',
    opts = {},
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

  -- code actions lightbulb
  {
    'kosayoda/nvim-lightbulb',
    config = function()
      require('nvim-lightbulb').setup {
        autocmd = { enabled = true },
      }
    end,
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
    'github/copilot.vim',
  },
}

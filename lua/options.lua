local o = vim.o
local wo = vim.wo
local opt = vim.opt

o.hlsearch = true
wo.number = true
o.mouse = 'a'
o.relativenumber = true
o.clipboard = 'unnamedplus'
o.breakindent = true
o.undofile = true
o.ignorecase = true
o.smartcase = true
wo.signcolumn = 'yes'
o.updatetime = 250
o.timeout = true
o.timeoutlen = 300
o.completeopt = 'menuone,noselect'
o.termguicolors = true
opt.cursorline = true
opt.tabstop = 2
o.number = true
opt.shiftwidth = 2
opt.spelloptions = 'camel'
o.cmdheight = 0
o.colorcolumn = '80'

--vim.api.nvim_create_autocmd('BufWritePre', {
-- pattern = '*',
--callback = function(args)
-- require('conform').format { bufnr = args.buf }
-- end,
--})

-- status line highlight swaps
vim.g.linefly_options = {
  with_file_icon = false,
  with_lsp_status = false,
  with_search_count = true,
}

-- highlight on yank
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- turn off in-line diagnostics/linting
vim.diagnostic.config {
  virtual_text = false,
  float = {
    -- UI.
    header = false,
    border = 'rounded',
    focusable = true,
  },
}

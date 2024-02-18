local o = vim.o
local wo = vim.wo
local opt = vim.opt
local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

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
wo.foldlevel = 99
wo.conceallevel = 2
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
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

vim.cmd [[ 
				highlight LineflyNormal guibg=#ffffff
				highlight LineflyVisual guifg=#a698bc
				highlight LineflyInsert guifg=#97bad0
				highlight LineflyDiagnosticError guifg=#821f1a
				highlight LineflyDiagnosticWarning guifg=#f2a93b
				highlight LineflyDiagnosticInformation guifg=#85a4b8
				highlight LineflyGitAdd guifg=#7fae8f
				highlight LineflyGitChange guifg=#dec979
				highlight LineflyGitDelete guifg=#ca708a
			]]

-- highlight on yank
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', {
  clear = true,
})
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
  update_in_insert = true,
  float = {
    -- UI.
    header = false,
    border = 'rounded',
    focusable = true,
  },
}

local view_group = augroup('auto_view', { clear = true })
autocmd({ 'BufWinLeave', 'BufWritePost', 'WinLeave' }, {
  desc = 'Save view with mkview for real files',
  group = view_group,
  callback = function(args)
    if vim.b[args.buf].view_activated then
      vim.cmd.mkview { mods = { emsg_silent = true } }
    end
  end,
})
autocmd('BufWinEnter', {
  desc = 'Try to load file view if available and enable view saving for real files',
  group = view_group,
  callback = function(args)
    if not vim.b[args.buf].view_activated then
      local filetype = vim.api.nvim_get_option_value('filetype', { buf = args.buf })
      local buftype = vim.api.nvim_get_option_value('buftype', { buf = args.buf })
      local ignore_filetypes = { 'gitcommit', 'gitrebase', 'svg', 'hgcommit' }
      if buftype == '' and filetype and filetype ~= '' and not vim.tbl_contains(ignore_filetypes, filetype) then
        vim.b[args.buf].view_activated = true
        vim.cmd.loadview { mods = { emsg_silent = true } }
      end
    end
  end,
})

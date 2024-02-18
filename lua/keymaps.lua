local keymap = vim.keymap.set

-- turn off highlighting with comma
keymap('n', ',', function()
  return ':noh<CR>'
end, { expr = true, desc = 'turn off highlight' })

-- toggle LSP
keymap('n', '<leader>ll', function()
  return ':LspStop<CR>'
end, { expr = true, desc = 'Stop LSP' })

keymap('n', '<leader>ls', function()
  return ':LspStart<CR>'
end, { expr = true, desc = 'Start LSP' })

-- file browser
keymap('n', '<leader>fb', function()
  return ':Telescope file_browser<CR>'
end, { expr = true, desc = '[F]ile [B]rowser' })

-- telescope undo
keymap('n', '<leader>fu', function()
  return ':Telescope undo<CR>'
end, { expr = true, desc = '[U]ndo' })

-- project browser
keymap('n', '<leader>pp', function()
  return ':Telescope project<CR>'
end, { expr = true, desc = '[P]roject browser' })

-- i think this stops spacebar from traversing text
keymap({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- see diagnostic errors on hover
keymap('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Hover [d]iagnostic' })

-- SPIDER w, e, b changes
keymap({ 'n', 'o', 'x' }, 'w', "<cmd>lua require('spider').motion('w')<CR>", { desc = 'Spider-w' })
keymap({ 'n', 'o', 'x' }, 'e', "<cmd>lua require('spider').motion('e')<CR>", { desc = 'Spider-e' })
keymap({ 'n', 'o', 'x' }, 'b', "<cmd>lua require('spider').motion('b')<CR>", { desc = 'Spider-b' })
keymap({ 'n', 'o', 'x' }, 'ge', "<cmd>lua require('spider').motion('ge')<CR>", { desc = 'Spider-ge' })

-- toggle terminal
-- keymap('n', '<leader>tt', '<CMD>lua require("FTerm").toggle()<CR>', { desc = '[T]oggle [T]erm' })
-- keymap('t', '<Esc>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')

-- remap 'jk' and 'kj' for easy escaping
keymap('i', 'jk', '<Esc>', { noremap = true })
keymap('i', 'kj', '<Esc>', { noremap = true })

-- zenmode
keymap('v', '<leader>zn', ":'<,'>TZNarrow<CR>", {})
keymap('n', '<leader>za', ':TZAtaraxis<CR>', {})

keymap('n', 'gd', ":lua require('goto-preview').goto_preview_definition()<CR>", { noremap = true })
keymap('n', 'gt', "<cmd>lua require('goto-preview').goto_preview_type_definition()<CR>", { noremap = true })
keymap('n', 'gp', "<cmd>lua require('goto-preview').goto_preview_references()<CR>", { noremap = true })
keymap('n', '<Esc>', "<cmd>lua require('goto-preview').close_all_win()<CR>", { noremap = true })

-- center page after next search
keymap('n', 'n', 'nzzzv', { noremap = true })
keymap('n', 'N', 'Nzzzv', { noremap = true })

-- append/prepend to visual selection
keymap('v', 'ma', ":%norm I\"jkxA\"jkxA,<CR>", {})

-- ctrl+a to select all
keymap('n', '<C-a>', 'ggVG', { noremap = true })
keymap('i', '<C-[>', '<cmd>stopinsert<CR>', { noremap = true })

-- format
keymap('n', '<leader>fm', '<cmd>FormatEnable<CR><cmd>w<cr><cmd>FormatDisable<CR>')

-- gpt
keymap('n', '<leader>gpt', '<cmd>GpChatNew popup<cr>', { noremap = true })

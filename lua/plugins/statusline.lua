return {
  {
    'bluz71/nvim-linefly',
    config = function()
      vim.g.linefly_options = {
        separator_symbol = '',
        error_symbol = '',
        warning_symbol = '',
        information_symbol = '',
        with_file_icon = false,
        with_lsp_status = false,
        with_search_count = true,
      }
      vim.cmd [[ 
				highlight LineflyNormal guifg=#c9708a
				highlight LineflyVisual guifg=#a698bc
				highlight LineflyInsert guifg=#97bad0
				highlight LineflyDiagnosticError guifg=#821f1a
				highlight LineflyDiagnosticWarning guifg=#f2a93b
				highlight LineflyDiagnosticInformation guifg=#85a4b8
				highlight LineflyGitAdd guifg=#7fae8f
				highlight LineflyGitChange guifg=#dec979
				highlight LineflyGitDelete guifg=#ca708a
			]]
    end,
  },
  -- filename top right
  {
    'b0o/incline.nvim',
    config = function()
      require('incline').setup()
    end,
  },
}

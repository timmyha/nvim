return {
	{
		'timmyha/henna.nvim',
		config = function()
			-- Activation
			vim.g.oh_lucy_transparent_background = true
			vim.cmd [[colorscheme henna]]
		end
	}
}

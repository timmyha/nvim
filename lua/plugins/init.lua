return {
	-- screenplay formatting
	{
		'stevearc/oil.nvim',
		opts = {},
		-- Optional dependencies
		-- dependencies = { { "echasnovski/mini.icons", opts = {} } },
		dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
		config = function()
			require('oil').setup({
				keymaps = {
					["\\"] = "actions.close",
				}
			})
		end,
	},
	{
		'numToStr/FTerm.nvim',
		config = function()
			require('FTerm').setup({
				dimensions = {
					height = 0.55,
					width = 1,
					x = 0.1,
					y = 1
				},
				border = 'single'
			})
		end,
	},
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		}
	},
	{
		'numToStr/Comment.nvim',
		opts = {
			-- add any options here
		},
		lazy = false,
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
			require('goto-preview').setup {
				height = 20,
				references = { -- Configure the telescope UI for slowing the references cycling window.
					telescope = require("telescope.themes").get_ivy({ hide_preview = false })
				},
			}
		end,
	},
	{
		'norcalli/nvim-colorizer.lua',
		config = function()
			require('colorizer').setup()
		end,
	},
	{
		'echasnovski/mini.indentscope',
		version = false,
		config = function()
			require('mini.indentscope').setup()
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
	{ "eduardo-antunes/plainline", config = function() require("plainline").setup() end },
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
	{ 'chrisgrieser/nvim-spider',  lazy = true },

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
						accept = '<S-CR>',
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
	{ 'nvim-treesitter/nvim-treesitter' },
	{
		'MeanderingProgrammer/markdown.nvim',
		name = 'render-markdown', -- Only needed if you have another plugin named markdown.nvim
		dependencies = { 'nvim-treesitter/nvim-treesitter' },
		config = function()
			require('render-markdown').setup({})
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

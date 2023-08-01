local config = {
	explorer = {
		cmd = "nnn",       -- command overrride (-F1 flag is implied, -a flag is invalid!)
		width = 30,        -- width of the vertical split
		side = "botright",  -- or "botright", location of the explorer window
		session = "local",      -- or "global" / "local" / "shared"
		tabs = false,       -- seperate nnn instance per tab
	},
	picker = {
		cmd = "nnn",       -- command override (-p flag is implied)
		style = {
			width = 0.9,     -- percentage relative to terminal size when < 1, absolute otherwise
			height = 0.8,    -- ^
			xoffset = 0.5,   -- ^
			yoffset = 0.5,   -- ^
			border = "single"-- border decoration for example "rounded"(:h nvim_open_win)
		},
		session = "local",      -- or "global" / "local" / "shared"
	},
	auto_open = {
		setup = nil,       -- or "explorer" / "picker", auto open on setup function
		tabpage = nil,     -- or "explorer" / "picker", auto open when opening new tabpage
		empty = false,     -- only auto open on empty buffer
		ft_ignore = {      -- dont auto open for these filetypes
			"gitcommit",
		}
	},
	auto_close    = true,  -- close tabpage/nvim when nnn is last window
	replace_netrw = nil, -- or "explorer" / "picker"
	mappings      = {},       -- table containing mappings, see below
	windownav     = {        -- window movement mappings to navigate out of nnn
		left      = "'h",
		right     = "'l",
		next      = "<C-w>w",
		prev      = "<C-w>W",
	},
	buflisted = false,   -- wether or not nnn buffers show up in the bufferlist
}

require("nnn").setup(config)

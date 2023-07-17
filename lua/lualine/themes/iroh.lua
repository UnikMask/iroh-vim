colors = {
    bg = "#2e2a2b",
    fg = "#e9d49c",
    
    -- Antimony - Shades of orange-yellow
    mony0 = "#e3630a",
    mony1 = "#ff771d",
    mony2 = "#d38007",
    mony3 = "#faac09",
    mony4 = "#ffb032",

    -- Cobalts - Shades of faded green
    coba0 = "#899470",
    coba1 = "#9eb185",

    -- Iron - Shades of Red
    iron0 = "#c22211",
    iron1 = "#ca2c18",
    iron2 = "#d33b24",

    -- Brush - Shades of Beige
    brush0 = "#d6caab",
    brush1 = "#f6efdd",

    -- Silver - Shades of Grey
    silv0 = "#999999",

    -- Clay - Shades of reddish grey
    clay0 = "#403735",
    clay1 = "#7d5650",
    clay2 = "#8f5e51",
    clay3 = "#c2604c",

    -- Copper - Shades of Green
    copp0 = "#627400",
    copp1 = "#90c523",
}

return {
    normal = {
	a = {bg = colors.clay1, fg = colors.bg, gui = 'bold'},
	b = {bg = colors.clay0, fg = colors.clay1, gui = 'bold'},
	c = {bg = colors.bg, fg = colors.clay1, gui = 'bold'},
	x = {bg = colors.bg},
	y = {bg = colors.clay0, fg = colors.clay1, gui = 'bold'},
	z = {bg = colors.clay1, fg = colors.bg, gui = 'bold'},
    },
    insert = {
	a = {bg = colors.mony2, fg = colors.bg, gui = 'bold'},
	b = {bg = colors.clay0, fg = colors.mony1, gui = 'bold'},
	c = {bg = colors.bg, fg = colors.clay1, gui = 'bold'},
	x = {bg = colors.bg},
	y = {bg = colors.clay0, fg = colors.mony1, gui = 'bold'},
	z = {bg = colors.mony2, fg = colors.bg, gui = 'bold'},
    },
    replace = {
	a = {bg = colors.iron1, fg = colors.bg, gui = 'bold'},
	b = {bg = colors.clay0, fg = colors.iron0, gui = 'bold'},
	c = {bg = colors.bg, fg = colors.clay1, gui = 'bold'},
	x = {bg = colors.bg},
	y = {bg = colors.clay0, fg = colors.iron0, gui = 'bold'},
	z = {bg = colors.iron1, fg = colors.bg, gui = 'bold'},
    },
    visual = {
	a = {bg = colors.copp1, fg = colors.bg, gui = 'bold'},
	b = {bg = colors.clay0, fg = colors.copp0, gui = 'bold'},
	c = {bg = colors.bg, fg = colors.clay1, gui = 'bold'},
	x = {bg = colors.bg},
	y = {bg = colors.clay0, fg = colors.copp0, gui = 'bold'},
	z = {bg = colors.copp1, fg = colors.bg, gui = 'bold'},
    },
    inactive = {
	a = {bg = colors.clay0, fg = colors.bg},
	b = {bg = colors.bg},
	c = {bg = colors.bg},
	x = {bg = colors.bg},
	y = {bg = colors.bg},
	z = {bg = colors.clay0, fg = colors.bg},
    },
}


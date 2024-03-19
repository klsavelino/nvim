return {
	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.startify")

		dashboard.section.header.val = {
			[[                                                                             ]], 
			[[                                                                             ]], 
			[[                                                                             ]], 
			[[oooo    oooo oooooooooooo   .oooooo.   oooooo     oooo ooooo ooo        ooooo]], 
			[[`888   .8P'  `888'     `8  d8P'  `Y8b   `888.     .8'  `888' `88.       .888']], 
			[[ 888  d8'     888         888      888   `888.   .8'    888   888b     d'888 ]], 
			[[ 88888[       888oooo8    888      888    `888. .8'     888   8 Y88. .P  888 ]], 
			[[ 888`88b.     888    "    888      888     `888.8'      888   8  `888'   888 ]], 
			[[ 888  `88b.   888       o `88b    d88'      `888'       888   8    Y     888 ]], 
			[[o888o  o888o o888ooooood8  `Y8bood8P'        `8'       o888o o8o        o888o]], 
			[[                                                                             ]], 
			[[                                                                             ]], 
			[[                                                                             ]], 
		}

		alpha.setup(dashboard.opts)
	end,
}

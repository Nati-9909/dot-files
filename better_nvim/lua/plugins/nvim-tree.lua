return
{
      "nvim-tree/nvim-tree.lua",
      dependencies = { "nvim-tree/nvim-web-devicons" },
      lazy = false,
      config = function()
	 require("nvim-tree").setup({
	    view = {
	       side = "right",
	       number = true,
	       relativenumber = true,
	       preserve_window_proportions = true,
	    },
	    renderer = {
	       icons = {
		  show = {
		     modified = true
		  }
	       },
	       indent_markers = { enable = true },
	    },
	    diagnostics = {
	       enable = true,
	       show_on_dirs = true,
	    },
	    modified = {
	       enable = true,
	    },
--	    actions.change_dir = false,
	 })
      end,
}

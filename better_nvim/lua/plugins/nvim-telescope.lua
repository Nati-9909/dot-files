return {
    'nvim-telescope/telescope.nvim',
      dependencies = { 
	 'nvim-lua/plenary.nvim',
	 'BurntSushi/ripgrep',
	 'nvim-telescope/telescope-fzf-native.nvim',
      },
      config = function() 
	 local actions = require "telescope.actions"
	 require("telescope").setup({
	 defaults = {
	    layout_strategy = 'horizontal',
	    results_title = false,
	    prompt_title = false,
	    mappings = {
	       i = {
		  ["<C-j>"] = actions.move_selection_next,
		  ["<C-k>"] = actions.move_selection_previous,
		  ["<C-a>"] = actions.add_selection,
		  ["<C-s>"] = actions.toggle_selection,
		  ["<C-v>"] = actions.select_vertical,
		  ["<C-x>"] = actions.select_horizontal,
		  ["<C-t>"] = actions.select_tab,
		  ["<ESC>"] = actions.close,
	       }
	    }
	 }
      })
   end,
}

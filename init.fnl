(require-macros :hibiscus.packer)
(require-macros :hibiscus.core)
;; Bootstrap packer
(packer-setup!)
(packer!
  (use! :udayvir-singh/hibiscus.nvim)
  (use! :udayvir-singh/tangerine.nvim)
  (use! :nvim-treesitter/nvim-treesitter)
  (use! :neovim/nvim-lspconfig)
  (use! :kylechui/nvim-surround)
  (use! :williamboman/mason.nvim
	:depends ["williamboman/mason-lspconfig.nvim"])
  (use! :romgrk/barbar.nvim
	:depends ["nvim-tree/nvim-web-devicons"])
  (use! :folke/trouble.nvim)
  (use! :folke/tokyonight.nvim)
  (use! :olical/conjure)
  (use! :elihunter173/dirbuf.nvim)
  (use! :nvim-tree/nvim-tree.lua
	:depends ["nvim-tree/nvim-web-devicons"]))

(fn setup-package [package-symbol opts]
	(do 
	  (local package (require package-symbol))
	  (package.setup opts)))
(setup-package :nvim-surround {})
(setup-package :mason {})
(setup-package :dirbuf {:hash_padding 2 :show_hidden true :sort_order "default" :write_cmd "DirBufSync"})
(setup-package :nvim-tree 
	       {:sort_by "case_sensitive"
	       :view {:adaptive_size 'true :mappings { :list { :key "u" :action "dir_up"}}}
	       :renderer {:group_empty 'true}
	       :filters {:dotfiles 'true}
	       })
(include :fennel/treesitter)
(include :fennel/autocommands)
(include :fennel/options)

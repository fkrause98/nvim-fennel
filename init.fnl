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
  (use! :olical/conjure)

(fn setup-package [package-symbol opts]
	(do 
	  (local package (require package-symbol))
	  (package.setup opts)))
(setup-package :nvim-surround)
(setup-package :mason)
(include :fennel/treesitter)
(include :fennel/autocommands)
(include :fennel/options)

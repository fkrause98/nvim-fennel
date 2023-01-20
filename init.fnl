(require-macros :hibiscus.packer)
(require-macros :hibiscus.core)
;; Bootstrap packer
(packer-setup!)
(packer!
  (use! :udayvir-singh/hibiscus.nvim)
  (use! :folke/tokyonight.nvim)
  (use! :nvim-treesitter/nvim-treesitter)
  (use! :neovim/nvim-lspconfig)
  (use! :kylechui/nvim-surround)
  (use! :williamboman/mason.nvim)
  (use! :williamboman/mason-lspconfig.nvim))

(local surround (require :nvim-surround))
(surround.setup)
(include :fennel/treesitter)
(include :fennel/autocommands)
(include :fennel/options)

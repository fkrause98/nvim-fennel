(import-macros {: augroup!} :hibiscus.vim)
  
(augroup! :packer
	  [[BufWrite] init.fnl :PackerSync])
(augroup! :nvim-tree
	  [[BufNewFile BufReadPost]
	   *
	   '(fn [args]  
	     (when (not= (vim.fn.expand "%:p") "")
	       (vim.api.nvim_del_autocmd args.id)
	       (vim.cmd "noautocmd NvimTreeOpen")
	       (vim.cmd "noautocmd wincmd p")))])

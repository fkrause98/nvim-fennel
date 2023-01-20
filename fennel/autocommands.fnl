(import-macros {: augroup!} :hibiscus.vim)
(augroup! :fennel_compile
	  [[BufWritePost] *.fnl :FnlCompile])
  

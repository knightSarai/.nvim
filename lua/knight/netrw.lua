vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3

vim.cmd [[ command!  ExploreFind let @/=expand("%:t") | execute 'Explore' expand("%:h") | normal n ]]

-- vim.cmd([[
-- " This is necessary for VimTeX to load properly. The "indent" is optional.
-- " Note that most plugin managers will do this automatically.
-- filetype plugin indent on

-- " This enables Vim's and neovim's syntax-related features. Without this, some
-- " VimTeX features will not work (see ":help vimtex-requirements" for more
-- " info).
-- syntax enable
-- ]])
-- Viewer options: One may configure the viewer either by specifying a built-in
-- viewer method:
-- vim.g.vimtex_view_method = 'general'
vim.g.vimtex_view_method = 'zathura'
vim.g.vimtex_compiler_latexmk_engines = {
    _ = '-xelatex',
    pdfdvi = '-pdfdvi',
    pdfps = '-pdfps',
    pdflatex = '-pdf',
    luatex = '-lualatex',
    lualatex = '-lualatex',
    xelatex = '-xelatex',
    ['context (pdftex)'] = '-pdf -pdflatex=texexec',
    ['context (luatex)'] = '-pdf -pdflatex=context',
    ['context (xetex)'] = '-pdf -pdflatex=\'texexec --xtx\'',
}

vim.g.vimtex_compiler_latexmk = {
    aux_dir = 'build',
}

vim.g.vimtex_quickfix_mode = 2
vim.g.vimtex_quickfix_open_on_warning = 0
-- vim.g.vimtex_quickfix_ignore_filters = {
--     'Warning',
--     'warning',
-- }

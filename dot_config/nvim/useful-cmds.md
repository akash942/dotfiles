
# NOTE: some useful commands

1) to check lsps attached to current buffer do:
:lua print(vim.inspect(vim.lsp.get_clients({ bufnr = 0 })))

2) to check file type of a buffer do:
:set filetype?
file type of json is actually jsonc

3) to save a file without formatting do:
    :noa w
    it is short for=> :noautocmd w
    both will work :)

- :checkhealth => command to check health of overall plugins // good cmd overall

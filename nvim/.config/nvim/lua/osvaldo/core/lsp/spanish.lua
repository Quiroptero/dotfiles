---@brief
---
--- https://github.com/ltex-plus/ltex-ls-plus
---
--- LTeX Language Server: LSP language server for LanguageTool 🔍✔️ with support for LaTeX 🎓, Markdown 📝, and others
---
--- To install, download the latest [release](https://github.com/ltex-plus/ltex-ls-plus) and ensure `ltex-ls-plus` is on your path.
---
--- This server accepts configuration via the `settings` key.
---
--- ```lua
---   settings = {
---     ltex = {
---       language = "en-GB",
---     },
---   },
--- ```
---
--- To support org files or R sweave, users can define a custom filetype autocommand (or use a plugin which defines these filetypes):
---
--- ```lua
--- vim.cmd [[ autocmd BufRead,BufNewFile *.org set filetype=org ]]
--- ```

local language_id_mapping = {
    bib = 'bibtex',
    pandoc = 'markdown',
    plaintex = 'tex',
    rnoweb = 'rsweave',
    rst = 'restructuredtext',
    tex = 'latex',
    text = 'plaintext',
}

---@type vim.lsp.Config
vim.lsp.config.ltex_plus = {
    cmd = { 'ltex-ls-plus' },
    filetypes = {
        'markdown',
    },
    root_markers = { '.git' },
    get_language_id = function(_, filetype)
        return language_id_mapping[filetype] or filetype
    end,
    settings = {
        ltex = {
            language = "es",
            enabled = { "markdown" },
            additionalRules = {
                enablePickyRules = true,
                motherTongue = "es",
            },
            enabledRules = {
                es = {
                    "SPANISH_WORD_REPEAT_BEGINNING_RULE",
                    "ES_REPEATEDWORDS",
                }
            },
        },
    },
}

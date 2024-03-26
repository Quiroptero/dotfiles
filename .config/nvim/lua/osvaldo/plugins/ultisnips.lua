return {
  "SirVer/ultisnips",
  config = function()
    vim.g.UltiSnipsSnippetDirectories = { "custom_snippets" }
    vim.g.UltiSnipsExpandTrigger = "<tab>"
    vim.g.UltiSnipsJumpForwardTrigger = "<c-j>"
    vim.g.UltiSnipsJumpBackwardTrigger = "<c-k>"
  end,
}

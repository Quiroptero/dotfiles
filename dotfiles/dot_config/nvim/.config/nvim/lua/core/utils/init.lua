local M = {}

{{ if $work }}
require("core.utils.ticket_id")
{{ end }}

M.wordcount_clean = require("core.utils.wordcount").wordcount_clean

return M

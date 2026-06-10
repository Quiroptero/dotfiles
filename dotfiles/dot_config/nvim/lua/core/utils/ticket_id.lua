local M = {}

function M.insert()
    local handle = io.popen("git symbolic-ref --quiet --short HEAD 2>/dev/null")
    if not handle then return end
    local branch = handle:read("*a") or ""
    handle:close()
    branch = branch:gsub("%s+", "")
    
    local ticket = branch:match("FOO%-%d+")
    if not ticket then
        vim.notify("No ticket found in branch name", vim.log.levels.WARN)
        return
    end

    local formatted = string.format("[%s] ", ticket)
    vim.api.nvim_put({formatted}, "c", true, true)
end

return M

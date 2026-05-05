-- returns a "clean" word count for the current buffer
-- the intention is to use this function in markdown files parsed by Hugo
-- 
-- the function ignores:
--   * YAML frontmatter
--   * (not yet) Hugo multi-line shortcodes
--   * punctuation-only words
--   * markdown links
--   * markdown headings

local M = {}

function M.wordcount_clean()
    local text = table.concat(vim.api.nvim_buf_get_lines(0, 0, -1, true), "\n")

    -- Strip YAML frontmatter
    text = text:gsub("^%-%-%-.-%-%-%-\n?", "")

    -- Strip markdown headings (any level, whole line)
    text = text:gsub("\n#+%s.-\n", "\n")

    -- Strip markdown links [label](url)
    text = text:gsub("%b[]%b()", "")

    -- Strip HTML comments (multi-line safe)
    text = text:gsub("<!%-%-.-%-%->", "")

    -- Count words
    local count = 0
    for w in text:gmatch("%S+") do
        if w:match("%w") then
            count = count + 1
        end
    end
    return count
end

return M

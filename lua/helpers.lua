---@overload fun(t1: table, t2: table)
local function concatTables(t1, t2)
  for i = 1, #t2 do
    table.insert(t1, t2[i])
  end
  return t1
end

local function python_on_new_config(config, root_dir)
  local env = vim.trim(vim.fn.system('cd "' .. root_dir .. '"; poetry env info -p 2>/dev/null'))
  if string.len(env) > 0 then
    config.settings.python.pythonPath = env .. "/bin/python"
  end
end

return {
  concatTables = concatTables,
  python_on_new_config = python_on_new_config,
}

---@overload fun(t1: table, t2: table)
local function concatTables(t1, t2)
  for i = 1, #t2 do
    table.insert(t1, t2[i])
  end
  return t1
end

return {
  concatTables = concatTables,
}

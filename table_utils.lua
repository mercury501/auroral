
local table_utils = {}

function RemoveObject(tbl, obj)
    for i = #tbl, 1, -1 do
        if tbl[i] == obj then
            table.remove(tbl, i)
            return true
        end
    end
    return false
end

return table_utils
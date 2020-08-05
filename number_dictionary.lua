local _dictionary = {}

local data = {
    A_Person = "44999999999"
}

function _dictionary.get_caller_name(calling_number)
    local caller_name = ""
    for key,value in pairs(data) do
        if value == calling_number then
            caller_name = key
            caller_name = caller_name:gsub("_", " ")
            break
        end        
    end
    return caller_name
end

return _dictionary
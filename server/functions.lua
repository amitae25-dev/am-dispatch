function CheckJob(source, table)
    local job = GetPlayerJob(source)
    if job then 
        for index, item in ipairs(table) do 
            if item == job then 
                return true 
            end
        end
    else 
        lib.print.warn('Could not get player job!')
    end
end
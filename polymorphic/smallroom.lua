return function(t)
    if type(t) == "table" then
        function t:size()
            print("这房间只有15平米")
        end
    end
end
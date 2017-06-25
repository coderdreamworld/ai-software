return function(t)
    if type(t) == "table" then
        function t:size()
            print("这房间很大，100平米")
        end
    end
end
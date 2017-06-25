local room = {}

roomType = {
    BigRoom = "bigroom",
    SmallRoom = "smallroom"
}

function room:size()
    print("不大不小")
end

function room:setType(type)
    if type then do
            path = roomType[type]
            if path then do
                func = require(path)
                func(self)
                end
            end
        end
    end
end

return room
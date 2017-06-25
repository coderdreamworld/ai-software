room = require("room")

--初始状态
room:size()

--无参数
room:setType()
room:size()

--nil
room:setType(BigRoom)
room:size()

--path参数
room:setType("BigRoom")
room:size()

room:setType("SmallRoom")
room:size()
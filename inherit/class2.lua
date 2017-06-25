local class2 = {}
local class1 = require("class1")

 

function class2:func2()

print("class2 : func2")

end

 

function class2:new()

setmetatable(class2 , {__index = class1})  --设置class1为class2的元表的__index字段来实现继承实例对象

local self = {}

setmetatable(self , {__index = class2})

return self

-- 两个写法的区别在于，一个是固定的唯一的class2实例，另一个是每次新的实例
-- setmetatable(class2 , {__index = class1})
-- return class2

end

 

 

return class2
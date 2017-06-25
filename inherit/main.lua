local class2 = require("class2")
local s1 = class2:new()
s1:func1()     -->class1:func1
s1:func2()     -->class2:func2

--class2实例的地址
print(class2:new())
print(class2:new())
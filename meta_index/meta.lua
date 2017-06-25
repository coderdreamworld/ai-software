--[[
    __index元表是用于修改索引操作
]]

local other = {foo = 3}

--元表中设置一个表
t = setmetatable ({}, {__index = other})

--other中不存在foo，继续找元表中的foo
print(t.foo)

--不存在这个key
print(t.big)

--

--在元表中设置一个函数
mytable = setmetatable({key1 = "value"}, {
    __index = function( table, key )
        if key == "key2" then
        return "this is from metatable value"
        else
        return nil
        end
    end
})

--mytable中直接返回
print(mytable.key1)
--从元表中返回
print(mytable.key2)
--不存在
print(mytable.key3)

--跳过元表
print("跳过元表" .. (rawget(mytable,key2) or "key2为nil"))

--[[
    __newindex__index对应
    __index表示索引，而__newindex表示插入新值
]]

mymetatable = {}
other_table = setmetatable({key1="value1"}, {__newindex = mymetatable})

--已有值
print(other_table.key1)

--新key
other_table.newkey = "新值2"
print(other_table.newkey, mymetatable.newkey)

--修改已有key的值
other_table.key1 = "change value of key1"
print(other_table.key1, mymetatable.key1)

--跳过元表
rawset(other_table, "key3", "value3 would directly set")
print(other_table.key3)


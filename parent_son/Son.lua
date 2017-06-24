require("Parent")

Son = Parent:new()

--重写类方法
function Son:say()
print("我其实是儿子" .. Son.age/2)
end

return Son
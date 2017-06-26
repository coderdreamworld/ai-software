print(getmetatable("aaaa"))

tA = {}
mt = {}
print(getmetatable(tA))
setmetatable(tA, mt)
print(getmetatable(tA))

mt.__metatable = "lock"

print(getmetatable(tA))  -->lock

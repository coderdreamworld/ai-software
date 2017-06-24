Parent = {age = 40}
function Parent:new ()
    local p = {}
    p.mt = {}
    p.mt.__index = self --元表是self，这样所有实例都可以访问类方法

    setmetatable(p, p.mt)
    return p
end

function Parent:say ()
    print("我是你爹" .. self.age)
end
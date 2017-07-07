---
--- Created by admin.
--- DateTime: 2017/7/7 10:20
---

testsuper = class()

testsuper["num"] = 111

function testsuper:testprint()
    print("super print num",testsuper.num)
end

return testsuper
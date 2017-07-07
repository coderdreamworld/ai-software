---
--- Created by admin.
--- DateTime: 2017/7/7 10:21
---

import(".testsuper")

testsub = class("testsub", testsuper)

testsub["num"] = 233

function testsub:testprint()
    testsub.super.testprint(self)
    print("sub class print num", testsub.num)
    print("sub get super num", testsub.super.num)

    testsub.super.num = 555
    testsub.num = 666
    print("aaaaa")
    testsub.super.testprint(self)
    print("sub class print num", testsub.num)
    print("sub get super num", testsub.super.num)

end

return testsub
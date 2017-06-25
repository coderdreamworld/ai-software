mytable = {1,3,5,7,9,11,100}
mytable = setmetatable(mytable, {
    __call = function(t)
        sum = 0
        for i = 1, #t do
          sum = sum + t[i]
        end
    return sum
    end
})

--当做函数调用
print(mytable())
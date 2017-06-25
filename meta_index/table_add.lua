--print table
function printTable(t)
    for k,v in ipairs(mytable) do
    print(k,v)
    end
end

-- 计算表中最大值
-- 自定义计算表中最大值函数 table_maxn
function table_maxn(t)
    local mn = 0
    for k, v in pairs(t) do
        if mn < k then
            mn = k
        end
    end
    return mn
end

-- 两表相加操作
mytable = setmetatable({ 1, 2, 3 }, {
  __add = function(mytable, newtable)
    for i = 1, table_maxn(newtable) do
      table.insert(mytable, table_maxn(mytable)+1,newtable[i])
    end
    return mytable
  end
})

secondtable = {4,5,6}

mytable = mytable + secondtable
printTable(mytable)

--这样也成立，因为是从左到右计算
mytable = mytable + secondtable +secondtable
printTable(mytable)

--这样不成立，secondtable没有加法运算
--secondtable+secondtable

local function printTable(t)
  for k,v in pairs(t) do
    print(k .. "  " .. v)
  end
end

tab = {x=1,4}
printTable(tab)
print("\n")

table.insert(tab, 555)
printTable(tab)
print("\n")

tab["a"] = 444
printTable(tab)

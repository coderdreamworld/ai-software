print "enter function to be plotted (with variable 'x'):"
local l = io.read()
local f = assert(loadstring("return " .. l))
for i=0,l do
    x = i -- global 'x' (to be visible from the chunk)
    print(string.rep("*", l-i))
end

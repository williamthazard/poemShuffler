mixer = {}
mixed = ""
io.input("original.txt")
for line in io.lines() do
    if #line > 0 then
      table.insert(mixer, line)
    end
end
io.close()
function ShuffleInPlace(t)
    for i=1,#t do
        local rando = math.random(1,#t)
        t[i],t[rando] = t[rando],t[i]
    end
end
ShuffleInPlace(mixer)
for i=1,#mixer do
    mixed = mixed..mixer[i]
    mixed = mixed.."\n"
end
print(mixed)
io.output("scramble.txt")
io.write(mixed)
io.close()
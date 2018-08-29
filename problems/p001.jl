sum = 0
for x in 1:999
    if x % 3 == 0 || x % 5 == 0
        global sum += x
    end
end

println(sum)

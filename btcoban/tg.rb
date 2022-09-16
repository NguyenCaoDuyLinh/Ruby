print "Nhập 3 cạnh của tam giác: "
a = gets.to_i
b = gets.to_i
c = gets.to_i
if(a+b > c and a-b <c)
    print "3 Cạnh đó là tam giác\n"
    puts "Chu vi tam giác: #{a+b+c}\n"
    p = (a+b+c)/2
    dt = Math.sqrt(p*(p-a)*(p-b)*(p-c))
    puts "Diện tích tam giác: #{dt}"
else
    print "Không phải"
end

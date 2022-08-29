print "Nhập tên: "
ten = gets
print "Nhập msv: "
msv = gets
puts "Xin chào #{ten} - #{msv}" 
print "Nhập một số từ bàn phím: "
so = gets
puts "#{so}"
print "Nhập 2 số để so sánh\n"
print "Nhập số thứ 1: "
so1 = gets
print "Nhập số thứ 2\n"
so2 = gets
if so1 > so2
    puts "Số lớn hơn là: #{so1}" 
elsif so1 < so2
    puts "Số lớn hơn là: #{so2}" 
else
    print "2 số bằng nhau " 
end
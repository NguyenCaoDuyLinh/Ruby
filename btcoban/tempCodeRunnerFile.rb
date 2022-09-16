print "Nhập 3 số nguyên"
arr = [];
3.times {|time|
    print "Nhap so thu #{time + 1}: "
    c1 = gets.chomp.to_i
    arr.push c1
}
print "Tang dan #{arr.sort} \n"
print "Giam gan #{arr.sort.reverse}"
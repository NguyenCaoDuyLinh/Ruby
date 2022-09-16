print "Nhập 3 số nguyên\n"
arr = [];
3.times {|time|
    print "Nhập số thứ #{time + 1}: "
    c1 = gets.chomp.to_i
    arr.push c1
}
print "Tăng dần #{arr.sort} \n"
print "Giảm dần #{arr.sort.reverse}"
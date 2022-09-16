print "Nhập số phần tử của mảng: "
num = gets.to_i
a = Array.new(num) 
for i in 0..(num-1) do
    a[i]= gets.to_i
end
max = a[0]
min = a[0]
s = 0
for x in a
    if(a[i]>max)
        max = a[i]
    end
    if(a[i]<min)
        min = a[i]
    end
    s+=a[i]
end
puts "Số lớn nhất trong mảng là: #{max}"
puts "Số nhỏ nhất trong mảng là: #{min}"
puts "Giá trị trung bình trong mảng là: #{s*0.1/num}"


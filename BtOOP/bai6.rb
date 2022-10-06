class Hocsinh
    attr_accessor :hoten134, :lop134, :tuoi134, :quequan134
    def initialize(hoten134,lop134, tuoi134, quequan134)
        @hoten134 = hoten134
        @lop134 = lop134
        @tuoi134 = tuoi134
        @quequan134 = quequan134
    end
    def hienthi
        puts "Học sinh tên: #{hoten134}Lớp: #{lop134}Tuổi: #{tuoi134}Quê quán: #{quequan134}"
    end
end
class Truong 
    def themmoi
        puts "Nhập họ và tên học sinh"
        hoten134 = gets
        puts "Nhập lớp"
        lop134 = gets
        puts "Nhập tuổi"
        tuoi134 = gets
        puts "Quê quán"
        quequan134 = gets
        hs = Hocsinh.new(hoten134,lop134,tuoi134,quequan134)
        $a.push(hs)
    end
    def hienthiall
        $a.each_index{
            |index|          
            puts "#{$a[index].hienthi}"            
        }
    end
end
$a = Array.new
tr = Truong.new
puts "Nhập số lượng học sinh"
soluong = gets.chomp.to_i
for i134 in 0..(soluong - 1) do   
    tr.themmoi
  end
loop do 
    puts "1. Thêm học sinh mới."
    puts "2. Hiện thị các học sinh 20 tuổi."
    puts "3. Cho biết số lượng các học sinh có tuổi là 23 và quê ở DN."
    puts "4. Thoát"
    puts "Chọn"
    chon134 = gets.chomp
    case chon134
        when "1"
            tr.themmoi
            tr.hienthiall
        when "2"
            for x in $a do
                if(x.tuoi134.chomp == "20") then
                    puts "#{x.hienthi}"
                end
            end
        when "3"
            puts "#{$a.count{|i|i.tuoi134.chomp == "23" && i.quequan134.chomp == "DN"}} Học sinh"
        when "4"
            break
    end
end
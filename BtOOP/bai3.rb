class Thisinh134
    attr_accessor :sbd134, :hoTen134, :diaChi134, :mucUuTien134
    def initialize(sbd134,hoTen134,diaChi134,mucUuTien134)
        @sbd134 = sbd134
        @hoTen134 = hoTen134
        @diaChi134 = diaChi134
        @mucUuTien134 = mucUuTien134
    end
    def hienthi
        puts "Thí sinh có Số báo danh: #{sbd134}, Họ tên: #{hoTen134}, Địa chỉ: #{diaChi134}, Mức ưu tiên: #{mucUuTien134}"
    end 
end
class KhoiA < Thisinh134
    attr_accessor :toan134, :ly134, :hoa134
    def hienthi
        puts "Thí sinh có Số báo danh: #{sbd134}, Họ tên: #{hoTen134}, Địa chỉ: #{diaChi134}, Mức ưu tiên: #{mucUuTien134}"
        puts "Khối A: Toán, Lý, Hóa"
    end
end
class KhoiB < Thisinh134
    attr_accessor :toan134, :hoa134, :sinh134
    def hienthi
        puts "Thí sinh có Số báo danh: #{sbd134}, Họ tên: #{hoTen134}, Địa chỉ: #{diaChi134}, Mức ưu tiên: #{mucUuTien134}"
        puts "Khối B: Toán, Hóa, Sinh"
    end
end
class KhoiC < Thisinh134
    attr_accessor :van134, :su134, :dia134
    def hienthi
        puts "Thí sinh có Số báo danh: #{sbd134}, Họ tên: #{hoTen134}, Địa chỉ: #{diaChi134}, Mức ưu tiên: #{mucUuTien134}"
        puts "Khối C: Văn, Sử, Địa"
    end
end
class Tuyensinh134
    def themmoi
        puts "Chọn khối"
        puts "1. A"
        puts "2. B"
        puts "3. C"
        loai134 = gets.chomp.to_i
        puts "Nhập số báo danh"
        sbd134 = gets.chomp
        puts "Nhập họ và tên"
        hoTen134 = gets.chomp
        puts "Nhập địa chỉ"
        diaChi134 = gets.chomp
        puts "Mức ưu tiên"
        mucUuTien134 = gets.chomp
        if loai134 == 1 then
            thisinh134 = KhoiA.new(sbd134,hoTen134,diaChi134,mucUuTien134)
            elsif loai134 == 2 then
                thisinh134 = KhoiB.new(sbd134,hoTen134,diaChi134,mucUuTien134)
                else
                    thisinh134 = KhoiC.new(sbd134,hoTen134,diaChi134,mucUuTien134)
                end
                $a134.push(thisinh134)
    end
    def timkiem(sbd134)
        for x in $a134 do
            if(x.sbd134 == sbd134)
                puts "#{x.hienthi}"
            end
        end
    end
    def hienthitt
        $a134.each_index {
            |index|
            puts "#{$a134[index].hienthi()}"
        }
    end
end
$a134 = Array.new
QLTS134 = Tuyensinh134.new()
puts "Nhập số lượng thí sinh"
soluong134 = gets.chomp.to_i
for i134 in 0..(soluong134 - 1) do   
    QLTS134.themmoi()
end
loop do 
    puts "1. Thêm mới thí sinh."
    puts "2. Hiện thị thông tin của thí sinh và khối thi của thí sinh."
    puts "3. Tìm kiếm theo số báo danh."
    puts "4. Thoát"
    puts "Chọn"
    chon134 = gets.chomp
    case chon134
        when "1"
            QLTS134.themmoi
        when "2"
            QLTS134.hienthitt
        when "3"
            puts "Nhập số báo danh cần tìm kiếm"
            sbd134 = gets.chomp
            QLTS134.timkiem(sbd134)

        when "4"
            break
    end
end
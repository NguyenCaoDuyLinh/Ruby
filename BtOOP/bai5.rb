class Nguoi
    attr_accessor :hoten134, :tuoi134, :cmnd134, :phong134, :songaythue134
    def initialize(hoten134,tuoi134,cmnd134,phong134,songaythue134)
        @hoten134 = hoten134
        @tuoi134 = tuoi134
        @cmnd134 = cmnd134
        @phong134 = phong134
        @songaythue134 = songaythue134
    end
    def hienthi
        puts "Họ tên: #{hoten134}Tuổi: #{tuoi134}Chứng minh nhân dân: #{cmnd134}Phòng: #{phong134.ten134} - #{phong134.gia134} Số ngày thuê: #{songaythue134}"
    end
end
class Phong
    attr_accessor :ten134, :gia134
    def initialize(ten134,gia134)
        @ten134 = ten134
        @gia134= gia134
    end
end
class A < Phong
    def initialize
        super("A","500")
    end
end
class B < Phong
    def initialize
        super("B","300")
    end
end
class C < Phong
    def initialize
        super("C","100")
    end
end
class QLkh   
    def them
        puts "Nhập họ tên:"
        hoten134 = gets
        puts "Nhập tuổi"
        tuoi134 = gets
        puts "Nhập số chứng minh nhân dân"      
        cmnd134 = gets
        puts "Chọn phòng:"
        puts "1. Phòng A - 500$"
        puts "2. Phòng B - 300$"
        puts "3. Phòng C - 100$"
        chon = gets.chomp
        if chon == "1" then
            phong134 = A.new
            elsif chon == "2" then
                phong134 = B.new
                else 
                    phong134 = C.new
                end
        puts "Nhập số ngày thuê"
        songaythue134 = gets
        nguoi = Nguoi.new(hoten134,tuoi134,cmnd134,phong134,songaythue134)
        $nguoia.push(nguoi)
    end
    def xoa(cmnd134)
        $nguoia.each_index{
            |index|
            if($nguoia[index].cmnd134 == cmnd134) then
                $nguoia.delete_at(index)
                puts "Đã xóa người có CMND #{cmnd134}"
            end
        } 
    end
    def tinhtien(cmnd134)
        $nguoia.each_index{
            |index|
            if($nguoia[index].cmnd134 == cmnd134) then
                puts "Tổng tiền: #{($nguoia[index].phong134.gia134.chomp.to_f) * ($nguoia[index].songaythue134.chomp.to_i)}" 
            end
            
        } 
    end
    def hienthi
        $nguoia.each_index{
            |index|
            puts "#{$nguoia[index].hienthi}"
        } 
    end
end
$nguoia = Array.new
ql134 = QLkh.new
puts "Nhập số người thuê"
soluong134 = gets.chomp.to_i
for i134 in 0..(soluong134 - 1) do   
  ql134.them
end
loop do 
    puts "1. Thêm mới khách hàng."
    puts "2. Xoá khách theo số chứng minh nhân dân."
    puts "3. Tính tiền thuê phòng cho khách(xác định khách bằng số chứng minh nhân dân)"
    puts "4. Thoát"
    puts "Chọn"
    chon134 = gets.chomp
    case chon134
        when "1"
            ql134.them
            ql134.hienthi
        when "2"
            puts "Nhập số chứng minh cần xóa"
            cmnd134 = gets
            ql134.xoa(cmnd134)
            ql134.hienthi
        when "3"
            puts "Nhập số chứng minh cần tính tiền"
            cmnd134 = gets
            ql134.tinhtien(cmnd134)
        when "4"
            break
    end
end

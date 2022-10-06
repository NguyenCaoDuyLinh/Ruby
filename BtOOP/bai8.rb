class Sinhvien
    attr_accessor :hoten134, :tuoi134, :lop134
    def initialize(hoten134,tuoi134,lop134)
        @hoten134= hoten134
        @tuoi134 = tuoi134
        @lop134 = lop134
    end
    def hienthi
        puts "Họ tên: #{hoten134}Tuổi: #{tuoi134}Lớp: #{lop134}"
    end
end
class TheMuon
    attr_accessor :maphieumuon134, :ngaymuon134, :hantra134, :sohieusach134, :sinhvien134
    def initialize(maphieumuon134,ngaymuon134,hantra134,sohieusach134,sinhvien134)
        @maphieumuon134 = maphieumuon134
        @ngaymuon134 = ngaymuon134
        @hantra134 = hantra134
        @sohieusach134 = sohieusach134
        @sinhvien134 = sinhvien134 
    end
    def hienthithe
        puts "Mã phiếu mượn: #{maphieumuon134}Ngày mượn: #{ngaymuon134}Hạn trả: #{hantra134}Số hiệu sách: #{sohieusach134}Tên sinh viên #{sinhvien134.hoten134}Tuổi #{sinhvien134.tuoi134}Lớp #{sinhvien134.lop134}"
    end
end
class QLthe
    def them(the134)
        $a.push(the134)
    end
    def xoa(i134)
        $a.delete_at(i134)
    end
    def hienthitt
        $a.each_index{
            |index|
            puts "#{$a[index].hienthithe}"
        }
    end
end
$a = Array.new
ql134 = QLthe.new
loop do 
    puts "1. Thêm phiếu mượn."
    puts "2. Xoá theo mã phiếu mượn."
    puts "3. Hiển thị thông tin các thẻ mượn."
    puts "4. Thoát"
    puts "Chọn"
    chon134 = gets.chomp
    case chon134
        when "1"
            puts "Nhập họ và tên sinh viên"
            hoten134 = gets
            puts "Nhập tuổi"
            tuoi134 = gets
            puts "Nhập lớp"
            lop134 = gets
            sv = Sinhvien.new(hoten134,tuoi134,lop134)
            puts "Nhập mã Phiếu mượn"
            mpm134 = gets
            puts "Nhập Ngày mượn"
            nm134 = gets
            puts "Nhập hạn trả"
            ht134 = gets
            puts "Nhập số hiệu sách"
            shs134 = gets
            tm134 = TheMuon.new(mpm134,nm134,ht134,shs134,sv)
            ql134.them(tm134)
        when "2"
            puts "Nhập mã số thẻ mượn cần xóa"
            maso134 = gets.chomp
            $a.each_index{
                |index|          
                if $a[index].maphieumuon134 = maso134 then
                    ql134.xoa(index)
                    puts "Đã xóa thẻ có mã số #{maso134}"
                end          
            }
        when "3"
            $a.each_index{
                |index|          
                ql134.hienthitt        
            }
        when "4"
            break
    end
end

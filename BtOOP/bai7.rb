class Nguoi
    attr_accessor :hoten134, :tuoi134, :quequan134, :masogv134, :luongcung134 , :luongthuong134, :tienphat134
    def initialize(hoten134,tuoi134,quequan134,masogv134,luongcung134,luongthuong134,tienphat134)
        @hoten134 = hoten134
        @tuoi134 = tuoi134
        @quequan134 = quequan134
        @masogv134 = masogv134
        @luongcung134 = luongcung134
        @luongthuong134 = luongthuong134
        @tienphat134 = tienphat134
    end
end
class CBgv
    def them(cb134)
        $a.push(cb134)
    end
    def xoa(i)
        $a.delete_at(i)
    end
    def tinhluongthuclinh(gv)
        puts "Lương thực lĩnh: #{gv.luongcung134.chomp.to_f + gv.luongthuong134.chomp.to_f - gv.tienphat134.chomp.to_f}"
    end
end
$a = Array.new
cb134 = CBgv.new
loop do 
    puts "1. Thêm cán bộ mới."
    puts "2. Xóa cán bộ theo mã."
    puts "3. Tính lương thực lĩnh."
    puts "4. Thoát"
    puts "Chọn"
    chon134 = gets.chomp
    case chon134
        when "1"
            puts "Nhập họ và tên giáo viên"
            hoten134 = gets
            puts "Nhập tuổi"
            tuoi134 = gets
            puts "Nhập quê quán"
            quequan134 = gets
            puts "Nhập mã số giáo viên"
            m134 = gets
            puts "Nhập lương cứng"
            lc134 = gets
            puts "Nhập lương thưởng"
            lt134 = gets
            puts "Nhập tiền phạt"
            tp134 = gets
            gv134 = Nguoi.new(hoten134,tuoi134,quequan134,m134,lc134,lt134,tp134)
            cb134.them(gv134)
        when "2"
            puts "Nhập mã số giáo viên cần xóa"
            maso134 = gets.chomp
            $a.each_index{
                |index|          
                if $a[index].masogv134 = maso134 then
                    cb134.xoa(index)
                    puts "Đã xóa giáo viên có mã số #{maso134}"
                end          
            }
        when "3"
            $a.each_index{
                |index|          
                cb134.tinhluongthuclinh($a[index])         
            }
        when "4"
            break
    end
end
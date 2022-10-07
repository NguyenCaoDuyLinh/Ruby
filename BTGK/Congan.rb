class Phuongtien
    attr_accessor :id134, :hangsanxuat134, :namsanxuat134, :dongxe134, :giaban134, :bienso134, :mauxe134
    def initialize(id134,hangsanxuat134,namsanxuat134,dongxe134,giaban134,bienso134,mauxe134)
        @id134 = id134
        @hangsanxuat134 = hangsanxuat134
        @namsanxuat134 = namsanxuat134
        @dongxe134 = dongxe134
        @giaban134 = giaban134
        @bienso134 = bienso134
        @mauxe134 = mauxe134     
    end
    def hienthi
        puts ""
    end
end
class Oto < Phuongtien
    attr_accessor :sochongoi134, :kieudongco134, :nhienlieu134 , :sotuikhi134 , :ngaydangkiem134
    def initialize(id134,hangsanxuat134,namsanxuat134,dongxe134,giaban134,bienso134,mauxe134,sochongoi134,kieudongco134,nhienlieu134,sotuikhi134,ngaydangkiem134)
        super(id134,hangsanxuat134,namsanxuat134,dongxe134,giaban134,bienso134,mauxe134)
        @sochongoi134 = sochongoi134
        @kieudongco134 = kieudongco134
        @nhienlieu134 = nhienlieu134
        @sotuikhi134 = sotuikhi134
        @ngaydangkiem134 = ngaydangkiem134
    end
    def hienthi
        puts "Oto Mã :#{id134} Hàng sản xuất: #{hangsanxuat134} Năm sản xuất: #{namsanxuat134} Dòng xe: #{dongxe134} Giá bán: #{giaban134} Biến số: #{bienso134} Màu xe: #{mauxe134} Số chỗ ngồi: #{sochongoi134} Kiểu động cơ: #{kieudongco134} Nhiên liêu: #{nhienlieu134}  Số túi khí: #{sotuikhi134} Ngày đăng kiếm: #{ngaydangkiem134}"
    end
end
class Xemay < Phuongtien
    attr_accessor :congsuat134, :dungtichbs134134
    def initialize(id134,hangsanxuat134,namsanxuat134,dongxe134,giaban134,bienso134,mauxe134,congsuat134,dungtichbs134134)
        super(id134,hangsanxuat134,namsanxuat134,dongxe134,giaban134,bienso134,mauxe134)
        @congsuat134 = congsuat134
        @dungtichbs134134 = dungtichbs134134
    end
    def hienthi
        puts "Xe máy Mã :#{id134} Hàng sản xuất: #{hangsanxuat134} Năm sản xuất: #{namsanxuat134} Dòng xe: #{dongxe134} Giá bán: #{giaban134} Biến số: #{bienso134} Màu xe: #{mauxe134} Công suất: #{congsuat134} Dung tích bình xăng: #{dungtichbs134}"
    end
end
class Xetai < Phuongtien
    attr_accessor :trongtai134
    def initialize(id134,hangsanxuat134,namsanxuat134,dongxe134,giaban134,bienso134,mauxe134,trongtai134)
        super(id134,hangsanxuat134,namsanxuat134,dongxe134,giaban134,bienso134,mauxe134)
        @trongtai134 = trongtai134
    end
    def hienthi
        puts "Xe tải Mã :#{id134} Hàng sản xuất: #{hangsanxuat134} Năm sản xuất: #{namsanxuat134} Dòng xe: #{dongxe134} Giá bán: #{giaban134} Biến số: #{bienso134} Màu xe: #{mauxe134} Trọng tải: #{trongtai134}"
    end
end
class QLPTGT
    def them
        puts "Nhập ID:"
        id134 = gets.chomp
        puts "Hàng sản xuất"
        hsx = gets.chomp
        puts "Năm sản xuất"
        nsm134 = gets.chomp
        puts "Dòng xe"
        gx = gets.chomp
        puts "Giá bán"
        gb134 = gets.chomp.to_f
        puts "Biển số"
        bs134 = gets.chomp
        puts "Màu xe"
        mx = gets.chomp
        puts "Chọn loại xe"
        puts "1. Oto"
        puts "2. Xe Máy"
        puts "3. Xe tải"
        chon134 = gets.chomp
            if chon134 == "1" then
                puts "Nhập số chỗ ngồi"
                scn134 = gets.chomp
                puts "Kiểu động cơ"
                kdc134 = gets.chomp
                puts "Nhiên liệu(Xăng/dầu)"
                nl134 = gets.chomp
                puts "Số túi khí"
                stk134 = gets.chomp
                puts "Ngày đăng kiếm"
                ndk134 = gets.chomp
                $a.push(Oto.new(id134,hsx,nsm134,gx,gb134,bs134,mx,scn134,kdc134,nl134,stk134,ndk134))
                elsif chon134 == "2" then
                    puts "Nhập công suất"
                    dt134 = gets.chomp
                    puts "Nhập dung tích bình xăng"
                    dtbs134 = gets.chomp
                    $a.push(Xemay.new(id,hsx,nsm134,gx,gb134,bs134,mx,dt,dtbs134))
                elsif chon134 =="3" then
                    puts "Nhập trọng tải"
                    tt134 = gets.chomp
                    $a.push(Xetai.new(id,hsx,nsm134,gx,gb134,bs134,mx,tt134))
                end                          
    end
    def xoa(id)
        $a.each_index{
            |index|
            if $a[index].id134 == id
                $a.delete_at(index)
                puts "Đã xóa #{id}"
            end
        }
    end
    def timkiemtheohang(hang)
        $a.each_index{
            |index|
            if $a[index].hangsanxuat134 == hang
                puts "#{$a[index].hienthi}"
            end
        }
    end
    def timkiemtheomau(mau)
        $a.each_index{
            |index|
            if $a[index].mauxe134 == mau
                puts "#{$a[index].hienthi}"
            end
        }
    end
    def timkiemtheobienso134(bienso134)
        $a.each_index{
            |index|
            if $a[index].bienso134 == bienso134
                puts "#{$a[index].hienthi}"
            end
        }
    end
    def hienthitt
        $a.each_index{
            |index|
            puts "#{$a[index].hienthi}"
        }
    end
end
$a = Array.new
qlpt = QLPTGT.new
loop do 
    puts "1. Thêm các phương tiện trên vào danh sách và hiển thị danh sách."
    puts "2. Xoá(theo ID) các phương tiện thuộc các loại trên."
    puts "3. Tìm phương tiện theo hãng sản xuất, màu, biển số."
    puts "4. Thoát"
    puts "Chọn"
    chon134 = gets.chomp
    case chon134
        when "1"
            qlpt.them
            qlpt.hienthitt
        when "2"
            puts "Nhập id phương tiện cần xóa"
            id134 = gets.chomp
            qlpt.xoa(id134)
        when "3"
            puts "Nhập phương tiện cần tìm theo hàng sản xuất"
            hsx = gets.chomp
            qlpt.timkiemtheohang(hsx)
            puts "Nhập phương tiện cần tìm theo màu"
            mau134 = gets.chomp
            qlpt.timkiemtheomau(mau134)
            puts "Nhập phương tiện cần tìm theo biển số"
            bienso134 = gets.chomp
            qlpt.timkiemtheobienso134(bienso134)
        when "4"
            break
    end
end
class Thuvien
    attr_accessor :matailieu134, :nxb134, :sobanph134, :loaitl134
    def initialize(matailieu134,nxb134,sobanph134,loaitl134)
        @matailieu134 = matailieu134
        @nxb134 = nxb134
        @sobanph134 = sobanph134
        @loaitl134 = loaitl134
    end
    def hienthi
        puts ""
    end
end
class Sach < Thuvien
    attr_accessor :tentacgia134, :sotrang134
    def initialize(matailieu134,nxb134,sobanph134,loaitl134,tentacgia134,sotrang134)
        super(matailieu134,nxb134,sobanph134,loaitl134)
        @tentacgia134 = tentacgia134
        @sotrang134 = sotrang134
    end
    def hienthi
        print "Sách có Mã tài liệu là #{matailieu134}, nhà xuất bản: #{nxb134}, số bản phát hành: #{sobanph134}, tên tác giả: #{tentacgia134}, số trang: #{sotrang134}\n" 
    end
end
class Tapchi < Thuvien
    attr_accessor :sophathanh134, :thangphathanh134
    def initialize(matailieu134,nxb134,sobanph134,loaitl134,sophathanh134,thangphathanh134)
        super(matailieu134,nxb134,sobanph134,loaitl134)
        @sophathanh134 = sophathanh134
        @thangphathanh134 = thangphathanh134
    end
    def hienthi
        print "Tạp chí có Mã tài liệu là #{matailieu134}, nhà xuất bản: #{nxb134}, ố bản phát hành: #{sobanph134}, số phát hành: #{sophathanh134}, tháng phát hành: #{sophathanh134}\n" 
    end
end
class Bao < Thuvien
    attr_accessor :ngayphathanh134 
    def initialize(matailieu134,nxb134,sobanph134,loaitl134,ngayphathanh134)
        super(matailieu134,nxb134,sobanph134,loaitl134)       
        @ngayphathanh134 = ngayphathanh134
    end
    def hienthi
        print "Tạp chí có Mã tài liệu là #{matailieu134}, nhà xuất bản: #{nxb134}, số bản phát hành: #{sobanph134}, ngày phát hành: #{ngayphathanh134}\n" 
    end
end
class QLSach
    def themmoi
        puts "1. Sách"
        puts "2. Tạp chí"
        puts "3. Báo"
        puts "Chọn loại tài liệu"
        loai134 = gets.chomp.to_i
        puts "Mã tài liệu"
        $matailieu134 = gets
        while $mtailieu.include?($matailieu134) == true || $mtailieu.include?(nil) do
            puts "Mã tài liệu"
            $matailieu134 = gets
        end
        $mtailieu.push($matailieu134)
        puts "Nhà xuất bản"
        nxb134 = gets
        puts "Số bản phát hành"
        sobanph134 = gets
        if loai134 == 1 then
            puts "Nhập tên tác giả"
            tentacgia134 = gets.chomp
            puts "Nhập số trang"
            sotrang134 = gets.chomp
            sach = Sach.new($matailieu134,nxb134,sobanph134,"1",tentacgia134,sotrang134)
            $a134.push(sach)
            elsif loai134 == 2 then
                puts "Nhập Số phát hành"
                sophathanh134 = gets
                puts "Nhập tháng phát hành"
                thangphathanh134 = gets
                tapchi134 = Tapchi.new($matailieu134,nxb134,sobanph134,"2",sophathanh134,thangphathanh134)
                $a134.push(tapchi)
                else
                    puts "Nhập ngày phát hành"
                    ngayphathanh134 = gets
                    bao134 = Bao.new($matailieu134,nxb134,sobanph134,"3",ngayphathanh134)
                    $a134.push(bao)
        end
    end
    def xoa(mtl134)
        $a134.each_index {
            |index|
            if($a134[index].matailieu134 == mtl134) then
                $a134.delete_at(index)
                puts "Đã xóa tài liệu có mã #{mtl134}"
            end
        }
    end
    def hienthitt
        $a134.each_index {
            |index|
            puts "#{$a134[index].hienthi()}"
        }
    end
    def timkiemtheoloaitl134(loai)
        for x in $a134 do
            if(x.loaitl134 == loai)
                puts "#{x.hienthi}"
            end
        end
    end
end
$mtailieu = Array.new
$a134 = Array.new()
QLS134 = QLSach.new()
puts "Nhập số lượng tài liệu"
soluong134 = gets.chomp.to_i
for i134 in 0..(soluong134 - 1) do   
    QLS134.themmoi()
end
loop do 
    puts "Chọn"
    puts "1. Thêm mới tài liêu: Sách, tạp chí, báo."
    puts "2. Xoá tài liệu theo mã tài liệu."
    puts "3. Hiện thị thông tin về tài liệu"
    puts "4. Tìm kiếm tài liệu theo loại: Sách, tạp chí, báo."
    puts "5. Thoát"
    chon134 = gets.chomp
    case chon134
        when "1"
            QLS134.themmoi
        when "2"
            puts "Nhập mã tài liệu cần xóa"
            matl134 = gets
            QLS134.xoa(matl134)
        when "3"
            QLS134.hienthitt
        when "4"
            puts "Nhập loại tài liệu cần tìm kiếm"
            loaitl134tk = gets.chomp
            QLS134.timkiemtheoloaitl134(loaitl134tk)
        when "5"
            break
    end
end    
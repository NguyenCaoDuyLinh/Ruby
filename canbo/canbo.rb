class QLCB 
    class Canbo
        attr_accessor :hoten, :tuoi, :gioitinh, :diachi
        def initialize(hoten,tuoi,gioitinh,diachi)          
            @hoten = hoten     
            @tuoi = tuoi    
            @gioitinh = gioitinh  
            @diachi = diachi
            
        end   
        def show 
            puts "Tên: #{hoten} Tuổi: #{tuoi} Giới tính: #{gioitinh} Địa chỉ: #{diachi}" 
        end
    end
    class Congnhan < Canbo
        attr_accessor :bac
        def initialize(hoten,tuoi,gioitinh,diachi,bac)          
            super(hoten,tuoi,gioitinh,diachi)
            @bac = bac   
        end
        def show 
            super(hoten,tuoi,gioitinh,diachi)
            puts "Công nhân tên: #{hoten} Tuổi: #{tuoi} Giới tính: #{gioitinh} Địa chỉ: #{diachi} bậc: #{bac}" 
        end
    end
    class Kysu < Canbo
        attr_accessor :nganhdaotao   
        def initialize(hoten,tuoi,gioitinh,diachi,nganhdaotao)          
            super(hoten,tuoi,gioitinh,diachi)
            @nganhdaotao = nganhdaotao   
        end
        def show
            super(hoten,tuoi,gioitinh,diachi)
            puts "Kỹ sư tên: #{hoten} Tuổi: #{tuoi} Giới tính: #{gioitinh} Địa chỉ: #{diachi} Ngành đào tạo: #{nganhdaotao}" 
        end
    end 
    class Nhanvien < Canbo
        attr_accessor :congviec
        def initialize(hoten,tuoi,gioitinh,diachi,congviec)          
            super(hoten,tuoi,gioitinh,diachi)
            @congviec = congviec   
        end
        def show 
            super(hoten,tuoi,gioitinh,diachi)
            puts "Nhân viên tên: #{hoten} Tuổi: #{tuoi} Giới tính: #{gioitinh} Địa chỉ: #{diachi} Công việc: #{congviec}" 
        end
    end
    
    def themmoi()
        puts "1. Công nhân"
        puts "2. Kỹ sư"
        puts "3. Nhân viên"
        puts "Chọn loại cán bộ"
        loai = gets.chomp.to_f
        if loai == 1 then
            puts "Nhập họ tên"
            hoten1 = gets

            puts "Nhập tuổi"
            tuoi1 = gets

            puts "Nhập Giới tính"
            gioitinh1 = gets

            puts "Nhập Địa chỉ"
            diachi1 = gets  

            puts "Nhập bậc"
            bac1 = gets
            congnhan = Congnhan.new(hoten1,tuoi1,gioitinh1,diachi1,bac1) 
            $a.push(congnhan)
        elsif loai == 2 then 

        else
            
        end
    end
    def timkiem( ten)
        a.each_index {
            |index|
            if(a[index].hoten == ten)
                puts "#{a[index].show()}"
            end
        }
    end
    def hienthidanhsach()
        $a.each_index {
            |index|
            puts "#{$a[index].show()}"
        }
    end
end

$a = Array.new() 
QLCB1 = QLCB.new()
puts "Nhập số lượng cán bộ"
soluong = gets.chomp.to_f
for i in 0..(soluong - 1) do   
    QLCB1.themmoi()
end
QLCB1.hienthidanhsach()



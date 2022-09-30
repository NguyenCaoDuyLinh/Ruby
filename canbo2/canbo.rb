
class Canbo
    attr_accessor :hoten134, :tuoi134, :gioitinh134, :diachi134
    def initialize(hoten134,tuoi134,gioitinh134,diachi134)          
        @hoten134 = hoten134     
        @tuoi134 = tuoi134    
        @gioitinh134 = gioitinh134  
        @diachi134 = diachi134
        
    end   
    def show 
        puts "Tên: #{hoten134} Tuổi: #{tuoi134} Giới tính: #{gioitinh134} Địa chỉ: #{diachi134}" 
    end
end
class Congnhan < Canbo
    attr_accessor :bac134
    def initialize(hoten134,tuoi134,gioitinh134,diachi134,bac134)          
        super(hoten134,tuoi134,gioitinh134,diachi134)
        @bac134 = bac134   
    end
    def show 
        
        puts "Công nhân tên: #{hoten134} Tuổi: #{tuoi134} Giới tính: #{gioitinh134} Địa chỉ: #{diachi134} bậc: #{bac134}" 
    end
end
class Kysu < Canbo
    attr_accessor :nganhdaotao134   
    def initialize(hoten134,tuoi134,gioitinh134,diachi134,nganhdaotao134)          
        super(hoten134,tuoi134,gioitinh134,diachi134)
        @nganhdaotao134 = nganhdaotao134   
    end
    def show
        
        puts "Kỹ sư tên: #{hoten134} Tuổi: #{tuoi134} Giới tính: #{gioitinh134} Địa chỉ: #{diachi134} Ngành đào tạo: #{nganhdaotao134}" 
    end
end 
class Nhanvien < Canbo
    attr_accessor :congviec134
    def initialize(hoten134,tuoi134,gioitinh134,diachi134,congviec134)          
        super(hoten134,tuoi134,gioitinh134,diachi134)
        @congviec134 = congviec134   
    end
    def show 
        
        puts "Nhân viên tên: #{hoten134} Tuổi: #{tuoi134} Giới tính: #{gioitinh134} Địa chỉ: #{diachi134} Công việc: #{congviec134}" 
    end
end
class QLCB     
    def themmoi()
        puts "1. Công nhân"
        puts "2. Kỹ sư"
        puts "3. Nhân viên"
        puts "Chọn loại cán bộ"
        loai134 = gets.chomp.to_f
        if loai134 == 1 then
            puts "Nhập họ tên"
            hoten134 = gets
            puts "Nhập tuổi"
            tuoi134 = gets
            puts "Nhập Giới tính"
            gioitinh134 = gets
            puts "Nhập Địa chỉ"
            diachi134 = gets  
            puts "Nhập bậc"
            bac134 = gets
            congnhan134 = Congnhan.new(hoten134,tuoi134,gioitinh134,diachi134,bac134) 
            $a134.push(congnhan134)           
        elsif loai134 == 2 then 
            puts "Nhập họ tên"
            hoten134 = gets
            puts "Nhập tuổi"
            tuoi134 = gets
            puts "Nhập Giới tính"
            gioitinh134 = gets
            puts "Nhập Địa chỉ"
            diachi134 = gets  
            puts "Nhập Ngành đào tạo"
            nganhdaotao134 = gets
            kysu134 = Kysu.new(hoten134,tuoi134,gioitinh134,diachi134,nganhdaotao134) 
            $a134.push(kysu134)  
        else
            puts "Nhập họ tên"
            hoten134 = gets
            puts "Nhập tuổi"
            tuoi134 = gets
            puts "Nhập Giới tính"
            gioitinh134 = gets
            puts "Nhập Địa chỉ"
            diachi134 = gets  
            puts "Nhập công việc"
            congviec134 = gets
            nhanvien134 = Nhanvien.new(hoten134,tuoi134,gioitinh134,diachi134,congviec134) 
            $a134.push(nhanvien134)  
        end
    end
    def timkiem(ten134)
        for x in $a134 do
            if(x.hoten134 == ten134)
                puts "#{x.show}"
            end
        end
    end
    def hienthidanhsach()
        $a134.each_index {
            |index|
            puts "#{$a134[index].show()}"
        }
    end
end

$a134 = Array.new() 
QLCB134 = QLCB.new()
puts "Nhập số lượng cán bộ"
soluong134 = gets.chomp.to_i
for i134 in 0..(soluong134 - 1) do   
    QLCB134.themmoi()
end
loop do 
    puts "Chọn"
    puts "1. Thêm cán bộ"
    puts "2. Tìm kiếm"
    puts "3. In danh sách"
    puts "4. Thoát"
    chon134 = gets.chomp
    case chon134
        when "1"
            QLCB134.themmoi()
        when "2"
            puts "Nhập tên cần tìm kiếm"
            tentk134 = gets
            QLCB134.timkiem(tentk134)
        when "3"
            QLCB134.hienthidanhsach()
        when "4"
            break
    end
end    




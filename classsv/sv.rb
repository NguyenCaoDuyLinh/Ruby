class Sinhvien
    attr_accessor :hoTen
    attr_accessor :lop
    attr_accessor :msv
    attr_accessor :toan,:li,:hoa,:dtb
    def initialize(name,cl,id)          
                @hoTen = name     
                @lop = cl    
                @msv = id  
    end
        
    
    def nhap
        puts "Nhập điểm toán"
        @toan = gets.chomp.to_f
        puts "Nhập điểm lí"
        @li = gets.chomp.to_f
        puts "Nhập điểm hóa"
        @hoa = gets.chomp.to_f
        @dtb = (toan+li+hoa)/3
    end

    def hienthi
        puts "Họ và tên sv: #{hoTen}"
        puts "Lớp: #{lop}"
        puts "MSV: #{msv}"
        puts "Điểm toán: #{toan}"
        puts "Điểm lí: #{li}"
        puts "Điểm hóa: #{hoa}"
        puts "Điểm trung bình: #{dtb}"
    end    

end

Sinhvien1 = Sinhvien.new("Linh","19T1","1911505310134")
Sinhvien1.nhap()
Sinhvien1.hienthi()
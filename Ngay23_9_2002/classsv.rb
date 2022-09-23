class Sinhvien
    attr_accessor :hoTen
    attr_accessor :lop
    attr_accessor :msv
    attr_accessor :grade1, :grade2, :grade3, :ave
    def initialize(name,cl,id,gr1,gr2,gr3)          
                @hoTen = name     
                @lop = cl    
                @msv = id
                @grade1 = gr1
                @grade2 = gr2
                @grade3 = gr3  
    end
       
    def show
        puts "Họ và tên sv: #{hoTen}"
        puts "Lớp: #{lop}"
        puts "MSV: #{msv}" 
        @ave = (grade1 + grade2 + grade3)/3
        puts "Điểm trung bình: #{ave}"      
    end 
end

Sinhvien1 = Sinhvien.new("Linh","19T1","1911505310134",8,9,10)
Sinhvien1.show()
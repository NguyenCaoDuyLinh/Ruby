class Nguoitgd
    attr_accessor :hoten, :tuoi, :nghenghiep, :cmnd
    def initialize(hoten,tuoi,nghenghiep,cmnd)
        @hoten = hoten
        @tuoi = tuoi
        @nghenghiep = nghenghiep
        @cmnd = cmnd
    end
    def hienthinguoi
        print "Họ tên: #{hoten} Tuổi: #{tuoi} Nghề nghiệp: #{nghenghiep} Chứng minh nhân dân: #{cmnd}"
    end
end
class Hogiadinh
    attr_accessor :diachi, :a 
    def initialize(diachi,a)
        @diachi = diachi
        @a = a
    end
    def hienthigiadinh                
        puts "Gia đình có địa chỉ: #{diachi}"
        for x in a do
            puts "#{x.hienthinguoi}"
        end
    end
end
class Khupho
    def hienthi
        $khupho.each_index {
            |index|         
            puts "#{$khupho[index].hienthigiadinh}"
        }
    end
end
$mcmnd = Array.new
$khupho = Array.new
puts "Nhập số lượng số dân trong khu phố"
soluong = gets.chomp.to_i
for i134 in 0..(soluong - 1) do   
    puts "Nhập địa chỉ"
    diachi = gets.chomp
    puts "Nhập số lượng thành viên"
    soluongtv = gets.chomp.to_i
    hogiadinh = Array.new
    for j134 in 0..(soluongtv - 1) do
        puts "Nhập họ và tên"
        hoten = gets.chomp
        puts "Nhập tuổi"
        tuoi = gets.chomp
        puts "Nhập nghề nghiệp"
        nghenghiep = gets.chomp
        puts "Nhập chứng minh nhân dân"
        $cmnd = gets.chomp
        while $mcmnd.include?($cmnd) == true || $mcmnd.include?(nil) do
            puts "Nhập chứng minh nhân dân"
            $cmnd = gets.chomp
        end
        $mcmnd.push($cmnd)
        hogiadinh.push(Nguoitgd.new(hoten,tuoi,nghenghiep,$cmnd))      
    end
    $khupho.push(Hogiadinh.new(diachi,hogiadinh))  
end
kp = Khupho.new
kp.hienthi


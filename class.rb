class Uye
	attr_reader :kadi, :sifre, :eposta, :status
	def initialize kadi, sifre, eposta
		@kadi = kadi
		@sifre = sifre
		@eposta = eposta
	end

	def admin_girisi
		if (@kadi == "nusu" and @sifre == "nusu")
			@status = :done
		else
			@status = :failed
		end
	end
end

def sorular soru
	soruarray = soru
	cevap = Array.new
	soruarray.each do |sorucuk|
		puts sorucuk
		cevap << gets.chomp
	end
	return cevap
	#puts "cevaplar: #{cevap}"
end

say = 0

while say < 2 do
	sor = sorular(["kullanıcı adi", "şifre", "eposta adresi"])
	uye = Uye.new sor[0], sor[1], sor[2]
	uye.admin_girisi
	puts uye.status

	say += 1
end
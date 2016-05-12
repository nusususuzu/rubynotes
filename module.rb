# modüller ..
# template gibi düşünülebilir.
# istediğimiz classın içine hazır bir kalıpmış gibi modulleri entegre
# edip onları classın içinde fonksiyon gibi kullanabiliyoruz


module KartModule

	def kredikarti kartnumarasi, skt, cvv
		@kartnumarasi = kartnumarasi
		@skt          = skt
		@cvv          = cvv
	end

end

class Kisisel
	
	attr_reader :ad, :soyad, :eposta, :adres

	#store the data
	def initialize ad, soyad
		@ad    = ad
		@soyad = soyad
	end

	#kredi kartı
	include KartModule
	#kredi kartı

	#not neccesary
	def ilave eposta, adres
		@eposta = eposta
		@adres  = adres
	end

end

kisisel = Kisisel.new "nusu", "baba"
kisisel.ilave "nusu@mail.co", "New Orleans"
kisisel.kredikarti "5555 0000 5555 0000", "01/1622", "006"

puts kisisel.inspect

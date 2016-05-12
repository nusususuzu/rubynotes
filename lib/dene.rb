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
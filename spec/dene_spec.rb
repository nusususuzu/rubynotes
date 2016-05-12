require "spec_helper"
require "dene"

describe Uye do
	it "verileri aliyor mu" do
		uye = Uye.new "nusu", "baba", "naber"
		expect(uye.kadi).to eq "nusu"
	end

	it "admin girişi doğru bilgilerle sağlanıyor mu" do
		uye = Uye.new "nusu", "nusu", "nusu"
		uye.admin_girisi
		expect(uye.status).to eq :done
	end

	it "admin girişi YANLIŞ bilgilerle sağlanıyor mu" do
		uye = Uye.new "nusu", "pusu", "çusu"
		uye.admin_girisi
		expect(uye.status).to eq :failed
	end
end
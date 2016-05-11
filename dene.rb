#rasgele = Random.rand(0..6)
#varray = ["nusu","chop","ruby","initiate","metamorphosis", "lie","die?","go on"]

#puts varray[rasgele]
#puts "-------------"
#puts "ne istersin e/h"
#nusu = gets.chop

def kayit
	puts "hello father for security reasons first give me your UID"
	uid = gets.chomp
	if (uid == "nusu")
		puts "thank you father, now give me your password"
		pw = gets.chomp
	else
		puts "S Y S T E M  A L E R T !"
	end
end

kayit
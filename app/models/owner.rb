class Owner
	def name
		name = 'Sivasankar Ramalingam'
	end
	def birthdate
		birthdate = Date.new(1980, 05, 27)
	end
	def countdown
		today = Date.today
		birthday = Date.new(today.year, birthdate.month, birthdate.day)
		Rails.logger.debug birthday #+ today + birthday.next_year
		Rails.logger.debug today # + birthday.next_year
		Rails.logger.debug birthday.next_year
		if birthday > today
			countdown = (birthday - today).to_i
		else
			countdown = (birthday.next_year - today).to_i
		end
	end
end

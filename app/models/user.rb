class User < ActiveRecord::Base
	validate :pass_match

	def authenticate(password)
		self if self.password == password
	end

	def pass_match
		if password_confirmation != nil
			if (self.password != self.password_confirmation)
				errors.add(:password, "passwords need to match")
			end
		end
	end

end
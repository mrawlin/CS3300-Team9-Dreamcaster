class User
	@postable = false
	@type = "outsider"

	def initialize type: type
		@type == "user"
	end

	def type
		return @type
	end

	def postable?
		return @postable
	end
end

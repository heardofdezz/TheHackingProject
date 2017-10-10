=begin
def tem_conver(celsius, fahrenheit)
	fahrenheit = (celsius * 1.8) + 32
	celsius = (fahrenheit - 32 ) * 5/9
end
=end


	#conversation from fahren to celsius
	def ftoc(temp_f)
	 (temp_f - 32)*(5/9.0)
		
	end

	def ctof(temp_c)
		(temp_c * 1.8) + 32
	end
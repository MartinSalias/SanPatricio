class Ahorcado
	
    def palabrasecreta value
		@palabra = value.upcase
    end
	

	def palabra
		@palabra
	end

	def validarletra letra
		if (@palabra.include? letra.upcase)
			return true
		else
			return false 
		end
    end

end

class Ahorcado
	
	def initialize 
		@palabra 
		@letra 	
    end

    def palabrasecreta value
		@palabra = value
    end

	def letra value
		@letra = value
    end
	
	def validarletra 
		if (@palabra.include? @letra)
			return true
		else
			return false 
		end
    end

end

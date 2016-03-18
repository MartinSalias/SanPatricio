class Ahorcado
	
    def palabrasecreta value
		@palabra = value.upcase
    end

	def palabra
		@palabra
	end

	def validarletra letra
		@palabra.include? letra.upcase
    end

end

class Ahorcado
	
    def palabrasecreta value
		@palabra = value.upcase
		palabraenguiones
    end

	def palabra
		@palabra
	end

	def palabraconguiones
		@palabraconguiones
	end

	def validarletra letra
		existe = @palabra.include? letra.upcase
		if existe
			actualizar_palabra_con_guiones letra.upcase
		end
		existe
    end

	def palabraenguiones
		@palabraconguiones = ""
		@palabra.each_char {|i| @palabraconguiones += "_" }
		@palabraconguiones = @palabraconguiones.split("").join " "		
		@palabraconguiones
	end

	def actualizar_palabra_con_guiones	letra
		@palabra.split("").each_with_index do |l,i|
			if l == letra
				@palabraconguiones[(i*2)] = letra
			end
		end
		@palabraconguiones
	end

end

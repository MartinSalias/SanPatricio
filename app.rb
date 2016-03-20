require 'sinatra'
require_relative './lib/ahorcado.rb'

get '/' do
	@@juego = Ahorcado.new
	@@juego.palabrasecreta("patricio")
	@@palabrasize = @@juego.palabraenguiones
	erb :portada
end

post '/' do

	@@juego = Ahorcado.new
	@@juego.palabrasecreta "patricio"

	
	if @@juego.validarletra params[:letra]
		@resultado = "la #{params[:letra]} es una letra correcta"
		@@palabrasize = @@juego.actualizar_palabra_con_guiones params[:letra] 
	else
		@resultado = "la #{params[:letra]} No esta"
	end
	
	erb :portada

end

require 'sinatra'
require_relative './lib/ahorcado.rb'

get '/' do
	@@juego = Ahorcado.new
	@@palabrasize = "la palabra tiene #{@@juego.palabrasecreta("patricio").length} letras"
	erb :portada
end

post '/' do

	@@juego = Ahorcado.new
	@@juego.palabrasecreta "patricio"
	
	if @@juego.validarletra params[:letra]
		@resultado = "la #{params[:letra]} es una letra correcta"
	else
		@resultado = "la #{params[:letra]} No esta"
	end
	
	erb :portada

end

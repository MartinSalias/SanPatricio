require 'sinatra'
require_relative './lib/ahorcado.rb'

get '/' do
	
	erb :portada
end

post '/palabra' do

	@@juego = Ahorcado.new
	@@juego.palabrasecreta "patricio"
	
	if @@juego.validarletra params[:letra]
		"letra correcta, la palabra tiene #{@@juego.palabra.length} caracteres"
	else
		"No esta, la palabra tiene #{@@juego.palabra.length} caracteres"
	end
end

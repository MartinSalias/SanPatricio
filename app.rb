require 'sinatra'
require_relative './lib/ahorcado.rb'

get '/' do
	
	erb :portada
	end

post '/palabra' do

	@@elahorcado = Ahorcado.new
	@@elahorcado.palabrasecreta "patricio"
	
	if 	!@@elahorcado.validarletra params[:letra]
		"No esta, la palabra tiene #{@@elahorcado.palabra.length} caracteres"
	else
		"letra correcta, la palabra tiene #{@@elahorcado.palabra.length} caracteres"
	end
end

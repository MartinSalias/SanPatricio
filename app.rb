require 'sinatra'
require_relative './lib/ahorcado.rb'

get '/' do
	erb :portada
end

post '/palabra' do

	@@elahorcado = Ahorcado.new
	@@elahorcado.palabrasecreta "patricio"
	@@elahorcado.letra params[:letra]

	#traer aca la clase ahorcado y que haga lo suyo.
	
	if 	!@@elahorcado.validarletra
		"No esta"
	else
		"letra correcta"
	end
end

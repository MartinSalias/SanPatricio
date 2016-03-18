require 'sinatra'

get '/' do
	erb :portada
end

post '/palabra' do
	if (params[:letra]== "x")    
	"No esta"
	else
		"letra correcta"
	end
end

require "sinatra"
class HelloWorldApp < Sinatra::Base


		get '/' do 
			"Hello World"
		end
			
		

end
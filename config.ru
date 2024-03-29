# config.ru
require 'rack'
class MiPrimeraWebApp
	def call(env)
		@url = env['REQUEST_PATH']
		if @url == '/index'
			[200, { 'Content-Type' => 'text/html' }, ['<h1> Estas en el index! </h1>']]
		elsif @url == '/otro'
			[200, { 'Content-Type' => 'text/html'}, ['<h1> Estas en otro landing! </h1>']]
		else
			[404, { 'Content-Type' => 'text/html'}, [File.read("404.html")]]
		end
	end
end
run MiPrimeraWebApp.new
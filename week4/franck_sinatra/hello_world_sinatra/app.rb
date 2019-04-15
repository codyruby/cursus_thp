require 'sinatra'

# Route qui affiche la page /hello
get '/hello' do
  '<h1>Hello world ! </h1>'
end

# Route qui affiche la page /hello
get '/bonjour' do
    '<h1>Bonjour, monde !</h1>'
end
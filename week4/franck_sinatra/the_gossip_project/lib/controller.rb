class ApplicationController < Sinatra::Base
  
  # Méthode get pour afficher la page index de notre application
  get '/' do
    erb :index
  end

  # Méthode get pour afficher la page /gossips/new
  get '/gossips/new/' do
    erb :new_gossip
  end

  # Méthode post pour l'envoi d'un formulaire"
  post '/gossips/new/' do
    puts "Ce programme ne fait rien pour le moment, on va donc afficher un message en console"
  end

  
end
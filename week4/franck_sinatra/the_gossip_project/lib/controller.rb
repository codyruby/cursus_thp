require 'gossip'

class ApplicationController < Sinatra::Base
  
  # Méthode get pour afficher la page index de notre application avec tous les gossips enregiter dans le fichier csv
  get '/' do
    erb :index, locals: {gossips: Gossip.all}
  end
  # Méthode get qui affiche la page en fonction de l'id
  get '/gossips/:id' do
    @id = params[:id]
    erb :gossip
  end

  # Méthode get pour afficher la page /gossips/new
  get '/gossips/new/' do
    erb :new_gossip
  end

  # Méthode post pour l'envoi d'un formulaire"
  post '/gossips/new/' do
    # Création d'une nouvelle instance Gossip
    Gossip.new("#{params["author"]}", "#{params["content"]}").save
    
    # puts "Salut, je suis dans le serveur"
    # puts "Ceci est mon super params : #{params}"
    # puts "Trop bien ! Et ceci est ce que l'utilisateur a passé dans le champ gossip_author : #{params["author"]}"
    # puts "De la bombe, et du coup ça ça doit être ce que l'utilisateur a passé dans le champ gossip_content : #{params["content"]}"
    # puts "Ça déchire sa mémé, bon allez je m'en vais du serveur, ciao les BGs !"
    # puts "Ce programme ne fait rien pour le moment, on va donc afficher un message en console"

    # Redirection vers la page d'accueil
    redirect '/'
  end

  
end
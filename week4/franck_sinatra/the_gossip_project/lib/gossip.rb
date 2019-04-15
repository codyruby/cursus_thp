class Gossip

    # Méthode d'initialisation d'un instance Gossip
    def initialize(author, content)
        @author = author
        @content = content
    end

    # Méthode qui permet de sauvegarde la nouvelle instance Gossip dans le fichier csv
    def save
        CSV.open("./db/gossip.csv", "ab") do |csv|
          csv << ["#{@author}", "#{@content}"]
        end
    end

end


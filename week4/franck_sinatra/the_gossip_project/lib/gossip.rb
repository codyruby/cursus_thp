class Gossip

    attr_accessor :author, :content
    
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

    # Méthode de permet de ressortir tous les gossips du fichier csv
    def self.all
        all_gossips = []
        CSV.read("./db/gossip.csv").each do |csv_line|
          all_gossips << Gossip.new(csv_line[0], csv_line[1])
        end
        return all_gossips
      end

end


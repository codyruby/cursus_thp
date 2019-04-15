require "pry"

class User
    attr_accessor :email, :name
    @@all_user = []

    def initialize (email_to_save)
        @email = email_to_save
        
        @@all_user = @@all_user << ["#{@email}"]
    end

    def self.all
        return @@all_user
    end

    def self.find_by_email(email)
        return @email
    end

end



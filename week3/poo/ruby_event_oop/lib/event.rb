require "pry"

class Event
    attr_accessor :start_date, :length, :title, :attendees

    def initialize(start_date_to_save, length_to_save, title_to_save, attendees_to_save)
        @start_date = Time.parse(start_date_to_save)
        @length = length_to_save
        @title = title_to_save
        @attendees = attendees_to_save
    end

    def postpone_24h
        @postpone_24h = @start_date + 60*60*24
    end

    def end_date
        @end_date = @start_date + @length*60
    end

    def is_past?
        @is_past = @start_date < Time.now
    end

    def is_future
        !self.is_past
    end

    def is_soon?
        @is_soon > @start_date - (30*30) 
    end


    def self
        return @start_date 
    end

end

binding.pry
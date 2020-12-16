class Show < ActiveRecord::Base
    def self.highest_rating
        Show.maximum('rating')
    end

    def self.most_popular_show
        Show.order(:rating).last
    end
    
    def self.lowest_rating
        Show.minimum('rating')
    end

    def self.least_popular_show
        Show.order(:rating).first
    end

    def self.ratings_sum
        #returns the sum of all of the ratings.
        Show.sum("rating")
    end

    def self.popular_shows
        #returns an array of all of the shows that have a rating greater than 5. hint: use the where Active Record method.
        Show.where('rating > 5')
    end

    def self.shows_by_alphabetical_order
        #eturns an array of all of the shows sorted in alphabetical order according to their names. hint: use the order Active Record method
        Show.all.order("name")
    end
end
class Movie < ActiveRecord::Base
	#Return all possible movie ratings
	def self.all_ratings()
		return ['G','PG','PG-13','R']
	end

	#Take in ratings and return filtered collection of Movies
	def self.with_ratings(ratings_list)
		return Movie.where(Rating:ratings_list)
	end
end

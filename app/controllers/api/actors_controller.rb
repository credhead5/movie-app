class Api::ActorsController < ApplicationController
  def actor_action
    @actor = Actor.last
    render "actor.json.jb"
  end
  def movie_method
    @individual_movie = Movie.all
    render "movie.json.jb"
  end
  def movie_method
    @movie = Movie.take(2)
    render "movie.json.jb" 
  end
end


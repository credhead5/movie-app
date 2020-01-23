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
    @movie = Movie.take(3)
    render "movie.json.jb" 
  end

  def actor_query_action
    @actor = params["message"].to_i
    if @actor = ""
     @actor = Actor.first
    end  
    render "actor_query.json.jb"
  end

  def actor_segment_action
     @actor = params["message"]
    if @actor = ""
     @actor = Actor.all
    end  
    render "actor_segment.json.jb"
  end

  
end


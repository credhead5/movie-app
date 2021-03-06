class Api::MoviesController < ApplicationController

  # before_action :authenticate_admin, except: [:index, :show]
  
  def index
    @movie = Movie.all
    
    @movies = Movie.where("english = ?", true )
  
    render "index.json.jb"
  end

  def show
    @movie = Movie.find(params[:id])
    render "show.html.erb"
  end

  def create
    @movie = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      director: params[:director],
      english: params[:emglish]
    )
    if
    @movie.save
    render "show.json.jb"

    else
      render json: {errors: @movie.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @movie = Movie.find_by(id: params[:id])
    @movie.title = params[:title] || @movie.title
    @movie.year = params[:year] || @movie.year
    @movie.plot = params[:plot] || @movie.plot
    @movie.director = params[:director] || @movie.director
    @movie.english =params[:english] || @movie.english
    if @movie.save
      render "show.json.jb"
    else
      render json: {errors: @actor.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    movie = Movie.find_by(id: params[:id])
    movie.destroy
    render json: {message: "Movie successfully destroyed."}
  end
end

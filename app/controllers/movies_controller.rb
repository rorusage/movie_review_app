class MoviesController < ApplicationController
  before_action :authenticate_user!
  def index
    flash[:alert] = "Success"
  end

  def new
    @movie = current_user.movies.new
  end

  def create
    @movie = current_user.movies.new(movie_params)

    if @movie.save
      redirect_to movies_path, notice: "新增電影成功！"
    else
      render :new
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :description, :director, :release_date, :rating, :image, :remove_image)
  end
end

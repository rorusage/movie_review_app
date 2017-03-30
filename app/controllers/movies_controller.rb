class MoviesController < ApplicationController
  before_action :authenticate_user!
  def index
    @movies = Movie.all
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

  def show
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])

    if @movie.update(movie_params)
      redirect_to movies_path, notice: "更新成功！"
    else
      render :edit
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to movies_path, alert: "刪除成功！"
  end
  private

  def movie_params
    params.require(:movie).permit(:title, :description, :director, :release_date, :rating, :image, :remove_image)
  end
end

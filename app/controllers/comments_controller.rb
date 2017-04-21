class CommentsController < ApplicationController
  before_action :authenticate_user!
  def new
    @movie = Movie.find(params[:movie_id])
    @comment = @movie.comments.new
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @comment = @movie.comments.new(comment_params)

    if @comment.save
      redirect_to movie_path(@movie), notice: "新增評論成功"
    else
      render :new
    end
  end


  private
  def comment_params
    params.require(:comment).permit(:comment, :raty)
  end
end

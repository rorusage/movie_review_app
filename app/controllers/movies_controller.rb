class MoviesController < ApplicationController
  before_action :authenticate_user!
  def index
    flash[:alert] = "Success"
  end
end

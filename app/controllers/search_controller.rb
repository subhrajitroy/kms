require "kaminari"

class SearchController < ApplicationController

  def index
    render "search"
  end


  def search
    query = params[:query]
    @projects = Project.where("description like ? ", "%#{query}%").page(params[:page]).per(5)
    render "results"
  end

end
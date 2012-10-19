class SearchController < ApplicationController

  def index
    render "search"
  end


  def search
    query = params[:query]
    @projects = Project.where("description like ? ", "%#{query}%")
    puts "Search query is #{query}"
    puts "Results size is #{@projects.size}"
    render "results"
  end

end
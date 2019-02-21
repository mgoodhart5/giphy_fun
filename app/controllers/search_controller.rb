class SearchController < ApplicationController

  def index
    @search = Giphy.find_all(params[:q])
  end

end

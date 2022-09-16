class HomeController < ApplicationController
  def index
  end

  def filter
    @newspapers = Newspaper.where(category_id: params[:id])
  end
end

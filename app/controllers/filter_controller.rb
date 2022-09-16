class FilterController < ApplicationController
  def index
    if params[:query]
      @newspapers = Newspaper.where('body LIKE ?', "%#{params[:query]}%")
    else
      @newspapers = Newspaper.where(category_id: params[:category_index])
    end
  end
end

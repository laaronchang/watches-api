class WatchesController < ApplicationController

  def create
    @watch = Watch.create(
      brand: params[:brand],
      model: params[:model],
      color: params[:color],
      price: params[:price],
      image_url: params[:image_url]
    )
    render :show
  end

  def index
    @watches = Watch.all
    render :index
  end

end
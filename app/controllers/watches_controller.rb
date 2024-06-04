class WatchesController < ApplicationController


  def index
    @watches = Watch.all
    render :index
  end
end
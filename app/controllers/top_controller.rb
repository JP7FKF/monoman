class TopController < ApplicationController

  # GET /hardwares
  # GET /hardwares.json
  def index
    @items = Item.all
  end
  
end

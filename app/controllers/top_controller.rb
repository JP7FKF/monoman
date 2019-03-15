class TopController < ApplicationController

  # GET /hardwares
  # GET /hardwares.json
  def index
    @items = Item.all.order(id: "ASC")
  end
  
end

class TopController < ApplicationController

  # GET /hardwares
  # GET /hardwares.json
  def index
    @hardwares = Hardware.all
    @softwares = Software.all
  end
  
end

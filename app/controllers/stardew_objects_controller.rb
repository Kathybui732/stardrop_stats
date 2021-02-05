class StardewObjectsController < ApplicationController
  def index
    render json: StardewObjectSerializer.new(StardewObject.all)
  end
end

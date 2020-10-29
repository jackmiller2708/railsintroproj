class PublishersController < ApplicationController
  def index
    @publisher = Game.select('DISTINCT publisher_id')
  end

  def show
    @publisher = Game.where(publisher_id: params[:id])
  end
end

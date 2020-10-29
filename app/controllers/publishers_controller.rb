class PublishersController < ApplicationController
  def index
    @publisher = Game.pluck(:publisher).uniq
  end
end

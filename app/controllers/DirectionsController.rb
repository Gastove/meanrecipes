
class DirectionsController < ApplicationController

  def create
    direction = Direction.new(
                              :body => params[:body],
                              :ordinality => params[:ordinality]
                              )
    direction.save
  end

end

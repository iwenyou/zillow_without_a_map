class Api::V1::SearchController < ApplicationController

  def search
    #get a list of properties with matching address and render a json file from the result
    @properties = Property.search_by_address(params[:address])
    #p @properties
    render json: @properties
  end
end

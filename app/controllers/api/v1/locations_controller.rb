class Api::V1::LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def show
    @location = Location.includes(preload_hash).find_by_id_or_slug(params[:id])
  end

  private

  def preload_hash
    {
      monsters: [],
      key_items: []
    }
  end
end

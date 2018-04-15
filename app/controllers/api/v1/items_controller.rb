class Api::V1::ItemsController < ApplicationController
  def index
    @items = Item.all
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

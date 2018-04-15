class Api::V1::ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.includes(preload_hash).find_by_id_or_slug(params[:id])
  end

  private

  def preload_hash
    [
      kill_drops: [ :monster ],
      steal_drops: [ :monster ],
      bribe_drops: [ :monster ]
    ]
  end
end

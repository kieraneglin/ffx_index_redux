class Api::V1::MonstersController < ApplicationController
  def index
    @monsters = Monster.order(:name).all
  end

  def show
    @monster = Monster.includes(preload_hash).find_by_id_or_slug(params[:id])
  end

  private

  def preload_hash
    {
      bribe_drop: :item,
      kill_drops: :item,
      steal_drops: :item,
      monster_drop_abilities: :ability
    }
  end
end

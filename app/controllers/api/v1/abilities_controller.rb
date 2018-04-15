class Api::V1::AbilitiesController < ApplicationController
  def index
    @abilities = Ability.includes(:item).order(:name).all
  end

  def show
    @ability = Ability.includes(monster_drop_abilities: :monster).find_by_id_or_slug(params[:id])
  end
end

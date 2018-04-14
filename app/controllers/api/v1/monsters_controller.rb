class Api::V1::MonstersController < ApplicationController
  def index
    @monsters = Monster.all
  end

  def show

  end
end

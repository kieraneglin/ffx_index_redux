# == Schema Information
#
# Table name: items
#
#  id          :bigint(8)        not null, primary key
#  name        :string
#  effect      :text
#  effect_type :string
#  slug        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Item < ApplicationRecord
  has_many :abilities, dependent: :destroy
  has_many :kill_drops, dependent: :destroy
  has_many :steal_drops, dependent: :destroy
  has_many :bribe_drops, dependent: :destroy

  def get_mixes
    MixItem.preload(:mix).select('distinct on (mix_id) *').where('item_one_id= ? OR item_two_id= ?', self.id, self.id)
  end
end

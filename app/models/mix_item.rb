# == Schema Information
#
# Table name: mix_items
#
#  id          :bigint(8)        not null, primary key
#  mix_id      :bigint(8)
#  item_one_id :integer
#  item_two_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_mix_items_on_mix_id  (mix_id)
#
# Foreign Keys
#
#  fk_rails_...  (mix_id => mixes.id)
#

class MixItem < ApplicationRecord
  belongs_to :mix

  belongs_to :item_one, class_name: "Item", foreign_key: :item_one_id
  belongs_to :item_two, class_name: "Item", foreign_key: :item_two_id
end

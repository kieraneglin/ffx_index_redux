# == Schema Information
#
# Table name: bribe_drops
#
#  id         :bigint(8)        not null, primary key
#  monster_id :bigint(8)
#  item_id    :bigint(8)
#  amount     :integer
#  cost       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_bribe_drops_on_item_id     (item_id)
#  index_bribe_drops_on_monster_id  (monster_id)
#
# Foreign Keys
#
#  fk_rails_...  (item_id => items.id)
#  fk_rails_...  (monster_id => monsters.id)
#

class BribeDrop < ApplicationRecord
  belongs_to :monster
  belongs_to :item
end

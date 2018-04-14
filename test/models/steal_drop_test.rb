# == Schema Information
#
# Table name: steal_drops
#
#  id         :bigint(8)        not null, primary key
#  monster_id :bigint(8)
#  item_id    :bigint(8)
#  amount     :integer
#  rare       :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_steal_drops_on_item_id     (item_id)
#  index_steal_drops_on_monster_id  (monster_id)
#
# Foreign Keys
#
#  fk_rails_...  (item_id => items.id)
#  fk_rails_...  (monster_id => monsters.id)
#

require 'test_helper'

class StealDropTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

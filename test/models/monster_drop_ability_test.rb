# == Schema Information
#
# Table name: monster_drop_abilities
#
#  id           :bigint(8)        not null, primary key
#  monster_id   :bigint(8)
#  ability_id   :bigint(8)
#  ability_type :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_monster_drop_abilities_on_ability_id  (ability_id)
#  index_monster_drop_abilities_on_monster_id  (monster_id)
#
# Foreign Keys
#
#  fk_rails_...  (ability_id => abilities.id)
#  fk_rails_...  (monster_id => monsters.id)
#

require 'test_helper'

class MonsterDropAbilityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

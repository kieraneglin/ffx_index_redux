# == Schema Information
#
# Table name: abilities
#
#  id           :bigint(8)        not null, primary key
#  name         :string
#  ability_type :string
#  item_id      :bigint(8)
#  item_amount  :integer
#  effect       :string
#  slug         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_abilities_on_item_id  (item_id)
#
# Foreign Keys
#
#  fk_rails_...  (item_id => items.id)
#

require 'test_helper'

class AbilityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

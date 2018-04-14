# == Schema Information
#
# Table name: key_items
#
#  id          :bigint(8)        not null, primary key
#  name        :string
#  description :string
#  location_id :bigint(8)
#  details     :text
#  slug        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_key_items_on_location_id  (location_id)
#
# Foreign Keys
#
#  fk_rails_...  (location_id => locations.id)
#

require 'test_helper'

class KeyItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: mixes
#
#  id          :bigint(8)        not null, primary key
#  name        :string
#  description :string
#  slug        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Mix < ApplicationRecord
  has_many :mix_items
end

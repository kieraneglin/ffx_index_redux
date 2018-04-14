# == Schema Information
#
# Table name: monsters
#
#  id            :bigint(8)        not null, primary key
#  name          :string
#  slug          :string
#  health        :integer
#  overkill      :integer
#  strength      :integer
#  defense       :integer
#  magic         :integer
#  magic_defense :integer
#  mp            :integer
#  agility       :integer
#  luck          :integer
#  ap            :integer
#  evasion       :integer
#  accuracy      :integer
#  gil           :integer
#  boss          :boolean
#  notes         :string
#  skills        :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Monster < ApplicationRecord
end

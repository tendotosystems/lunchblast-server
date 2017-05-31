# == Schema Information
#
# Table name: destinations
#
#  id         :integer          not null, primary key
#  latitude   :float
#  longitude  :float
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Destination < ApplicationRecord
  has_many :selections
  has_many :users, through: :selections
end

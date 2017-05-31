# == Schema Information
#
# Table name: origins
#
#  id         :integer          not null, primary key
#  latitude   :float
#  longitude  :float
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Origin < ApplicationRecord
  belongs_to :user
end

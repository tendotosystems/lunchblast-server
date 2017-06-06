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
#  user_id    :integer
#

class Origin < ApplicationRecord
  belongs_to :user
  
end

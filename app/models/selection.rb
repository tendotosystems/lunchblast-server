# == Schema Information
#
# Table name: selections
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  destination_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Selection < ApplicationRecord
  belongs_to :user
  belongs_to :destination
end

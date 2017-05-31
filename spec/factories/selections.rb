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

FactoryGirl.define do
  factory :selection do
    user nil
    destination nil
  end
end

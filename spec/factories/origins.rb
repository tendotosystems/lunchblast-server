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

FactoryGirl.define do
  factory :origin do
    latitude 1.5
    longitude 1.5
    name "MyString"
  end
end

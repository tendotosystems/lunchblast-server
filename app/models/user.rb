# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  has_secure_password

  has_many :origins
  has_many :selections
  has_many :destinations, through: :selections

  def to_token_payload
  	{
  	  sub: id,
  	  email: email
  	}
  end

end

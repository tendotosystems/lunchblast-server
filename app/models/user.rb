# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  email           :string
#  password_digest :string
#

class User < ApplicationRecord
  has_secure_password

  has_many :selections
  has_many :destinations, through: :selections
  
  validates :password_digest, presence: true
  validates :email, uniqueness: true, presence: true

  def to_token_payload
  	{
  	  sub: id,
  	  email: email
  	}
  end

end

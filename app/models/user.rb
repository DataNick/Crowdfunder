class User < ActiveRecord::Base
  authenticates_with_sorcery!
  has_many :projects

  validates :password, confirmation: true
  validates :password_confirmation, presence: true
  validates :email, uniqueness: true
  
end

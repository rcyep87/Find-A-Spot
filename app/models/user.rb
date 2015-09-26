class User < ActiveRecord::Base
  has_one :spot
  validates :first_name, presence:   true
  validates :last_name , presence:   true
  validates :email     , uniqueness: true
end

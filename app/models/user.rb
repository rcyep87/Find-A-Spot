class User < ActiveRecord::Base
  has_one :spot
  validates :first_name, presence: true #{ :message => "cannot be blank!" }
  validates :last_name , presence: true #{ :message => "cannot be blank!" }
  validates :email     , uniqueness: { case_sensitive: false }
end

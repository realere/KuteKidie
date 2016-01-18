class Babysitter < ActiveRecord::Base
   belongs_to :categories
  has_many :users
end

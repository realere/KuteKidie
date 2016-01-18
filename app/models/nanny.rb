class Nanny < ActiveRecord::Base
  belongs_to :categories
  has_many :users
end

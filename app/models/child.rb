class Child < ActiveRecord::Base
  has_many :babysitter, through: :babysitter_child
end

class BabysitterChild < ActiveRecord::Base
  belongs_to :babysitter
  belongs_to :child
end

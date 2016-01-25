class Review < ActiveRecord::Base
has_many :users
belongs_to :childminder
belongs_to :babysitter
belongs_to :nanny
end

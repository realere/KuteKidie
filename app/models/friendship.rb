class Friendship < ActiveRecord::Base
  belongs_to :user
  belongs_to :friend, polymorphic: true
end

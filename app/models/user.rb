class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


   has_many :friendships
   has_many :childminder_friends, through: :friendships, source: :friend, source_type: 'Childminder'


end

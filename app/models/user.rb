class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


   has_many :childminder_friendships
   has_many :childminder_friends, through: :childminder_friendships, source: :friend


end

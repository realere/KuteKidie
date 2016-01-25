class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable


  has_many :friendships
  has_many :childminder_friends, through: :friendships, source: :friend, source_type: 'Childminder'

  has_many :babysitter_friends, through: :friendships, source: :friend, source_type: 'Babysitter'

  def name 
     "#{self.first_name} #{self.last_name}" 
  end

end

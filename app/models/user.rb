class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable


  has_many :friendships
  has_many :childminder_friends, through: :friendships, source: :friend, source_type: 'Childminder'

  has_many :babysitter_friends, through: :friendships, source: :friend, source_type: 'Babysitter'

  has_many :nanny_friends, through: :friendships, source: :friend, source_type: 'Nanny'

  def name 
     "#{self.first_name} #{self.last_name}" 
  end

  def role?(role_to_compare)
    self.role.to_s == role_to_compare.to_s
  end

end

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
         
  has_many :blogs
  has_many :comments
  belongs_to :agreec
  belongs_to :agree
  belongs_to :follower
  belongs_to :following
end

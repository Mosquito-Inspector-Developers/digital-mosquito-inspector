class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  before_save do 
    self.email = email.downcase
  end

  has_many :checklists
  has_many :questions, through: :checklists

  validates :email, presence: true
  validates :email, uniqueness: { case_sensitive: false }
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts, dependent: :destroy

  validates :first_name, :last_name, presence: true

  before_create :set_default_values

  private

  def set_default_values
    self.admin = false
    self.executive = false
  end
end

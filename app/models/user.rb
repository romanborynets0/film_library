class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :validatable

  has_many :comments, dependent: :destroy
  # validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  # validates :password, presence: true, length: { minimum: 6 }
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true
  validates :email, presence: true,
                    # 重複不可
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 5 }
end

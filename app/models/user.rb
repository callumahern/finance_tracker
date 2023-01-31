class User < ApplicationRecord
  has_many :expenses
  has_many :categories, through: :expenses

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

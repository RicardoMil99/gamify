class Reward < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true

end

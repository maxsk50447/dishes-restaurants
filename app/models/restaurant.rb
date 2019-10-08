class Restaurant < ApplicationRecord
  has_and_belongs_to_many :dishes

  validates :name, presence: true
end

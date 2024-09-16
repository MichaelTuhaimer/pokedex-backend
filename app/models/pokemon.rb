class Pokemon < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :favorites
end

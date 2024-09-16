class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :pokemon

  validates :pokemon_id, presence: true, uniqueness: { scope: :user_id, message: "Already favorited." }
end

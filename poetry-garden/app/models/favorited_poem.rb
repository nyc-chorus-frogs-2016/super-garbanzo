class FavoritedPoem < ActiveRecord::Base
  validates :poem_id, presence: true
  validates :user_id, presence: true

  belongs_to :user
  belongs_to :poem
end

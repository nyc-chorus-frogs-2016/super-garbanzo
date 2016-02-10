class FavoritedAuthor < ActiveRecord::Base
  validates :author_id, presence: true
  validates :user_id, presence: true

  belongs_to :user
  belongs_to :author
end

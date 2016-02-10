class Poem < ActiveRecord::Base
  belongs_to :author
  belongs_to :submitter, class_name: "User"
  has_many :favorited_poems
  has_many :users_whove_favorited, through: :favorited_authors, class_name: "User"

  def self.by_popularity
    #sort all instances of the Poem class by the amount of favorited_poems users it has
  end

  def self.by_recency
    #uhhhhh
  end

  def times_favorited
    self.favorited_poems.count
  end

end

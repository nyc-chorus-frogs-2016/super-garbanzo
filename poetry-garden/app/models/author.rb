class Author < ActiveRecord::Base
  belongs_to :user
  has_many :poems
  has_many :favorited_authors
  has_many :users_whove_favorited, through: :favorited_authors, class_name: "User"

  validates :name, presence: true

  def self.by_popularity
    #sort instances of the Author class by number of favorited_authors users it has
  end

  def poems_by_popularity
    #sort this instances' poems by the number of favorited_poems users it has
  end

end

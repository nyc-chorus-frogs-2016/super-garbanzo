class Author < ActiveRecord::Base
  belongs_to :identity_as_user, class_name: "User", foreign_key: :user_id
  has_many :poems
  has_many :favorited_authors
  has_many :users_whove_favorited, through: :favorited_authors, class_name: "User"

  validates :first_name, :last_name, presence: true

  def self.by_popularity
    #sort instances of the Author class by number of favorited_authors users it has
  end

  def poems_by_popularity
    # ????
  end

  def poems_by_recency
    self.poems.order(year: :desc, updated_at: :desc)
  end

  def times_favorited
    self.favorited_authors.count
  end

  def number_poems
    self.poems.count
  end

  def to_param
    "#{self.id}-#{self.first_name.parameterize}-#{self.last_name.parameterize}"
  end
end

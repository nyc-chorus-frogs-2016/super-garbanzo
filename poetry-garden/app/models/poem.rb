class Poem < ActiveRecord::Base
  belongs_to :author
  belongs_to :submitter, class_name: "User"
  has_many :favorited_poems
  has_many :users_whove_favorited, through: :favorited_authors, class_name: "User"

  before_save :set_untitled



  def self.by_popularity
    #sort all instances of the Poem class by the amount of favorited_poems users it has
  end

  def self.by_recency
    #uhhhhh
  end

  def times_favorited
    self.favorited_poems.count
  end

  #this isn't really working
  def to_params
    "#{self.id}-#{self.title.parameterize}"
  end

  private

  def set_untitled
    self.title ||= "Untitled"
  end

end

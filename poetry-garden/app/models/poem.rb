class Poem < ActiveRecord::Base
  belongs_to :author
  belongs_to :submitter, class_name: "User"

  def self.by_popularity
    #sort all instances of the Poem class by the amount of favorited_poems users it has
  end
end

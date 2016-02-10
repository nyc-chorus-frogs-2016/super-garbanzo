class User < ActiveRecord::Base
  has_secure_password

  has_many :submitted_poems, class_name: "Poem", foreign_key: :submitter_id
  has_many :favorited_poems
  has_many :favorited_authors

  has_one :author #maybe
end

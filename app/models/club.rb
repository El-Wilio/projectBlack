class Club < ActiveRecord::Base

  has_and_belongs_to_many :users
  has_and_belongs_to_many :tags

  #Insert validation for club name and description here.

  validates :name, length: {in: 3..50}, format: {
    with: %r{\A[a-z0-9]+(\s{1}[a-z0-9]+)*\z}i,
    message: "Will only accept a combination of words and numbers."
  }
end

  validates :permalink, presence: true, format: {
    with: %r{\A[a-z]+\z},
    message: "only alphabetical letters: no space"
  }

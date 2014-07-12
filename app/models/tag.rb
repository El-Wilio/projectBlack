class Tag < ActiveRecord::Base

  has_and_belongs_to_many :clubs

  #insert validation for tag name here.

  validates :name, length: {in: 3..30}, uniqueness: true, format: {
    with: %r{\A[a-z]+(\s{1}[a-z]+)*\z}i,
    message: "Not a valid tag."
  }


end

class Club < ActiveRecord::Base

  has_and_belongs_to_many :users
  has_and_belongs_to_many :tags

  #Insert validation for club name and description here.

end

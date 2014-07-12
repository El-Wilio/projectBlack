class Tag < ActiveRecord::Base

  has_and_belongs_to_many :clubs

  #insert validation for tag name here.

end

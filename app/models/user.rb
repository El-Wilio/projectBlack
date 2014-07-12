class User < ActiveRecord::Base

  has_and_belongs_to_many :clubs

  validates :username, length: {in: 3..20}, uniqueness: true, format: {
    with: %r{\A(\w+\.*)+\z},
    message: "that's not a correct username my friend"
  }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

class User < ActiveRecord::Base
  validates :username, length: {in: 3..20}, format: {
    with: %r{\A(\w+\.*)+\z},
    message: "that's not a correct username my friend"
  }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

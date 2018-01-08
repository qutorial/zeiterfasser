class User < ApplicationRecord
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :confirmable, :omniauthable
  include DeviseTokenAuth::Concerns::User

  has_many :eintrags, dependent: :destroy

  devise :database_authenticatable, 
        #:omniauthable,
        :registerable,
        #:timeoutable,
  	:recoverable, 
  	:rememberable, 
  	:trackable, 
  	:validatable, 
        #:lockable,
  	#:confirmable,
        :zxcvbnable
        
end

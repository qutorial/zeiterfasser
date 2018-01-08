class User < ApplicationRecord

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

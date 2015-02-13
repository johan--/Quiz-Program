class Admin < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :token_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable



	validates :name,
				:presence => true,
				format:{with: /\A[a-zA-Z]+\z/,
    			message:"only allows letters"}


    validates :gender, 
				:presence => true,
			    :inclusion => {:in => ["male", "female"]}

	


end

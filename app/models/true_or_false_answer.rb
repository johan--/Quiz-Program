class TrueOrFalseAnswer < ActiveRecord::Base

	 ######################## Relations ########################

	belongs_to :student
	belongs_to :true_or_false_question


    validates :answer, 
    			:presence => true

end

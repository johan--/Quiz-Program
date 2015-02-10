class Mcq < ActiveRecord::Base

    ######################## Relations ########################

	belongs_to :quiz
	has_many :mcq_answers
    
    ######################## validations ########################

	# explanation_regex = /\A[a-zA-Z]+\s\Z/
 
    validates :question_mark,
              :presence => true,
              :numericality => {:only_integer => true}

    validates :bonus,
              :numericality => true

    validates :hint, 
              :numericality => {:only_integer => true}

    validates :answer,
              :presence => true

end

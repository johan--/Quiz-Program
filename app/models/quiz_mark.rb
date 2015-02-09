class QuizMark < ActiveRecord::Base
	belongs_to :student
	belongs_to :quiz
    
    def set_quiz_mark
    	self.student.mcq_answers.each

    end
    

end

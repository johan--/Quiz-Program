class Quiz < ActiveRecord::Base

    ######################## Relations ########################
    
	belongs_to :subject
	belongs_to :instructor

	has_many :student_quizzes
    has_many :students, through: :student_quizzes
    
	has_many :numerical_questions
	has_many :true_or_false_questions
	has_many :mcqs
	has_many :text_sentences
    					   
    validates :quiz_mark, 
                    :presence => true,
    				:numericality => true

    validates :duration,
                 :presence => true,
                 :numericality => true


    def set_quiz_full_mark()
    	temp_quiz_mark = 0
    	Mcq.where(quiz_id: self.quiz_id).each do |x|        
    		temp_quiz_mark = temp_quiz_mark + x.question_mark
    	end
        self.quiz_mark = temp_quiz_mark
    end

    

    
    scope :arrange,             -> { order("time_to_be_published ASC") }
    scope :coming_quizzes,      -> { where("time_to_be_published > ?", Time.now - 5*60) }
    scope :previous_quizzes,    -> { where("time_to_be_published < ?", Time.now + 10*60) }

end

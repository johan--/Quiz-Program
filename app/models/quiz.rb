class Quiz < ActiveRecord::Base
	belongs_to :subject
	belongs_to :instructor
	has_many :quiz_marks
	has_many :numerical_questions
	has_many :true_or_false_questions
	has_many :mcqs
	has_many :text_sentences

    validates :avg_degree, :numericality => true,
    					   :inclusion => {:within => 0..quiz_mark}

    validates :quiz_mark, :presence => true,
    					  :numericality => true

    def set_quiz_full_mark()
    	temp_quiz_mark = 0
    	Mcq.where(quiz_id: self.quiz_id).each do |x|        
    		temp_quiz_mark = temp_quiz_mark + x.question_mark
    	end
        self.quiz_mark = temp_quiz_mark
    end





end

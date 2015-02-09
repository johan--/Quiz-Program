class Mcq < ActiveRecord::Base
	belongs_to :quiz
	has_many :mcq_answers
    

	explanation_regex = /\A[a-zA-Z]+\s\Z/
    hint_regex = /\A[a-zA-Z]+\s\Z/

    validates :question_mark, :presence => true,
                              :numericality => {:only_integer => true}

    validates :bonus, :numericality => true

    validates :explanation, :format => {:with => explanation_regex}

    validates :hint, :numericality => {:only_integer => true}

    validates :answer, :presence => true

    validates :hint_sentence



end

class Mcq < ActiveRecord::Base

    ######################## Relations ########################

	belongs_to :quiz

	has_many :student_mcqs
  has_many :students, through: :student_mcqs
    
    ######################## validations ########################

 
    validates :question_mark,
              :presence => true,
              :numericality => {:only_integer => true}

    validates :hint_discounted_mark, 
              :numericality => {:only_integer => true}

    validates :answer,
              :presence => true

    validates :question,
            presence: true

    validates :choice1,
            presence: true

    validates :choice2,
            presence: true

    validates :choice3,
            presence: true

    validates :choice4,
            presence: true

end

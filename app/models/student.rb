class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable, :token_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable


    ######################## Relations ########################

	has_and_belongs_to_many :subjects
	has_and_belongs_to_many :instructors

	has_many :student_quizzes
	has_many :quizzes, through: :student_quizzes

	has_many :student_numerical_questions
	has_many :numerical_questions, through: :student_numerical_questions

	has_many :student_mcqs
	has_many :mcqs, through: :student_mcqs

	has_many :student_true_or_false_questions
	has_many :true_or_false_questions, through: :student_true_or_false_questions

	belongs_to :section

	######################## Validations ########################


	# validates :studying_year, 
	# 			:presence => true,
	# 			:inclusion => {:in => ["primary", "first", "second", "third", "fourth" ]}

	# validates :expected_year_of_graduation, 
	# 			:presence => true,
	# 			:length => {:is => 4},
	# 			:numericality => {:only_integer => true}

	# validates :gender, 
	# 			:presence => true,
	# 		    :inclusion => {:in => ["male", "female"]}

	# validates :seat_number,
	# 			:presence => true,
	# 			:numericality => {:only_integer => true}

	# validates :name,
	# 			:presence => true,
	# 			format:{with: /\A[a-zA-Z]+\z/,
 #    			message:"only allows letters"}


    # def student_name_is_present_and_allowed

    # 	if self.name.present?
    # 		if !(self.name.match(/\s/) or self.name.match(/\A[a-zA-Z]+\Z/))
    # 			errors.add(:name, "only letters and spaces are allowed")
    # 		elsif !self.name.match(/\s/)
    # 			errors.add(:name, "the full name should be divided by spaces")
    # 		end
    # 	else 
    # 		errors.add(:name, "name can't be blank")
    # 	end	
    # end
end
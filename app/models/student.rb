class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable, :token_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

	has_and_belongs_to_many :subjects
	has_and_belongs_to_many :instructors
	has_many :quiz_marks
	has_many :numerical_answers
	has_many :mcq_answers
	has_many :true_or_false_answers

	
	



	# The validation style used is the sexy validation
    validate :student_name_is_present_and_allowed				 

	validates :password, :presence => true, 
						 :length => {:within => 6..60}

    validates :date_of_birth, :presence => true,
    						  :numericality => {:only_integer => true},
    						  :length => {:is => 4}

	validates :studying_year, :presence => true,
							  :inclusion => {:in => ["primary", "first", "second", "third", "fourth" ]}

	validates :expected_year_of_graduation, :presence => true,
											:length => {:is => 4},
											:numericality => {:only_integer => true}

	validates :gender, :presence => true,
					   :inclusion => {:in => ["male", "female"]}

	validates :email, :presence => true,
					  :uniqueness => true,
					  :email_format => {:message => "is not looking good"}
					  
	validates :section_number, :presence => true,
							   :numericality => {:only_integer => true}

    def student_name_is_present_and_allowed

    	if self.name.present?
    		if !(self.name.match(/\s/) or self.name.match(/\A[a-zA-Z]+\Z/))
    			errors.add(:name, "only letters and spaces are allowed")
    		elsif !self.name.match(/\s/)
    			errors.add(:name, "the full name should be divided by spaces")
    		end
    	else 
    		errors.add(:name, "name can't be blank")
    	end	
    end

    


    








end

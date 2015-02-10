class Subject < ActiveRecord::Base

    ######################## Relations ########################

	has_many :quizzes
	has_and_belongs_to_many :students
    belongs_to :instructors


    # validate :subject_is_present_and_allowed   					    												
   
    validates :studying_year,
                :presence => true,
     			:inclusion => {:in => ["primary", "first", "second", "third", "fourth" ]}
    
    # validate :course_code_is_present_and_allowed    

    # def subject_is_present_and_allowed

    # 	if self.subject.present?
            
    #         self.subject.each_char do |i|
    #         	unless i.match(/\s/) or i.match(/[a-zA-Z]/)
    #         		errors.add(:subject, "only letters and spaces are allowed")
    #         		break
    #         	end
    #         end
    # 		#unless self.subject.match(/\s/) or self.subject.match(/\A[a-zA-Z]+\Z/)
    # 			#errors.add(:subject, "only letters and spaces are allowed")	
    # 		#end
    # 	else 
    # 		errors.add(:subject, "can't be blank")
    # 	end
    # end

    # def course_code_is_present_and_allowed

    # 	if self.course_code.present?

    # 		self.course_code.each_char do |i|
    # 			unless i.match(/[0-9]+/) or i.match(/\A[A-Z]\Z/)
    # 				errors.add(:course_code, "only capital letters and numbers are allowed")
    # 				break
    #  			end
    #  		end

    #  		unless (self.course_code.match(/[A-Z]/) && self.course_code.match(/[0-9]/))
    #  			errors.add(:course_code, "code should contain capital letters plus a number")
    #  		end


    # 	else
    # 		errors.add(:course_code, "can't be blank")
    # 	end
    # end

end

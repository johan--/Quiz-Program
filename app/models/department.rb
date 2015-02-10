class Department < ActiveRecord::Base


    name_regex = /\A [a-zA-Z]+\s \Z/

	# validate :department_name_is_present_and_allowed

	validates :begin_year, 
	:numericality => {:only_integer => true},
	:length => {:is => 1}


	######################################
	# remember to revise it 

	# def department_name_is_present_and_allowed
	# 	if self.department_name.present?
	# 		self.department_name.each_char do |i|
	# 			unless i.match(/\s/) or i.match(/[a-zA-Z]/)
	# 				errors.add(:department_name, "only letters and spaces are allowed")
	# 				break
	# 			end
	# 		end
	# 	else
	# 		errors.add(:department_name, "can't be blank")
	# 	end
	# end
						   							



end

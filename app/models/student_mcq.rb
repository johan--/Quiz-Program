class StudentMcq < ActiveRecord::Base

    ######################## Relations ########################

	belongs_to :student
	belongs_to :mcq

end

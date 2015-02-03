class NumericalAnswer < ActiveRecord::Base
belongs_to :student
belongs_to :numerical_question
end

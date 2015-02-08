class NumericalAnswer < ActiveRecord::Base
belongs_to :student
belongs_to :numerical_question


validates :answer, :presence => true


end

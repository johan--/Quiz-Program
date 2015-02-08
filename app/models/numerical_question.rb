class NumericalQuestion < ActiveRecord::Base
	belongs_to :quiz
	has_many :numerical_answers


    validates :answer, :presence => true,
    				   :numericality => true
    				   


end

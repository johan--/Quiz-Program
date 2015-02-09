class TextSentence < ActiveRecord::Base
	belongs_to :quiz

	validates :text_sentence, :presence => true
	
end



json.duration(@quiz.duration)
json.quiz_title(@quiz.quiz_title)
json.quiz_id(@quiz.id)

if @quiz.mcqs.nil?

else 
json.mcqs @quiz.mcqs do |mcq|
json.question mcq.question
json.choice1 mcq.choice1
json.choice2 mcq.choice2
json.choice3 mcq.choice3
json.choice4 mcq.choice4
json.question_mark mcq.question_mark
	end
end



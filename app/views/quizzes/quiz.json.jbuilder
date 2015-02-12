

json.duration(@quiz.duration)
json.quiz_title(@quiz.quiz_title)

if @quiz.mcqs.nil?

else 
json.mcqs @quiz.mcqs do |mcq|
json.question mcq.question
json.choice1 mcq.choice1
json.choice2 mcq.choice2
json.choice3 mcq.choice3
json.choice4 mcq.choice4
json.question_mark mcq.question_mark
json.bonus mcq.bonus
json.hint mcq.hint
	end
end


if @quiz.numerical_questions.nil?
else
json.Numerical_questions @quiz.numerical_questions do |numerical|
json.question numerical.question
json.question_mark numerical.question_mark
json.bonus numerical.bonus
json.hint numerical.hint
end
end


if @quiz.true_or_false_questions.nil?
else
json.true_or_false_questions @quiz.true_or_false_questions do |true_or_false|
json.question true_or_false.question
json.question_mark true_or_false.question_mark
json.bonus true_or_false.bonus
json.hint true_or_false.hint
end
end
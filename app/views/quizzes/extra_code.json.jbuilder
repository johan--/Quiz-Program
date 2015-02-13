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
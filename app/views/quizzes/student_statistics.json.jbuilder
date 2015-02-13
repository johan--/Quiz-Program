

json.quizzes quizzes do |quiz|
	json.quiz_title quiz.quiz_title 
	json.mark student.student_quizzes.find_by_quiz_id(quiz.id).student_quiz_mark
end
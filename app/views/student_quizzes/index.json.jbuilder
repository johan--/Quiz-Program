json.array!(@student_quizzes) do |student_quiz|
  json.extract! student_quiz, :id
  json.url student_quiz_url(student_quiz, format: :json)
end

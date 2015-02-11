
json.authentication_token(user.authentication_token)
json.name(user.name)
json.role(@role)
json.subjects user.subjects , :subject

if student_signed_in?
json.coming_quiz_title(coming_quiz.quiz_title)
json.coming_quiz_subject(coming_quiz.subject)
json_coming_quiz_time(coming_quiz.time_to_be_published)
end
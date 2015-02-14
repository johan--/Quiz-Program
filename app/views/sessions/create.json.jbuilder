
json.authentication_token(user.authentication_token)
json.name(user.name)
json.role(@role)
json.subjects user.subjects , :subject ,:course_code

if coming_quiz.nil? or @role=="instructor"
json.coming_quiz_title("No")
json.coming_quiz_subject("No")
json.coming_quiz_time("No")
json.coming_quiz_id("No")

elsif @role == "student"
json.coming_quiz_title(coming_quiz.quiz_title)
json.coming_quiz_subject(coming_quiz.subject.subject)
json.coming_quiz_time(coming_quiz.time_to_be_published)
json.coming_quiz_id(coming_quiz.id)
json.coming_quiz_duration(coming_quiz.duration)
end

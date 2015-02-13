json.array!(@student_mcqs) do |student_mcq|
  json.extract! student_mcq, :id
  json.url student_mcq_url(student_mcq, format: :json)
end

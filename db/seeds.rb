
student1 = Student.create(name: "Fady Fares",email: "fadyfares@gmail.com",
 	expected_year_of_graduation: 2019,studying_year: "primary", section_number: 38,
 	gender: "male",password: "passStu1",date_of_birth: '1992-01-01' )
student2 = Student.create(name: "Mohamed Ahmed",email: "mohamedahmed@gmail.com",
 	expected_year_of_graduation: 2016,studying_year: "third", section_number: 2,
 	gender: "male",password: "passStu2",date_of_birth: '1992-11-06' )
student3 = Student.create(name: "Arwa Soliman",email: "arwasoliman@gmail.com",
	expected_year_of_graduation: 2016,studying_year: "third", section_number: 1,gender: "female",
 	password: "passStu3",date_of_birth: '1993-02-04')
student4 = Student.create(name: "Ramy Farid",email: "ramyfarid@gmail.com",
	expected_year_of_graduation: 2015,studying_year: "fourth", section_number: 8,gender: "male",
 	password: "passStu4",date_of_birth: '1992-01-03')
student5 = Student.create(name: "Raymon Mina",email: "raymonmina@gmail.com",
	expected_year_of_graduation: 2017,studying_year: "second", section_number: 5,gender: "male",
 	password: "passStu5",date_of_birth: '1992-01-05')
student6 = Student.create(name: "Reem medhat",email: "reemmedhat@gmail.com",
	expected_year_of_graduation: 2018,studying_year: "first", section_number: 5,gender: "female",
 	password: "passStu6",date_of_birth: '1992-01-05')

instructor1 = Instructor.create(name: "Dr.Cherif Salama",email:"cherifSalama@gmail.com",
	gender: "male", role: "instructor",password: "passIns1")
instructor2 = Instructor.create(name: "Dr.Bassem Amin",email:"bassemamin@gmail.com",
	gender: "male", role: "instructor",password: "passIns2")
instructor3 = Instructor.create(name: "Dr.Gamal",email:"gamal@gmail.com",
	gender: "male", role: "instructor",password: "passIns3")
instructor4 = Instructor.create(name: "Dr.Seif",email:"seif@gmail.com",
	gender: "male", role: "department manager",password: "passIns4")
instructor5 = Instructor.create(name: "Dr.Makram",email:"makram@gmail.com",
	gender: "male", role: "instructor",password: "passIns5")
instructor6 = Instructor.create(name: "Dr.Rabab",email:"rabab@gmail.com",
	gender: "female", role: "instructor",password: "passIns6")
instructor7 = Instructor.create(name: "Dr.Hussein",email:"hussein@gmail.com",
	gender: "male", role: "instructor",password: "passIns7")

quiz1 = Quiz.create(quiz_mark: 25,time_to_solve_the_quiz:'02:00:00',
	time_to_be_published:'2016-02-03 12:00:00',average_degree: 13)
quiz2 = Quiz.create(quiz_mark: 30,time_to_solve_the_quiz:'03:00:00',
	time_to_be_published:'2015-02-30 12:00:00')
quiz3 = Quiz.create(quiz_mark: 30,time_to_solve_the_quiz:'01:00:00',
	time_to_be_published:'2015-03-30 10:00:00')
quiz4 = Quiz.create(quiz_mark: 20,time_to_solve_the_quiz:'00:30:00',
	time_to_be_published:'2015-04-30 15:00:00')
quiz5 = Quiz.create(quiz_mark: 15,time_to_solve_the_quiz:'00:20:00',
	time_to_be_published:'2015-05-30 18:00:00')

text1 = TextSentence.create(text_sentence: "text1")
text2 = TextSentence.create(text_sentence: "text2")
text3 = TextSentence.create(text_sentence: "text3")
text4 = TextSentence.create(text_sentence: "text4")
text5 = TextSentence.create(text_sentence: "text5")

subject1 = Subject.create(subject: "math1",course_code:"M1",studying_year:"primary")
subject2 = Subject.create(subject: "control",course_code:"CON3",studying_year:"third")
subject3 = Subject.create(subject: "CO",course_code:"CO2",studying_year:"second")
subject4 = Subject.create(subject: "Data communication",course_code:"DA3",studying_year:"third")
subject5 = Subject.create(subject: "testing",course_code:"TES3",studying_year:"third")
subject6 = Subject.create(subject: "math2",course_code:"M2",studying_year:"first")
subject7 = Subject.create(subject: "embedded systems",course_code:"EM4",studying_year:"fourth")

mcq1 = Mcq.create(question_mark: 2,explanation: "exp1",hint: true,bonus: true,
	hint_sentence: "hint1",hint_discounted_mark: 1,answer: "choice1")
mcq2 = Mcq.create(question_mark: 1,explanation: "exp2",hint: false,bonus: true,
	hint_sentence: "hint2",hint_discounted_mark: 1,answer: "choice2")
mcq3 = Mcq.create(question_mark: 4,explanation: "exp3",hint: false,bonus: false,
	hint_sentence: "hint3",hint_discounted_mark: 1,answer: "choice2")
mcq4 = Mcq.create(question_mark: 3,explanation: "exp4",hint: false,bonus: false,
	hint_sentence: "hint4",hint_discounted_mark: 1,answer: "choice3")
mcq5 = Mcq.create(question_mark: 1,explanation: "exp5",hint: false,bonus: false,
	hint_sentence: "hint5",hint_discounted_mark: 1,answer: "choice3")
mcq6 = Mcq.create(question_mark: 1,explanation: "exp6",hint: true,bonus: false,
	hint_sentence: "hint6",hint_discounted_mark: 2,answer: "choice2")
mcq7 = Mcq.create(question_mark: 1,explanation: "exp7",hint: true,bonus: false,
	hint_sentence: "hint7",hint_discounted_mark: 1,answer: "choice1")

mcqAns1 = McqAnswer.create(student_answer: "choice1")
mcqAns2 = McqAnswer.create(student_answer: "answer2")
mcqAns3 = McqAnswer.create(student_answer: "answer3")
mcqAns4 = McqAnswer.create(student_answer: "choice3")
mcqAns5 = McqAnswer.create(student_answer: "answer5")

Nuq1 = NumericalQuestion.create(question_mark: 2)
Nuq2 = NumericalQuestion.create(question_mark: 2)
Nuq3 = NumericalQuestion.create(question_mark: 2)
Nuq4 = NumericalQuestion.create(question_mark: 2)
Nuq5 = NumericalQuestion.create(question_mark: 2)

quizM1 = QuizMark.create(student_quiz_mark: 11)
quizM2 = QuizMark.create(student_quiz_mark: 20)
quizM3 = QuizMark.create(student_quiz_mark: 20)
quizM4 = QuizMark.create(student_quiz_mark: 20)
quizM5 = QuizMark.create(student_quiz_mark: 20)

admin1 = Admin.create(name: "admin1",gender: "male",email: "admin1@gmail.com",
	admin_authority: true,instructor_authority: true,department_authority: true,
	subject_authority: true,reply_msg_authority: true,student_authority: true )
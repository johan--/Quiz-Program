
student1 = Student.create(name: "Fady Fares",email: "fadyfares@gmail.com",
 	expected_year_of_graduation: 2019,studying_year: "primary",
 	gender: "male",password: "passStu1",date_of_birth: '1992-01-01',seat_number: 1 )
student2 = Student.create(name: "Mohamed Ahmed",email: "mohamedahmed@gmail.com",
 	expected_year_of_graduation: 2016,studying_year: "third",
 	gender: "male",password: "passStu2",date_of_birth: '1992-11-06' ,seat_number: 2)
student3 = Student.create(name: "Arwa Soliman",email: "arwasoliman@gmail.com",
	expected_year_of_graduation: 2016,studying_year: "third",gender: "female",
 	password: "passStu3",date_of_birth: '1993-02-04',seat_number: 3)
student4 = Student.create(name: "Ramy Farid",email: "ramyfarid@gmail.com",
	expected_year_of_graduation: 2015,studying_year: "fourth",gender: "male",
 	password: "passStu4",date_of_birth: '1992-01-03',seat_number: 4)
student5 = Student.create(name: "Raymon Mina",email: "raymonmina@gmail.com",
	expected_year_of_graduation: 2017,studying_year: "second",gender: "male",
 	password: "passStu5",date_of_birth: '1992-01-05',seat_number: 5)
student6 = Student.create(name: "Reem medhat",email: "reemmedhat@gmail.com",
	expected_year_of_graduation: 2018,studying_year: "first",gender: "female",
 	password: "passStu6",date_of_birth: '1992-01-05',seat_number: 6)

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

quiz1 = Quiz.create(quiz_mark: 25,duration: 30,
	time_to_be_published:'2016-02-03 12:00:00',average_degree: 13)
quiz2 = Quiz.create(quiz_mark: 30,duration: 2,
	time_to_be_published:'2015-02-30 12:00:00')
quiz3 = Quiz.create(quiz_mark: 30,duration: 10,
	time_to_be_published:'2015-03-30 10:00:00')
quiz4 = Quiz.create(quiz_mark: 20,duration: 15,
	time_to_be_published:'2015-04-30 15:00:00')
quiz5 = Quiz.create(quiz_mark: 15,duration: 12,
	time_to_be_published:'2015-05-30 18:00:00')
quiz6 = Quiz.create(quiz_mark: 15,duration: 20,
	time_to_be_published:'2014-05-30 18:00:00')
quiz7 = Quiz.create(quiz_mark: 15,duration: 180,
	time_to_be_published:'2014-09-30 18:00:00')
quiz8 = Quiz.create(quiz_mark: 15,duration: 90,
	time_to_be_published:'2012-05-30 18:00:00')

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
	hint_sentence: "hint1",hint_discounted_mark: 1,answer: 1,question: "question1",choice1:"q1c1",
	choice2:"q1c2",choice3:"q1c3",choice4:"q1c4")
mcq2 = Mcq.create(question_mark: 1,explanation: "exp2",hint: false,bonus: true,
	hint_sentence: "hint2",hint_discounted_mark: 1,answer: 2, question: "question2",choice1:"q2c1",
	choice2:"q2c2",choice3:"q2c3",choice4:"q2c4")
mcq3 = Mcq.create(question_mark: 4,explanation: "exp3",hint: false,bonus: false,
	hint_sentence: "hint3",hint_discounted_mark: 1,answer: 1, question: "question3",choice1:"q3c1",
	choice2:"q3c2",choice3:"q3c3",choice4:"q3c4")
mcq4 = Mcq.create(question_mark: 3,explanation: "exp4",hint: false,bonus: false,
	hint_sentence: "hint4",hint_discounted_mark: 1,answer: 2, question: "question4",choice1:"q4c1",
	choice2:"q4c2",choice3:"q4c3",choice4:"q4c4")
mcq5 = Mcq.create(question_mark: 1,explanation: "exp5",hint: false,bonus: false,
	hint_sentence: "hint5",hint_discounted_mark: 1,answer: 3, question: "question5",choice1:"q5c1",
	choice2:"q5c2",choice3:"q5c3",choice4:"q5c4")
mcq6 = Mcq.create(question_mark: 1,explanation: "exp6",hint: true,bonus: false,
	hint_sentence: "hint6",hint_discounted_mark: 2,answer: 2, question: "question6",choice1:"q6c1",
	choice2:"q6c2",choice3:"q6c3",choice4:"q6c4")
mcq7 = Mcq.create(question_mark: 1,explanation: "exp7",hint: true,bonus: false,
	hint_sentence: "hint7",hint_discounted_mark: 1,answer: 4, question: "question7",choice1:"q7c1",
	choice2:"q7c2",choice3:"q7c3",choice4:"q7c4")

# mcqAns1 = McqAnswer.create(student_answer: "choice1")
# mcqAns2 = McqAnswer.create(student_answer: "answer2")
# mcqAns3 = McqAnswer.create(student_answer: "answer3")
# mcqAns4 = McqAnswer.create(student_answer: "choice3")
# mcqAns5 = McqAnswer.create(student_answer: "answer5")

Nuq1 = NumericalQuestion.create(question_mark: 2)
Nuq2 = NumericalQuestion.create(question_mark: 2)
Nuq3 = NumericalQuestion.create(question_mark: 2)
Nuq4 = NumericalQuestion.create(question_mark: 2)
Nuq5 = NumericalQuestion.create(question_mark: 2)

quizM1 = StudentQuiz.create(student_quiz_mark: 11)
quizM2 = StudentQuiz.create(student_quiz_mark: 20)
quizM3 = StudentQuiz.create(student_quiz_mark: 20)
quizM4 = StudentQuiz.create(student_quiz_mark: 20)
quizM5 = StudentQuiz.create(student_quiz_mark: 20)

admin1 = Admin.create(name: "admin1",gender: "male",email: "admin1@gmail.com", password: "passAd1",
	admin_authority: true,reply_msg_authority: true,add_authority: true )


Student.find(2).subjects << Subject.find(1)
Student.find(2).subjects << Subject.find(2)
Student.find(2).subjects << Subject.find(3)

Student.find(1).subjects << Subject.find(3)
Student.find(1).subjects << Subject.find(5)

Student.find(2).quizzes << Quiz.find(1)
Student.find(2).quizzes << Quiz.find(2)
Student.find(2).quizzes << Quiz.find(3)

Student.find(1).quizzes << Quiz.find(1)
Student.find(1).quizzes << Quiz.find(4)

Subject.find(1).quizzes << Quiz.find(1)
Subject.find(1).quizzes << Quiz.find(2)
Subject.find(1).quizzes << Quiz.find(3)

Quiz.find(8).mcqs << Mcq.find(1)
Quiz.find(8).mcqs << Mcq.find(2)
Quiz.find(8).mcqs << Mcq.find(3)
Quiz.find(8).mcqs << Mcq.find(4)
Quiz.find(8).mcqs << Mcq.find(6)


Quiz.find(2).mcqs << Mcq.find(1)
Quiz.find(2).mcqs << Mcq.find(2)
Quiz.find(2).mcqs << Mcq.find(3)
Quiz.find(2).mcqs << Mcq.find(4)
Quiz.find(2).mcqs << Mcq.find(6)
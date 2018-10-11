# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating Users..."

sohi = User.create!(username: "Sohi")
emily = User.create!(username: "Emily")
lala = User.create!(username: "gogogirl5")
bella = User.create!(username: "bellabear")

puts "Creating Polls..."

icecream = Poll.create!(title: 'Icecream!', user_id: sohi.id)
conspiracies = Poll.create!(title: 'Conspiracy Theories', user_id: emily.id)
dogs = Poll.create!(title: 'Dogs you Know', user_id: bella)

puts "Creating Questions..."

icecream_q = Question.create!(text: "What's your favorite icecream?", poll_id: icecream.id )
conspiracies_q1 = Question.create!(text: "What/Where/Who/When/Why were the Templar Knights?", poll_id: conspiracies.id )
dogs_q = Question.create!(title: 'Which of these dogs would you say you know best?', user_id: bella)
conspiracies_q2 = Question.create!(text: "What/Where/Who/When/Why was the original matriarchy?", poll_id: conspiracies.id )

puts "Creating Answers..."

icecream_answer1 = AnswerChoice.create!(text: "Strawberry", question_id: icecream_q.id)
icecream_answer2 = AnswerChoice.create!(text: "Chocolate", question_id: icecream_q.id)
icecream_answer3 = AnswerChoice.create!(text: "Vanilla", question_id: icecream_q.id)
icecream_answer4 = AnswerChoice.create!(text: "Rainbow Unicorn", question_id: icecream_q.id)
conspiracies_answer1 = AnswerChoice.create!(text: "Rainbow Unicorn", question_id: conspiracies_q2.id)
conspiracies_answer2 = AnswerChoice.create!(text: "They went to retreive the relics lost and buried after the mob took over Rome", question_id: conspiracies_q1.id
conspiracies_answer3 = AnswerChoice.create!(text: "They were charged to unite a brotherhood that would control Europe's society through noblemen and religion", question_id: conspiracies_q1.id)
conspiracies_answer4 = AnswerChoice.create!(text: "Today, they reside primarily in Switzerland, continuing to grow their renowned banking system", question_id: conspiracies_q1.id)
conspiracies_answer5 = AnswerChoice.create!(text: "All of the above", question_id: conspiracies_q1.id)
dogs_answer1 = AnswerChoice.create!(text: "Golden Retriever", question_id: dogs.id)
dogs_answer1 = AnswerChoice.create!(text: "Cocker Spaniel", question_id: dogs.id)
dogs_answer1 = AnswerChoice.create!(text: "Poodle", question_id: dogs.id)

puts "Creating Responses..."

response1 = Response.create!(icecream_answer3.id, emily.id)

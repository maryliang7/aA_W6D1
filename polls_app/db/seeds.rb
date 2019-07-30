# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{username: "Stella"}, {username: "Bolt" }, {username: "Jim"}, {username: "Pam" }, {username: "Andy"} ])

polls = Poll.create([{user_id: 3, title: "Which house are you?"},
                    {user_id: 2, title: "Food?"},
                    {user_id: 5, title: "Australia vs. US?"}
])

house_questions = Question.create([{poll_id: 1, text: "Are you evil?"}, {poll_id: 1, text: "Which is your spirit animal?"}])
dog_questions = Question.create([{poll_id: 2, text: "Which is yummier?"}, {poll_id: 2, text: "What time is walk time?"}])
australia_questions = Question.create([{poll_id: 3, text: "What can kill you?"}, {poll_id: 3, text: "Which is the superior animal?"}])


house1 = AnswerChoice.create([{question_id: 1, answer_text: "Yes"}, {question_id: 1, answer_text: "No"}])
house2 = AnswerChoice.create([{question_id: 2, answer_text: "Griffin"},
                              {question_id: 2, answer_text: "Raven"},
                              {question_id: 2, answer_text: "Badger"},
                              {question_id: 2, answer_text: "Serpent"}])


dog1 = AnswerChoice.create([{question_id: 3, answer_text: "Chicken"},
                            {question_id: 3, answer_text: "Beef"}])
dog2 = AnswerChoice.create([{question_id: 4, answer_text: "all the time"},
                            {question_id: 4, answer_text: "see previous"}])


australia1= AnswerChoice.create([{question_id: 5, answer_text: "Spiders"},
                                {question_id: 5, answer_text: "Anything"}])
australia2= AnswerChoice.create([{question_id: 6, answer_text: "Kangaroo"},
                                {question_id: 6, answer_text: "Bald Eagle"}])

responses = Response.create([{user_id: 1, answer_choice_id: 7}, {user_id: 2, answer_choice_id: 9}, {user_id: 3, answer_choice_id:12 }, {user_id: 4, answer_choice_id:11 }, {user_id: 5, answer_choice_id: 13 } ])


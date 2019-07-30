# == Schema Information
#
# Table name: answer_choices
#
#  id          :bigint           not null, primary key
#  question_id :integer
#  answer_text :string
#

class AnswerChoice < ApplicationRecord
  validates :answer_text, presence: true
  
  belongs_to :question,
    foreign_key: :question_id,
    class_name: :Question

  has_many :responses,
    foreign_key: :answer_choice_id,
    class_name: :Response
end

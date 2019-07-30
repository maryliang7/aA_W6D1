# == Schema Information
#
# Table name: questions
#
#  id      :bigint           not null, primary key
#  poll_id :integer
#  text    :string
#

class Question < ApplicationRecord
  validates :text, presence: true

  belongs_to :poll,
    foreign_key: :poll_id,
    class_name: :Poll

  has_many :answers_choices,
    foreign_key: :question_id,
    class_name: :AnswerChoice

  has_many :responses,
    through: :answers_choices,
    source: :responses
    
end

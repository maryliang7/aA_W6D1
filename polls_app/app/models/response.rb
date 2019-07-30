# == Schema Information
#
# Table name: responses
#
#  id               :bigint           not null, primary key
#  answer_choice_id :integer
#  user_id          :integer
#

class Response < ApplicationRecord
  validate :respondent_already_answered?
  belongs_to :answer_choice,
    foreign_key: :answer_choice_id,
    class_name: :AnswerChoice

  belongs_to :user,
    foreign_key: :user_id,
    class_name: :User

  has_one :question,
    through: :answer_choice,
    source: :question

  def sibling_responses
    self.question.responses.where.not(id: self.id)
  end

  def respondent_already_answered?
    self.question.responses.where(id: self.id).empty? ? false : raise "No!!!"
  end
end

# == Schema Information
#
# Table name: polls
#
#  id      :bigint           not null, primary key
#  user_id :integer
#  title   :string
#

class Poll < ApplicationRecord

  validates :title, presence: true, uniqueness: true
  belongs_to :user,
    foreign_key: :user_id,
    class_name: :User

  has_many :questions,
    foreign_key: :poll_id,
    class_name: :Question
end

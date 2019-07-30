# == Schema Information
#
# Table name: users
#
#  id       :bigint           not null, primary key
#  username :string           not null
#

class User < ApplicationRecord

  validates :username, presence: true, uniqueness: true
  has_many :polls,
    foreign_key: :user_id,
    class_name: :Poll

  has_many :responses,
    foreign_key: :user_id,
    class_name: :Response
end

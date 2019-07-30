class CreateAnswerChoices < ActiveRecord::Migration[5.2]
  def change
    create_table :answer_choices do |t|
      t.integer :question_id
      t.string :answer_text
    end
    add_index :answer_choices, :question_id
  end
end

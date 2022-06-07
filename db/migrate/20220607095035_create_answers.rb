class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|
      t.text :question_answer
      t.boolean :correct
      t.references :user, null: false, foreign_key: true
      t.references :quiz_assessments, null: false, foreign_key: true
      t.references :answer, null: false, foreign_key: true

      t.timestamps
    end
  end
end

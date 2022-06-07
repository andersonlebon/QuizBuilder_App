class CreateQuizTests < ActiveRecord::Migration[7.0]
  def change
    create_table :quiz_tests do |t|
      t.string :name
      t.text :question_description
      t.references :user, foreign_key: true, index: true

      t.timestamps
    end
  end
end

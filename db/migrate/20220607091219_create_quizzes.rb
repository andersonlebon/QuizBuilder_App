class CreateQuizzes < ActiveRecord::Migration[7.0]
  def change
    create_table :quizzes do |t|
      t.string :name
      t.text :description
      t.string :author
      t.references :user, foreign_key: true, index: true

      t.timestamps
    end
  end
end

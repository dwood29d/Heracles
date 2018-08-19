class CreateUserExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :user_exercises do |t|
      t.decimal :number_of_reps, precision: 5, scale: 2
      t.references :user, foreign_key: true
      t.references :exercise, foreign_key: true
      t.timestamps
    end
  end
end

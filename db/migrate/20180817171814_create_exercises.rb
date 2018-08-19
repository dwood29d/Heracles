class CreateExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises do |t|
      t.string :name
      t.decimal :worth, precision: 5, scale: 2
    end
  end
end

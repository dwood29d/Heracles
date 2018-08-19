class ChangeWorthToBeDecimalInExercises < ActiveRecord::Migration[5.2]
  def change
    change_column :exercises, :worth, :decimal
  end
end

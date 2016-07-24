class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :Name
      t.string :Trainer
      t.integer :Experience

      t.timestamps
    end
  end
end

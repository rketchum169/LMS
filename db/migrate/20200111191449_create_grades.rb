class CreateGrades < ActiveRecord::Migration[6.0]
  def change
    create_table :grades do |t|
      t.string :letter
      t.float :score
      t.integer :assignment_id
      t.integer :student_id

      t.timestamps
    end
  end
end

class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.text :content
      t.string :title
      t.integer :course_id

      t.timestamps
    end
  end
end

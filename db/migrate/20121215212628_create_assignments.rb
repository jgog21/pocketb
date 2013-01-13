class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.text :title
      t.float :grade
      t.datetime :date
      t.text :assignment_pdf

      t.timestamps
    end
  end
end

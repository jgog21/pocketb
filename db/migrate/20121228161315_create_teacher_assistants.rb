class CreateTeacherAssistants < ActiveRecord::Migration
  def change
    create_table :teacher_assistants do |t|
      t.text :email
      t.text :name

      t.timestamps
    end
  end
end

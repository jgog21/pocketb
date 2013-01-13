class CreateCoursesTeacherAssistantsJoinTable < ActiveRecord::Migration
  def up
  	create_table :courses_teacher_assistants, :id=>false do |t|
  		t.integer :course_id
  		t.integer :teacher_assistant_id

  	end
  end

  def down
  	drop_table :courses_teacher_assistants
  end
end

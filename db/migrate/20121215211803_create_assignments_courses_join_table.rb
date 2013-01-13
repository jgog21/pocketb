class CreateAssignmentsCoursesJoinTable < ActiveRecord::Migration
  def change
  	
  	create_table :assignments_courses, :id=>false do |t|
  		t.integer :assignment_id
  		t.integer :course_id
  	end


  end
end

class CreateCourseNewsJoinTable < ActiveRecord::Migration
  def change
  	
  	create_table :courses_news, :id=>false do |t|
  		t.integer :course_id
  		t.integer :news_id
  	end


  end

end

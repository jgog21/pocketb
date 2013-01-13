class CreateForumAnswersForumsJoinTable < ActiveRecord::Migration
  def up
  	create_table :forum_answers_forums, :id=>false do |t|
		t.integer :forum_answer_id
  		t.integer :forum_id
  	end
  end

  def down
  	drop_table :forum_answers_forums
  end
end

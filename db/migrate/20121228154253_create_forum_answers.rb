class CreateForumAnswers < ActiveRecord::Migration
  def change
    create_table :forum_answers do |t|
      t.text :owner
      t.text :answer
      t.integer :votes
      t.datetime :timestamp

      t.timestamps
    end
  end
end

class CreateForums < ActiveRecord::Migration
  def change
    create_table :forums do |t|
      t.text :title
      t.text :text
      t.text :owner
      t.integer :views
      t.integer :votes
      t.integer :answers
      t.datetime :timestamp

      t.timestamps
    end
  end
end

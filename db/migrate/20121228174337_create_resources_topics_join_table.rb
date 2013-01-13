class CreateResourcesTopicsJoinTable < ActiveRecord::Migration
  def up
  	create_table :resources_topics, :id=>false do |t|
  		t.integer :resource_id
  		t.integer :topic_id
  	end

  end

  def down
  	drop_table :resources_topics
  end
end

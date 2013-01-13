class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.text :title
      t.text :type
      t.text :resource_link

      t.timestamps
    end
  end
end

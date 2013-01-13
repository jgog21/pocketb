class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.text :title
      t.text :description
      t.text :image_news
      t.datetime :publish_date

      t.timestamps
    end
  end
end

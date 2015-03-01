class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :user_id
      t.string :title
      t.text :content
      t.string :video
      t.string :image

      t.timestamps null: false
    end
  end
end

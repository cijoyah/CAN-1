class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :project_id
      t.integer :comment_id
      t.integer :user_id
      t.integer :value

      t.timestamps null: false
    end
  end
end

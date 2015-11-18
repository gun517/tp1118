class CreateAgrees < ActiveRecord::Migration
  def change
    create_table :agrees do |t|
      t.integer :blog_id
      t.integer :user_id
      t.timestamps null: false
    end
  end
end

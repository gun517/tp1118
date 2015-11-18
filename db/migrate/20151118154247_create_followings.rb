class CreateFollowings < ActiveRecord::Migration
  def change
    create_table :followings do |t|

      t.string :useremail
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

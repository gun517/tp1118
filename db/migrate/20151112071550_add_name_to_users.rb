class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :nickname, :string
    add_column :users, :is_female, :boolean, default: false
  end
end

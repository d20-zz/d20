class AddBirthdayToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :birthday, :date
  	remove_column :users, :birth_date
  end
end

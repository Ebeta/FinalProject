class AddEmailUniqToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :email, :string
    add_index :profiles, :email, unique: true
    add_column :profiles, :age, :string
    add_column :profiles, :phonenumber, :string
    add_column :profiles, :contact, :string
    add_column :profiles, :contactnumber, :string
    add_column :profiles, :gender, :string
    add_column :profiles, :picture, :string
  end
end


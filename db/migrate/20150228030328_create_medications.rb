class CreateMedications < ActiveRecord::Migration
  def change
    create_table :medications do |t|
      t.belongs_to :user, index: true
      t.string :name
      t.text :description
      t.text :specialNotes

      t.timestamps null: false
    end
    add_foreign_key :medications, :users
  end
end

class CreateProfileMedications < ActiveRecord::Migration
  def change
    create_table :profile_medications do |t|
      t.references :profile, index: true
      t.references :medication, index: true
      t.datetime :startDate
      t.datetime :endDate
      t.string :count
      t.string :unit
      t.string :dose
      t.string :unit
      t.string :frequency
      t.boolean :taken

      t.timestamps null: false
    end
    add_foreign_key :profile_medications, :profiles
    add_foreign_key :profile_medications, :medications
  end
end

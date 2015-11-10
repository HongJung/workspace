class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :first_name
      t.string :last_name
      t.string :genre
      t.date :dob
      t.date :dod

      t.timestamps null: false
    end
  end
end

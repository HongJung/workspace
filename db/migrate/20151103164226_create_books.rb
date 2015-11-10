class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.decimal :price
      t.date :publish_date
      t.references :category, index: true, foreign_key: true
      t.string :isbn
      t.references :publisher, index: true, foreign_key: true
      t.text :decription

      t.timestamps null: false
    end
  end
end

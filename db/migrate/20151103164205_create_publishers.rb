class CreatePublishers < ActiveRecord::Migration
  def change
    create_table :publishers do |t|
      t.string :title
      t.string :city
      t.string :state

      t.timestamps null: false
    end
  end
end

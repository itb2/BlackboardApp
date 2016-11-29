class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :description
      t.attachment :image
      t.boolean :confirmed

      t.timestamps
    end
  end
end

class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.references :group, foreign_key: true
      t.string :title
      t.datetime :date
      t.string :location
      t.string :description
      t.attachment :image

      t.timestamps
    end
  end
end

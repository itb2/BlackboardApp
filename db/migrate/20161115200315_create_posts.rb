class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.references :user, foreign_key: true
      t.references :group, foreign_key: true
      t.string :body
      t.references :event, foreign_key: true
      t.boolean :approved
      t.attachment :image

      t.timestamps
    end
  end
end

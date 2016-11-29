class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.references :group, foreign_key: true
      t.references :user, foreign_key: true
      t.string :text
      t.string :urlink

      t.timestamps
    end
  end
end

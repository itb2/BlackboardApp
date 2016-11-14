class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.string :groupName
      t.string :groupid
      t.string :password
      t.string :email
      t.text :description
      t.text :members

      t.timestamps
    end
  end
end

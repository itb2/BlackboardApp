class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.string :netid
      t.string :password
      t.text :bio
      t.string :year

      t.timestamps
    end
  end
end

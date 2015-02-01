class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :name
      t.integer :level
      t.timestamps
    end

    add_index :users, [:email]
  end

  def down
    drop_table :users
  end
end

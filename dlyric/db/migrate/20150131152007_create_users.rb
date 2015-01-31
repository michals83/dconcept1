class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.int :id
      t.string :email
      t.string :password
      t.string :name
      t.int :level
      t.timestamps
    end

    add_index :users, [:id, :email]
  end

  def down
    drop_table :users
  end
end

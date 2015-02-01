class CreateVerses < ActiveRecord::Migration
  def up
    create_table :verses do |t|
      t.integer :user_id
      t.string :text
      t.integer :points
      t.timestamps
    end

    add_index :verses, [:user_id]
  end

  def down
    drop_table :verses
  end
end

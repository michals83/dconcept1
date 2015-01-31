class CreateVerses < ActiveRecord::Migration
  def up
    create_table :verses do |t|
      t.int :id
      t.int :user_id
      t.string :text
      t.int :points
      t.timestamps
    end

    add_index :verses, [:id, :user_id]
  end

  def down
    drop_table :verses
  end
end

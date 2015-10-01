class CreateDatabase < ActiveRecord::Migration 
  def change
    create_table :things do |t|
      t.string :one
      t.string :two
      t.timestamps null: false
    end
    create_table :others do |t|
      t.belongs_to :thing
      t.string :three
      t.string :four
      t.timestamps null: false
    end
  end
end

class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :front
      t.string :back
      t.integer :deck_id

      t.timestamps
    end
    
    add_index :cards, :deck_id
  end
end

class CreateNews < ActiveRecord::Migration[7.0]
  def change
    create_table :news do |t|

      t.string :title, :null => false
      t.string :description, :null => false
      t.integer :tag_id, :null => false
      t.integer :writer_id, :null => false
      t.boolean :publish, default: false, null: false

      t.timestamps
    end
  end
end

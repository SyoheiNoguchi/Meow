class CreateRescudeCats < ActiveRecord::Migration[7.0]
  def change
    create_table :rescude_cats do |t|
      t.string :title, :null => false
      t.string :description, :null => false
      t.string :address, :null => false
      t.string :image

      t.timestamps
    end
  end
end

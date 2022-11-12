class CreateCats < ActiveRecord::Migration[5.2]
  def change
    create_table :cats do |t|
      t.integer :user_id
      t.string :catname
      t.text :appeal_point
      t.string :image_id

      t.timestamps
    end
  end
end

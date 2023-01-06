class ChangeCloumnsNotnullAddCats < ActiveRecord::Migration[5.2]
  def change
    change_column :cats, :user_id, :integer, null: false
    change_column :cats, :catname, :string, null: false
    change_column :cats, :appeal_point, :text, null: false
    change_column :cats, :image_id, :string, null: false
  end
end

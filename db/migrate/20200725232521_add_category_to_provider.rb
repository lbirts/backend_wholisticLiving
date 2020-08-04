class AddCategoryToProvider < ActiveRecord::Migration[6.0]
  def change
    add_column :providers, :category_id, :integer
  end
end

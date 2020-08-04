class AddAnonToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :anon, :boolean
  end
end

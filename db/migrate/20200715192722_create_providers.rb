class CreateProviders < ActiveRecord::Migration[6.0]
  def change
    create_table :providers do |t|
      t.string :specialty
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

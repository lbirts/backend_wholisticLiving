class AddYearsOfExperienceToProvider < ActiveRecord::Migration[6.0]
  def change
    add_column :providers, :yearsofexp, :integer
    add_column :providers, :subspecialties, :string
  end
end

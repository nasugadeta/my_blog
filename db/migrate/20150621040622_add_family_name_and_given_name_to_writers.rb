class AddFamilyNameAndGivenNameToWriters < ActiveRecord::Migration
  def change
    add_column :writers, :family_name, :string
    add_column :writers, :given_name, :string
  end
end

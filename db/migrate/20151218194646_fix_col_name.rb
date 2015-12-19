class FixColName < ActiveRecord::Migration
  def change
    rename_column :users, :rate, :rating

  end
end

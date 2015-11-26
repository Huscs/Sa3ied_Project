class AddPasswordDigestToUsers < ActiveRecord::Migration
  def change

  	add_column :users , :password_digest, :string
  				#db name, #new_col_name : #new_col_types

  end
end

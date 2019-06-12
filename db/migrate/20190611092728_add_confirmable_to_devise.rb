class AddConfirmableToDevise < ActiveRecord::Migration[5.2]
  def change
  end
  def up
    #（省略）
    add_column :users, :unconfirmed_email, :string # Only if using reconfirmable
    #（省略）
  end

  def down
    #（省略）
    remove_columns :users, :unconfirmed_email # Only if using reconfirmable
  end
end

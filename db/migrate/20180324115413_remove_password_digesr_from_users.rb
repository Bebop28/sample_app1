class RemovePasswordDigesrFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :password_digesr, :string
  end
end

class AddStorageToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :storage, :string, after: :name
  end
end

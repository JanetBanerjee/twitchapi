class AddUidToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :uid, :string
  end
end

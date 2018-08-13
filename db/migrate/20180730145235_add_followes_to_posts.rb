class AddFollowesToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :follows, :string
  end
end

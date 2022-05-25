class CreatePosts < ActiveRecord::Migration[6.0]
  def up
    create_table :posts do |t|
      t.string :title
      t.string :body
      t.string :author
      t.integer :user_id
      t.timestamps
    end
  end

  def down
    drop_table :posts
  end
end

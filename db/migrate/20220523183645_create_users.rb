class CreateUsers < ActiveRecord::Migration[6.0]
  def up
    create_table :users do |t|
      t.string :email
      t.string :firstname

      t.timestamps
    end
  end

  def down
    drop_table :users
  end
end

class CreateListComments < ActiveRecord::Migration[5.2]
  def change
    create_table :list_comments do |t|
      t.integer :list_id
      t.integer :admin_id
      t.text :body
      t.string :name

      t.timestamps
    end
  end
end

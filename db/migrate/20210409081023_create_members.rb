class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :name
      t.string :age
      t.string :country
      t.text :introduction
      t.integer :profile_image_id

      t.timestamps
    end
  end
end

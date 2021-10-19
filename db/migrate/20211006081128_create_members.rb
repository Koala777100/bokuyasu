class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :name
      t.text :introduction
      t.string :hometown
      t.string :profile_image_id
      t.string :instagram
      t.timestamps
    end
  end
end

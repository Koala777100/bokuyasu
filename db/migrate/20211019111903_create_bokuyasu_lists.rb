class CreateBokuyasuLists < ActiveRecord::Migration[5.2]
  def change
    create_table :bokuyasu_lists do |t|
      t.string :title
      t.string :body
      t.string :image_id

      t.timestamps
    end
  end
end

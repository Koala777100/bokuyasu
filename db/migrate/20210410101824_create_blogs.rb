class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.integer :member_id
      t.text :title
      t.text :body
      t.string :blog_image_id

      t.timestamps
    end
  end
end

class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :details
      t.references :department, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :post_type

      t.timestamps
    end
  end
end

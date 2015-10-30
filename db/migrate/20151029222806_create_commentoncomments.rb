class CreateCommentoncomments < ActiveRecord::Migration
  def change
    create_table :commentoncomments do |t|
      t.string :content
      t.integer :comment_id
      t.integer :post_id

      t.timestamps null: false
    end
  end
end

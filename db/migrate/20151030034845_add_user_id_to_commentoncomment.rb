class AddUserIdToCommentoncomment < ActiveRecord::Migration
  def change
    add_column :commentoncomments, :user_id, :integer
  end
end

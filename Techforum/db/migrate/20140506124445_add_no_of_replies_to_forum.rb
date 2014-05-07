class AddNoOfRepliesToForum < ActiveRecord::Migration
  def change
    add_column :forums, :no_of_replies, :integer
  end
end

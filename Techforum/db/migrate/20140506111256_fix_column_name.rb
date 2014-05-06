class FixColumnName < ActiveRecord::Migration
  def change
	rename_column :forums, :type, :forum_type
  end
end

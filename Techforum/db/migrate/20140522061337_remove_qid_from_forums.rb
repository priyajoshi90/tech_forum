class RemoveQidFromForums < ActiveRecord::Migration
  def change
    remove_column :forums, :qid, :string
  end
end

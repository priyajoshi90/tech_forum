class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.string :nestreply_id
      t.string :answer
      t.references :emp_login, index: true
      t.references :forum, index: true

      t.timestamps
    end
  end
end

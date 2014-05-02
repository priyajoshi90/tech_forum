class CreateLeaves < ActiveRecord::Migration
  def change
    create_table :leaves do |t|
      t.date :fdate
      t.date :tdate
      t.string :comments
      t.references :emp_login, index: true

      t.timestamps
    end
  end
end

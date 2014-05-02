class CreateWfhs < ActiveRecord::Migration
  def change
    create_table :wfhs do |t|
      t.date :fdate
      t.date :tdate
      t.string :comments
      t.references :emp_login, index: true

      t.timestamps
    end
  end
end

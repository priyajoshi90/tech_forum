class CreateForums < ActiveRecord::Migration
  def change
    create_table :forums do |t|
      t.string :qid
      t.string :question
      t.string :type
      t.references :emptech, index: true
      t.references :emp_login, index: true

      t.timestamps
    end
  end
end

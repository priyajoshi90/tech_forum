class CreateEmpMasters < ActiveRecord::Migration
  def change
    create_table :emp_masters do |t|
      t.string :tcs_id
      t.string :fm_no
      t.string :name
      t.string :address
      t.string :mobile
      t.string :role
      t.date :birthday
      t.date :doj
      t.date :dor
      t.references :emp_login, index: true

      t.timestamps
    end
  end
end

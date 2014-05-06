class CreateEmpteches < ActiveRecord::Migration
  def change
    create_table :empteches do |t|
      t.string :empid
      t.references :techmaster, index: true
      t.references :emp_login, index: true

      t.timestamps
    end
  end
end

class CreateEmpteches < ActiveRecord::Migration
  def change
    create_table :empteches do |t|
      t.references :emp_master, index: true
      t.references :techmaster, index: true

      t.timestamps
    end
  end
end

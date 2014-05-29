class AddTechnologyToEmpMaster < ActiveRecord::Migration
  def change
    add_column :emp_masters, :tech, :string
  end
end

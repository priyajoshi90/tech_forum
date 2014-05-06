class CreateTechmasters < ActiveRecord::Migration
  def change
    create_table :techmasters do |t|
      t.string :tech

      t.timestamps
    end
  end
end

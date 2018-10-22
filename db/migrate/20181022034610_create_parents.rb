class CreateParents < ActiveRecord::Migration[5.2]
  def change
    create_table :parents do |t|
      t.string :name

      t.userstamps
      t.timestamps
      t.datetime :deleted_at, index: true
    end
  end
end

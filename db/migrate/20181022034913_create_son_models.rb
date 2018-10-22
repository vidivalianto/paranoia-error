class CreateSonModels < ActiveRecord::Migration[5.2]
  def change
    create_table :son_models do |t|
      t.string :name
      t.references :parent

      t.userstamps
      t.timestamps
      t.datetime :deleted_at, index: true
    end
  end
end

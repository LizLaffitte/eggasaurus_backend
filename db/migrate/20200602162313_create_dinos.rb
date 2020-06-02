class CreateDinos < ActiveRecord::Migration[6.0]
  def change
    create_table :dinos do |t|
      t.references :specie, null: false, foreign_key: true
      t.string :name
      t.integer :happiness
      t.integer :hunger
      t.integer :tiredness
      t.timestamps
    end
  end
end

class AddUsersToDinos < ActiveRecord::Migration[6.0]
  def change
    add_reference :dinos, :users, foreign_key: true
  end
end

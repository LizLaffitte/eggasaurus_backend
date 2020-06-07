class AddUsersToDinos < ActiveRecord::Migration[6.0]
  def change
    add_reference :dinos, :user, foreign_key: true
  end
end

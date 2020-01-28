class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :name
      t.string :auth
      t.string :username

      t.timestamps
    end
  end
end

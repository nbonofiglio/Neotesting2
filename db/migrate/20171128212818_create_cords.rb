class CreateCords < ActiveRecord::Migration[5.1]
  def change
    create_table :cord_cords do |t|
      t.string :apiotics_instance
      t.string :name
      t.timestamps
    end
  end
end
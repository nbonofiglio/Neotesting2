class CreateNodeLeds < ActiveRecord::Migration[5.1]
  def change
    create_table :node_leds do |t|
      
      t.boolean :led_state
      t.boolean :led_state_ack
      t.boolean :led_state_complete
      t.string :led_state_timestamp
      t.string :led_state_status
      t.string :led_state_action
      
      t.integer :node_id
      t.timestamps
    end
  end
end
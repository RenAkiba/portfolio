class CreateEndusers < ActiveRecord::Migration[7.1]
  def change
    create_table :endusers do |t|
      t.string :handle_name, null: false

      t.timestamps
    end
  end
end

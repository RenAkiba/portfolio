class CreateRecords < ActiveRecord::Migration[7.1]
  def change
    create_table :records do |t|
      t.string :dish, null: false
      t.integer :calorie, null: false #ここはnilだと失敗する

      t.timestamps
    end
  end
end

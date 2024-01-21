class CreateTargets < ActiveRecord::Migration[7.1]
  def change
    create_table :targets do |t|
      t.integer :t_cal

      t.timestamps
    end
  end
end

class CreateEstantes < ActiveRecord::Migration
  def change
    create_table :estantes do |t|
      t.integer :numero

      t.timestamps
    end
  end
end

class CreateRuas < ActiveRecord::Migration
  def change
    create_table :ruas do |t|
      t.integer :numero

      t.timestamps
    end
  end
end

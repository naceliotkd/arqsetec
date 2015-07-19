class CreateCaixas < ActiveRecord::Migration
  def change
    create_table :caixas do |t|
      t.integer :numero

      t.timestamps
    end
  end
end

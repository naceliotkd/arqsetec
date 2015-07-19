class CreatePrateleiras < ActiveRecord::Migration
  def change
    create_table :prateleiras do |t|
      t.string :letra

      t.timestamps
    end
  end
end

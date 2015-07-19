class CreateCaminhos < ActiveRecord::Migration
  def change
    create_table :caminhos do |t|
      t.text :conteudo
      t.references :rua, index: true
      t.references :estante, index: true
      t.references :prateleira, index: true
      t.references :caixa, index: true

      t.timestamps
    end
  end
end

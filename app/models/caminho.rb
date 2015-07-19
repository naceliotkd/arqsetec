class Caminho < ActiveRecord::Base
  belongs_to :rua
  belongs_to :estante
  belongs_to :prateleira
  belongs_to :caixa
end

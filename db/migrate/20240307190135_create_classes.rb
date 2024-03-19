class CreateClasses < ActiveRecord::Migration[7.0]
  def change
    create_table :classes do |t|
      t.string :nome

      t.timestamps
    end
    # Adicione as opções iniciais
    %w(Pessoa Produto Colaborador Departamento).each do |opcao|
      Classe.create(nome: opcao)
    end
  end
end
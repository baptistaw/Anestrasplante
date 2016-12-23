class AddComentariosToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :comentarios, :string
  end
end

class AddEditorToLibro < ActiveRecord::Migration
  def change
    add_column :libros, :editor, :string
  end
end

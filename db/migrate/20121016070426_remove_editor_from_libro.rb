class RemoveEditorFromLibro < ActiveRecord::Migration
  def up
    remove_column :libros, :editor
  end

  def down
    add_column :libros, :editor, :string
  end
end

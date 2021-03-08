class AddNoteToResponses < ActiveRecord::Migration[6.0]
  def change
    add_column :responses, :note, :string
  end
end

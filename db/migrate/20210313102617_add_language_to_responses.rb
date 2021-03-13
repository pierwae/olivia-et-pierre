class AddLanguageToResponses < ActiveRecord::Migration[6.0]
  def change
    add_column :responses, :language, :string
  end
end

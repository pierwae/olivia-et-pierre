class AddLanguageToSubscriptions < ActiveRecord::Migration[6.0]
  def change
    add_column :subscriptions, :language, :string
  end
end

class AddShowIdCol < ActiveRecord::Migration[7.0]
  def change
    add_column :shows, :show_id, :string, null: false, unique: true
  end
end

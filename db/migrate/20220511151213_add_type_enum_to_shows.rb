class AddTypeEnumToShows < ActiveRecord::Migration[7.0]
  def change
    if column_exists? :shows, :show_type
      remove_column :shows, :show_type
    end
    add_column :shows, :show_type, :integer, default: 0
  end
end

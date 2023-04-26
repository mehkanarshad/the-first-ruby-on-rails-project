class Rename < ActiveRecord::Migration[7.0]
  def change
    rename_column :students, :contact_number, :contact
  end
end

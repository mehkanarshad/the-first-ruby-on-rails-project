class AddColumnsTo < ActiveRecord::Migration[7.0]
  def change
  add_column :students, :address, :string
  add_column :students, :contact_number, :string
  end
end

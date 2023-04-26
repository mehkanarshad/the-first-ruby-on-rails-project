class RemoveAddressFromStudents < ActiveRecord::Migration[7.0]
  def change
    remove_column :students, :address, :string
  end
end

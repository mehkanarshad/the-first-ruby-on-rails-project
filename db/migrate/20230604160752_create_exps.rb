class CreateExps < ActiveRecord::Migration[7.0]
  def change
    create_table :exps do |t|

      t.timestamps
    end
  end
end

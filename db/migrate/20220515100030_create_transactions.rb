class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.integer :no_of_stocks
      t.integer :status , default: 0
      t.references :stock, null: false, foreign_key: true

      t.timestamps
    end
  end
end

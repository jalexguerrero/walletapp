class CreateIncomes < ActiveRecord::Migration[7.0]
  def change
    create_table :incomes do |t|
      t.references :wallet, null: false, foreign_key: true
      t.decimal :value
      t.string :description

      t.timestamps
    end
  end
end

class CreateInvestments < ActiveRecord::Migration[6.0]
  def change
    create_table :investments do |t|
      t.string :name
      t.string :type
      t.decimal :income
      t.decimal :expense
      t.string :ein

      t.timestamps
    end
  end
end

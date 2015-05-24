class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.decimal :income
      t.string :role
      t.integer :family_id

      t.timestamps null: false
    end

    add_foreign_key :people, :families, column: 'family_id'
  end
end

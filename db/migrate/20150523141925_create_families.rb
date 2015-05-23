class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.string :lastname

      t.timestamps
    end
  end
end

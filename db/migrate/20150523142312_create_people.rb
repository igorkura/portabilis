class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.decimal :income
      t.string :role
      t.integer :family_id

      t.timestamps null: false
    end
    execute <<-SQL
    ALTER TABLE people ADD CONSTRAINT family_id_fk FOREIGN KEY (family_id) REFERENCES families (id);
    SQL
  end
end

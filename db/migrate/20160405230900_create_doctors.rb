class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.string :practice
      t.string :university

      t.timestamps null: false
    end
  end
end

class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
    	t.string :firstname
    	t.string :lastname
    	t.datetime :date_of_birth
    	t.text :description
    	t.boolean :presence

      t.timestamps null: false
    end
  end
end

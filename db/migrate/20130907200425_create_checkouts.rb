class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.date :check_out_date
      t.date :due_date
      t.string :person
      t.integer :book_id

      t.timestamps
    end
  end
end

class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :book_code
      t.string :title
      t.integer :publisher_id

      t.timestamps
    end
  end
end

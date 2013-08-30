class CreatePublishers < ActiveRecord::Migration
  def change
    create_table :publishers do |t|
      t.string :publisher_code
      t.string :name

      t.timestamps
    end
  end
end
